SELECT 
    posts.id, title, body, published_at, user.name as author
from posts
join users on users.id = posts.user.id
where user_id = 1