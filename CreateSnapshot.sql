-- Sets up the snapshot for the demo database.

use master;
go

create database SnapshotDemo_snapshot ON
(
    name = SnapshotDemo,
    filename = 'C:\SqlServer\ShoestringDBA\Databases\SnapshotDemo.snap'  -- Change to a legitimate path/file
)
as snapshot of SnapshotDemo;
go