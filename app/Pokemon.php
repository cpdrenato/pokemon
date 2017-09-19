<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pokemon extends Model
{
    protected $table="pokemons";
    protected $fillable =["id","nome","tipo","poder_a","poder_d","agilidade","updated_at", "created_at"];
}
