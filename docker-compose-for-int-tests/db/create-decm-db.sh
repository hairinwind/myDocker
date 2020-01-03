#!/bin/bash
set -e

sleep 30s
 
# run setup script
/opt/mssql-tools/bin/sqlcmd -S 127.0.0.1,1434 -U sa -P $SA_PASSWORD -d master -i /tmp/setup.sql