USE studentdb;

SELECT * FROM students;

SELECT * FROM teachers;
-- Given a student’s last name, find the student’s grade, classroom .

SELECT students.StLastName,students.Classroom, students.Grade 
FROM teachers,students 
WHERE students.Classroom=teachers.Classroom 
and students.StLastName like 'COOKUS';

-- Q 2. Given a student’s last name, find the bus route the student takes
SELECT students.StFirstName, students.StLastName, students.Bus 
FROM teachers,students 
WHERE students.Classroom=teachers.Classroom 
and students.StLastName like 'COOKUS';

-- Q 3. Find all students at a specified grade level

SELECT  students.grade, count(students.StFirstName)
FROM students,teachers 
GROUP BY students.Grade;

-- Q 4. For each entry found, print the last name, first name, grade, classroom 
select stfirstname,stlastname,classroom, grade from students;

-- Q 5. Display the total number of students for each bus routes
select count(bus),bus from students group by bus;

-- Q 6. Display the total number of students for each grades

select grade, count(grade) from students group by grade;



use cardb;

select * from car_names;

-- Find all cars produced by Volvo between 1977 and 1981 (inclusive)
select car_names.model,car_names.make from car_names,cars_data where car_names.id = cars_data.id 
and car_names.model like 'volvo' and cars_data.year between 1977 and 1981;

use flightdb;
-- Q 8. Display all columns data of all the rows from the flights table ?

select * from flights;

-- -- Display source and destination airport  from flights table ?
select sourceairport, destairport from flights;

-- -- Select all flights whose airline number is 3 or 5 from flights table ?
select * from flights where flights.airline =3 or flights.airline= 5;

-- -- Display  all airline code  from flights table ?
select flightno from flights ;

-- -- Select all flights whose airline number is 3 from flights table ?
select * from flights where airline =3;

use bakerydb;

--  Display count of every Food from goods table ?
select * from goods;
select count(food) as food_count,food from goods group by food;

create database carmakersdb;

use carmakersdb;

select * from carmakers;
--  Display How many entries are there in carmakers table ?
 select count(*) from carmakers ;
 
-- Display average number of carmakers from country 2 ?
select fullname from carmakers where country = 2;

use bakerydb;

select * from goods;

--  Display the total price of Each Flavour ?
select price,flavor from goods group by flavor;

-- Display the maximum country code number ?
select max(country) from carmakers;

-- Display the minimum country code number   ?
select min(country) from carmakers;

use bakerydb;
select * from goods;
-- Display average price for Cake or Eclair?
select avg(price),food from goods where food like 'cake' or food like 'eclair' group by food;

--  Display the maximum price of each Food  ?
select max(price),food from goods group by food;

use enrollmentdb;

select * from enrollments;

--  Display average number of enrollment from campus 2 
select avg(totalenrollment_AY),totalenrollment_AY from enrollments where campus =2 group by totalenrollment_AY;

-- Display the maximum campus code number  ?
select max(campus) from enrollments;

-- Display the minimum price of each Flavour ?
use bakerydb;

select * from goods;
select min(price), flavor from goods group by flavor;

-- Display count of each Food, 
--  which have Chocolate Flavour , 
--  also arrange food's name in alphabetical order

use studentdb;
select * from list;

select list.Classroom,list.Grade, teachers.FirstName,teachers.LastName
from list, teachers 
where list.Classroom=teachers.Classroom 
and list.LastName like 'BEX';

select list.bus, list.FirstName,list.LastName from list, teachers where list.LastName like '%BEAN%';