<?php
$nome = "rodrigo";

$nome = "rafael";

var_dump($nome);

$inteiro = 10;
var_dump($inteiro);

$float = 10.99;
var_dump($float);

$boleano = TRUE;
var_dump($boleano);

$boleano = FALSE;
var_dump($boleano);

// ARRAYS indexado
$produtos = [
    'controle',
    'mouse',
    'chave',
//     10,
//     30,
 ];

// Corrigido: a linha abaixo estava sem o símbolo de vírgula
$produtos[1] = 'mouse';

$produtos[2] = [
    'nome' => 'controle',
    'preço' => 29.99,
    'descricao' => 'controle remoto de receptor',
];

// Corrigido: faltava a vírgula entre os arrays
$produtosDaLoja = [
    [
        'nome' => 'controle',
        'preço' => 29.99,
        'descricao' => 'controle remoto de receptor'
    ],
    [
        'nome' => 'mouse',
        'preço' => 49.99,
        'descricao' => 'mouse sem fio'
    ]
];

var_dump($produtosDaLoja);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h2>Olá <?php echo $nome; ?>, bem-vindo!</h2>

<ul>
    <li><?php echo $produtos[0]; ?></li>
    <li><?php echo $produtos[1]; ?></li>
    <li>
        <?php 
        // Corrigido: acessando corretamente o array associativo
        $produto = $produtos[2]; // Adicionando o acesso ao produto
        ?>
        <p>Nome: <?php echo $produto['nome']; ?></p>
        <p>Descrição: <?php echo $produto['descricao']; ?></p>
        <p>Preço: <?php echo $produto['preço']; ?></p>
    </li>
</ul>

<p>Array indexado:</p>
<ul>
    <?php foreach ($produtos as $item): ?>
        <li><?php echo $item; ?></li>
    <?php endforeach; ?>
</ul>

<p>Array dimensional:</p>
<ul>
    <?php foreach ($produtosDaLoja as $item): ?>
        <li>
            <p>Nome: <?php echo $item['nome']; ?></p>
            <p>Descrição: <?php echo $item['descricao']; ?></p>
            <p>Preço: <?php echo $item['preço']; ?></p>
        </li>
    <?php endforeach; ?>
</ul>

</body>
</html>
