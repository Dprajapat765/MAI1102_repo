DROP DATABASE cardb;

CREATE DATABASE carsdb;

USE carsdb;

SELECT * FROM car_names;

SELECT * FROM cars_data;

SELECT car_names.model,car_names.id, car_names.Make FROM car_names,cars_data WHERE car_names.id=cars_data.id and car_names.model LIKE '%renault%';

SELECT car_names.model, cars_data.year FROM car_names,cars_data WHERE car_names.id=cars_data.id AND car_names.model like '%renault%';

SELECT car_names.model, cars_data.year FROM car_names,cars_data WHERE car_names.id=cars_data.id ORDER BY cars_data.year desc;

SELECT car_names.model, cars_data.Accelerate FROM car_names,cars_data WHERE car_names.id = cars_data.id AND cars_data.Accelerate >11;

SELECT car_names.Make, cars_data.year FROM car_names,cars_data WHERE car_names.id = cars_data.id AND car_data.year BETWEEN 1979 and 1981 
AND cars_data.Weight>2000;
