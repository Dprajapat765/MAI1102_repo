USE studentdb;

SELECT * FROM list;

-- 1. find the students lastname with 3 characters  from end

SELECT stlastname, right(stlastname,3) AS lastname FROM list;

-- 2. find the students lastname with 3 characters  from starting

SELECT stlastname, left(stlastname,3) AS lastname FROM list;

-- 3. remove the 'EX' from the lastname of all the students

SELECT stlastname, TRIM('EX' from stlastname) as remove_lastname_EX from list;
-- 4. find the locations of 'N' in the students lastname

SELECT stlastname, POSITION('N' in stlastname) as position_lastname FROM list;

-- 5. get the sub string from index 4 to 2 characters from the last name columns
-- it will read next 2 characters of  the word from indexing 4 (indexing starts from 1 to end) 
SELECT stlastname, SUBSTR(stlastname,4,2) as SUBSTRING_OF_LASTNAME FROM list;

-- 6. find the sum of students grade and print the average from all the class room
-- ==========================================================================
-- ========================= NESTED QUERY ====================================
-- ===========================================================================

SELECT AVG(NESTED_QUERY) as average FROM 
(SELECT SUM(grade) as NESTED_QUERY 
FROM list 
GROUP BY classroom)
grade_table;

SELECT SUM(grade) as NESTED_QUERY 
FROM list 
GROUP BY classroom;

-- 7. SHOW ALL THE CLASSROOM ID THOSE TEACHERS ASSOCIATED AND ALSO IN WHICH STUDENTS STUDIES

SELECT list.classroom 
FROM list RIGHT JOIN teachers
ON list.classroom = teachers.classroom

UNION

SELECT list.classroom 
FROM list LEFT JOIN teachers
ON list.classroom = teachers.classroom;


