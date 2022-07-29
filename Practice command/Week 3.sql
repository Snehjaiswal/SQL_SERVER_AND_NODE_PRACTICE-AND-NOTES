----SELECT  SYSDATETIME() ,'05-00-00' 
----	   ,SYSDATETIMEOFFSET()  ,SYSUTCDATETIME()  ,CURRENT_TIMESTAMP  
----       ,GETDATE()  ,GETUTCDATE();
--SELECT  CONVERT (TIME, SYSDATETIME()) ,CONVERT (DATE, SYSDATETIMEOFFSET())  
--       ,CONVERT (DATE, SYSUTCDATETIME()),CONVERT (DATE, CURRENT_TIMESTAMP)  
--       ,CONVERT (DATE, GETDATE()) ,CONVERT (DATE, GETUTCDATE());  

----SELECT  CONVERT (TIME, SYSDATETIME()) ,CONVERT (TIME, SYSDATETIMEOFFSET())  
----       ,CONVERT (TIME, SYSUTCDATETIME()) ,CONVERT (TIME, CURRENT_TIMESTAMP)  
----       ,CONVERT (TIME, GETDATE()) ,CONVERT (TIME, GETUTCDATE());  
----SELECT  SWITCHOFFSET(SYSDATETIMEOFFSET(),'+05:00')   
----SELECT  SYSDATETIMEOFFSET();
----SELECT  DATEADD(MINUTE, 330,GETDATE())
----SELECT  DATEDIFF (YEAR ,'2002-10-22',GETDATE());	
----SELECT  DATEDIFF (MONTH ,'2002-10-22',GETDATE());		
----SELECT  DATEDIFF (DAY ,'2002-10-22',GETDATE());
----SELECT  DATEDIFF (HOUR ,'2002-10-22',GETDATE());
----SELECT  * FROM EMPLOYEE3
----ORDER BY EMPLOYEEID
----SELECT * FROM EMPLOYEE3
----WHERE EMPLOYEEID BETWEEN 0 AND 60;
----CREATE STORE PROCEDURE
--GO
--SELECT DAY(GETDATE())
--SELECT DATENAME(WEEK,GETDATE())
--SELECT DATENAME(QUARTER,GETDATE())
--SELECT DATENAME(WEEKDAY,GETDATE())
--SELECT DATENAME(WEEKDAY,GETDATE())
--SELECT DATENAME(WEEKDAY,GETDATE())
--SELECT DATENAME(WEEKDAY,GETDATE())


--SELECT GETDATE() AS OLDDATE , CAST(GETDATE() AS VARCHAR ) AS DATE ,CAST(GETDATE() AS DATE ) AS DAATEDATE ,
--CAST(GETDATE() AS TIME ) AS DATETIME_



-------------------------------------------------------------------------------------------

--exec SP_TWOTABLEDATA

------------------------------------------------------------------------------------------
GO
--alter PROCEDURE SP_TWOTABLEDATA
--WITH ENCRYPTION
--AS
--BEGIN
--SELECT EMPLOYEEID ,EMPLOYEENAME ,EmployeeSalary ,DOJ ,EMAIL ,DESIGNATION , DEPARTMENTNAME 
--FROM 
--EMPLOYEE3 
--FULL JOIN
--DEPARTMENT3
--ON 
--EMPLOYEE3.DEPARTMENTID=DEPARTMENT3.DEPARTMENTID
--END;
----CALL SP
--EXEC SPTWOTABLEDATA;
--GO
-----------------------------------------------------
----ALTER STORE PROCEDURE
--ALTER PROCEDURE SPTWOTABLEDATA
--AS
--BEGIN
--SELECT EMPLOYEEID ,EMPLOYEENAME ,EmployeeSalary ,DOJ ,EMAIL ,DESIGNATION , DEPARTMENTNAME 
--FROM 
--EMPLOYEE3 
--FULL JOIN
--DEPARTMENT3
--ON 
--EMPLOYEE3.DEPARTMENTID=DEPARTMENT3.DEPARTMENTID
--WHERE DEPARTMENTNAME='IT'
--END;
----CALL SP
--EXEC SPTWOTABLEDATA;
-----------------------------------------------------
--GO
----DROP STORE PROCEDURE
-- --DROP PROC SPTWOTABLEDATA;
-- -----------------------------------------------------------------------
---- STORE PROCEDURE PARAMETER
-- ALTER PROCEDURE SPTWOTABLEDATA
-- @DEPARTMENTNAME VARCHAR(MAX) = 'IT'
 
