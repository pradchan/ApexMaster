#!/bin/bash

devcs_id_domain=$1
devcs_id_domain_username=$2
devcs_id_domain_password=$3
devcs_service_name=$4
devcs_project_name=$5
devcs_job_name=$6


echo https://developer.us2.oraclecloud.com/${devcs_service_name}-${devcs_id_domain}/s/${devcs_service_name}-${devcs_id_domain}_${devcs_project_name}/hudson/rest/projects/${devcs_service_name}-${devcs_id_domain}_${devcs_project_name}.${devcs_job_name}/schedule

echo "...remote triggering Hudson Builds starting with job <<$devcs_job_name>>:"
curl -X POST -u $2:$3 https://developer.us2.oraclecloud.com/${devcs_service_name}-${devcs_id_domain}/s/${devcs_service_name}-${devcs_id_domain}_${devcs_project_name}/hudson/rest/projects/${devcs_service_name}-${devcs_id_domain}_${devcs_project_name}.${devcs_job_name}/schedule
echo " ...done."



