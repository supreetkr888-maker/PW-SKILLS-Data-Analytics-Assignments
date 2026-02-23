--- DPP session 23 module 16

USE world;
select * from city limit 5;
select * from country limit 5;

-- 1. Question 
SELECT name, population
FROM country
ORDER BY population DESC
LIMIT 1;

SELECT name, population
FROM country
WHERE population = (SELECT MAX(population) FROM country);

-- 2. Question

SELECT c.name AS country_name,
SUM(ci.population) AS total_city_population
FROM country c
JOIN city ci ON c.code = ci.countrycode
GROUP BY c.code, c.name
ORDER BY total_city_population DESC;

-- 3. Question

SELECT name,
       population / NULLIF(surfacearea, 0) AS population_density
FROM country
WHERE surfacearea > 0
ORDER BY population_density DESC
LIMIT 3;

-- 4. Question 
USE sakila;
SELECT customer_id,
COUNT(*) AS rentals_count
FROM rental
GROUP BY customer_id
ORDER BY rentals_count DESC
LIMIT 1;

-- 5. Question 
SELECT MONTH(rental_date) AS month_number,
COUNT(*) AS rentals_count
FROM rental
GROUP BY MONTH(rental_date)
ORDER BY rentals_count DESC
LIMIT 1;

-- 6.Question 
SELECT DATE(payment_date) AS day,
SUM(amount) AS total_revenue
FROM payment
GROUP BY DATE(payment_date)
ORDER BY day;

-- 7. Question 

SELECT s.store_id,
SUM(p.amount) AS store_revenue
FROM payment p
JOIN staff s ON p.staff_id = s.staff_id
GROUP BY s.store_id
ORDER BY store_revenue DESC
LIMIT 1;

-- 8. Question 

SELECT customer_id
FROM payment
GROUP BY customer_id
HAVING COUNT(*) = 5;