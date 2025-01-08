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

        return response()->json(['form' => $form, "status" => 200], 201);
    }

    public function index(Request $request)
    {
        //$forms = Form::with('fields')->with('user')->get();
        $query = Form::query();

        // Filtrar por fecha
        if ($request->has('filters.date')  && !is_null($request->input('filters')['date'])) {
            $query->whereDate('created_at', 'LIKE', $request->input('filters')['date'] . '%');
        }

        // Filtrar por nombre de usuario
        if ($request->has('filters.user') && !empty($request->input('filters')['user'])) {
            $query->whereHas('user', function ($q) use ($request) {
                $q->where('name', 'LIKE', '%' . $request->input('filters')['user'] . '%');
            });
        }

        // Incluir la relación de usuario
        $forms = $query->with('user')->get();
        return response()->json([
            'forms' => $forms, "status" => 200, $request->has('filters.date'), $request->input('filters')
        ], 201);
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
