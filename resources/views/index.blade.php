@extends('layouts')

@section('title', 'Index')

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
<div class="container">
<div class="page-header" style="margin-top: -20px;">
    <h1>Sistem Pakar Diagnosa Penyakit Mata</h1>
</div>
</div>
<div class="panel-heading; container">
    <div class="panel panel-default">
    <div>
    <form class="form-inline">
        <h3 style="text-align: center;">Tabel Diagnosa</h3>
    </form>
    </div>

        <table class="table table-bordered table-hover table-striped" align="center" style="text-align: center; width: 100%;">
            <tr>
                    <td>ID</td>
                    <td>Solusi dan Pertanyaan</td>
                    <td>Bila Benar</td>
                    <td>Bila Salah</td>
                    <td>Mulai</td>
                    <td>Selesai</td>
                    <td>Aksi</td>
                </tr>
            @foreach ($users as $user)
                <tr>
                    <td>{{ $user->id }}</td>
                    <td>{{ $user->solusi_dan_pertanyaan }}</td>
                    <td>{{ $user->bila_benar }}</td>
                    <td>{{ $user->bila_salah }}</td>
                    <td>{{ $user->mulai }}</td>
                    <td>{{ $user->selesai }}</td>
                    <td>
                        <a href="{{ route('project.edit', $user->id) }}"> Edit </a>
                        <form method="POST" action="{{ route('project.destroy', $user->id) }}">
                            {{ csrf_field() }}
                            {!! method_field('delete') !!}
                            <button type="submit" class="btn btn-danger" style="margin-bottom: 10px;"> Delete </button>
                        </form>
                    </td>
                </tr>
            @endforeach 
        </table>
    </div>
</div>
<footer class="footer bg-primary">
      <div class="container">
        <p style="text-align: center; height: 30px; margin-top: 15px;">Copyright &copy; 2017 Armaningtyas Utami</p>
      </div>
</footer>
</body>

@endsection

<!-- style="background-image: url(./img/banner_1.jpg); width: 100%; height: 600px;" -->

<?php
// echo "<CENTER><IMG SRC='http://localhost/project/mata.png' WIDTH='348' HEIGHT='257' BORDER=0 ALT=''></CENTER>";

// echo "<a class='btn  btn-block btn-large    ' href='diagnosa.blade.php?idpertanyaan=1'>Mulai Diagnosa Penyakit Mata</a>";
?>