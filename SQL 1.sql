#1&2
SHOW columns From sakila.film;

#3
use sakila;
select title from film;

#4
SELECT DISTINCT name as Language FROM sakila.language;

#5.1
select count(store_id) FROM sakila.store;

#5.2
select count(staff_id) FROM sakila.staff;

#5.3
select first_name FROM sakila.staff;
