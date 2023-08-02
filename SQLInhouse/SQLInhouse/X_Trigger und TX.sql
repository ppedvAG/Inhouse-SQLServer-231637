drop table if exists o1
drop table if exists t1

select * into o1 from orders;
Go

create table t1 (id int)
GO

create or alter trigger trgdemo on o1
for  insert, update, delete
as
select * from o1 where orderid = 10248
select * from inserted
select * from deleted
select '---------'
select * from inserted
select * from deleted
insert into t1 --DS in Tabelle wegschreiben
select orderid from inserted
Go


select * from o1

begin tran
update o1 set freight = 200 where orderid = 10248 

--rollback

select * from t1


