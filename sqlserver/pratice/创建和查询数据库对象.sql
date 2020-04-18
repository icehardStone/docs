use master;
GO

if not EXISTS (
    select * from sys.databases
        where name like N'ihdis'
)
create database ihdis;
go


-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'DatabaseName'
)
CREATE DATABASE DatabaseName
GO

-- Create a new table called 'patient' in schema 'ihdis'
-- Drop the table if it already exists
IF OBJECT_ID('ihdis.patient', 'U') IS NOT NULL
DROP TABLE ihdis.patient
GO
-- Create the table in the specified schema
CREATE TABLE ihdis.patient
(
    patientId INT NOT NULL PRIMARY KEY, -- primary key column
    Column1 [NVARCHAR](50) NOT NULL,
    Column2 [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO

INSERT ihdis.dbo.patient (id,name)
    VALUES("1001","admas");