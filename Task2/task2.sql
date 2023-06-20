CREATE TABLE Employee
(
  eid INT PRIMARY KEY,
  ename VARCHAR(20) UNIQUE NOT NULL,
  address VARCHAR(20)
)

select * from Employee

INSERT INTO Employee VALUES (1,'RAM','india')

DELETE FROM Employee WHERE eid = 1


CREATE TABLE Company
(
  cid INT PRIMARY KEY,
  ename VARCHAR(20),
  location VARCHAR(20) DEFAULT ('KATHMANDU'),
  FOREIGN KEY (ename) REFERENCES Employee (ename) ON DELETE CASCADE
)

select * from Company

INSERT INTO Company VALUES (1,'RAM','ONLINE')


CREATE TABLE Works
(
  eid INT,
  cid INT,
  salary INT,
  FOREIGN KEY (eid) REFERENCES Employee (eid) ON DELETE CASCADE,
  FOREIGN KEY (cid) REFERENCES Company (cid) ON DELETE CASCADE
)

select * from Works

INSERT INTO Works VALUES (1,1,50000)

