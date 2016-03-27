module.exports = function(Notification) {
    'use strict';

    var Promise     = require('bluebird');
    var _           = require('highland');
    var app         = require('../../server/server');
    var gcmClient   = require('../../lib/gcmClient')(app.get('notifications').gcm);
    var util        = require('util');

    Promise.config({warnings: false});

    Notification.send = send;
    Notification.remoteMethod(
        'send',
        {
            description: 'Send a push Notification',
            accepts: [{
                arg: 'notification',
                type: 'object',
                required: true,
                http: { source: 'body' },
                'default': {
                    to: {
                        all: false,
                        subscribers: 100
                    },
                    message: {
                        title: 'title text',
                        text: 'Main text',
                        deepLink: {
                            state: 'app.projects.show',
                            params: { id: 100 }
                        }
                    }
                }
            }],
            http: { verb: 'post' },
        }
    );

    function sendValidation(notification) {
        if (typeof notification.to !== 'object' || typeof notification.message !== 'object') return false;
        if (typeof notification.to.all !== 'boolean') return false;
        if (notification.to.subscribers && typeof notification.to.subscribers !== 'number') return false;
        if (typeof notification.message.title !== 'string') return false;
        if (typeof notification.message.text !== 'string') return false;
        if (notification.message.deepLink && (typeof notification.message.deepLink !== 'object' ||
            typeof notification.message.deepLink.state !== 'string')
        ) return false;
        if (notification.message.deepLink.params && typeof notification.message.deepLink.params !== 'object') return false;
        return true;
    }

    function deviceTokensStream(to, type) {
        var limit = 500;
        var skip = 0;
        return _(function(push, next) {
            app.models.DeviceToken.find({
                fields: { token: true },
                limit: limit,
                skip: skip,
                where: {
                    type: type
                }
            })
            .then(function(tokens) {
                tokens = tokens.map(function(value) {
                    return value.token;
                });
                if (tokens.length === 0) {
                    push(null, _.nil);
                }
                else  {
                    skip += limit;
                    push(null, tokens);
                    next();
                }
            })
            .catch(function(err) {
                push(err);
            });
        });
    }

    function sendNotificationStreamhandler(stream, notification) {
        var success = notification.success || 0,
            failure = notification.failure || 0,
            total = notification.total || 0;

        stream
        .errors(function(err, push) {
            console.error(err);
            notification.status = 'failure';
            notification.error += util.format('message: %s || ', err.message);
            notification.save();
            push(err);
        })
        .each(function(result) {
            console.log(result);
            if (result instanceof Error) {
                notification.status = 'failure';
                notification.error += util.format('status code: %s, message: %s || ', result.code, result.message);
            }
            success += result.success;
            failure += result.failure;
            total += result.total;
        })
        .done(function() {
            notification.success = success;
            notification.failure = failure;
            notification.total = total;
            notification.save();
        });
    }

    function send(body) {
        var self = this;

        return new Promise(function(resolve, reject) {
            if (!sendValidation(body)) {
                var err = new Error('invalid notification format');
                err.statusCode = 400;
                return reject(err);
            }

            Notification.create({
                to: body.to,
                title: body.message.title,
                text: body.message.text,
                deepLink: body.message.deepLink || null,
                status: 'sending',
                error: '',
                total: 0,
                success: 0,
                failure: 0,
            })
            .then(function(notification) {
                notification.status = 'success';

                var stream = deviceTokensStream(notification.to, 'android')
                .through(gcmClient.sendNotificationStream(body.message));
                sendNotificationStreamhandler(stream, notification);

                resolve();
            })
            .catch(function(err) {
                reject(err);
            });
        });
    }
};
