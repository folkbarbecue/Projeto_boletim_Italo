
<?php

//inicio da conexão com PDO
$host = "localhost";
$user= "root";
$db_password="";
$db_name = "testenota";


$conexao=mysqli_connect($host, $user, $db_password, $db_name);
if(!$conexao){
 die("Houve um erro: ".mysqli_connect_error());
}




?>