use studentdb;

SELECT * FROM list;

SELECT * FROM teachers;

SELECT list.grade, list.Classroom, teachers.firstName, teachers.LastName FROM list,teachers 
where list.Classroom=teachers.Classroom and list.LastName like '%BEX%';

SELECT * FROM list,teachers WHERE list.Classroom=teachers.Classroom and teachers.FirstName like '%OTHA%';

SELECT list.Bus FROM list,teachers WHERE list.Classroom=teachers.Classroom and list.LastName like '%BEX%';

SELECT * FROM list,teachers WHERE list.Classroom=teachers.Classroom and list.Grade = '3';

SELECT * FROM list,teachers WHERE list.Classroom=teachers.Classroom and list.Bus = 51;

SELECT list.grade, list.Classroom, teachers.firstName, teachers.LastName FROM list,teachers 
where list.Classroom=teachers.Classroom and list.LastName like '%BEAN%';

SELECT list.FirstName, list.LastName FROM list,teachers
WHERE list.Classroom=teachers.Classroom and list.Classroom like '%111%';

SELECT list.FirstName, list.LastName FROM list,teachers WHERE list.Classroom=teachers.Classroom and teachers.FirstName like '%MIN%';

SELECT list.FirstName, list.LastName, list.Classroom FROM list,teachers WHERE list.Classroom=teachers.Classroom and list.Classroom = 111;

SELECT list.FirstName, list.LastName, list.Grade, list.Classroom,list.Bus FROM list,teachers WHERE list.Classroom=teachers.Classroom and list.Bus =56;





