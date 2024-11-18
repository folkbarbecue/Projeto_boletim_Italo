<?php
// Incluir o arquivo de conexão
include 'conexao.php';

// Verificar se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obter os valores do formulário
    $nome = $_POST['nome'];
    $unidade =$_POST['unidade'];
    $disciplina = $_POST['disciplina'];
    $turma = $_POST['turma'];
    $av1 = $_POST['av1'];
    $av2 = $_POST['av2'];
    $conceito = $_POST['conceito'];
    $noa = $_POST['noa'];

    
        $sql = "INSERT INTO unidade3 (nome,unidade,  disciplina, turma, av1_3, av2_3, conceito_3, noa_3) 
        VALUES ('$nome','$unidade', '$disciplina', '$turma', '$av1', '$av2', '$conceito', '$noa')";

           // Executar a consulta e verificar sucesso
           if(mysqli_query($conexao, $sql)){
            header("Location: confirmacao.html");
        }else{
            echo "Erro". mysqli_connect_error($conexao);
        }                                               
        
        mysqli_close($conexao);
    }
?>
