#1
select title from sakila.film 
where length > (
select avg(length) from sakila.film);

#2
select count(inventory_id) from sakila.inventory where film_id = (select film_id from sakila.film where title = "Hunchback Impossible");

#3
select first_name, last_name from sakila.actor WHERE actor_id IN (
select actor_id from sakila.film_actor where film_id = (
select film_id from sakila.film where title = "Alone Trip") );

#4
select title from sakila.film WHERE film_id IN (
select film_id from sakila.film_category where category_id = (
select category_id from sakila.category where name = "Family") );

#5
select first_name, last_name, email from sakila.customer WHERE address_id IN (
select address_id from sakila.address where city_id in (
select city_id from sakila.city where country_id = (
select country_id from sakila.country where country = "Canada") ) );

select first_name, last_name, email from sakila.customer as m
inner join sakila.address as f using (address_id)
inner join sakila.city as p using (city_id) 
inner join sakila.country as v using (country_id)
where country = "Canada";