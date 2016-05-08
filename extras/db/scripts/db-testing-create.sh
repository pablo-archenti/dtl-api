#!/usr/bin/env bash

mysql -h $MYSQL_HOST -u $MYSQL_USERNAME -p$MYSQL_PASSWORD < ./extras/db/sql/testing/DROP_SCHEMA.sql
mysql -h $MYSQL_HOST -u $MYSQL_USERNAME -p$MYSQL_PASSWORD < ./extras/db/sql/testing/CREATE_SCHEMA.sql
mysql -h $MYSQL_HOST -u $MYSQL_USERNAME -p$MYSQL_PASSWORD desdetul_bd_testing < ./extras/db/sql/SCHEMA.sql
npm run db-autoupdate
mysql -h $MYSQL_HOST -u $MYSQL_USERNAME -p$MYSQL_PASSWORD desdetul_bd_testing < ./extras/db/sql/testing/DUMP.sql
