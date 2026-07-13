create table employee (name varchar(15),initial varchar(5),email varchar(20));

alter table employee 
alter column name varchar(15) not null;

alter table employee 
alter column initial varchar(5) not null;


alter table employee add primary key(name,initial);
 
 select *from employee

#show table
EXEC sp_help employee;

insert into employee values ('viji','v','viji@123'),
('viji','G','vg@123'),('sona','s','sona@321'),('sona','r','sonar@213');

alter table employee
add unique(email);

alter table employee 
change column initial to INITIAL;

exec sp_rename 'employee','Employee';

exec sp_rename 'Employee.name', 'Emp_name','column';

select *from Employee;

alter table Employee 
add phone_no bigint;

update Employee set phone_no=9620136013  where emp_name='viji' and initial='v';

alter table Employee
alter column phone_no bigint not null;

alter table Employee
add city varchar(15) Default 'chennai';