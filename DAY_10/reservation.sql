CREATE DATABASE reservationdb;

USE reservationdb;

SELECT * FROM reservations;

SELECT firstname,lastname FROM reservations;

SELECT firstname FROM reservations;

SELECT * FROM reservations WHERE adults = 2;

SELECT * FROM reservations WHERE childs=1;

SELECT * FROM reservations WHERE adults=0;

SELECT * FROM reservations WHERE rate > 150;

SELECT * FROM reservations WHERE firstname LIKE "%a%";

SELECT * FROM reservations WHERE lastname LIKE "m%";

SELECT * FROM reservations WHERE firstname LIKE "_____";

SELECT * FROM reservations WHERE firstname LIKE "_____" AND adults=2;

SELECT * FROM reservations WHERE rate =250 AND adults = 2;

SELECT * FROM reservations WHERE checkin IN ('01-jan-10', '01-feb-10', '01-mar-10', '01-apr-10', '01-may-10'); -- date and time are saperated between single quatation 

SELECT * FROM reservations WHERE checkin NOT LIKE "%jan%";

SELECT * FROM reservations WHERE checkout IS NULL;

SELECT * FROM reservations WHERE rate BETWEEN 200 AND 250;

SELECT * FROM reservations ORDER BY rate desc;