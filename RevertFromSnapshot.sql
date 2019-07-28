-- Reverts the database to the point at which the snapshot was taken.

use master;
go

-- Make sure other connections to SnapshotDemo_snapshot are closed
-- as this cannot be done using ALTER DATABASE
alter database SnapshotDemo set single_user with rollback immediate;
go

restore database SnapshotDemo
from database_snapshot = 'SnapshotDemo_snapshot';
go

alter database SnapshotDemo set multi_user;
