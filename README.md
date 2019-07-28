# Introduction 
T-SQL Code used in the post [Database Snapshot Basics](https://shoestringdba.com/?p=502) on ShoestringDBA.

- CreateDatabase.sql - Script to create a demonstration database and populate a table with some initial data.
- CreateSnapshot.sql - Sets up the snapshot for the demo database.
- AddEmployees.sql - Script to add additional data to the dbo.employees table after the snapshot is taken.
- GetLiveData.sql - Views the actual data in the table.
- GetSnapshotData.sql - Views the data shown by the snapshot.
- RevertFromSnapshot.sql - Reverts the database to the point at which the snapshot was taken.
- GetSnapshots.sql - Script to list database snapshots along with their respective sources.
- DropSnapshot.sql - Drops the snapshot, which must be done before the database can be dropped.
- DropDatabase.sql - Drops the demo database.

# References

- [ShoestringDBA: Database Snapshot Basics](https://shoestringdba.com/?p=502)
- [Database Snapshots (SQL Server)](https://docs.microsoft.com/en-us/sql/relational-databases/databases/database-snapshots-sql-server?view=sql-server-2017)
