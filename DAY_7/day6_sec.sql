CREATE DATABASE cardb;

USE cardb;

SELECT car_names.model, cars_data.year FROM car_names,cars_data WHERE car_names.id = cars_data.id AND car_names.model LIKE '%renault%';

SELECT car_names.model,cars_data.year FROM car_names,cars_data WHERE car_names.id = cars_data.id AND car_names.model LIKE '%renault%' ORDER BY cars_data.year desc;

SELECT car_names.model,car_names.make,cars_data.year FROM car_names,cars_data WHERE car_names.id=cars_data.id AND car_names.model LIKE '%volvo%' and cars_data.year between 1977 and 1981;

SELECT car_names.make, car_names.model, cars_data.cylinders, cars_data.year, cars_data.MPG, cars_data.accelerate 
FROM car_names,cars_data 
WHERE cars_data.cylinders<>4 
and cars_data.year=1980 
and cars_data.MPG >20 
and accelerate<=15;



