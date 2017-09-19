<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request as Request;
use App\Pokemon as Pokemon;
class PokemonController extends Controller
{
    protected $pokemon;
    public function __construct( )
    {
        $this->pokemon = new Pokemon();
    }


    public function getIndex(){

        $pokemon = $this->pokemon->all();
        return  view("pokemon.index",$pokemon);
    }
    public function post(  Request $request ){
        $request = $request->all();
        $pokemon = $this->pokemon->fill($request)->save();
        return ["sucess"=> true , "message" =>"Inclusao realiza com sucesso"];

    }

    public function put(  Request $request ){
        $pokemon = $this->pokemon;
        $request = $request->fill();
        return "put";
    }

    public function delete( Request $id ){
        $pokemon = $this->pokemon;
        $pokemon->delete($id);
        return ["success"=>true,message=>"excluido com suceso"];
    }
}
