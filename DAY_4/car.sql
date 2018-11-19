CREATE DATABASE cardb;

USE cardb;

SELECT * FROM carmakers;

SELECT Maker,Country FROM carmakers; 

SELECT * FROM carmakers WHERE country = "4";

SELECT * FROM carmakers WHERE country <>2 AND  country<>5;

SELECT * FROM carmakers WHERE country > 2;

SELECT * FROM carmakers WHERE Fullname LIKE "%h%";

SELECT * FROM carmakers WHERE fullname LIKE "%da";

SELECT * FROM carmakers WHERE fullname LIKE "____";

SELECT * FROM carmakers WHERE country = 2 OR fullname LIKE "%en";

SELECT * FROM carmakers WHERE country IN(2,3,4,5);

SELECT * FROM carmakers WHERE fullname NOT LIKE "____";

SELECT * FROM carmakers WHERE country IS NULL;

SELECT * FROM carmakers WHERE country BETWEEN 2 AND 5;



