<?php

namespace App\Http\Controllers;

use App\Models\Form;
use App\Models\Field;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string',
            'fields' => 'required|array',
            'fields.*.label' => 'required|string',
            'fields.*.type' => 'required|string',
            'fields.*.required' => 'required|boolean',
        ]);

        $form = Form::create([
            'name' => $validated['name'],
            'user_id' => $request->user()->id,
        ]);

        foreach ($validated['fields'] as $field) {
            $form->fields()->create($field);
        }

        return response()->json(['form' => $form], 201);
    }

    public function index()
    {
        return Form::with('fields')->get();
    }
}
