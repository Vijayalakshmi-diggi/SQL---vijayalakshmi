select *into customer1 from customer;

select *into customer1 from customer;

insert into customer1 select *from customer;

exec sp_helpindex customer1;

update customer1
set phone_no=90357 where id=101;

update customer1
set name='vijji';

DELETE FRom customer1;

insert from customer into customer1;

select *from customer1;