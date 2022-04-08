USE master

SELECT GETDATE()

SELECT CAST(GETDATE() AS varchar)

SELECT CAST(GETdATE() AS varchar(11)) AS CurrentDate

SELECT 
     CONVERT(varchar(50),GETDATE(),101) AS CurrentDate,
	 CONVERT(varchar,GETDATE(),1),
	 CONVERT(varchar,GETDATE(),2)

SELECT CAST(GETDATE() AS money),
     CONVERT(money, GETDATE())

--returns NULL

SELECT TRY_CAST('Hello World' AS int)

SELECT TRY_CONVERT(int, 'Hello World')

/*returns error /not allowed 

SELECT 
    TRY_CAST(GETDATE() AS image),
     TRY_CONVERT(image, GETDATE())*/

--DATE FORMAT

SELECT GETDATE()

DECLARE @num AS INT
SET @num = 012345678

SELECT 
      CASE WHEN LEN(@num) = 9 THEN 
	       FORMAT(@num, '###-##-####')
	  ELSE
	       'formatting not supported'
	  END

SELECT 
      CASE WHEN LEN(@num) = 9 THEN   
	       FORMAT(@num, '###-##-####')
	  ELSE
	       CONCAT(0,FORMAT(@num, '##-##-####'))
      END
SELECT FORMAT(8015551212, '(###) ###-####')

--SELECT OrderId,
--       CASE WHEN OrderDate IS NULL THEN 'no order date'
--	   ELSE 
--	   CONVERT(VARCHAR,OrderDate,101) 
--	   END AS Orderdate