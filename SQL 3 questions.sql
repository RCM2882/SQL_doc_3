1.) 
select customer.address_id, first_name, last_name, district
from address
inner join customer
on customer.address_id = address.address_id
where district = 'Texas';

2.)
select customer.customer_id, first_name, last_name, amount
from payment
inner join customer
on customer.customer_id = payment.customer_id 
where amount > 6.99;

3.)
select first_name, last_name
from customer
where customer_id in (
    select customer_id
    from payment
    group by customer_id
    having SUM(amount) > 175
)
group by first_name, last_name;

4.)
select customer.first_name, customer.last_name, country
from customer
inner join address
on customer.address_id = address.address_id 
inner join city
on address.city_id = city.city_id
inner join country
on city.country_id = country.country_id
where country = 'Nepal';

5.)
select COUNT(payment.payment_id)
from payment
full outer join staff
on payment.staff_id = staff.staff_id
group by payment.staff_id

6.)
select rating, COUNT(rating)
from film
group by film.rating

7.)
select customer.first_name, customer.last_name, customer.customer_id, amount
from customer
inner join payment
on customer.customer_id = payment.customer_id
where payment.customer_id in (
	select customer_id
	from payment 
	group by customer_id, payment.amount 
	having payment.amount > 6.99
	limit 1);

-- I couldn"t figure this querry out --

8.)
select customer_id, amount 
from payment
where amount = 0.00












