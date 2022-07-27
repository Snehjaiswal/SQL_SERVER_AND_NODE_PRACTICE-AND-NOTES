--NAME : SNEH JAISWAL
--START  03:30 PM
--END    4:50 PM


--DROP TABLE Employee1;
--DROP TABLE Department1;
--TRUNCATE TABLE Employee1

--ANS 1.

--CREATE TABLE 
CREATE TABLE Employee1 (
EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
EmployeeName NVARCHAR(20) NOT NULL,
EmployeeSalary INT NOT NULL,
DOB DATE NOT NULL,
DepartmentID INT NOT NULL
)

--CREATE TABLE Department1
CREATE TABLE Department1(
DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
DepartmentName VARCHAR(10)
)

SELECT *FROM  Employee1;
-------------------------------------------------------------------------------------------------------------
--ANS 2.

--ADD NEW FIELD TO EMPLOYEE1
ALTER TABLE Employee1
ADD  EmployeeContactNo BIGINT  , EmployeeEmail VARCHAR(15),EmployeeAlternateNo BIGINT  ;


--Rename EmployeeContactNo to "PhoneNo" using query
EXEC sp_rename 'Employee1.EmployeeContactNo','PhoneNo' , 'COLUMN';

--Remove column EmployeeAlternateNo from Employee table using query
ALTER TABLE Employee1
DROP COLUMN EmployeeAlternateNo;

--Assign relationship between Employee & Department table using query  
--USE LAST

ALTER TABLE Employee1
ADD CONSTRAINT FK_DEPARTMENT_ID
FOREIGN KEY (DepartmentID) REFERENCES dbo.Department1 (DepartmentID);

	
-----------------------------------------------------------------------------------------------------
--ANS 3.
INSERT INTO Employee1
VALUES
('SNEH',10000,'2002-11-20',1,7049520697,'xyz@gmail.com'),
('RAMESH',20000,'2002-11-20',2,7049520697,'xyz@gmail.com'),
('SURESH',30000,'2002-11-20',3,7049520690,'xyz@gmail.com'),
('MAHESH',10500,'2002-11-20',4,7049520697,'xyz@gmail.com'),
('KAMLESH',10800,'2002-11-20',5,7049520690,'xyz@gmail.com'),
('SURESH',30000,'2002-11-20',4,7049520690,NULL),
('MAHESH',40000,'2002-11-20',1,7049520697,'xyz@gmail.com'),
('KAMLESH',50000,'2002-11-20',3,null,'xyz@gmail.com'),
('KAMLESH',10800,'2002-11-20',5,7049520690,'xyz@gmail.com'),
('SURESH',30000,'2002-11-20',2,7049520690,'xyz@gmail.com'),
('MAHESH',40000,'2002-11-20',3,7049520697,NULL),
('KAMLESH',50000,'2002-11-20',1,null,NULL);

INSERT INTO Department1
VALUES
('QA'),
('CSR'),
('INTER'),
('DEV'),
('QA');


-----------------------------------------------------------
--ANS 4.
--Fetch data of employee whose EmployeeContactNo end with '0'
SELECT * FROM Employee1  WHERE PhoneNo LIKE '%0';


--Show all details of employee with its Departmentname
SELECT EmployeeID ,EmployeeName ,EmployeeSalary,DOB,Employee1.DepartmentID,DepartmentName 
FROM Employee1,Department1 
WHERE 
Employee1.DepartmentID =Department1.DepartmentID


--Show all employees whose salary is between 10,000 to 20,000
SELECT * FROM Employee1
WHERE EmployeeSalary BETWEEN 10000 AND 20000;

--Show all employees whose EmployeeEmail is null & EmployeeContactNo is not null    ****
SELECT *FROM Employee1
WHERE  EmployeeEmail IS  NULL AND PhoneNo IS NOT NULL ;


SELECT * FROM Employee1 E1 LEFT JOIN Department1 D1 ON  E1.DepartmentID = D1.DepartmentID

-----------------------------------------------------------------------------
--ANS 5.

		DECLARE @NUM INT  ;
		SET @NUM = 6;	

		 IF ( @NUM =1 )
		BEGIN 
		PRINT 'MONDAY' 
		END
		ELSE IF ( @NUM =2)
		BEGIN 
		PRINT 'TUESDAY'  
		END
		ELSE IF ( @NUM =3 )
		BEGIN 
		PRINT 'WEDNESDAY'
		END
		ELSE IF ( @NUM =4 )
		BEGIN 
		PRINT 'THURSDAY' 
		END
		ELSE IF ( @NUM =5 )
		BEGIN 
		PRINT 'FRIDAY' 
		END
		ELSE IF ( @NUM =6 )
		BEGIN 
		PRINT 'STURDAY' 
		END
		ELSE IF ( @NUM = 7 )
		BEGIN 
		PRINT 'SUNDAY'   
		END
		ELSE 
		BEGIN 
		PRINT 'WRONG NUMBER'
		END

		---------------------------------------------------------------------
		--ANS 6 

		DECLARE @N INT;
		SET @N = 1;

		WHILE ( @N < = 50)
		BEGIN
		IF  (@N % 2 = 0)
		BEGIN 
		PRINT @N
		END
		SET  @N = @N +1
		END





