
CREATE TABLE tbl_student2
(
    sid int,
    fname varchar(20),
    mname varchar(20),
    lname varchar(20),
    rollno int,
    sem int
)

INSERT INTO tbl_student2 VALUES(1,'RAM','BAHADUR','THAPA',2,8)

SELECT * FROM tbl_student2

SELECT CONCAT(FNAME,LNAME) AS Full_name FROM tbl_student2
SELECT concat(concat(concat(CONCAT(FNAME,' '),mname),' '),lname) AS Full_name FROM tbl_student2

SELECT CONCAT(FNAME,LNAME) AS Full_name FROM tbl_student2

SELECT SUBSTR(FNAME,0,2) AS First_three_letters FROM tbl_student2

SELECT concat(concat(concat(concat(SUBSTR(FNAME,0,1),'.'),SUBSTR(MNAME,0,1)),'.'),lname) AS new_name FROM tbl_student2

select * from tbl_student2 where length(fname)>3

select upper(fname) from tbl_student2
select lower(fname) from tbl_student2




// date conversions


CREATE TABLE tbl_student3
(
    sid int,
    fullname varchar(20),
    mydate Date,
)

select * from tbl_student3

insert into tbl_student3 values(1,'ram', to_date('2000/06/12','yyyy/mm/dd'))

select sysdate from dual

select extract(year from mydate)as year,extract(month from mydate)as month,extract(day from mydate)as day from tbl_student3

update tbl_student3 set mydate = add_months (mydate,12)

select trunc(months_between(sysdate,mydate)/12,0) as age from tbl_student3
