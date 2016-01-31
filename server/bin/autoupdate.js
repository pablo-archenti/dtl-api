var path = require('path');
var app = require(path.resolve(__dirname, '../server'));

var dataSource = app.dataSources.mysql;

dataSource.autoupdate(['AccessToken', 'LoginCode', 'Suscription'], function(err) {
    if (err) throw err;
    dataSource.disconnect();
});
