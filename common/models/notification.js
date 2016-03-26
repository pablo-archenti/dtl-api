module.exports = function(Notification) {
    'use strict';

    var Promise = require('bluebird');
    var app = require('../../server/server');

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
            http: { verb: 'post' }
        }
    );

    function validateNotificationToSend(notification) {
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

    function send(notification) {
        var self = this;
        return new Promise(function(resolve, reject) {
            if (!validateNotificationToSend(notification)) {
                var err = new Error('invalid notification format');
                err.statusCode = 400;
                return reject(err);
            }

            resolve();
        });
    }
};
