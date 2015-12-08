module.exports = function(LoginCode) {
    'use strict';
    var app = require('../../server/server');
    var randomNumbers = require('../../lib/randomNumbers');

    LoginCode.observe('before save', function defaultCode(ctx, next) {
        var loginCode = ctx.instance;

        if (!loginCode.validateCode(loginCode.code)) {
            ctx.instance.setAttribute('code', randomNumbers.get(1000, 9999));
        }
        ctx.instance.setAttribute('ttl', app.get('loginCodeTTL'));
        ctx.instance.setAttribute('createdAt', new Date());
        next();
    });

    LoginCode.prototype.validateCode = function(code) {
        var self = this;
        var expiredDate = new Date(this.createdAt);
        expiredDate = expiredDate.setSeconds(expiredDate.getSeconds() + this.ttl);

        if ((self.code) && (self.code === code) && (expiredDate > new Date())) {
            return true;
        } else {
            return false;
        }
    };

};
