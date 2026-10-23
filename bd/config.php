<?php

require_once __DIR__ . '/config.php';

$conexao = mysqli_connect(
    SERVIDOR,
    USUARIO,
    SENHA,
    BANCO
);

if (!$conexao) {
    error_log("Erro na conexão com o banco: " . mysqli_connect_error());

    die("Não foi possível conectar ao banco de dados.");
}

mysqli_set_charset($conexao, "utf8mb4");
