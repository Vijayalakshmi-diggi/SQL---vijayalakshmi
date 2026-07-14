create table employees (emp_id int primary key,emp_name varchar(20),depid int);

insert into employees values (101,'archana',22),(102,'bhavanya',22),(103,'divakar',33),(104,'mani',77);

select *from employees;

create table department (dep_id int primary key,dept_name varchar(10));

insert into department values(11,'mech'),(22,'IT'),(33,'CSE');

select *from department;

select e.emp_id,e.emp_name,d.dept_name from employees e
inner join department d on e.depid=d.dep_id;

select e.emp_id,e.emp_name,e.depid,d.dept_name from employees e
left join department d on e.depid=d.dep_id;

select e.emp_id,e.emp_name,d.dept_name from employees e
right join department d on e.depid=d.dep_id;

select e.emp_id,e.emp_name,d.dept_name from department d
Full join employees e on e.depid=d.dep_id;

select e.emp_id,e.emp_name,d.dept_name from department d
cross join employees e;

select emp_name from employees
union 
select dept_name from department;

select emp_name from employees
union all
select dept_name from department;