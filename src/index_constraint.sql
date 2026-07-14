create table customer (id varchar(5) primary key,
name varchar(15),phone_no int);

select *from customer;
insert into customer values('101','viji',96201360);
insert into customer (id,name,phone_no) values ('103','vivek',8921409);

create unique index count on customer(phone_no);

exec sp_helpindex customer;

drop index count on customer;

alter table customer 
drop constraint pk;

alter table customer 
add primary key(id);