-- Script to add additional data to the dbo.employees table after the snapshot is taken.

use SnapshotDemo;
go

insert into dbo.Employees VALUES
('Duck', 'Daffy')
,('Leghorn', 'Foghorn')
,('LePew','Pepe')
,('Gonzalez', 'Speedy');
go