var path = require('path');
var app = require(path.resolve(__dirname, '../server'));

var datasource = app.dataSources.mysql;
var models = ['AccessToken', 'LoginCode', 'Subscription'];

datasource.autoupdate(models, function(err) {
    if (err) throw err;

    updateSchema();
});

function updateSchema() {
    var sql = 'ALTER TABLE `personas` ADD COLUMN `actualizado` timestamp NULL ON UPDATE CURRENT_TIMESTAMP;';

    datasource.connector.execute(sql, [], function(err) {
        datasource.disconnect();
    });
}
