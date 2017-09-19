@extends('layouts.app')


@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Pokemons</div>

                <div class="panel-body">
                    Seja bem vindo!<br>
                    <a href="{{ url('/cadastro') }}">Cadastro</a><br>
                    <a href="{{ url('/alterar') }}">Alterar</a><br>
                    <a href="{{ url('/consultar') }}">Consultar</a><br>
                    <a href="{{ url('/remover') }}">Remover</a>

                    {{--<a href="../resources/views/cadastro.php" method="POST">Cadastro</a>--}}


            </div>
        </div>

    </div>
    </div>
</div>
@endsection
