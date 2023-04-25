select round(avg(total_rentals)) as average_rentals
from(
    select date(rental_date) as day, count(*) as total_rentals
    from rental
    group by day
    order by day desc
) rentals