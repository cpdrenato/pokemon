<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }
    public function cadastro(Request $request)
    {
//        $dados = $request;
//        var_dump(dados);
//        exit;
////
//        $nome = Input::get('nome');
//        $tipo   = Input::get('tipo');
//        $poderDeAtaque   = Input::get('poderDeAtaque');
//        $poderDeDefesa   = Input::get('poderDeDefesa');
//        $agilidade   = Input::get('agilidade');
        return view('cadastro');
    }
    public function cadastrar()
    {
        return view('cadastrar');
    }

    public function consulta()
    {
        return view('consulta');
    }
    public function consultar()
    {
        return view('consultar');
    }
    public function alterar()
    {
        return view('alterar');
    }
    public function edicao()
    {
        return view('edicao');
    }
    public function atualiza()
    {
        return view('atualiza');
    }
    public function remover()
    {
        return view('remover');
    }
    public function excluir()
    {
        return view('excluir');
    }
    public function conection()
    {
        return view('conection');
    }
    public function insertPokemon()
    {
        return view('insertPokemon');
    }
    public function showPokemon()
    {
        return view('showPokemon');
    }
}
