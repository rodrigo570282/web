<?php
require __DIR__ . "\..\..\Config\Database.php";
require __DIR__ . "\..\..\Model\Filme.php";

$filmeModel = new filme($conn);

// Recupera o id do filme a ser editado
$id = $_GET["id"];

// Verifica se o formulário foi enviado
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Coleta os dados do formulário
    $id = $_POST['id']; // O ID do filme é enviado no formulário
    $titulo = $_POST['titulo'];
    $ano = $_POST['ano'];
    $descricao = $_POST['descricao'];
    $link_img = $_POST['link_img'];

     // Atualiza o filme no banco de dados
     $filmeModel->update($id, $titulo, $ano, $descricao,$link_img);

     // Redireciona de volta para a lista de filmes após a atualização
     header("Location: listar.php?mensagem=sucesso");
     exit;
 }
 
 // Verifica se o ID foi passado na URL
 if (isset($_GET['id'])) {
     $id = $_GET['id'];
     // Recupera os dados do filme atual para preencher o formulário de edição
     $filme = $filmeModel->findById($id);
 } else {
     // Se não encontrar o ID na URL, redireciona para a lista
     header("Location: listar.php?mensagem=erro");
     exit;
 }
 ?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Filme</title>
</head>
<body>
    <h1>Editar Filme</h1>

    <p><img height="300" src="<?php echo $filme->link_img?>" alt=""></p>

    <!-- Formulário de Edição -->
    <form action="editar.php?id=<?php echo $filme->id ?>" method="POST">
        <input type="hidden" name="id" value="<?php echo $filme->id ?>">


        <label for="titulo">Título</label>
        <input type="text" name="titulo" value="<?php echo htmlspecialchars($filme->titulo); ?>" required>
        
        <label for="ano">Ano</label>
        <input type="number" name="ano" value="<?php echo htmlspecialchars($filme->ano); ?>" required>

        <label for="descricao">Descrição</label>
        <textarea name="descricao" required><?php echo htmlspecialchars($filme->descricao); ?></textarea>

        <label for="link_img">Link da imagem</label>
        <input type="text" name="link_img" value="<?php echo htmlspecialchars($filme->link_img); ?>" required>


        
        <form action="editar.php" method="POST">
            <input 
            type="hidden"
            name="id" 
            value="<?php echo $filme->id ?>"
        >
        <button>Atualizar</button>
        </form>


        </form>
        <!-- botão voltar -->
        <form action="Listar.php" method="GET">
        <button>Voltar</button>
        </form>

    <h3>Título: <?php echo htmlspecialchars($filme->titulo); ?></h3>
    <p>Ano: <?php echo htmlspecialchars($filme->ano); ?></p>
    <p>Descrição: <?php echo htmlspecialchars($filme->descricao); ?></p>

</body>
</html>


