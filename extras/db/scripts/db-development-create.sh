#!/usr/bin/env bash

mysql -h $MYSQL_HOST -u $MYSQL_USERNAME -p$MYSQL_PASSWORD < ./extras/db/sql/CREATE_SCHEMA.sql
mysql -h $MYSQL_HOST -u $MYSQL_USERNAME -p$MYSQL_PASSWORD desdetul_bd < ./extras/db/sql/SCHEMA.sql
npm run db-autoupdate
