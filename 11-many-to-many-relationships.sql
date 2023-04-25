SELECT * from posts
left join post_tag
on post_tag.post_id = posts.id
where post_tag.tag_id = 3