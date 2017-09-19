"# pokemon" 

Uma API onde o usuário interage com POSTMAN, 
lendo em JSON e possui as seguintes rotas:
 
*POST    /cadastro - passa como parametro nome, email e senha para se cadastrar na aplicação;
*POST    /login - passa como parametro email e senha para se logar e gerar o token de acesso;
*GET     /pokemons - lista todos os pokemons do banco de dados;
*GET     /pokemon/:id - mostra os detalhes de um pokemon;
*POST    /pokemon/add - cadastra um novo pokemon com nome, tipo do pokemon, poder de ataque, poder de defesa e agilidade;
*PUT     /pokemon/:id - altera os dados do pokemon;
*DELETE /pokemon/:id - remove um pokemon;
