#!/bin/bash
set -e

chmod +x /tmp/create-decm-db.sh

echo "creating DECM database..."
 /tmp/create-decm-db.sh & /opt/mssql/bin/sqlservr && (echo "awaiting server bootup" && sleep 15s)
echo "DECM database initialized successfully"

exec "$@"