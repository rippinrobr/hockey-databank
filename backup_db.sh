#!/bin/bash

DB_NAME="hockey_databank"
VERSION="2017_18"

sqlite3 $DB_NAME.db .schema >./sqlite/sqlite_hockey_databank_schema_$VERSION.sql
sqlite3 $DB_NAME.db .dump >./sqlite/sqlite_hockey_databank_backup_$VERSION.sql

tar czvf ./sqlite/sqlite_hockey_databank.tgz ./sqlite/*.sql && rm sqlite/*.sql
