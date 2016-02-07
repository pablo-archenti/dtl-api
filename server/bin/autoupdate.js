var path = require('path');
var app = require(path.resolve(__dirname, '../server'));

var dataSource = app.dataSources.mysql;
var models = ['AccessToken', 'LoginCode', 'Subscription'];

dataSource.autoupdate(models, function(err) {
    if (err) throw err;
    dataSource.disconnect();
});
