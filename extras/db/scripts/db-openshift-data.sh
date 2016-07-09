#!/usr/bin/env bash

mysql -h $OPENSHIFT_MYSQL_DB_HOST -u $OPENSHIFT_MYSQL_DB_USERNAME -p$OPENSHIFT_MYSQL_DB_PASSWORD -P $OPENSHIFT_MYSQL_DB_PORT desdetul_bd < ./extras/db/sql/development/DUMP.sql
