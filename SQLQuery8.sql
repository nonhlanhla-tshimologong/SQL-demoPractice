USE Northwind

--string manipulation

SELECT * FROM EmployeesExtraCharacters

SELECT FirstName, LastName, LTRIM(FirstName), LTRIM(FirstName) FROM EmployeesUppercase


SELECT SUBSTRING(LTRIM('     Hello'),1,1)

SELECT SUBSTRING(LTRIM('     Hello'),2,5)

SELECT 
     LastName, 
	 FirstName, 
	 SUBSTRING(RTRIM(LastName),1,1) AS LastNameBeginningCharacter, 
	 SUBSTRING(RTRIM(FirstName),1,1) AS FirstameBeginingCharacter
	 FROM EmployeesUppercase

SELECT SUBSTRING('Hello',2,50)
SELECT SUBSTRING('Hello',2,2)
SELECT LEN('Hello')
SELECT SUBSTRING('Hello',2,LEN('Hello'))
SELECT SUBSTRING('Hello',2,LEN('Hello')-1)


SELECT UPPER('day')
SELECT LOWER('NIGHT')

SELECT 
     UPPER(
	 SUBSTRING(LTRIM(FirstName),1,1)
	 ),
	 LOWER(
	 SUBSTRING(LTRIM(FirstName),2,LEN(FirstName))
	 ),
	 UPPER(
	 SUBSTRING(LTRIM(LastName),1,1)
	 ),
	 LOWER(
	 SUBSTRING(LTRIM(LastName),2,LEN(LastName))
	 )
	 FROM EmployeesUppercase

--Concatenate

SELECT 
     CONCAT(
	        UPPER(
			      SUBSTRING(RTRIM(FirstName),1,1)
				  ),
			LOWER(
			       SUBSTRING(RTRIM(FirstName),2,LEN(Firstname))
				   ),
				   ',',
			 UPPER(
			      SUBSTRING(RTRIM(LastName),1,1)
				  ),
			LOWER(
			       SUBSTRING(RTRIM(LastName),2,LEN(Lastname))
				   )
			)
			AS FormattedName
			FROM EmployeesUppercase

--SELECT 
--      CONCAT_WS(dbo.FormatProperSimple(LastName),
--	        ',',
--			dbo.FormatProperSimple(FirstName)
--			)
--			AS FormattedName
--			FROM EmployeesUppercase

--Characters

DECLARE @str1 AS VARCHAR(100)
DECLARE @str AS VARCHAR(MAX)
DECLARE @startPosition AS INT
DECLARE @pos AS INT

SET @str = '** . **.NA&&&NCY.**** _  '
PRINT @str

--SET @str = TRIM('* . 0 _' FROM @str)
PRINT @str

SET @str = '-  _()  1234***()o%%%^''con|{}|nor lis-a____N\ne janet li._'
PRINT @str

--SET @str = TRIM('- () _ .' FROM LOWER(@str))

--CASE STATEMENTS

SELECT 
      CASE WHEN 1 = 5 THEN '1 EQUALS 5'
	      ELSE
          '1 DOES NOT EQUAL 5'
	  END AS result

SELECT 
      CASE WHEN 1 > 0 THEN '1 Is greater than 0'
	       WHEN 1 = 1 THEN '1 equals 1'
	  END AS RESULT

