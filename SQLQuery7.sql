USE Demo1;

SELECT * FROM Customers;

SELECT * FROM Orders;

SELECT * FROM Customers CROSS JOIN Orders;

SELECT * FROM Customers AS C INNER JOIN Orders AS O ON C.Customer = O.Customer;

SELECT * FROM Customers AS C INNER JOIN Orders AS O ON 1 = 1;

INSERT INTO Items (Item, Color) VALUES (Headphones);