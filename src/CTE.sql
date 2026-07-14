with maxemp as
(select emp_id from employees where emp_id>103 )
select *from maxemp;

with maxemp as 
(select max(emp_id) as maxemp from employees)
select *from maxemp;

with EmployeeCTE as
(select *from employees)
select *from EMployeeCTE;

with change_id as
(select *from employees where emp_name='viji')
update change_id set emp_id=109;

select *from employees;

with Del_row as
(select *from employees where emp_id=109)
delete from del_row;

with Insert_row as
(select *from employees)
insert into Insert_row values(109,'viji',25);