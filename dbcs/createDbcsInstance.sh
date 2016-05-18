#!/bin/bash

id_domain=$1
id_domain_usr=$2
id_domain_pwd=$3
dbcs_instance=$4
sys_pwd=$5
storage_domain="Storage-"$id_domain
storage_container=$6
template_file=$7

function replace_placeholder {
  target_file=$1
  var_name=$2
  var_value=$3
  sed -i 's/'$var_name'/'$var_value'/g' $target_file
}

echo "Populate request document"
replace_placeholder $template_file "dbcs_instance_name" $dbcs_instance
replace_placeholder $template_file "sys_password" $sys_pwd
replace_placeholder $template_file "storage_domain" $storage_domain
replace_placeholder $template_file "storage_container" $storage_container
replace_placeholder $template_file "storage_user" $id_domain_usr
replace_placeholder $template_file "storage_password" $id_domain_pwd
request_file=$template_file
cat $request_file

echo "Creating Instance: $dbcs_instance"

curl --include --request POST --user $id_domain_usr:$id_domain_pwd --header "X-ID-TENANT-NAME:$id_domain" --header "Content-Type:application/json" --data @$request_file https://dbaas.oraclecloud.com/paas/service/dbcs/api/v1.1/instances/$id_domain -o response.json

cat response.json
