module.exports = function(LoginCode) {
    'use strict';
    var app = require('../../server/server');
    var randomNumbers = require('../../lib/randomNumbers');

    LoginCode.observe('before save', function defaultCode(ctx, next) {
        var loginCode = ctx.instance;

        if (!loginCode.validCode(loginCode.code)) {
            ctx.instance.setAttribute('code', app.get('dummyLoginCode') || randomNumbers.get(1000, 9999));
        }
        ctx.instance.setAttribute('ttl', app.get('loginCodeTTL'));
        ctx.instance.setAttribute('createdAt', Date.now());

        deleteExpired();

        next();
    });

    LoginCode.prototype.validCode = function(code) {
        var self = this;
        var expiredDate = new Date(this.createdAt);
        expiredDate = expiredDate.setSeconds(expiredDate.getSeconds() + this.ttl);

        if ((self.code) && (self.code === code) && (expiredDate > Date.now())) {
            return true;
        } else {
            return false;
        }
    };

    function deleteExpired() {
        var expired = (Date.now() - (app.get('loginCodeTTL') * 1000 * 2)) / 1000;
        LoginCode.destroyAll({
            createdAt: { lt: expired }
        });
    }

};
