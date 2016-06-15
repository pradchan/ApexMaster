--
-- Set import over-ride params to workspace and schema = JULES
--
begin
  SetLoadParamsForUpdate;
end;
--
-- Import the exported app
--
/
@updateApexApp.sql

