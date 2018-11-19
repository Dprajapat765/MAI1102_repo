CREATE DATABASE flightdb;

USE flightdb;

SELECT * FROM flights;

SELECT SourceAirport,DestAirport FROM flights;

SELECT flightno FROM flights;

SELECT * FROM flights WHERE airline=3;

SELECT * FROM flights WHERE airline =  3 OR airline = 5;

SELECT * FROM flights WHERE airline <> 3 AND airline <> 5 ;

SELECT * FROM flights WHERE airline > 3;

SELECT * FROM flights WHERE sourceAirport LIKE "A%";

SELECT * FROM flights WHERE sourceAirport LIKE "%V";

SELECT * FROM flights WHERE sourceAirport LIKE "___";

SELECT * FROM flights WHERE airline > 3 AND sourceAirport LIKE "%ki"; 

SELECT * FROM flights WHERE airline IN (2,3,5);

SELECT * FROM flights WHERE flightno IS NULL;

SELECT * FROM flights WHERE flightno BETWEEN 2 AND 30;

SELECT * FROM flights ORDER BY Destairport desc;