--WITH ENCRYPTION
--AS
--BEGIN
--SELECT EMPLOYEEID ,EMPLOYEENAME ,EmployeeSalary ,DOJ ,EMAIL ,DESIGNATION , DEPARTMENTNAME 
--FROM 
--EMPLOYEE3 
--FULL JOIN
--DEPARTMENT3
--ON 
--EMPLOYEE3.DEPARTMENTID=DEPARTMENT3.DEPARTMENTID
--WHERE DEPARTMENTNAME=@DEPARTMENTNAME
--END;
----CALL SP
--EXEC SPTWOTABLEDATA 'CSR'
-------------------------------------------------------------------------------
----SUM OF HELP SP
--GO
--SP_HELPTEXT SP_GETEMPDETAILS2
--GO
--ALTER PROC SPADDITION 
--@NUM1 INT,
--@NUM2 INT,
--@RESULT INT OUTPUT

--WITH ENCRYPTION
--AS 
--BEGIN
--SET @RESULT = @NUM1 + @NUM2
--END;

--GO

--DECLARE @SUM INT 
--EXEC SPADDITION 30,50, @SUM OUTPUT
--SELECT @SUM;

--GO
--DECLARE @A INT = 10
--BEGIN
--PRINT @A
--END 
--SELECT @A AS NUM


--GO

--SELECT REPLACE (EMPLOYEENAME ,'SNEH','SNEH') FROM EMPLOYEE3
--SELECT EMPLOYEENAME FROM EMPLOYEE3
--WHERE EMPLOYEENAME ='SNEH'
--BEGIN
--IF EMPLOYEENAME='SNEH' 
--BEGIN
--PRINT 'HI'
--END
--END
-----------------------------------------------------------------------------------------------
----STRING FUNCTION
----ASCII
--SELECT ASCII(EMPLOYEENAME) AS NUMCODEOFFIRSTCHAR
--FROM EMPLOYEE3;

--GO
----CHAR
--SELECT CHAR(65) AS NUMBERCODETOCHARACTER;

--GO
----CHARINDEX
--SELECT CHARINDEX('OM', 'CUSTOMER') AS MATCHPOSITION;

----CHARINDEX WITH POSITION
--SELECT CHARINDEX('MER', 'CUSTOMER', 3) AS MATCHPOSITION;

----CONCAT
--SELECT CONCAT('SQL', ' ', 'IS', ' ', 'FUN!');
--SELECT 'SQL' + ' ' + 'IS' + ' ' + 'FUN!';  --USING +

----CONCAT_WS
--SELECT CONCAT_WS('-', 'SQL', ' IS', ' FUN!');

----DATALENGTH
--SELECT DATALENGTH('W3SCHOOLS.COM');
--SELECT DATALENGTH('2017-08');
--SELECT DATALENGTH('   W3SCHOOLS.COM   ');

----DIFFERENCE() 

----DATETIME
--DECLARE @D DATETIME = '12/01/2018';  
--SELECT FORMAT (@D, 'D', 'EN-US') AS 'US ENGLISH RESULT',  
--       FORMAT (@D, 'D', 'NO') AS 'NORWEGIAN RESULT',  
--       FORMAT (@D, 'D', 'ZU') AS 'ZULU RESULT';

--SELECT FORMAT(123456789, '##-##-#####');

----LEFT
--SELECT LEFT('SQL TUTORIAL', 3) AS EXTRACTSTRING;
--SELECT LEFT('SQL TUTORIAL', 100) AS EXTRACTSTRING;

----LEN
--SELECT LEN('W3SCHOOLS.COM');
--SELECT LEN('2017-08');
       
