#!/bin/bash

set -x

/opt/mssql/bin/sqlservr &

sleep 30

sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -Q 'RESTORE DATABASE AdventureWorks2012 FROM DISK = "/tmp/aw.bak" WITH MOVE "AdventureWorks2012" TO "/var/opt/mssql/data/AdventureWorks2012/AdventureWorks2012.mdf", MOVE "AdventureWorks2012_Log" TO "/var/opt/mssql/data/AdventureWorks2012_log.ldf"'

sleep infinity