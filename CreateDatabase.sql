-- Script to create a demonstration database and populate a table with some initial data.

use master;
go

create database SnapshotDemo;
go

alter database SnapshotDemo set RECOVERY SIMPLE;
go

use SnapshotDemo;
go

create table dbo.Employees
(
    ID int not null IDENTITY(1,1) PRIMARY KEY
    ,LastName nvarchar(50) not null
    ,FirstName nvarchar(50) not null
    ,DisplayName as LastName + ', ' + FirstName
);

insert into dbo.Employees VALUES
('Bunny', 'Bugs')
,('Fudd', 'Elmer')
,('Sam','Yosemite')
,('Pig', 'Porky');
go