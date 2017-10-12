@extends('layouts')

@section('title', 'Diagnosa')

@section('content')

<body>
    <nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">Armaningtyas Utami</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="#"><span class="glyphicon glyphicon-pushpin"></span> Mulai Konsultasi</a></li>   
            <li><a href="{{ route('project.create') }}"><span class="glyphicon glyphicon-stats"></span> Tambah Diagnosa</a></li>     
          </ul>          
        </div>
    </div>
    </nav>

        <table class="table table-bordered table-hover table-striped" align="center" style="text-align: center; width: 100%;">
            <tr>
                    <td><input type="checkbox" id="checkAll" /></td>
                    <td>ID</td>
                    <td>Solusi dan Pertanyaan</td>
                </tr>
            @foreach ($users as $user)
                <tr>
                    <td>{{ $user->id }}</td>
                    <td>{{ $user->solusi_dan_pertanyaan }}</td>
                </tr>
            </table>
</body>