--DROP TABLE Employee3
--DROP TABLE Department3
--delete from Employee3 where Designation='Team Lead';
--truncate table Employee3

--Ans 1
--Create Table Department3
CREATE TABLE Department3 (
DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
DepartmentName VARCHAR(10) CHECK (DepartmentName ='CSR' OR DepartmentName='QA' OR DepartmentName='IT')
);

INSERT INTO Department3 
VALUES
('CSR'),
('IT'),
('QA');


SELECT * FROM Department3;


--Create Table Employee3
CREATE TABLE Employee3
(
EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
EmployeeName VARCHAR(20) NOT NULL,
EmployeeSalary INT NOT NULL,
DOJ DATE NOT NULL,
DepartmentID INT ,
Email VARCHAR(20) NOT NULL,
Designation VARCHAR(10) NOT NULL check (Designation='Hr' or Designation= 'Team Lead' or Designation='intern' or Designation='senior'),
FOREIGN KEY (DepartmentID) REFERENCES dbo.Department3 (DepartmentID)
);


--Insert min 7 data into both the tables
INSERT INTO Employee3 
VALUES
('Rohit'  ,490000, '2021-11-10' ,1,'hr@gmail.com',     'senior'),
('mukesh'  ,48000, '2022-12-10' ,2,'sneha@gmail.com',     'senior');

--('Pooja'  ,30000, '2020-11-10' ,1,'hr@gmail.com',     'Hr'),
--('Rohit'  ,20000, '2021-11-10' ,1,'hr@gmail.com',     'senior'),
--('Mukesh' ,28000, '2022-11-10' ,1,'mukesh@gmail.com', 'senior'),
--('RAJ'    ,25000, '2022-11-10' ,2,'raj@gmail.com',    'senior'),
--('vivek'  ,29000, '2022-11-08', 3,'vivek@gmail.com',  'senior'),
--('Rakhi'  ,10000, '2022-11-10' ,1,'rakhi@gmail.com',  'intern'),
--('Diya'   ,10000, '2022-11-10' ,2,'diya@gmail.com',   'intern'),
--('Raju'   ,10000, '2020-12-18' ,3,'raju@gmail.com',   'intern'),
--('Sakshi' ,12000, '2022-11-10' ,1,'sakshi@gmail.com', 'intern'),
--('Ratnesh',41000, '2022-11-10' ,2,'ratnesh@gmail.com','senior'),
--('Ramesh' ,15000, '2022-04-18' ,3,'ramesh@gmail.com', 'intern'),
--('wakis'  ,32000, '2021-01-10' ,1,'wakis@gmail.com',  'senior'),
--('muskan' ,42000,  '2021-01-10' ,2,'muskan@gmail.com', 'senior'),
--('Ram'    ,11000, '2022-06-18' ,3,'ram@gmail.com',    'intern');

select * from Employee3;



--ANS 2
 --2----------------Update designation to Team Lead whose salary is greater than 30K----------------------------
 UPDATE Employee3
SET Designation = 'Team Lead'
WHERE EmployeeSalary>=30000;

--3-----------------Delete employee data whose EmployeeName starts with 'W' and ends with 'S'-------------------

DELETE FROM Employee3
WHERE EmployeeName LIKE 'w%s';

--4-----------------Returns data in this manner {E_id,E_name,E_salary,E_DOJ,D_name,E_email,E_designation}---------
SELECT EmployeeID AS E_id ,EmployeeName AS E_name,EmployeeSalary AS E_salary,DOJ AS E_DOJ,Email AS E_email,
Designation AS E_designation, DepartmentName AS D_name
FROM 
Employee3 
FULL JOIN
Department3
ON 
Employee3.DepartmentID=Department3.DepartmentID;

--5-----------------Select all employee whose department is "IT"------------------------------------------------
SELECT EmployeeID ,EmployeeName ,EmployeeSalary ,DOJ ,Email ,Designation , DepartmentName 
FROM 
Employee3 
FULL JOIN
Department3
ON 
Employee3.DepartmentID=Department3.DepartmentID
where  
DepartmentName ='IT';

--7-----------------------Select employee who has recently joined the organization------------------------

SELECT top(5) DOJ ,EmployeeName ,Designation  FROM Employee3 
order by DOJ DESC;

---------

SELECT *, DATEDIFF(MONTH,DOJ,GETDATE()) as cuurnHired 
FROM Employee3 
ORDER BY DOJ DESC;

--8----------------------Select all employees details with all departments names------------------------------
SELECT EmployeeID ,EmployeeName ,EmployeeSalary ,DOJ ,Email ,Designation , DepartmentName 
FROM 
Employee3 
FULL JOIN
Department3
ON 
Employee3.DepartmentID=Department3.DepartmentID;


--6-----Select total number of employees working in all departments (employee strength must be graterthan 2)
SELECT DepartmentName,COUNT (*) as EmployeeCount 
FROM 
Employee3 e
JOIN
Department3 d
ON 
E.DepartmentID=d.DepartmentID
GROUP BY DepartmentName
HAVING COUNT(*) >2;


--9----------------------- Select employee having second highest salary in IT department using dynamic query-----

DECLARE @table1 varchar(max) 
set @table1 = '
SELECT top 1 *
from  Employee3 E
inner join Department3 D on E.DepartmentID =D. DepartmentID
WHERE DepartmentName=''IT'' AND EmployeeSalary < ( SELECT MAX(EmployeeSalary) FROM Employee3 E
inner join Department3 D on E.DepartmentID =D. DepartmentID where DepartmentName=''IT'' )
order by EmployeeSalary desc;'
exec (@table1)

select * from Employee3 order by EmployeeSalary desc


