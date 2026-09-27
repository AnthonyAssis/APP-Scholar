<?php

require_once "conexao.php";

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Método não permitido"
    ]);
    exit();
}

$dados = json_decode(file_get_contents("php://input"), true);

if (!$dados) {
    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Dados inválidos"
    ]);
    exit();
}

$id_aluno = $dados["id_aluno"] ?? null;
$nome = $dados["nome"] ?? "";
$data_nascimento = $dados["data_nascimento"] ?? "";
$cpf = $dados["cpf"] ?? "";
$telefone = $dados["telefone"] ?? "";
$email = $dados["email"] ?? "";
$endereco = $dados["endereco"] ?? "";
$curso = $dados["curso"] ?? "";

if (
    !$id_aluno ||
    !$nome ||
    !$data_nascimento ||
    !$cpf ||
    !$telefone ||
    !$email ||
    !$endereco ||
    !$curso
) {
    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Preencha todos os campos."
    ]);
    exit();
}

try {

    $pdo->beginTransaction();


    

    $sql = "SELECT id_rua
            FROM ruas
            WHERE nome = :nome
            LIMIT 1";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":nome" => $endereco
    ]);

    $rua = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$rua) {
        throw new Exception("Endereço não encontrado.");
    }

    $id_rua = $rua["id_rua"];


    

    $sql = "SELECT id_curso
            FROM cursos
            WHERE nome = :nome
            LIMIT 1";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":nome" => $curso
    ]);

    $cursoEncontrado = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$cursoEncontrado) {
        throw new Exception("Curso não encontrado.");
    }

    $id_curso = $cursoEncontrado["id_curso"];


    

    $sql = "UPDATE alunos
            SET
                nome = :nome,
                data_nascimento = :data_nascimento,
                CPF = :cpf,
                telefone = :telefone,
                email = :email,
                id_rua = :id_rua
            WHERE id_aluno = :id_aluno";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":nome" => $nome,
        ":data_nascimento" => $data_nascimento,
        ":cpf" => $cpf,
        ":telefone" => $telefone,
        ":email" => $email,
        ":id_rua" => $id_rua,
        ":id_aluno" => $id_aluno
    ]);


    

    $sql = "SELECT id_matricula
            FROM matriculas
            WHERE id_aluno = :id_aluno
            LIMIT 1";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id_aluno" => $id_aluno
    ]);

    $matricula = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$matricula) {
        throw new Exception("Matrícula do aluno não encontrada.");
    }

    $id_matricula = $matricula["id_matricula"];


    

    $sql = "SELECT id_turma
            FROM turmas
            WHERE id_curso = :id_curso
            LIMIT 1";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id_curso" => $id_curso
    ]);

    $turma = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$turma) {
        throw new Exception("Turma do curso não encontrada.");
    }

    $id_turma = $turma["id_turma"];


    

    $sql = "UPDATE ma_tur
            SET id_turma = :id_turma
            WHERE id_matricula = :id_matricula";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        ":id_turma" => $id_turma,
        ":id_matricula" => $id_matricula
    ]);


    $pdo->commit();


    echo json_encode([
        "sucesso" => true,
        "mensagem" => "Aluno atualizado com sucesso."
    ]);

} catch (Throwable $e) {

    if ($pdo->inTransaction()) {
        $pdo->rollBack();
    }

    echo json_encode([
        "sucesso" => false,
        "mensagem" => "Erro ao atualizar aluno.",
        "erro" => $e->getMessage()
    ]);
}

?>