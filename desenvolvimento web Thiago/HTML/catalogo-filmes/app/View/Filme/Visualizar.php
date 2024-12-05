<?php

require __DIR__ . "\..\..\Config\Database.php";
require __DIR__ . "\..\..\Model\Filme.php";

$filmeModel = new Filme($conn);

$id = $_GET["id"];

$filme = $filmeModel->findById($id);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmes</title>
</head>
<body>
    <h1>Filme</h1>

    <p><img height="300" src="<?php echo $filme->link_img?>" alt=""></p>

    <h3>Titulo: <?php echo $filme->titulo ?></h3>
    <p>Ano: <?php echo $filme->ano ?></p>
    <p>Descrição: <?php echo $filme->descricao ?></p>


        <!-- botão voltar -->
        <form action="Listar.php" method="GET">
        <button>Voltar</button>
        </form>

</body>
</html>