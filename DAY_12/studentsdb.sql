DROP DATABASE studentsdb;

CREATE DATABASE studentdb;

USE studentdb;

SELECT * FROM students;

delete 

SELECT stfirstname,Grade,Classroom,Tfirstname,Tlastname FROM students WHERE stLastName="COOKUS";

SELECT Bus FROM students WHERE stLastName="COOKUS";

SELECT * FROM students WHERE TFirstname="JAE";

SELECT * FROM students WHERE Bus="51";

SELECT * FROM students WHERE grade="3";

SELECT stfirstname,StLastName,Grade,Classroom,Tfirstname,Tlastname FROM students WHERE stLastName="ELHADDAD";

SELECT stfirstname,StLastName,Bus FROM students WHERE stLastName="WOOLERY";

SELECT stfirstname,StLastName FROM students WHERE TfirstName="NANCY";

SELECT stfirstname,StLastName FROM students WHERE Classroom="111";

SELECT stfirstname,StLastName,Grade,Classroom FROM students WHERE Bus="56";

SELECT  DISTINCT (Bus) FROM students ;

SELECT COUNT(stFirstName),Bus FROM students GROUP BY Bus;

SELECT DISTINCT (Grade)listlist FROM students;

SELECT COUNT(stfirstname),Grade FROM students GROUP BY grade;

SELECT StFirstName,StLastName,Bus from students GROUP BY Bus ORDER BY Bus desc;



