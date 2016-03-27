
module.exports = function(options) {
    'use strict';

    var request = require('request');
    var Promise = require('bluebird');
    var _       = require('highland');

    Promise.config({warnings: false});

    var gcmClient = {};

    gcmClient.sendNotificationStream = function(message) {
        var self = this;
        return function(s) {
            return s.map(function(tokens) {
                return _(self.sendNotification(tokens, message));
            })
            .parallel(1)
            .flatten();
        };
    };

    gcmClient.sendNotification = function(tokens, message) {
        return new Promise(function(resolve, reject) {
            var body = {
                'registration_ids': tokens,
                data: {
                    title: message.title,
                    message: message.text,
                    'content-available': '1',
                    soundName: 'default',
                }
            };

            if (message.deepLink) body.data.deepLink = message.deepLink;

            var reqOptions = {
                uri: options.baseUrl,
                json: body,
                headers: {
                   'Authorization': 'key=' + options.key
                }
            };

            request.post(reqOptions, function response(err, res, result) {
                if (res && res.statusCode === 200)  {
                    resolve({
                        total: tokens.length,
                        success: result.success,
                        failure: result.failure
                    });
                }
                else {
                    var error = new Error();
                    error.message = err && err.message || JSON.stringify(result);
                    error.code = res && res.statusCode || -1;
                    error.total = tokens.length;
                    error.success = 0;
                    error.failure = tokens.length;
                    resolve(error);
                }
            });
        });
    };


    return gcmClient;
};