----LOWER
--SELECT LOWER('SQL TUTORIAL IS FUN!');
 
----LTRIM      
--SELECT LTRIM('     SQL TUTORIAL') AS LEFTTRIMMEDSTRING;

----NCHAR
--SELECT NCHAR(65) AS NUMBERCODETOUNICODE;

----PATINDEX
--SELECT PATINDEX('%HELLO%STUDENT%', 'HELLO EVERYONE MY NAME IS SNEH JAISWAL AND I AM COLLEGE STUDENT');

----QUOTENAME
--SELECT QUOTENAME('ABCDEF', '()');

----REPLACE
--SELECT REPLACE('ABC ABC ABC', 'A', 'C');
--SELECT REPLACE('SQL TUTORIAL', 'SQL', 'HTML');
--SELECT REPLACE('SQL TUTORIAL', 'T', 'M');
        
----REPLICATE
--SELECT REPLICATE('SQL TUTORIAL', 5);

----REVERSE
--SELECT REVERSE('SQL TUTORIAL');

----RIGHT
--SELECT RIGHT('SQL TUTORIAL', 3) AS EXTRACTSTRING;
    


--	GO

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
----USER DEFINED FUNCTION
--CREATE FUNCTION EAST_OR_WEST (
--	@LONG DECIMAL(9,6)
--)
--RETURNS CHAR(4) AS
--BEGIN
--	DECLARE @RETURN_VALUE CHAR(4);
--	SET @RETURN_VALUE = 'SAME';
--    IF (@LONG > 0.00) SET @RETURN_VALUE = 'EAST';
--    IF (@LONG < 0.00) SET @RETURN_VALUE = 'WEST';
 
--    RETURN @RETURN_VALUE
--END;
--GO
--SELECT DBO.EAST_OR_WEST(0)
--GO
-------------------------------------------------------------------------
--CREATE FUNCTION SUMVAL(
--	@A INT ,@B INT
--)
--RETURNS CHAR(4) AS
--BEGIN
--	DECLARE @RETURN_VALUE INT;
--	SET @RETURN_VALUE = @A + @B
  
--    RETURN @RETURN_VALUE
--END;
--GO
--SELECT DBO.SUMVAL(155,2000) AS SUM,DBO.SUMVAL(155,2000),DBO.SUMVAL(155,2000)
--,DBO.SUMVAL(155,2000),DBO.SUMVAL(155,2000),DBO.SUMVAL(155,2000)
--GO

-----------------------------------------------------------------------------
----CREATE A FUNCTION  WITHOUT PARAMETER
--CREATE FUNCTION STRI()
--RETURNS VARCHAR(MAX)
--AS
--BEGIN 
--RETURN 'HELLO SNEH'
--END
--GO
--SELECT DBO.STRI()

--GO

--CREATE FUNCTION NUM()
--RETURNS INT
--AS
--BEGIN 
--RETURN 100
--END
--GO
--SELECT DBO.NUM()

--GO
--DROP FUNCTION DBO.NUM;

--GO
----============================================================================================================
--CREATE PROCEDURE SPCONCATENAME 
--@FNAME NVARCHAR(MAX),
--@LNAME NVARCHAR(MAX),
--@FULLNAME NVARCHAR(MAX) OUTPUT

--AS BEGIN 
--SET @FULLNAME = @FNAME+' '+@LNAME
--END
--GO
--DECLARE @NAME NVARCHAR(MAX)
--EXEC SPCONCATENAME 'SNEH', 'JAISWAL' , @NAME OUTPUT
--PRINT @NAME

-------------------------------------------------------------------------------
--GO

--ALTER PROCEDURE CHECKNULL 

--@TOTALCOUNT VARCHAR(MAX) OUT

--AS BEGIN
--SELECT @TOTALCOUNT = COUNT(EMPLOYEEID) FROM EMPLOYEE3 
--END
--GO 

--ALTER PROCEDURE CHECKNULL 

--AS 
--BEGIN
--RETURN (SELECT COUNT(EMPLOYEEID) FROM EMPLOYEE3 )
--END

