select name,id into customer2 from customer;

select *from customer2;

delete from customer2 where id=101;

select top 2 *from customer2;

select *from customer2
order by id
offset 1 rows
fetch next 1 rows only;

select *from customer2
order by name;