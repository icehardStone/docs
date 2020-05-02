use test;
go
declare @varibles nvarchar(120);
set @varibles = '10';

select CAST(@varibles as int);
select @varibles;


declare @json_temp nvarchar(4000);
set @json_temp = N'{"name":"admas"}';
select ISJSON(@json_temp);
select JSON_VALUE(@json_temp, '$.name');