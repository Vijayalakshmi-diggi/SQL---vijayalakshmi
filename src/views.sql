create view EmpView
as 
select emp_id,emp_name from employees;

select *from EmpView;

update EmpView set emp_id=10 where emp_name='viji';

select *from employees;

update employees set emp_id=105 where emp_name='viji';

select *from EmpView;