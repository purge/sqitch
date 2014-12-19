BEGIN;

SET client_min_messages = warning;

CREATE TABLE :"registry".releases (
    version         REAL        PRIMARY KEY,
    installed_at    TIMESTAMPTZ NOT NULL DEFAULT clock_timestamp(),
    installer_name  TEXT        NOT NULL,
    installer_email TEXT        NOT NULL
);

COMMENT ON TABLE  :"registry".releases                 IS 'Sqitch registry releases.';
COMMENT ON COLUMN :"registry".releases.version         IS 'Version of the Sqitch registry.';
COMMENT ON COLUMN :"registry".releases.installed_at    IS 'Date the registry release was installed.';
COMMENT ON COLUMN :"registry".releases.installer_name  IS 'Name of the user who installed the registry release.';
COMMENT ON COLUMN :"registry".releases.installer_email IS 'Email address of the user who installed the registry release.';

COMMIT;