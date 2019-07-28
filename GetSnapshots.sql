-- Script to list database snapshots along with their respective sources.

with databases as
(
    select
        database_id
        ,[name]
    from sys.databases
)

select
    ss.[name] as SnapshotName
    ,ss.database_id as SnapshotID
    ,d.[name] as SourceName
    ,source_database_id as SourceID
from sys.databases as ss inner join databases as d on ss.source_database_id = d.database_id
where source_database_id is not null;