CREATE DATABASE bakerydb;

USE bakerydb;

SELECT * FROM goods;

SELECT food,price FROM goods;

SELECT food FROM goods;

SELECT * FROM goods WHERE price = 3.25;

SELECT * FROM goods WHERE price = 3.25 OR price = 8.95;

SELECT * FROM goods WHERE price <>3.25 AND price <>8.95;

SELECT * FROM goods WHERE  price > 3;

SELECT * FROM goods WHERE Food LIKE "h%"; 

SELECT * FROM goods WHERE food LIKE "%rt";

SELECT * FROM goods WHERE Food LIKE "____";

SELECT * FROM goods WHERE price > 3 AND food LIKE "%ke";

SELECT * FROM goods WHERE price IN (3.25,3.75,8.95);

SELECT * FROM goods WHERE food NOT LIKE "____";

SELECT * FROM goods WHERE price IS NULL;

SELECT * FROM goods WHERE price BETWEEN 3.25 AND 8.95;

SELECT * FROM goods ORDER BY price desc;