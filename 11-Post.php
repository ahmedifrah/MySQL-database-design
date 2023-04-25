
<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model {
    protected $guraded = [];

    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function tags() {
        return $this->belongsToMany(Tag::class);
    }

}