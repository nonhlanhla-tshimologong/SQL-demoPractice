USE Demo1;

SELECT * FROM menuOrders;

SELECT *, 'jack' AS Bestman FROM menuOrders;

SELECT * FROM menuOrders WHERE age IS NULL;

SELECT age, COUNT(*) AS NumberOfCustomers FROM menuOrders GROUP BY age HAVING age IS NOT NULL;