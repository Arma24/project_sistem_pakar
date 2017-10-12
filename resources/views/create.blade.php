@extends('layouts')

@section('title', 'Create')

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
        <h1>Tambah Diagnosa</h1>
    </div>
<div class="row">
    <div class="col-sm-6">
        <form method="POST" action="{{ route('project.store') }}">
            {{ csrf_field() }}
            <p> ID : <input type="text" name="id" style="border-radius: 5px; margin-left: 130px; width: 300px; padding-left: 5px;"> </p>
            <p> Solusi dan Pertanyaan : <input type="text" name="solusi_dan_pertanyaan" style="border-radius: 5px; margin-left: 4px; width: 300px; padding-left: 5px;"> </p>
            <p> Bila Benar : <input type="text" name="bila_benar" style="border-radius: 5px; margin-left: 81px; width: 300px; padding-left: 5px;"> </p>
            <p> Bila Salah : <input type="text" name="bila_salah" style="border-radius: 5px; margin-left: 82px; width: 300px; padding-left: 5px;"> </p>
            <p> Mulai : <input type="text" name="mulai" style="border-radius: 5px; margin-left: 112px; width: 300px; padding-left: 5px;"> </p>
            <p> Selesai : <input type="text" name="selesai" style="border-radius: 5px; margin-left: 99px; width: 300px; padding-left: 5px;"> </p>
            <br>
            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="{{ route('project.index') }}"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>
        </form>
    </div>
</div>    
</div>
</body>
@endsection