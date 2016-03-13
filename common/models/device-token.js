module.exports = function(DeviceToken) {
    'use strict';
    var app = require('../../server/server');

    DeviceToken.observe('before save', function defaultCode(ctx, next) {
        if (ctx.instance) {
            ctx.instance.updatedAt = new Date();
        } else {
            ctx.data.updatedAt = new Date();
            ctx.data.createdAt = new Date();
        }

        next();
    });

};
