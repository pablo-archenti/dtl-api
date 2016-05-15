#!/usr/bin/env bash

mysql -h $MYSQL_HOST -u $MYSQL_USERNAME -p$MYSQL_PASSWORD desdetul_bd_testing < ./extras/db/sql/testing/DUMP.sql
