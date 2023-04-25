SELECT customer.customer_id , customer.first_name , customer.last_name , COUNT(rental_id) as rentals_checked_out
from customer
left join rental
on rental.customer_id  = customer.customer_id 
GROUP by customer.customer_id 