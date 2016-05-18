v2.0 2016

New Text added

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
steps to provision the APEX application:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1) to Create a DBCS SC 

  bash -ex storage/createStorageContainer.sh <id_domain> <id_domain-username> <id_domain-password> <DB-StorageContainer>

2) to Create the DBCS instance "Alpha01A-DBCS", using storage container "Alpha01A-DBCS-SC":

  bash -ex dbcs/createDbcsInstance.sh <id_domain> <id_domain-username> <id_domain-password> <DB-InstanceName> <SYS-password> <DB-StorageContainer> dbcs/dbcsCreateRequestBody.json

3) to Copy all SQL Files to the DBCS Instance:

  bash -ex dbcs/scripts/copySQLFiles.sh <dbcs_ip>

4) to Create Apex Workspace:  

  bash -ex dbcs/scripts/createApexWorkspace.sh <dbcs_ip> <dbcs_sys> <dbcs_sys_password>

5) to Create DB Schema and Objects: 

  bash -ex dbcs/scripts/createDBSchemaAndObjects.sh <dbcs_ip> <dbcs_sys> <dbcs_sys_password>

6) to Build the Apex App:

  bash -ex dbcs/scripts/buildApexApp.sh <dbcs_ip> <dbcs_sys> <dbcs_sys_password>

7) to Load the Apex data:

  bash -ex bash -ex dbcs/scripts/loadApexData.sh <dbcs_ip> <dbcs_sys> <dbcs_sys_password>
  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
to update the Apex App:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  bash -ex dbcs/scripts/updateApexApp.sh <dbcs_ip> <dbcs_sys> <dbcs_sys_password>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
to reset the DBCS instance to a clean state:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  bash -ex dbcs/scripts/dropAll.sh <dbcs_ip> <dbcs_sys> <dbcs_sys_password>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
to trigger automated provisioning from build job 3:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  triggerHudsonJob.sh <devcs_id_domain> <devcs_id_domain_username> <devcs_id_domain_password> <devcs_service_name> <devcs_project_name> <devcs_job_name>

  Example1:
  triggerHudsonJob.sh metcsgse00671 cloud.admin $DEMO2_PASSWORD developer19005 apex-demo 03_copySQLFiles  

  Example2:
  triggerHudsonJob.sh metcsgse00671 cloud.admin DEMO2_PASSWORD developer19005 apex-demo dropAll
  

