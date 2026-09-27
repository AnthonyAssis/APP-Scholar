<?php

require_once "conexao.php";

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

if ($_SERVER["REQUEST_METHOD"] !== "GET") {
    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Método não permitido"
    ]);
    exit();
}

try {

    $sql = "SELECT
                *
            FROM vw_alunos_simples";

    $stmt = $pdo->prepare($sql);
    $stmt->execute();

    $alunos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "sucesso" => true,
        "alunos" => $alunos
    ]);

} catch (Throwable $e) {

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Erro ao consultar alunos",
        "erro" => $e->getMessage()
    ]);

}
?>