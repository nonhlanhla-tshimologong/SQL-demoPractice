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

