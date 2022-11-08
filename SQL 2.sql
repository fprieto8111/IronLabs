SHOW columns From bank.customer;
#use sakila;
#select title from film;

#1
select client_id FROM bank.client where district_id <> 1;

#2
SELECT client_id FROM bank.client where district_id <> 72 ORDER BY client_id DESC LIMIT 1;

#3
select amount from bank.loan ORDER BY amount ASC LIMIT 3;

#4
select distinct status from bank.loan ORDER BY status ASC;

#5
SELECT loan_id FROM bank.loan where max(payments);