module.exports = {
    mysql: {
        connector: process.env.MYSQL_HOST || 'localhost',
        hostname: 'mysql',
        port: process.env.MYSQL_PORT || 3306,
        user: process.env.MYSQL_USERNAME,
        password: process.env.MYSQL_PASSWORD,
        database: 'desdetul_bd',
    }
};
