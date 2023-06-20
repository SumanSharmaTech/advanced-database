
// objects in dbms
// sqlplus / as sysdba


create type student_type as Object(
    id int,
    name varchar(20),
    roll int
)

create table tbl_student of student_type

desc tbl_student

insert into tbl_student values(new student_type(1,'ram',5));
insert into tbl_student values(new student_type(2,'acer',6));

select * from tbl_student



