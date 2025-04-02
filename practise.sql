# SQLPractice
CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
select * from Worker;
select distinct (department) from worker;
select WORKER_ID as emp_code from worker;
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
SELECT department, worker_id FROM worker
WHERE salary=100000
UNION
SELECT department, worker_id FROM worker
WHERE salary=200000
ORDER BY worker_id;
SELECT DEPARTMENT, WORKER_ID 
FROM Worker 
WHERE DEPARTMENT = 'HR' 

UNION 

SELECT DEPARTMENT, WORKER_ID 
FROM Worker 
WHERE DEPARTMENT ='Account';

SELECT worker_id, first_name,department,
CASE
    WHEN salary > 300000 THEN 'Rich people'
    WHEN salary <=300000 && salary >=100000 THEN 'Middle stage'
    ELSE 'Poor people'
END 
AS People_stage_wise
FROM worker;

SELECT DISTINCT DEPARTMENT, 
       (SELECT COUNT(*) FROM Worker w WHERE w.DEPARTMENT = Worker.DEPARTMENT) AS TOTAL_EMPLOYEES
FROM Worker
UNION
SELECT 'Total' AS DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES FROM Worker;



select * from worker where department='Admin' order by department desc;

(SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES
 FROM Worker
 GROUP BY DEPARTMENT
 ORDER BY TOTAL_EMPLOYEES DESC
 LIMIT 1)
 
UNION

(SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES
 FROM Worker
 GROUP BY DEPARTMENT
 ORDER BY TOTAL_EMPLOYEES ASC LIMIT 1);
 
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS TOTAL_EMPLOYEES  FROM Worker
GROUP BY DEPARTMENT
ORDER BY TOTAL_EMPLOYEES DESC 
LIMIT 2;

CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');

SELECT * FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

SELECT * FROM Worker 
WHERE FIRST_NAME LIKE '%a';

SELECT * FROM Worker 
WHERE FIRST_NAME LIKE '_h';

SELECT DEPARTMENT, COUNT(*) AS Worker_Count 
FROM Worker 
GROUP BY DEPARTMENT 
ORDER BY Worker_Count DESC;

SELECT * FROM Worker WHERE WORKER_ID = 1
UNION ALL
SELECT * FROM Worker WHERE WORKER_ID = 1;

create table vitBhopal (id int primary key, name varchar(20) not null,
department varchar(25) not null);
insert into vitbhopal values (104,'Karthik','cs'),(103,'Arun','cs');

SELECT department, COUNT(*) AS department_count
FROM worker
GROUP BY department
ORDER BY department_count DESC
LIMIT 1 OFFSET 1;

create table vit (id int primary key, name varchar(20) not null,
college varchar(25) not null);
insert into vit values (104,'Karthik','chennai'),(103,'Arun','bhopal');
select * from vit;

select * from vitbhopal;

select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where college='bhopal');


