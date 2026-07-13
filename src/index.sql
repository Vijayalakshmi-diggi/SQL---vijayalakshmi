create table Datatype(id varchar(5) primary key,Date date,
Time time,Timestamp timestamp,phone_no bigint not null,Bit bit);

select *from Datatype;

insert into Datatype (id,Date,Time,phone_no,Bit) values ('104',getdate(),getdate(),900544,1);
insert into Datatype values ('106',getdate(),getdate(),Default,870544,0);

create index dict on Datatype(phone_no);

EXEC sp_helpindex 'Datatype';

drop index dict on Datatype;

create index dict on Datatype(phone_no,bit);







