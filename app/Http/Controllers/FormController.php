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
            'fields.*.name_id' => 'required|string',
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
        $forms = Form::with('fields')->get();
        return response()->json(['forms' => $forms], 201);
    }

    public function show($id)
    {
        try {
            $form = Form::with('fields')->findOrFail($id); // Esto lanza una excepción si no encuentra el registro
            return response()->json($form);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json(['message' => 'Form not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['message' => 'An unexpected error occurred'], 500);
        }
    }
}
