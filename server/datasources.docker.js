module.exports = {
  mysql: {
    connector: 'mysql',
    hostname: process.env.MYSQL_PORT_3306_TCP_ADDR || 'localhost',
    port: process.env.MYSQL_PORT_3306_TCP_PORT || 3306,
    user: process.env.MYSQL_ENV_USERNAME,
    password: process.env.MYSQL_ENV_PASSWORD,
    database: 'desdetul_bd',
  }
};
