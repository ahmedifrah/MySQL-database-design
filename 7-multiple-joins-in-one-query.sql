SELECT customer.customer_id, customer.first_name , customer.last_name, count(rental_id) rentals_checked_out, address.address as store_address
from customer
left join rental
on rental.customer_id = customer.customer_id 
LEFT JOIN store
on store.store_id  = customer.store_id
left join address
on address.address_id = store.address_id 
GROUP BY customer.customer_id, address.address  