SELECT title, sum(amount) as sales, COUNT(*) as rentals  from rental
join payment
on payment.rental_id = rental.rental_id 
join inventory
on inventory.inventory_id = rental.inventory_id 
join film
on film.film_id = inventory.film_id 
group BY title
having sales > 200
order by sales DESC 
