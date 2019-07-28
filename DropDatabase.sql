-- Drops the demo database.
-- Snapshots must be dropped before the source database can be dropped.

alter database SnapshotDemo set single_user with ROLLBACK IMMEDIATE;

drop database SnapshotDemo;