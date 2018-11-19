USE studentsdb;

SELECT * FROM students; 

SELECT AVG(grade) From students;

SELECT MAX(grade) FROM students;

SELECT COUNT(grade) FROM students;

SELECT AVG(classroom) FROM students WHERE classroom = 102 AND 101;

SELECT classroom, MAX(grade) FROM students GROUP BY classroom;
 
SELECT classroom, MIN(grade) FROM students GROUP BY classroom; 

SELECT COUNT(classroom) FROM students GROUP BY classroom desc;

SELECT classroom, AVG(grade) FROM students GROUP BY classroom DESC;

SELECT classroom, MAX(grade) FROM students GROUP BY classroom DESC;

SELECT classroom, MIN(grade) FROM students GROUP BY classroom DESC;

SELECT students, MAX(grade) FROM students GROUP BY  classroostudentsm limit 3;




