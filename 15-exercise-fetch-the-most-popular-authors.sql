select users.id. users.name, count(*) as posts_read from users
left join posts_reads
on post_read.post_id in (
    select id from posts where user_id = users.id
)
group by users.id
order by posts_read desc
limit 10