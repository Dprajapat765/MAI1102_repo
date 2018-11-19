USE cardb;

-- 1. FIND THE MODEL NAME OF CAR WHICH IS 3 CHARACTERS END

SELECT model, RIGHT(Model,3) as last_three_char FROM car_names;

-- 2. FIND THE MODEL NAME OF CAR WHICH IS 3 CHARACTERS STARTING

SELECT model, LEFT(Model,3) as start_three_char FROM car_names;

-- 3. REMOVE THE 'RD' FROM THE MODEL NAME OF THE ALL THE CAR NAMES

SELECT model, TRIM('rd' FROM Model) as remove_name_rd FROM car_names;

-- 4. FIND THE LOCATION OF 'R' IN THE MODEL NAMES OF CARS

SELECT model, POSITION('r' IN Model) as POSITION_OF_R FROM car_names;

-- 5. get the substring from index 4 to 2 characters form car model

SELECT model, SUBSTR(Model,4,2) as substring FROM car_names;

-- 6. FIND THE SUM OF MPG AND ALSO PRINT THE AVERAGE MPG FROM ALL THE YEARS OF CAR DATA\

SELECT AVG(mpg_car) 
FROM 
(SELECT SUM(MPG) AS mpg_car
FROM cars_data
GROUP BY year)
car_table;