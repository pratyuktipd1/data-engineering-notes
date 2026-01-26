show databases;
use sakila;
show tables;
SELECT * FROM actor LIMIT 10;

select * from customer
where first_name like 'J%'
and active = 1;

select * from film
where title like '%action%'
or description like '%war%';

select * from customer
where not last_name = 'smith'
and first_name like '%a';

select * from film
where rental_rate > 3.0
and replacement_cost is not null;

select count(customer_id), store_id from customer
where active = '1'
group by store_id;

select distinct rating
from film;

select count(film_id), rental_duration from film
group by rental_duration
having avg(length) > 100;

select payment_date, Sum(amount) as Total_amount
from payment
group by payment_date
having count(*)>100;

SELECT *
FROM Customer
WHERE email IS NULL
OR email LIKE '%.org';

SELECT *
FROM film
WHERE rating = 'PG' OR rating = 'G'
ORDER BY rental_rate DESC;

SELECT length, COUNT(*) AS film_count
FROM film
WHERE title LIKE 'T%'
GROUP BY length
HAVING COUNT(*) > 5;

SELECT actor_id, COUNT(film_id) AS film_count
FROM film_actor
GROUP BY actor_id
HAVING COUNT(film_id) > 10;

SELECT title, rental_rate, length
FROM film
ORDER BY rental_rate DESC, length DESC
LIMIT 5;

SELECT customer_id, COUNT(rental_id) AS total_rentals
FROM rental
GROUP BY customer_id
ORDER BY total_rentals DESC;


