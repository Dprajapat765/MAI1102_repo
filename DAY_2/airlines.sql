CREATE DATABASE csudb;

DROP DATABASE airlinesdb;
DROP DATABASE carsdb;
DROP DATABASE reservationdb;
DROP DATABASE studentdb;

CREATE DATABASE airlinedb;
CREATE DATABASE carsdb;
CREATE DATABASE inndb;
CREATE DATABASE studentdb;

USE airlinedb;

SELECT * FROM airlines;

-- 
-- Find all airlines that have at least one flight out of AXX airport. Report
-- the full name and the abbreviation of each airline. 

-- Report each name only once. Sort the airlines in alphabetical order.

SELECT distinct(airlines.airline), flights.sourceairport, airlines.abbreviation from airlines,flights where airlines.id = flights.airline 
and flights.sourceairport like '%AXX%' order by airlines.airline asc;

-- 
-- Find all destinations served from the AXX airport by Northwest. Report
-- flight number and the full name of the airlne. Sort
-- in ascending order by flight number.

SELECT flights.flightno, flights.sourceairport, flights.destairport, airlines.airline FROM airlines,flights WHERE airlines.id = flights.airline 
AND flights.sourceairport like '%AXX%' and airlines.abbreviation like '%Northwest%' ORDER BY flightno asc;
-- Find all other destinations that are accessible from AHT
-- flights with exactly one change-over. Report pairs of flight numbers,
-- airport codes for the final destinations, and full names of the airlines
-- sorted in alphabetical order by the airport code.

SELECT flights.flightno, flights.airline, flights.destairport, airlines.airline FROM airlines,flights WHERE airlines.id = flights.airline
AND flights.sourceairport like '%AHT%';

-- 
-- Report all pairs of flightNo served by both Frontier and JetBlue.
-- Each pair must be reported exactly once.

SELECT flights.flightno, airlines.airline FROM airlines,flights WHERE airlines.airline like '%Frontier%' or airlines.airline like '%JetBlue%' 
GROUP BY airlines.airline;

--  
-- Find ALL five of the airlines listed below: 
-- Delta, Frontier, USAir, UAL and Southwest. 

SELECT  airlines.abbreviation, airlines.airline FROM flights,airlines WHERE airlines.id = flights.airline AND airlines.abbreviation 
IN ("Delta","Frontier","USAir","UAL","Southwest") GROUP BY airlines.airline;





