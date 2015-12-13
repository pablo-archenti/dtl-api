module.exports = {
  mysql: {
    connector: 'mysql',
    hostname: process.env.OPENSHIFT_MYSQL_DB_HOST,
    port: process.env.OPENSHIFT_MYSQL_DB_PORT,
    user: process.env.OPENSHIFT_MYSQL_DB_USERNAME,
    password: process.env.OPENSHIFT_MYSQL_DB_PASSWORD,
    database: 'api',
  }
};
