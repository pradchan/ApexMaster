#!/bin/bash

dbcs_ip=$1

echo "copying SQL files:"
scp -o StrictHostKeyChecking=no -i dbcs/JulesPrivateSSHKeySept2016 dbcs/sql/*.sql oracle@$dbcs_ip:.
echo "..done."

echo "copying SQL DATA file:"
scp -o StrictHostKeyChecking=no -i dbcs/JulesPrivateSSHKeySept2016 dbcs/data/loadApexData.sql oracle@$dbcs_ip:.
echo "..done."


