#!/bin/bash

dbcs_ip=$1
dbcs_sys=$2
dbcs_sys_password=$3

echo "copying SetParams and Apex export file to target:"

scp -o StrictHostKeyChecking=no -i dbcs/labkey dbcs/sql/SetLoadParamsForUpdate.sql oracle@$dbcs_ip:.
scp -o StrictHostKeyChecking=no -i dbcs/labkey dbcs/sql/updateApexApp.sql oracle@$dbcs_ip:.

echo "..done."

echo "Setting Import Params and Importing App:"

ssh -o StrictHostKeyChecking=no -i dbcs/labkey oracle@$dbcs_ip "sqlplus $dbcs_sys/$dbcs_sys_password@PDB1 AS SYSDBA @SetLoadParamsForUpdate.sql"

echo "..done."