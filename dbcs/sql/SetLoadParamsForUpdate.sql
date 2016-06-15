--------------------------------------------------------
--  File created - Wednesday-June-15-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure SET_APEX_APP_LOAD_PARAMS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JULES"."SET_APEX_APP_LOAD_PARAMS" AS 
-- 
-- Used as part of the DevCS demo, to allow apps to be loaded into
-- target workspace and schema 'JULES' from any source workspace / schema
--
BEGIN
declare
    l_workspace_id number;
begin
    select workspace_id into l_workspace_id
      from apex_workspaces
      where workspace = 'JULES';
    --
    apex_application_install.set_workspace_id( l_workspace_id );
    apex_application_install.generate_offset;
    apex_application_install.set_schema( 'JULES' );
end;
END SET_APEX_APP_LOAD_PARAMS;

/
