ALTER table comments
add foreign key (post_id) references post(id) on DELETE cascade on UPDATE cascade