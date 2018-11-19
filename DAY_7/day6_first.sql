CREATE DATABASE airlinesdb;

USE airlinesdb;

SELECT * FROM airlines;

SELECT * FROM flights;

SELECT airlines.Airline,airlines.Abbreviation,flights.SourceAirport FROM airlines,flights WHERE airlines.id=flights.Airline 
AND flights.SourceAirport LIKE '%AXX%';

SELECT airlines.Airline,airlines.Abbreviation,flights.SourceAirport FROM airlines,flights WHERE airlines.id=flights.Airline
 AND flights.SourceAirport like '%AXX%' GROUP BY airlines.Airline ORDER BY airlines.Airline desc ;

SELECT airlines.Airline,flights.FlightNo FROM airlines,flights WHERE airlines.id=flights.Airline 
AND airlines.Abbreviation like '%Northwest%'  AND flights.SourceAirport LIKE '%AXX%';

SELECT airlines.Airline,flights.FlightNo FROM airlines,flights WHERE airlines.id=flights.Airline 
AND airlines.Abbreviation like '%Northwest%'  AND flights.SourceAirport LIKE '%AXX%' ORDER BY flights.FlightNo ASC;

SELECT airlines.Airline,flights.FlightNo,flights.DestAirport FROM airlines,flights WHERE airlines.id = flights.Airline 
and flights.SourceAirport like '%AHT%';

SELECT airlines.Airline,flights.FlightNo,flights.DestAirport,flights.SourceAirport FROM airlines,flights WHERE airlines.id = flights.Airline 
and flights.SourceAirport like '%AHT%' ORDER BY airlines.Airline desc;

SELECT flights.FlightNo,airlines.Airline FROM airlines,flights WHERE airlines.Id = flights.Airline
 and airlines.Airline like '%JetBlue Airways%' or airlines.Airline LIKE '%Frontier Airlines%';

SELECT DISTINCT (airlines.Airline),flights.FlightNo,airlines.Airline FROM airlines,flights WHERE airlines.Id = flights.Airline
 and airlines.Airline like '%JetBlue Airways%' or airlines.Airline LIKE '%Frontier Airlines%' ;

SELECT airlines.Abbreviation,airlines.Airline FROM airlines,flights WHERE airlines.id = flights.Airline 
and airlines.Abbreviation IN('Delta','Frontier','USAir','UAL','Southwest') GROUP BY airlines.Abbreviation;