--GO
--DECLARE @TOTALIDCOUNT VARCHAR(MAX)

--EXEC  @TOTALIDCOUNT = CHECKNULL 
--IF(@TOTALIDCOUNT IS NULL)
--PRINT '@TOTALIDCOUNT IS NULL'
--ELSE
--PRINT '@TOTALIDCOUNT IS NOT NULL'

--PRINT @TOTALIDCOUNT
-----------------------------------------------------------------
----PRINT A TO Z--
--SELECT ASCII('A')
--SELECT CHAR(65)

--DECLARE @ALPHA INT 
--SET @ALPHA = 65
--WHILE ( @ALPHA <=90)
--BEGIN 
--PRINT CHAR(@ALPHA)
--SET @ALPHA = @ALPHA+1
--END
---------------------------------------------- -------------------------------
--SELECT LEFT (12345,3)


----CHARINDEX
--SELECT CHARINDEX('@', 'SNEHJAISWAL@GMAIL.COM')
 
-- SELECT SUBSTRING('SNEH JAISWAL',1,5)


-- --SUBSTRING RETURN ( I WILL CHECK A DOMAIN  NAME OF THIS MAIL)
-- SELECT  SUBSTRING ('SNEHJAISWAL@GMAIL.COM',CHARINDEX('@', 'SNEHJAISWAL@GMAIL.COM'),12)
 
-- GO

-- DECLARE @NAME VARCHAR(MAX) = 'SNEH JAISWAL' , @FIRST VARCHAR(MAX)
-- SET @FIRST=' SELECT LEFT (@NAME,1)'
-- EXEC @FIRST
-- SELECT UPPER(LEFT ('SNEH JAISWAL',1))


------------------------------------------------
-- --REPLICATE STRING
-- SELECT REPLICATE('RAM' ,3)

-- -----------------------------------------------------------------------------------------
-- --PATINDAEX
 
-- SELECT PATINDEX('%@GMAIL.COM','S@GMAIL.COM ')

-- SELECT EMPLOYEENAME,EMAIL,DESIGNATION FROM EMPLOYEE3;

-- SELECT EMAIL , PATINDEX('%@GMAIL.COM' ,EMAIL ) AS EMAIL FROM EMPLOYEE3 
-- WHERE  PATINDEX('%@GMAIL.COM' ,EMAIL ) > 7 -

-------------------------------------------------------------------------------------------------------------------
--Numeric Function
--SELECT FLOOR(RAND() * 100)

----1 TO 100 10 RANDOME NUMBER PRINT
--DECLARE @NUM INT = 1;
--WHILE @NUM <=10
--BEGIN

--PRINT @NUM +' '+ FLOOR(RAND() * 100 +1)
--SET @NUM = @NUM +1;
--END
--GO
-----------------------------------------------------------------
----inline table valued function
----alter function viewtable (@rang int= 10)
----returns table 
----as 
----return (select * from Employee3 where EmployeeID < @rang )
--DECLARE @st varchar(max) ='on v.DepartmentID = d.DepartmentID'
--GO 
--SELECT * from viewtable(3) v  inner join Department3  on v.DepartmentID = d.DepartmentID;

--GO

--SELECT * FROM Employee3  join Department3 on Employee3.DepartmentID = Department3.DepartmentID

--GO 
ALTER FUNCTION fn_viewDAta  (@dep int)
returns table
as
return( SELECT * FROM Employee3  
where DepartmentID = @dep )

select * from fn_viewDAta(1) where EmployeeSalary =(
select max(EmployeeSalary) from fn_viewDAta(1))

select REPLACE(Designation,'i','I') from fn_viewDAta(1)
-----------------------------------------------------------------------------------------	
--function practice
 SELECT Designation, sum(EmployeeSalary) from Employee3 group by Designation;

 SELECT distinct EmployeeSalary from Employee3 a 
 WHERE 3 >= (SELECT count(distinct EmployeeSalary) from Employee3 b 
 WHERE a.EmployeeSalary <= b.EmployeeSalary) order by a.EmployeeSalary desc;

 GO

 Select max(EmployeeSalary) from Employee3 
