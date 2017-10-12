<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(User $user)
    {
        return view('index', ['users' => $user->all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(User $user, Request $request)
    {
        $user->create([
            'id' => $request->id,
            'solusi_dan_pertanyaan' => $request->solusi_dan_pertanyaan,
            'bila_benar' => $request->bila_benar,
            'bila_salah' => $request->bila_salah,
            'mulai' => $request->mulai,
            'selesai' => $request->selesai,
        ]);

        return redirect()
            ->route('project.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $project)
    {
        return view('diagnosa', [
            'user' => $project
        ]); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $project)
    {
        return view('edit', [
            'user' => $project
        ]); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(User $project, Request $request)
    {
        $project->update([
            'id' => $request->id,
            'solusi_dan_pertanyaan' => $request->solusi_dan_pertanyaan,
            'bila_benar' => $request->bila_benar,
            'bila_salah' => $request->bila_salah,
            'mulai' => $request->mulai,
            'selesai' => $request->selesai,
        ]);

        return redirect()
            ->route('project.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $project)
    {
        $project->delete();

        return redirect()
            ->route('project.index');
    }
}