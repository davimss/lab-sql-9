-- Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
CREATE TABLE RENTALS_MAY
SELECT *
FROM SAKILA.RENTAL
WHERE MONTH(RENTAL_DATE) = 05;

SELECT * FROM RENTALS_MAY;

-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
CREATE TABLE RENTALS_JUNE
SELECT *
FROM SAKILA.RENTAL
WHERE MONTH(RENTAL_DATE) = 06;

SELECT * FROM RENTALS_JUNE;

-- Check the number of rentals for each customer for May.
SELECT COUNT(RENTAL_ID) AS RENTALS_IN_MAY
FROM RENTALS_MAY;

-- Check the number of rentals for each customer for June.
SELECT COUNT(RENTAL_ID) AS RENTALS_IN_JUNE
FROM RENTALS_JUNE;

-- Create a Python connection with SQL database and retrieve the results of the last two queries 
-- (also mentioned below) as dataframes: