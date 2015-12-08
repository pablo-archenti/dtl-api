
module.exports = function(app, cb) {
    var Admin = app.models.Admin;
    var Role = app.models.Role;
    var RoleMapping = app.models.RoleMapping;

    Admin.create([{
        name: 'Pablo Archenti',
        username: 'pabloarchenti',
        email: 'pabloarchenti@gmail.com',
        password: 'cache123'
    }])
    .then(function(users) {
        return Role.create({ name: 'admin' })
        .then(function(role) {
            return role.principals.create({
                principalType: RoleMapping.USER,
                principalId: users[0].id
            });
        });
    })
    .then(function() {
        return Role.create({ name: 'volunteer' });
    })
    .then(function() {
        cb();
    })
    .catch(cb);
};
