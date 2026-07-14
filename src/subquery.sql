select max(emp_id) from employees;

select *from employees where emp_id= (select max(emp_id) from employees);

select *from employees where emp_id=(select max(emp_id) from employees where emp_id<(select max(emp_id)from employees));

select *from employees;
