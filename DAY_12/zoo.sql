CREATE DATABASE zoo;

use zoodb;

SELECT *
FROM zoo;

SELECT COUNT(*)
FROM ZOO;

SELECT SUM(water_need) 
from zoo;

SELECT AVG(water_need)
FROM ZOO;

SELECT MAX(WATER_NEED)
FROM ZOO;

SELECT MIN(water_need)
FROM zoo;

SELECT COUNT(water_need),animal
FROM zoo GROUP BY animal;

SELECT SUM(water_need),animal
FROM zoo GROUP BY animal;

SELECT AVG(water_need),uniq_id
FROM zoo GROUP BY uniq_id;

SELECT MAX(water_need),animal
FROM zoo GROUP BY animal;

SELECT MIN(zoo.water_need),zoo.animal
from zoo GROUP BY zoo.animal;

 






