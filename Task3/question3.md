objective: To be familiar with function in ORACLE.

qsn: create table tbl_sales with item_id, item_name and amount




CREATE TABLE tbl_sales
(
     item_id int,
     item_name varchar(20),
     amount float
)

INSERT INTO tbl_sales VALUES(1,'ABC',20)

INSERT INTO tbl_sales VALUES(2,'CDE',50)


SELECT * FROM tbl_sales

SELECT SUM(AMOUNT) as Total_amount FROM tbl_sales
SELECT Min(AMOUNT) as Min_sales_amount FROM tbl_sales
SELECT AVG(AMOUNT) as sales_average FROM tbl_sales
SELECT Max(AMOUNT) as Max_sales_amount FROM tbl_sales
SELECT COUNT (*) as Total_sales_count FROM tbl_sales
