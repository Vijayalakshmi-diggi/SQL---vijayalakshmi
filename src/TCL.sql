select *from employees;

begin transaction 
update employees set emp_id=107 where emp_name='geetha';
commit;

begin transaction
insert into employees values(120,'dhanvik',78);
commit;

begin transaction
insert into employees values(119,'v',80);

rollback;

begin transaction;
insert into employees values(118,'dhanvik',78);
rollback;

select *from employees where emp_id=118;

begin transaction;
update employees set emp_id=1 where emp_name='geetha';
rollback;

delete from employees where emp_id=107;

begin transaction;

insert into employees values(123,'nivi',90);

save transaction s1;

insert into employees values(122,'kavya',91);

save transaction s2;

rollback transaction s1;

rollback;     --> before s1 we didn't commit so we can rollback and remove 123

commit;

select *from employees;
