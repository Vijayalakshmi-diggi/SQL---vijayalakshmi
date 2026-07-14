select count(*) as total_employees from employees;

select count(depid) from employees;

select sum(emp_id) as total_count from employees;

select avg(emp_id) as avg_count from employees;

select avg(emp_id) as minimum,depid from employees
group by depid;

select depid,sum(emp_id) from employees
group by depid having depid>30;

select sum(emp_id) from employees 
group by emp_id having emp_id>110 ;

select sum(emp_id) from employees
group by depid with rollup;

select sum(emp_id) from employees
where emp_id>110;

select *from employees 
order by depid;
 
select *from employees 
order by depid desc;

select *from employees;

select *from employees where not emp_id=101;

select *from employees where emp_id not in (101,102,103);

select emp_name+'this is employee name' as message
from employees;

select emp_name+''+emp_gender from employees;  --> concatinate 2 columns