module.exports = function(DeviceToken) {
    'use strict';
    var app = require('../../server/server');

    DeviceToken.observe('before save', function defaultCode(ctx, next) {
        var date = new Date();

        if (ctx.instance) {
            ctx.instance.updatedAt = date;
        } else {
            ctx.data.updatedAt = date;
            if (!ctx.data.type) {
                ctx.data.type = 'android';
            }
        }

        next();
    });

};

