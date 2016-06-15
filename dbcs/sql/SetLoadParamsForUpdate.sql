--
-- Set import over-ride params to workspace and schema = JULES
--
begin
  execute SetLoadParamsForUpdate;
end;
--
-- Import the exported app
--
/
@updateApexApp.sql

