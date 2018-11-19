USE csudb;

select * from campuses;

-- 1.find the locations of campuses 3 characters last

SELECT campus, RIGHT(campus, 3) as last_three_char FROM campuses;

-- 2. FIND THE LOCATIONS OF CANPUSES WITH 3 CHARACTERS FROM STARTING

SELECT campus, LEFT(campus,3) as first_three_char FROM campuses;

-- 3. REMOVE THE 'ld' FORM THE LOCATION OF ALL CAMPUSES

SELECT campus, TRIM('ld' from campus) as REMOVE_FUNCTION FROM campuses;

-- 4. FIND THE LOCATION ON 'I' ON ALL THE LOCATIONS OF ALL THE CAMPUSES

SELECT campus, POSITION('i' in campus) as Find_location FROM campuses;

-- 5. GET THE SUB STRING FROM INDEX 4 TO 2 FORM LAST NAME commit

SELECT campus, SUBSTR(campus,4,2) as Sub_string FROM campuses;


-- 6. FIND THE SUM OF ALL THE CAMPUSES FEE AND ALSO PRINT THE AVERAGE FEE FROM ALL THE YEARS.

SELECT AVG(fees)
FROM 
(SELECT SUM(Campusfee) as fees
FROM csufees
GROUP BY year)
fees_table;