where EmployeeSalary not in (Select max(EmployeeSalary) from Employee3);

Go

SELECT EmployeeSalary
FROM Employee3 W1
WHERE 4 = (
 SELECT COUNT( DISTINCT ( W2.EmployeeSalary ) )
 FROM Employee3 W2
 WHERE W2.EmployeeSalary >= W1.EmployeeSalary
 );

 SELECT EmployeeSalary
FROM Employee3 W1
WHERE n-1 = (
 SELECT COUNT( DISTINCT ( W2.EmployeeSalary ) )
 FROM Employee3 W2
 WHERE W2.EmployeeSalary >= W1.EmployeeSalary
 );	
 GO
SELECT max(EmployeeName) from Employee3
GO
SELECT len(EmployeeName) from Employee3
GO

ALTER procedure CheckAge 
@age int ,
@ans varchar(max) out
as 
if(@age > 18)

begin
set @ans = 'you are age is greater than 18'
end
else
begin
set @ans = 'you are age is less than 18'
end

GO

declare @ans varchar(max)
exec CheckAge  8 , @ans out
print @ans

GO

SELECT CURRENT_USER;

GO


SELECT IIF(500<1000, IIF(500<1000, IIF(500<1000, 'YES2', 'NO'), 'NO2'), 'NO');

GO

SELECT SESSION_USER;


GO

SELECT SYSTEM_USER;

GO

SELECT USER_NAME();
SELECT USER_NAME(1);
SELECT USER_NAME(2);
SELECT USER_NAME(3);
SELECT USER_NAME(4);
SELECT USER_NAME(5);
SELECT USER_NAME(6);
SELECT USER_NAME(7);
SELECT USER_NAME(8);
SELECT USER_NAME(9);
SELECT USER_NAME(10);

GO 
-----------------------------------------------------------------------------------------

--User defined function
--scaler function

--alter function multy (@a int,@b int )
--returns char(10)
--as 
--begin 
--DECLARE @c int
--set @c = @a*@b;

--return @c
--end
--GO
----------------------------|
--select  dbo.multy(10,20)--|
--------------------------|
;
GO

GO
----------------------------------------------------
GO
declare @x int,@y int
select @x=5,@y=0
while @x>0
begin
print space(@x)+replicate('*',@y)+replicate('*',@y+1)
set @y=@y+1
set @x=@x-1
end
 --    *
 --   ***
 --  *****
 -- *******
 --*********
 ----------------------------------------------

-- SELECT a.stock_code
--FROM price_today a
--INNER JOIN price_tomorrow b
--ON a.stock_code = b.stock_code
--WHERE b.price>a.price
--ORDER BY stock_code asc;


--select std.roll_number, std.name 
--from student_information std, faculty_information fi 
--where std.advisor = fi.employee_id and (fi.gender = 'M' and fi.salary > 15000 or fi.gender = 'F' and fi.salary > 20000) 
GO
--Scalar function
CREATE FUNCTION fn_SumTwoNum (@a int , @b int )
RETURNS  CHAR(10)
AS
BEGIN
DECLARE @c int
set @c = @a + @b;

RETURN @c
END

Go --Call function
SELECT dbo.fn_SumTwoNum(10,20)
GO
-----------------------------------------------
--Inline table valued function
--ALTER FUNCTION fn_inlineTable ( )
--RETURNS  TABLE
--AS
--RETURN
--(
--SELECT * FROM Employee3 
--)
--Go --Call function
--SELECT *FROM dbo.fn_inlineTable()
--------------------------------------------------
GO
--Multy line table valued function

ALTER FUNCTION fn_multyLineTable ( )
RETURNS  @t TABLE (id int , name varchar(20),salary int)
AS
BEGIN

INSERT INTO @t
SELECT EmployeeID,EmployeeName,EmployeeSalary FROM Employee3 where EmployeeSalary >50000;
RETURN 
END
GO--
SELECT * FROM fn_multyLineTable()

	
--------------------------------------------------
GO



