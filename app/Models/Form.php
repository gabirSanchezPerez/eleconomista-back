<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Form extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', // Agrega aquí los campos que deseas permitir
        'user_id',
    ];

    public function fields()
    {
        return $this->hasMany(Field::class); // Relación con otro modelo
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
