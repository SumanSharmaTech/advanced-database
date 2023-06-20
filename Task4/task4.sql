

create table tbl_std4
(
id int primary key,
name varchar(30),
math float,
science float,
english float
)

insert into tbl_std4 values(1,'Ram',40,50,60)
insert into tbl_std4 values(2,'shyam',20,30,60);
insert into tbl_std4 values(3,'Sita',80,90,70)

select id,name,math,science,english,(math+science+english) as total from tbl_std4

select id,name,math,science,english,(math+science+english) as total,round((math+science+english)/3,2) as persantage  from tbl_std4

select id,name,math,science,english,(math+science+english) as total,round((math+science+english)/3,2) as persantage, 
case 
    when ( round((math+science+english)/3,2) >=80) and(math>=40 and english>=40 and science>=40) then 'distinction'
    when ( round((math+science+english)/3,2) >=60) and(math>=40 and english>=40 and science>=40)  then 'first'
    when ( round((math+science+english)/3,2) >=50) and(math>=40 and english>=40 and science>=40)  then 'second'
    when ( round((math+science+english)/3,2) >=40) and(math>=40 and english>=40 and science>=40)  then 'third'
    else 'fail'
end 
as division
from tbl_std4



select id,name,math,science,english,(math+science+english) as total,round((math+science+english)/3,2) as persantage, 
case 
    when ( round((math+science+english)/3,2) >=80) and(math>=40 and english>=40 and science>=40) then 'distinction'
    when ( round((math+science+english)/3,2) >=60) and(math>=40 and english>=40 and science>=40)  then 'first'
    when ( round((math+science+english)/3,2) >=50) and(math>=40 and english>=40 and science>=40)  then 'second'
    when ( round((math+science+english)/3,2) >=40) and(math>=40 and english>=40 and science>=40)  then 'third'
    else 'fail'
end 
as division,
case 
    when (math>=40 and english>=40 and science>=40)  then 'Pass'
    else 'fail'
end 
as result

from tbl_std4

