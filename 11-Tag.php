
<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model {
    protected $guraded = [];

    public function posts() {
        return $this->belongsToMany(Post::class);
    }

}
