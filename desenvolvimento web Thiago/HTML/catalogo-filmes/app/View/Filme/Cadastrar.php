<?php

require __DIR__ . "\..\..\Config\Database.php";
require __DIR__ . "\..\..\Model\Filme.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST["titulo"]) && isset($_POST["ano"])) {

        $filmeModel = new Filme($conn);
        $filmeModel->insert(
            $_POST["titulo"],
            $_POST["ano"],
            $_POST["descricao"],
            $_POST["link_img"]
        );

        return header("Location: Listar.php");
    }
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmes</title>
</head>
<body>
    <form action="Cadastrar.php" method="POST">
        <div>
            <label for="titulo">Título</label>
            <input type="text" name="titulo">
        </div>
        <div>
            <label for="ano">Ano</label>
            <input type="number" name="ano">
        </div>
        <div>
            <label for="descricao">Descrição</label>
            <textarea name="descricao" rows="5"></textarea>
        </div>
        <div>
            <label for="link_img">Link da imagem</label>
            <textarea name="link_img"></textarea>
        </div>
       
        <button>Salvar</button>
        <!-- botão voltar -->
        <form action="Listar.php" method="GET">
        <button>Voltar</button>
        </form>


    </form>
</body>
</html>