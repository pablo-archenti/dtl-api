var path = require('path');
var app = require(path.resolve(__dirname, '../server'));

var dataSource = app.dataSources.mysql;
var models = ['AccessToken', 'LoginCode', 'Subscription'];

dataSource.autoupdate(models, function(err) {
    if (err) throw err;

    if (models.indexOf('Subscription') !== -1) {
        addSubscriptionIndexes(addSubscriptionIndexesCb);
    } else {
        dataSource.disconnect();
    }
});

function addSubscriptionIndexes(cb) {
    var sql = 'ALTER TABLE Subscription ADD INDEX (volunteerId), ADD INDEX (projectId)';
    dataSource.connector.execute(sql, [], cb);
}

function addSubscriptionIndexesCb(err, result) {
    if (err) throw err;
    dataSource.disconnect();
}
