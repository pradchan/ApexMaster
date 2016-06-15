--
-- Set import over-ride params to workspace and schema = JULES
--
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
--
-- Import the exported app
--
/
@updateApexApp.sql

