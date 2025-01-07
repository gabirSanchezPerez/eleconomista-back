<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Field extends Model
{
    //
    protected $fillable = [
        'label', // Agrega aquí los campos que deseas permitir
        'type',
        'name_id',
        'options'
    ];

    public function form()
    {
        return $this->belongsTo(Form::class);
    }
}