CREATE TABLE Worker (

WORKER ID INT NOT NULL PRIMARY KEY AUTO INCREMENT,

FIRST NAME CHAR (25),

LAST NAME CHAR(25),

SALARY INT(15),

JOINING DATE DATETIME,

DEPARTMENT CHAR(25),

A Server Logs,
Options File,
PERFORMANCE,
Dashboard,
Performance Reports,
Performance Schema Setup,
INSERT INTO Worker,

(WORKER ID, FIRST NAME, LAST NAME, SALARY, JOINING DATE, DEPARTMENT)

VALUES,

(001, ontks', 'Arora, 100000, 14-02-2019.00.00),
(002, harika", "Verma, 80000, 14-05-11 09.00.00', 'Adain), 
(003, Vishal", Singhal", 200000, 14-02-26 00.00.00,),
(Singh, 500000, 14-02-28 08.00.00 Adein),
(005, vek, Thati, 500000, 14-06-11 09.00.00", "A"),
(006, Vipul, Diwan, 200009, 14-06-11 49.00.00", "Account),
(007, Satish Kumar, 75000, 14-01-20 500.00 Account),
(on, Geetika", "Chauhan, 30000, 14-04-11 03.00.00 Adain),

SELECT *FROM worker 
WHERE slary  not BETWEEN 100000 AND 200000;
slect first_Name from worker where 

SELECT FROM Worker WHERE SALARY=100000 AND DEPARTMENT = HRS

 SELECT FROM Worker WHERE SALARY > 200000;

 SELECT FROM Worker WHERE SALARY=100008 AND DEPARTMENTHR

 SELECT FROM Worker WHERE SALARY between 100000 AND 200000;

 SELECT FROM Worker WHERE SALARY not between 100000 AND 200000;

 SELECT FROM worker
 WHERE salary BETWEEN 200000 AND 400000
 AND WORKER ID in (1,2,3,4,5);
 desc worker;
 
use org123;
select * from worker;
slecct distinct (department) from worker;

SELECTworker_id , first_name , department ,

CASE

WHEN salary >3000000 THEN 'Rich people'

WHEN salary <= 300000 && salary >=100000THEN 'Middle stage '

ELSE 'poor people'

END

AS People_stage_wise

FROM worker;

select * from worker where department = 'Admin'order by department desc;

select department count(department) as total_employees from worker 
where department ='HR' or department 'Account' group by department;

select department ,count(department) as total_employees
FROM worker
GROUP BY department
ORDER BY total_employees DESC
LIMIT ALL;


select department ,count(department) as total_employees
FROM worker
GROUP BY department
ORDER BY total_employees DESC
LIMIT 1;
show databases
admin                  40.00 KiB
config                 60.00 KiB
local                  96.00 KiB
monday                 40.00 KiB
orphanage_management  384.00 KiB
test                    8.00 KiB
monday
ReferenceError: monday is not defined
use monday
switched to db monday
show collections
products
db.products.insertMany([
	{ "_id" : 1, "name" : "xPhone", "price" : 799, "releaseDate" : ISODate("2011-05-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 }, "color" : [ "white", "black" ], "storage" : [ 64, 128, 256 ] },
	{ "_id" : 2, "name" : "xTablet", "price" : 899, "releaseDate" : ISODate("2011-09-01T00:00:00Z"), "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 }, "color" : [ "white", "black", "purple" ], "storage" : [ 128, 256, 512 ] },
	{ "_id" : 3, "name" : "SmartTablet", "price" : 899, "releaseDate" : ISODate("2015-01-14T00:00:00Z"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "blue" ], "storage" : [ 16, 64, 128 ] },
	{ "_id" : 4, "name" : "SmartPad", "price" : 699, "releaseDate" : ISODate("2020-05-14T00:00:00Z"), "spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256, 1024 ] },
	{ "_id" : 5, "name" : "SmartPhone", "price" : 599, "releaseDate" : ISODate("2022-09-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256 ] },
	{ "_id" : 6, "name" : "xWidget", "spec" : { "ram" : 64, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "black" ], "storage" : [ 1024 ] }
])
-- MongoBulkWriteError: E11000 duplicate key error collection: monday.products index: _id_ dup key: { _id: 1 }
monday
create database org;

show databases;


use org123;
create table Persons(
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255) NOT NULL,
Age int
);

desc persons;
ALTER TABLE Persons
modify AGE INT NOT NULL;

CREATE TABLE Persons1(
ID int Primary key,
LastName varchar(255) NOT NULL unique,
FirstName varchar(255) NOT NULL unique,
Age int
);
desc persons1;


create database org123;

use org123;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);


insert into category values (102, 'furnitures','it stores all set of wooden items');

select * from category;
desc category;

CREATE TABLE Products(
P_ID int primary key,
p_Name varchar(250) NOT NULL,
c_id int,
constraint c_id foreign key (c_id)
references category(c_id)
);

desc products;

drop table products;

insert into products values(904,'Wooden table',null);

select * from products;

select* from category;

delete from category where c_id = 101;

drop table category;



show databases;
use org123;

create table Student(
sno int primary key,
sname varchar(20),
age int
);

insert into Student(sno,sname,age)
values (1,'Ankit',17),
(2,'Ramya',18),
(3,'Ram',16);

create table Course(
cno int primary key,
cname varchar(20)
);

select from Course;
insert into Course(cno,cname)
values(101,'c'),
(102,'c++'),
(103,'DBMS');

create table Enroll(
sno int,
cno int,
jdate date,
primary key (sno,cno),
foreign key(cno)
	references Course(cno)
	on delete cascade
);

insert into Enroll (sno,cno,jdate)
value (2,105,"2022/05/05");

select * from enroll;
desc enroll;
CREATE TABLE Persons{
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  CHECK (salary>=200000 and salar <= 400000)
);

ALTER TABLE Persons
ADD CHECK (Age >= 18);

CREATE TABLE Persons1 (
  ID int NOT NULL,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int,
  City varchar(255) DEFAULT 'Coimbatore'
);

desc persons1;

use org123;
show table from org123;

select * from worker;

SELECT * FROM worker WHERE first_name LIKE '_i_a%';

SELECT * FROM worker WHERE salary LIKE '8%';

create view admin_more_salary as
select * from worker 
where departe = 'Admin' and salary >= 100000 order by salary desc;


select * from admin_more_salary;
use org123
select * from worker
select department, count(department) from worker 
where department in ('admin', 'account') group by department;

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

SELECT department, count(department) as highest_head_count
FROM worker
GROUP BY department
HAVING COUNT (department) >= 3;


create table vitBhopal (id int primary key, name varchar(20) not null,
  departement varchar(25) not null);
insert into vitBhopal values(104,'Shubham','cs'),(103,'Anjali','BEd');

create table vit (id int primary key, name varchar(20) not null,
  departement varchar(25) not null);
insert into vit values(104,'Shubham','Samastipur'),(103,'Anjali','Vidyapati');

select * from vit;
select * from vitBhopal;

select name as WinnerOfTheYear from vitBhopal 
  where id = (select id from vit where college = 'bhopal');



  
use org123;

create table student(
  s_id int primary key,
  s_name varchar(25) not null,
  s_department varchar(25) not null
  );

insert into student values (1001, "Shubham","CSE"),(1002,"Joy","CSE"),(1003,"Ujjwal","CSE");

select * from student;


create table VIT(
  s_id int primary key,
  s_cgpa varchar(5) not null
  );

insert into vit values (1001,'8.2'),(1003,'8.5'),(1007,'9.5');
select * from vit;

use org123;

select * from student cross join vit;

select * from student INNER JOIN vit where student.s_id = vit.s_id;


select * from student NATURAL JOIN vit where student.s_id = vit.s_id;

select * from student LEFT JOIN vit ON (student.s_id = vit.s_id);

select * from student RIGHT JOIN vit ON (student.s_id = vit.s_id);

select * from student full JOIN vit;

select * from student FULL OUTER JOIN vit ON (student.s_id = vit.s_id);


use org123;
select * from worker;

-- # Rest in test_Set
CREATE DATABASE ORG;
show databases;
USE ORG;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
show tables;

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
show tables;

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');
 
 
 -- Q1 Solution 
 
SELECT * FROM Worker 
ORDER BY FIRST_NAME ASC;
 
  -- Q2 Solution 
  
SELECT * FROM Worker 
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;
 
   -- Q3 Solution 
   
SELECT * FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

   -- Q4 Solution 
   
SELECT * FROM Worker 
WHERE FIRST_NAME LIKE '_____h';

-- Q5 Solution

SELECT COUNT(*) AS Admin_Employee_Count 
FROM Worker WHERE DEPARTMENT = 'Admin';

-- Q6 Solution

SELECT FIRST_NAME, LAST_NAME 
FROM Worker
WHERE SALARY BETWEEN 50000 AND 100000;

-- Q7 Solution

SELECT DEPARTMENT, COUNT(*) AS Worker_Count 
FROM Worker 
GROUP BY DEPARTMENT 
ORDER BY Worker_Count DESC;

-- Q8 Solution

SELECT DISTINCT SALARY 
FROM Worker W1 
WHERE 4 = (SELECT COUNT(DISTINCT SALARY) 
FROM Worker W2 
WHERE W2.SALARY > W1.SALARY);

-- Q9 Solution

SELECT W1.FIRST_NAME, W1.LAST_NAME, W1.SALARY 
FROM Worker W1 
WHERE EXISTS (
    SELECT 1 FROM Worker W2 
    WHERE W1.SALARY = W2.SALARY AND W1.WORKER_ID <> W2.WORKER_ID
)
ORDER BY W1.SALARY;

-- Q10 Solution

SELECT DEPARTMENT, COUNT(*) AS Worker_Count 
FROM Worker 
GROUP BY DEPARTMENT 
HAVING COUNT(*) < 3;

CREATE DATABASE ORG1234; 
SHOW DATABASES; 
USE ORG1234;

CREATE TABLE Worker ( WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, FIRST_NAME CHAR(25), LAST_NAME CHAR(25), SALARY INT(15), JOINING_DATE DATETIME, DEPARTMENT CHAR(25) );

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES 
  (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'), 
  (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'), 
  (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'), 
  (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'), 
  (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'), 
  (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'), 
  (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account');

select * from worker 
  where department='Admin' order by department;

select department, count(department) as total_employees 
  from worker where department = 'HR' or department = 'account' group by department;

select department, count(department) as total_employees 
  from worker group by department order by total_employees desc;

SELECT DEPARTMENT, COUNT() AS DepartmentCount 
  FROM Worker GROUP BY DEPARTMENT HAVING COUNT() = (SELECT MAX(DepartmentCount) 
  FROM (SELECT DEPARTMENT, COUNT(*) AS DepartmentCount FROM Worker GROUP BY DEPARTMENT) AS Counts);

SELECT DEPARTMENT, COUNT() AS DepartmentCount 
  FROM Worker GROUP BY DEPARTMENT HAVING COUNT() = (SELECT MIN(DepartmentCount) 
  FROM (SELECT DEPARTMENT, COUNT(*) AS DepartmentCount 
  FROM Worker GROUP BY DEPARTMENT) AS Counts);

SELECT department, COUNT() AS departmentCount 
  FROM worker GROUP BY department HAVING COUNT() = ( SELECT MAX(departmentCount) 
  FROM ( SELECT COUNT(*) AS departmentCount 
  FROM worker GROUP BY department ) AS subquery );

insert into worker value 
  (008, 'kumar', 'Satish', 75000, '14-01-20 09.00.00', 'Account');

USE ORG1234;

CREATE TABLE WorkerWithCity ( WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, FIRST_NAME CHAR(25), LAST_NAME CHAR(25), SALARY INT(15), JOINING_DATE DATETIME, DEPARTMENT CHAR(25), CITY varchar(255) DEFAULT 'India' );

INSERT INTO WorkerWithCity (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT, CITY) VALUES 
  (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR', 'GOA'), 
  (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin', 'Pondicherry'), 
  (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR',''), 
  (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin',''), 
  (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin',''), 
  (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account',''),
  (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account', 'Jammu');

SELECT * FROM WorkerWithCity;

select * from workerWithCity where city like 'o';

create view Salary_more_than_3lac as select * from workerWithCity 
  where salary > 300000 order by salary desc;

select first_name from salary_more_than_3lac;

create or replace view Salary_more_than_3lac as select first_name 
  from workerWithCity where salary > 300000 order by salary desc;

select * from salary_more_than_3lac;

drop view salary_more_than_3lac;

CREATE DATABASE ORG1235; SHOW DATABASES; 
USE ORG1235;

CREATE TABLE Worker ( WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, FIRST_NAME CHAR(25), LAST_NAME CHAR(25), SALARY INT(15), JOINING_DATE DATETIME, DEPARTMENT CHAR(25) );

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES 
  (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'), 
  (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'), 
  (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'), 
  (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'), 
  (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'), 
  (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'), 
  (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'), 
  (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus ( WORKER_REF_ID INT, BONUS_AMOUNT INT(10), BONUS_DATE DATETIME, FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE );

INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES 
  (001, 5000, '16-02-20'), 
  (002, 3000, '16-06-11'), 
  (003, 4000, '16-02-20'), 
  (001, 4500, '16-02-20'), 
  (002, 3500, '16-06-11');

select * from worker 
  where first_name not in ('vipul', 'satish');

select * from worker 
  where first_name like '%a';

select * from worker 
  where first_name like '_h';

select department, count(department) as total_employees 
  from worker group by department order by total_employees desc;

SELECT * FROM Worker UNION ALL SELECT * FROM Worker

10-02-2025 SELECT department, COUNT() AS departmentCount FROM worker GROUP BY department HAVING COUNT() < ( SELECT MAX(departmentCount) 
  FROM ( SELECT COUNT(*) AS departmentCount FROM worker GROUP BY department ) AS subquery order by department limit 1 ); 

create table vitBhopal (id int primary key, name varchar(20) not null, department varchar(25) not null); 
insert into vitbhopal values (104,'Karthik','cs'),(103,'Arun','cs');

create table vit (id int primary key, name varchar(20) not null, college varchar(25) not null); 
insert into vit values (104,'Karthik','chennai'),(103,'Arun','bhopal'); select * from vit;

select * from vitbhopal;

select name as WinnerOfTheYear from vitbhopal where id = (select id from vit where college='bhopal');

select * from worker;

CREATE DATABASE ORG1236; use org1236; 
CREATE TABLE Worker ( WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, FIRST_NAME CHAR(25), LAST_NAME CHAR(25), SALARY INT(15), JOINING_DATE DATETIME, DEPARTMENT CHAR(25) );

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES 
  (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'), 
  (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'), 
  (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'), 
  (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'), 
  (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'), 
  (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'), 
  (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'), 
  (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus ( WORKER_REF_ID INT, BONUS_AMOUNT INT(10), BONUS_DATE DATETIME, FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE );

INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES 
  (001, 5000, '16-02-20'), 
  (002, 3000, '16-06-11'), 
  (003, 4000, '16-02-20'), 
  (001, 4500, '16-02-20'), 
  (002, 3500, '16-06-11'); 

CREATE TABLE Title ( WORKER_REF_ID INT, WORKER_TITLE CHAR(25), AFFECTED_FROM DATETIME, FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE );

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES 
  (001, 'Manager', '2016-02-20 00:00:00'), 
  (002, 'Executive', '2016-06-11 00:00:00'), 
  (008, 'Executive', '2016-06-11 00:00:00'), 
  (005, 'Manager', '2016-06-11 00:00:00'), 
  (004, 'Asst. Manager', '2016-06-11 00:00:00'), 
  (007, 'Executive', '2016-06-11 00:00:00'), 
  (006, 'Lead', '2016-06-11 00:00:00'), 
  (003, 'Lead', '2016-06-11 00:00:00');

SELECT department, COUNT() AS departmentCount 
  FROM worker GROUP BY department HAVING COUNT() = ( SELECT MAX(departmentCount) 
  FROM ( SELECT COUNT(*) AS departmentCount 
  FROM worker GROUP BY department ) AS subquery order by department ); 

SELECT DEPARTMENT 
  FROM Worker GROUP BY DEPARTMENT HAVING COUNT(*) < 5;

select department, count(department) as depCount 
  from worker group by department order by depCount desc limit 5;

-- 11-02-2025 
  
create table student ( s_id int primary key, s_name varchar(25) not null, s_department varchar(25) not null );

insert into student values 
  (1001,"Jayanth","ECE"),
  (1002,"Praveen","CSE"),
  (1003,"Logesh","Mech"),
  (1006,'karthick','Aero'),
  (1007,"Mahesh","Civil");

select * from student;

create table VIT( s_id int primary key, s_cgpa varchar(5) not null ); 

insert into vit values 
  (1001,'7.2'),
  (1002,'8.6'),
  (1007,'9.25'); 

select * from vit;

select * from student cross join vit;

select * from student inner join vit where student.s_id=vit.s_id;

select * from student natural join vit;

select * from student left outer join vit on (student.s_id=vit.s_id); 

select * from student right outer join vit on (student.s_id=vit.s_id); 

SELECT * FROM Worker INNER JOIN Bonus ON WORKER_ID = WORKER_REF_ID UNION SELECT * 
  FROM Worker INNER JOIN Title ON WORKER_ID = WORKER_REF_ID;

SELECT w.*, b.BONUS_AMOUNT, b.BONUS_DATE, t.WORKER_TITLE, t.AFFECTED_FROM
  FROM Worker w LEFT JOIN Bonus b ON w.WORKER_ID = b.WORKER_REF_ID 
  LEFT JOIN Title t ON w.WORKER_ID = t.WORKER_REF_ID;

SELECT w.*, b.BONUS_AMOUNT, b.BONUS_DATE, t.WORKER_TITLE, t.AFFECTED_FROM 
  FROM Worker w INNER JOIN Bonus b ON w.WORKER_ID = b.WORKER_REF_ID 
  INNER JOIN Title t ON w.WORKER_ID = t.WORKER_REF_ID WHERE t.WORKER_TITLE = 'Manager';

