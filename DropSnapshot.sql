-- Drops the snapshot, which must be done before the database can be dropped.

use master;
go

drop database SnapshotDemo_snapshot;
go