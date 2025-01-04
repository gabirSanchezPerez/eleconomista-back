<?php

namespace Tests\Feature;

use Tests\TestCase;

class SanctumAuthTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_sacntum_AUTH(): void
    {
        $response = $this->post('/api/login', [
            'email' => 'user@nextmail.com',
            'password' => '123456789',
        ]);
        $tkn = $response->json("token");

        $response = $this->withHeader('Authorization', 'Bearer ' . $tkn)->get('/api/user');
        dd($tkn);
    }
}
