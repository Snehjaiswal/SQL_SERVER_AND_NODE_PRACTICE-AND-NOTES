	--USE INTERNDB;

	-- --CREATE DATABASE SAMPLE1;

	----SHOW DATABASES

	----SHOW DATABASES;

	----SHOW TABLE DATA
	----SELECT * FROM PERSONS;
	----SELECT * FROM CUSTOMERS;
	----SELECT * FROM USERS;


	------FLOAT
	----DECLARE @A FLOAT 
	----SET @A = 10.54654
	----PRINT @A

	------VAR CHAR 
	----SET @B = 'I AM A CODER'
	----PRINT @B


	------CHAR 
	----DECLARE @C CHAR(100)
	----SET @C = 'I AM A CODER'
	----PRINT @C

	------PRINT 'RAM';

	----IF ELSE CONDITION


	----SELECT FROM LIMIT USE 
	-- --SELECT * FROM  USERS LIMIT 5;



	----DROP TABLE;
	----DROP TABLE CUSTOMERS;
	----DROP TABLE PERSONS;
	----DROP TABLE USERS1;
	--DROP TABLE USERS;


	----CREATE TABLE	
	--CREATE TABLE USERS(
	--USERID INT IDENTITY(1,1) PRIMARY KEY,
	--USERNAME VARCHAR(10),
	--ADDRESS TEXT ,
	--AGE INT ,
	--SALARY DEC (7,2)
	--);

	--INSERT INTO USERS 
	--VALUES ('SNEH14','KHATEGAON MP',39,10004.10),
	--('SNEH15','KHATEGAON MP',69,13000.10),
	--('SNEH16','KHATEGAON MP',21,18000.10);




	--SELECT * FROM USERS;

	----YOU WILL YOU ROLLBACK THAN YOU KNOW BEGIN TRANSACTION
	----BEGIN TRANSACTION
	----UPDATE USERS SET SALARY= 10000;

	----ROLLBACK;

	----COMMIT;

	----CHANGE COLUMN NAME
	----EXEC SP_RENAME  'USERS1.AGE', 'CURRAGE', 'COLUMN';

	------DELETE SPECIFIC ROW USING WHERE KEYBORS USE 
	----DELETE FROM USERS WHERE USERID = 3;


	---- USE ONLY SINGLE QUOTES

	----INSSET INTO TABLE DATA
	----INSERT INTO USERS
	----VALUES('SNEH','JAISWAL',19);

	----INSERT INTO CUSTOMERS (CUSTOMERNAME, CONTACTNAME, ADDRESS, CITY)
	----VALUES ('CARDINAL','12','SKAGEN 21','STAVANGER');

	---- NOT USE SPECIFY COLUME NAME
	----INSERT INTO CUSTOMERS 
	----VALUES ('CARDINAL','12','SKAGEN 21','STAVANGER'),
	----('CARDINAL','12','SKAGEN 21','STAVANGER'),
	----('CARDINAL','12','SKAGEN 21','STAVANGER');



	----DROP COLUMN LIKE DELETE COLUMN 
	----BEGIN TRANSACTION
	----ALTER TABLE USERS
	----DROP COLUMN AGE;


	----ROLLBACK;

	----COMMIT;

	----SELECT * FROM SAM_EMPLOYEE;
	----SELECT * FROM INTERNDB;


	----SELECT * FROM USERS ;
	----EXEC SP_RENAME 'USERS.ID' ,'USERID ','COLUMN'
	----SELECT * FROM USERS ;

	----UPDATE USERS SET EMAIL ='SNEH.JAISWAL@ESMSYS.COM'	


	----ALTER TABLE USERS
	----ADD ROLL VARCHAR(255);
	----UPDATE USERS  SET AGE = 35 
	----WHERE USERID =6

	----ALTER TABLE USERS
	----DROP COLUMN ROLL;

	----SELECT * FROM USERS WHERE AGE =19;



	----ALTER TABLE USERS
	----ALTER COLUMN AGE INT;
  
	----UPDATE USERS SET SALARY = 4000
	----WHERE AGE >= 35;

	--SELECT * FROM USERS;
	----AGGREATE FUNCTION
	--SELECT SUM(SALARY),AVG(SALARY),MAX(SALARY),MIN(SALARY),COUNT(SALARY) FROM USERS;

	----NUMERIC FUNCTION
	--SELECT ABS(-24),CEILING(87.788),FLOOR(56.05),SIGN(1),SIGN(-1898),SIGN(0);
	--SELECT SQUARE(5),SQRT(225),PI()
	--SELECT EXP(1)

	----STRING FUNCTION
	--SELECT SALARY,LEN(SALARY) FROM USERS;

	----IF ELSE CONDITION 

	--DECLARE @A INT;
	--SET @A =15;

	--IF(  @A >= 18)
	--BEGIN 
	--PRINT 'AGE IS GRETER THAN 18';
	--END
	--ELSE
	--BEGIN
	--PRINT 'AGE IS LESS THAN 18';
	----END

	----CREATE TABLE ORDERS (
	----    ORDERID INT NOT NULL PRIMARY KEY,
	----    ORDERNUMBER INT NOT NULL,
	----    PERSONID INT FOREIGN KEY REFERENCES PERSONS(PERSONID)
	----);
	----CREATE TABLE SNEH_USERS (
	----USERID INT	I ,
	----FIRSTNAME VARCHAR(10) NOT NULL,
	----LASTNAME VARCHAR(10) NOT NULL
	------,CONSTRAINT PK_USERS PRIMARY KEY (USERID,LASTNAME)
	----)
	----SELECT * FROM SNEH_USERS
	----INSERT INTO SNEH_USERS 
	----VALUES (0,'SNEHJ','JAISWAL')

	----DROP TABLE SNEH_USERS
	----ALTER TABLE PERSONS
	----DROP CONSTRAINT PK_PERSON;
	----=========================================================================
	--               --PERSONS TABLE--

	----DROP TABLE PERSONS;

	--CREATE TABLE PERSONS (
	--    ID INT IDENTITY(1,1) PRIMARY KEY,
	--    LASTNAME VARCHAR(255) NOT NULL,
	--    FIRSTNAME VARCHAR(255) NOT NULL,
	--    AGE INT,
	--	 CITY VARCHAR(255) DEFAULT 'INDIA',
	--    TODAYDATE DATE DEFAULT GETDATE()
	--);

	--DELETE FROM PERSONS WHERE ID = 3;

	--SELECT * FROM PERSONS;

	--INSERT INTO PERSONS(LASTNAME,FIRSTNAME,AGE)
	--VALUES ('SNEH','JAISWAL',18);



	--CREATE TABLE CITY 
	--( CID INT IDENTITY(1,1) PRIMARY KEY ,
	--  CITYNAME VARCHAR(50) NOT NULL
	--);





	----=========================================================================
	----OPERATORS IN SQL 
	--	--IN  TRUE IF THE OPERAND IS EQUAL TO ONE OF A LIST OF EXPRESSIOQNS
	SELECT * FROM sneh_Person WHERE Age IN(1);

	--	--LIKE TRUE IF THE OPERAND MATCHES A PATTERN
	--SELECT * FROM USERS WHERE AGE LIKE '2%';

	--	--AND TRUE IF ALL THE CONDITIONS SEPARATED BY AND IS TRUE
	--SELECT * FROM USERS WHERE AGE = 19 AND  SALARY = 17000.10;

	--	--BETWEEN TRUE IF THE OPERAND IS WITHIN THE RANGE OF COMPARISONS
	--SELECT * FROM USERS WHERE AGE BETWEEN 10 AND 20;

	--	--TRUE IF THE SUBQUERY RETURNS ONE OR MORE RECORDS
	--SELECT * FROM USERS 

	--   --OR TRUE IF ANY OF THE CONDITIONS SEPARATED BY OR IS TRUE
	--SELECT * FROM USERS WHERE AGE <10 OR AGE > 20;


	-------------------------------------------------------------------------------------------------------

	------------------------------------FIND MONTH USING IF ELES IF----------------------------------------------------------------------

		DECLARE @NUM INT  ;
		SET @NUM = 17;	

		IF ( @NUM = 1 )
		BEGIN 
		PRINT 'JANUARY'   
		END

		ELSE IF ( @NUM =2 )
		BEGIN 
		PRINT 'FEBRUARY' 
		END
		ELSE IF ( @NUM =3 )
		BEGIN 
		PRINT 'MARCH'  
		END
		ELSE IF ( @NUM =4 )
		BEGIN 
		PRINT 'APRIL'
		END
		ELSE IF ( @NUM =5 )
		BEGIN 
		PRINT 'MAY' 
		END
		ELSE IF ( @NUM =6 )
		BEGIN 
		PRINT 'JUNE' 
		END
		ELSE IF ( @NUM =7 )
		BEGIN 
		PRINT 'JULY' 
		END
		ELSE IF ( @NUM =8 )
		BEGIN 
		PRINT 'AUGUST'  
		END
		ELSE IF ( @NUM =9 )
		BEGIN 
		PRINT 'SEPTEMBER'  
		END
		ELSE IF ( @NUM =10 )
		BEGIN 
		PRINT 'OCTOBER' 
		END
		ELSE IF ( @NUM =11 )
		BEGIN 
		PRINT 'NOVEMBER '  
		END
		ELSE IF ( @NUM =12 )
		BEGIN 
		PRINT 'DECEMBER '  
		END
		ELSE 
		BEGIN 
		PRINT 'WRONG NUMBER'
		END
	--------------------------------------------------------------------------------------------------------------------------------
		------TABLE 1-ST


		CREATE TABLE sneh_Person(
		PersonID int identity(1,1) primary key,
		LastName varchar(255) NOT NULL,
		FirstName varchar(255) NOT NULL,
		Age int,
		City int
	
	)

	insert into sneh_Person
	values ('Sneh','jaiswal',19,1),
		  ('Sneh','jaiswal',19,4),
		   ('Sneh','jaiswal',19,2),
		   ('Sneh','jaiswal',19,5),
		   ('Sneh','jaiswal',19,4);


		alter table sneh_Person
		add constraint Fk_Persons_CityID
		foreign key (City) references snehCity (CityID)
	 
		------TABLE 2-END
	
		CREATE TABLE snehCity (
		CityID int identity(1,1) primary key,	
		cityNAme nvarchar(10) not null
	);
	insert into snehCity 
	values ('Indoer'),
		   ('Bhopal'),
		   ('Ahmdabad'),
		   ('Delhi'),
		   ('Pune');

		   select * from sneh_Person;
		   SELECT* FROM snehCity;
		   exec sp_rename 'sneh_Person.Roll','role','column';

		   alter table sneh_Person 
		   drop column role;
	
	------------------------------------------------------------------------------------------------------------------------------------
	alter table snehCity
	add match varchar(10);

	-----aggregate function
	select abs(-67)

	select count(PersonID) from sneh_Person;

	SELECT * FROM sneh_Person
	UNION
	SELECT * FROM snehCity
	ORDER BY PersonID;
	-------------------------------------------------------------------------------------------------------------------------------
	--DROP TABLE SNEH_USERS

	CREATE TABLE SNEH_USERS(
	UserId int identity(1,1) primary key ,
	FirstName nvarchar(10) not null ,
	LastName nvarchar(10) not null ,
	CityName nvarchar(10) not null ,
	Country nvarchar(10) not null ,
	Age int CHECK (Age>=18 ),
	Subject varchar(10) ,
	RollNumber INT UNIQUE
	)

	INSERT INTO SNEH_USERS 
	VALUES 
	('SNEH','jaiswal','KHATEGAON','India',19,'BCA',001),
	('ANMOL','RAJPUT','SANADALPUR','India',20,'BSCCS',002),
	('BHOLA','MISHARA','HANDIA','India',19,'BCOM',003),
	('SHRUTI','SEVAK','HARDA','India',19,'BCA',004),
	('RATNESH','DUBEY','KHATEGAON','India',19,'BCA',005),
	('RIYA','JAISWAL','INDORE','India',18,'18',006),
	('SNEHA','TRIVEDI','KHATEGAON','India',19,'BSCCS',007),
	('DEEEPAK','LOWANSHI','KAMALPUR','India',20,'BCA',008),
	('SHUBHAM','VISHWKARMA','KANNOD','India',20,'BCA',009),
	('MUSKAN','YADAV','KANNOD','India',19,'BCA',010),
	('SHIVANI','JOSHI','NEMABER','India',20,'BCA',011),
	('HARDH','VISHWKARMA','KHATEGAON','India',20,'BCA',012),
	('BAL MUKUND','NULL','UP','India',28,'BSCCS',013),
	('RAHUL','VISHWAKRAM','BHOPAL','India',19,'BCA',014),
	('SANJAY','RAJPUT','BAMAN GAON','India',19,'BCA',100);
	
	
	
	SELECT *FROM SNEH_USERS;
