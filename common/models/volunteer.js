module.exports = function(Volunteer) {
    'use strict';
    var app = require('../../server/server');

    modelValidation(Volunteer);
    Volunteer.login = login;
    Volunteer.sendLoginCode = sendLoginCode;
    Volunteer.prototype.createOrUpdateLoginCode = createOrUpdateLoginCode;

    Volunteer.remoteMethod(
        'login',
        {
            description: 'Login a volunteer with email and login code',
            accepts: [
                { arg: 'credentials', type: 'object', required: true, http: { source: 'body' } }
            ],
            returns: {
                arg: 'accessToken', type: 'object', root: true
            },
            http: { verb: 'post' }
        }
    );

    Volunteer.remoteMethod(
        'sendLoginCode',
        {
            description: 'Send login Code to volunteer',
            accepts: [
                { arg: 'email', type: 'string', required: true }
            ],
            returns: {
                arg: 'loginCode', type: 'object', root: true
            },
            http: { verb: 'get' }
        }
    );

    Volunteer.afterRemote('create', function afterCreate(ctx, volunteer, next) {
        volunteer.createOrUpdateLoginCode().then(function(loginCode) {
            volunteer.code = loginCode.code;
            next();
        })
        .catch(function(err) {
            volunteer.delete();
            next(new Error('Error creating login code'));
        });
    });

    function createOrUpdateLoginCode() {
        var self = this;
        var loginCode = this.loginCode() || null;
        var p;
        return new Promise(function(resolve, reject) {
            if (loginCode) p = loginCode.save();
            else p = self.loginCode.create();
            p.then(resolve)
            .catch(reject);
        });
    }

    function modelValidation(Volunteer) {
        //Volunteer.validatesFormatOf('birthdate', { with: /(^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$)|(^$)/ , message: 'Invalid format ("DD/MM/AAAA")'});
        Volunteer.validatesFormatOf('projectsInCharge', { with: /^(yes|no)$/ , message: 'Invalid format ("yes" or "no")'});
        Volunteer.validatesFormatOf('collectThings', { with: /^(yes|no)$/ , message: 'Invalid format ("yes" or "no")'});
        Volunteer.validatesFormatOf('keepUpdated', { with: /^(yes|no)$/ , message: 'Invalid format ("yes" or "no")'});
    }

    function beforePersist(ctx, next) {
        var volunteer = ctx.data;

        volunteer.projectsInCharge = volunteer.projectsInCharge === 'yes' ? 'si' : 'no';
        volunteer.collectThings = volunteer.collectThings === 'yes' ? 'si' : 'no';
        volunteer.keepUpdated = volunteer.keepUpdated === 'yes' ? 'si' : 'no';

        next();
    }

    function sendLoginCode(email) {
        var self = this;

        var noEmail = new Error('Email does not exists');
        noEmail.statusCode = 404;
        noEmail.code = 'EMAIL_ERROR';

        return new Promise(function(resolve, reject) {
            self.findOne({
                where: { email: email },
                include: 'loginCode'
            })
            .then(function(volunteer) {
                if (!volunteer) return reject(noEmail);
                volunteer.createOrUpdateLoginCode()
                .then(function(loginCode) {

                    //TODO: send loginCode
                    resolve({
                        code: loginCode.code
                    });
                })
                .catch(reject);
            })
            .catch(reject);
        });
    }

    function login(credentials) {
        var self = this;
        return new Promise(function(resolve, reject) {
            if (!credentials.email || !credentials.code) {
                var err = new Error('email and code is required');
                err.statusCode = 400;
                err.code = 'USERNAME_CODE_REQUIRED';
                return reject(err);
            }

            var defaultError = new Error('login failed');
            defaultError.statusCode = 401;
            defaultError.code = 'LOGIN_FAILED';

            self.findOne({
                where: { email: credentials.email },
                include: 'loginCode'
            })
            .then(function(volunteer) {
                if (!volunteer || !volunteer.loginCode()) throw defaultError;

                if (volunteer.loginCode().validateCode(credentials.code)) {
                    volunteer.createAccessToken(app.get('volunteerSessionTTL'))
                    .then(function(token) {
                        token.__data.user = volunteer;
                        resolve(token);
                    })
                    .catch(function(err) {
                         throw defaultError;
                    });
                }
                else throw defaultError;
            })
            .catch(function(err) {
                reject(err);
            });
        });
    }

};
