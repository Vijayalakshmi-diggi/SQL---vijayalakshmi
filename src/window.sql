create table student (name varchar(15),marks int,gender varchar(2));

insert into student values('vijay',440,'m'),('vig',400,'m'),('sona',430,'f'),('ravi',450,'m');
insert into student values('vj',400,'f',1),('ravvi',350,'m',2),('raju',400,'m',3);
alter table student
add id int;

update student set id=1 where name='vj'
update student set id=6 where name='vijay'
update student set id=3 where name='vivek'
update student set id=4 where name='geetha'
update student set id=8 where name='sona'
update student set id=9 where name='Ravi'

select *from student;

select name,marks,gender,id,
row_number() over (order by marks) as 'row_num',
rank() over (order by marks) as 'Rank',
dense_rank() over(order by marks) as 'dense_rank'
from student;

select *from(
select name,marks,gender, dense_rank() over(order by marks desc) as 'rank' from student) as t
where rank=2 ;

select name,marks,gender,
rank() over(partition by gender order by marks desc) as 'gender_rank'
from student;

select *from student;

select name,marks,gender,id,
ntile(4) over(partition by gender order by marks) as divide_grp
from student;

select name,marks,gender,id,
row_number() over(partition by gender order by marks) as divide_grp
from student;

select name,marks,gender,id,
rank() over(partition by gender order by marks) as divide_grp
from student;

select name,marks,gender,id,
lag(marks) over(order by marks) as divide_grp
from student;

select name,marks,gender,id,
first_value(marks) over(order by marks) as divide_grp
from student;

select name,marks,gender,id,
last_value(marks) over(order by marks 
ROWS BETWEEN UNBOUNDED PRECEDING
           AND UNBOUNDED FOLLOWING) as divide_grp
from student;

select *from(
select name,marks,gender,id,
sum(marks) over(order by gender) as total from student) as t;

select *from(
select *,
dense_rank() over (partition by gender order by marks) as "rank_marks_gender"
from student) as t 
where rank_marks_gender=2;

SELECT *from(
select*,Dense_rank() over(partition by gender order by marks desc) as rn
from student) as t
where rn<3;

select *from(
select *,marks-lag(marks) over(order by marks) as rnk from student) as t;


select marks-lag(marks) over(order by marks) as rn
from student;

select *from(
select *,dense_rank() over (orderb;

select *from(
select *, avg(marks) over (partition by gender) as 'avg' from student) t
where marks>avg;