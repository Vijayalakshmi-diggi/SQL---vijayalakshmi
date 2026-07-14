select *from employees;

create procedure Getemployees
as begin 
select *from employees
end;

create procedure EmpAdd
as begin
insert into employees values(105,'viji',23);
end;

exec Getemployees;
exec EmpAdd;

create procedure GetEmployeeById
@id int
as begin
select *from employees where emp_id=@id;
end;

exec GetEmployeeById 102;