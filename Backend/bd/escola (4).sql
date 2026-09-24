-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2026 às 12:50
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `data_nascimento` date NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_rua` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome`, `data_nascimento`, `CPF`, `telefone`, `email`, `id_rua`, `ativo`) VALUES
(1, 'Aluno ADS 1', '2005-03-10', '20000000001', '11910000001', 'ads1@escola.com', 1, 1),
(2, 'Aluno ADS 2', '2005-04-12', '20000000002', '11910000002', 'ads2@escola.com', 2, 1),
(3, 'Aluno ADS 3', '2004-05-15', '20000000003', '11910000003', 'ads3@escola.com', 3, 1),
(4, 'Aluno ADS 4', '2005-01-20', '20000000004', '11910000004', 'ads4@escola.com', 1, 1),
(5, 'Aluno ADS 5', '2005-02-22', '20000000005', '11910000005', 'ads5@escola.com', 2, 1),
(6, 'Aluno ADS 6', '2005-06-14', '20000000006', '11910000006', 'ads6@escola.com', 3, 1),
(7, 'Aluno ADS 7', '2005-07-18', '20000000007', '11910000007', 'ads7@escola.com', 1, 1),
(8, 'Aluno ADS 8', '2004-08-09', '20000000008', '11910000008', 'ads8@escola.com', 2, 1),
(9, 'Aluno ADS 9', '2005-09-30', '20000000009', '11910000009', 'ads9@escola.com', 3, 1),
(10, 'Aluno ADS 10', '2005-10-05', '20000000010', '11910000010', 'ads10@escola.com', 1, 1),
(11, 'Aluno ADS 11', '2005-11-11', '20000000011', '11910000011', 'ads11@escola.com', 2, 1),
(12, 'Aluno ADS 12', '2005-12-25', '20000000012', '11910000012', 'ads12@escola.com', 3, 1),
(13, 'Aluno ADS 13', '2004-02-28', '20000000013', '11910000013', 'ads13@escola.com', 1, 1),
(14, 'Aluno ADS 14', '2005-03-14', '20000000014', '11910000014', 'ads14@escola.com', 2, 1),
(15, 'Aluno ADS 15', '2005-04-19', '20000000015', '11910000015', 'ads15@escola.com', 3, 1),
(16, 'Aluno ADS 16', '2005-05-23', '20000000016', '11910000016', 'ads16@escola.com', 1, 1),
(17, 'Aluno ADS 17', '2004-06-01', '20000000017', '11910000017', 'ads17@escola.com', 2, 1),
(18, 'Aluno ADS 18', '2005-07-07', '20000000018', '11910000018', 'ads18@escola.com', 3, 1),
(19, 'Aluno ADS 19', '2005-08-15', '20000000019', '11910000019', 'ads19@escola.com', 1, 1),
(20, 'Aluno ADS 20', '2005-09-17', '20000000020', '11910000020', 'ads20@escola.com', 2, 1),
(21, 'Aluno ADS 21', '2004-10-21', '20000000021', '11910000021', 'ads21@escola.com', 3, 1),
(22, 'Aluno ADS 22', '2005-11-30', '20000000022', '11910000022', 'ads22@escola.com', 1, 1),
(23, 'Aluno ADS 23', '2005-12-12', '20000000023', '11910000023', 'ads23@escola.com', 2, 1),
(24, 'Aluno ADS 24', '2005-01-08', '20000000024', '11910000024', 'ads24@escola.com', 3, 1),
(25, 'Aluno ADS 25', '2004-02-14', '20000000025', '11910000025', 'ads25@escola.com', 1, 1),
(26, 'Aluno ADS 26', '2005-03-27', '20000000026', '11910000026', 'ads26@escola.com', 2, 1),
(27, 'Aluno ADS 27', '2005-04-03', '20000000027', '11910000027', 'ads27@escola.com', 3, 1),
(28, 'Aluno ADS 28', '2005-05-09', '20000000028', '11910000028', 'ads28@escola.com', 1, 1),
(29, 'Aluno ADS 29', '2004-06-11', '20000000029', '11910000029', 'ads29@escola.com', 2, 1),
(30, 'Aluno ADS 30', '2005-07-24', '20000000030', '11910000030', 'ads30@escola.com', 3, 1),
(31, 'Aluno ADS 31', '2005-08-29', '20000000031', '11910000031', 'ads31@escola.com', 1, 1),
(32, 'Aluno ADS 32', '2005-09-02', '20000000032', '11910000032', 'ads32@escola.com', 2, 1),
(33, 'Aluno ADS 33', '2004-10-10', '20000000033', '11910000033', 'ads33@escola.com', 3, 1),
(34, 'Aluno ADS 34', '2005-11-16', '20000000034', '11910000034', 'ads34@escola.com', 1, 1),
(35, 'Aluno ADS 35', '2005-12-20', '20000000035', '11910000035', 'ads35@escola.com', 2, 1),
(36, 'Aluno ADS 36', '2005-01-29', '20000000036', '11910000036', 'ads36@escola.com', 3, 1),
(37, 'Aluno ADS 37', '2004-02-18', '20000000037', '11910000037', 'ads37@escola.com', 1, 1),
(38, 'Aluno ADS 38', '2005-03-21', '20000000038', '11910000038', 'ads38@escola.com', 2, 1),
(39, 'Aluno ADS 39', '2005-04-26', '20000000039', '11910000039', 'ads39@escola.com', 3, 1),
(40, 'Aluno ADS 40', '2005-05-31', '20000000040', '11910000040', 'ads40@escola.com', 1, 1),
(41, 'Aluno ADS 41', '2004-06-05', '20000000041', '11910000041', 'ads41@escola.com', 2, 1),
(42, 'Aluno ADS 42', '2005-07-13', '20000000042', '11910000042', 'ads42@escola.com', 3, 1),
(43, 'Aluno ADS 43', '2005-08-19', '20000000043', '11910000043', 'ads43@escola.com', 1, 1),
(44, 'Aluno ADS 44', '2005-09-22', '20000000044', '11910000044', 'ads44@escola.com', 2, 1),
(45, 'Aluno ADS 45', '2004-10-27', '20000000045', '11910000045', 'ads45@escola.com', 3, 1),
(46, 'Aluno ADS 46', '2005-11-02', '20000000046', '11910000046', 'ads46@escola.com', 1, 1),
(47, 'Aluno ADS 47', '2005-12-07', '20000000047', '11910000047', 'ads47@escola.com', 2, 1),
(48, 'Aluno ADS 48', '2005-01-11', '20000000048', '11910000048', 'ads48@escola.com', 3, 1),
(49, 'Aluno ADS 49', '2004-02-15', '20000000049', '11910000049', 'ads49@escola.com', 1, 1),
(50, 'Aluno ADS 50', '2005-03-19', '20000000050', '11910000050', 'ads50@escola.com', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `al_re`
--

DROP TABLE IF EXISTS `al_re`;
CREATE TABLE `al_re` (
  `id_aluno` int(11) NOT NULL,
  `id_responsavel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `al_re`
--

INSERT INTO `al_re` (`id_aluno`, `id_responsavel`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
CREATE TABLE `avaliacoes` (
  `id_avaliacao` int(11) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `data_avaliacao` date NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id_avaliacao`, `descricao`, `data_avaliacao`, `valor`) VALUES
(1, 'Prova Bimestral 1 - Algoritmos', '2026-04-15', 25),
(2, 'Trabalho Prático 1 - Algoritmos', '2026-05-20', 25),
(3, 'Prova Bimestral 2 - Algoritmos', '2026-06-10', 25),
(4, 'Projeto Final - Algoritmos', '2026-06-25', 25),
(5, 'Prova Bimestral 1 - Modelagem', '2026-04-16', 25),
(6, 'Exercícios de Álgebra Relacional', '2026-05-21', 25),
(7, 'Prova Bimestral 2 - Modelagem', '2026-06-11', 25),
(8, 'Projeto Conceitual MER', '2026-06-26', 25),
(9, 'Prova Bimestral 1 - Redes', '2026-04-17', 25),
(10, 'Prática de Cabeamento/Crimpagem', '2026-05-22', 25),
(11, 'Prova Bimestral 2 - Redes', '2026-06-12', 25),
(12, 'Simulado de Subredes Packet Tracer', '2026-06-24', 25),
(13, 'Prova Bimestral 1 - Estruturas', '2026-04-18', 25),
(14, 'Trabalho de Pilhas e Filas', '2026-05-23', 25),
(15, 'Prova Bimestral 2 - Estruturas', '2026-06-13', 25),
(16, 'Algoritmos de Ordenação Árvores', '2026-06-23', 25),
(17, 'Prova 1 - Conceitos Classes/Objetos', '2026-04-19', 25),
(18, 'Lista de Exercícios Herança', '2026-05-24', 25),
(19, 'Prova 2 - Polimorfismo e Interfaces', '2026-06-14', 25),
(20, 'Sistema Desktop Completo POO', '2026-06-22', 25),
(21, 'Avaliação Teórica IHC', '2026-04-20', 25),
(22, 'Relatório de Heurísticas de Nielsen', '2026-05-25', 25),
(23, 'Teste de Usabilidade em Grupo', '2026-06-15', 25),
(24, 'Protótipo de Alta Fidelidade Figma', '2026-06-21', 25),
(25, 'Prova 1 - Gerenciamento de Processos', '2026-04-21', 25),
(26, 'Atividade Prática Shell Script', '2026-05-26', 25),
(27, 'Prova 2 - Memória Virtual e Threads', '2026-06-16', 25),
(28, 'Seminário sobre Sistemas de Arquivos', '2026-06-20', 25),
(29, 'Criação de Página HTML/CSS', '2026-04-22', 25),
(30, 'Trabalho de Responsividade Flexbox', '2026-05-27', 25),
(31, 'Prova Prática JavaScript DOM', '2026-06-17', 25),
(32, 'E-commerce Front-end Completo', '2026-06-19', 25),
(33, 'Prova 1 - Algoritmos de Busca', '2026-04-23', 25),
(34, 'Implementação Árvores de Decisão', '2026-05-28', 25),
(35, 'Prova 2 - Redes Neurais Artificiais', '2026-06-18', 25),
(36, 'Modelo Preditivo Machine Learning', '2026-06-27', 25),
(37, 'Prova 1 - Procedures e Triggers', '2026-04-24', 25),
(38, 'Estudo de Caso Otimização de Index', '2026-05-29', 25),
(39, 'Prova 2 - Transações e Concorrência', '2026-06-19', 25),
(40, 'Mapeamento NoSQL MongoDB', '2026-06-28', 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairros`
--

DROP TABLE IF EXISTS `bairros`;
CREATE TABLE `bairros` (
  `id_bairro` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `id_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bairros`
--

INSERT INTO `bairros` (`id_bairro`, `nome`, `id_cidade`) VALUES
(1, 'Centro', 1),
(2, 'Vila Mariana', 1),
(3, 'Pinheiros', 1),
(4, 'Moema', 1),
(5, 'Santana', 1),
(6, 'Ipiranga', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins`
--

DROP TABLE IF EXISTS `boletins`;
CREATE TABLE `boletins` (
  `id_boletim` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `media` int(11) NOT NULL,
  `situacao_final` varchar(20) NOT NULL,
  `frequencia` decimal(3,1) NOT NULL,
  `id_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `boletins`
--

INSERT INTO `boletins` (`id_boletim`, `nota`, `media`, `situacao_final`, `frequencia`, `id_aluno`) VALUES
(1, 85, 85, 'Aprovado', 92.5, 1),
(2, 45, 45, 'Reprovado', 60.0, 2),
(3, 70, 70, 'Aprovado', 88.0, 3),
(4, 95, 95, 'Aprovado', 98.5, 4),
(5, 55, 55, 'Recuperação', 78.0, 5),
(6, 78, 78, 'Aprovado', 85.3, 6),
(7, 62, 62, 'Aprovado', 80.0, 7),
(8, 90, 90, 'Aprovado', 95.0, 8),
(9, 35, 35, 'Reprovado', 55.5, 9),
(10, 88, 88, 'Aprovado', 91.0, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bo_di`
--

DROP TABLE IF EXISTS `bo_di`;
CREATE TABLE `bo_di` (
  `id_boletim` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bo_di`
--

INSERT INTO `bo_di` (`id_boletim`, `id_disciplina`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE `cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(32) DEFAULT NULL,
  `id_uf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id_cidade`, `nome`, `id_uf`) VALUES
(1, 'São Paulo', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `coordenador`
--

DROP TABLE IF EXISTS `coordenador`;
CREATE TABLE `coordenador` (
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `coordenador`
--

INSERT INTO `coordenador` (`id_prof`) VALUES
(1),
(11),
(21),
(31),
(41);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `descricao` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome`, `carga_horaria`, `duracao`, `descricao`) VALUES
(1, 'Análise e Desenvolvimento de Sistemas', 2400, 5, 'Curso superior de tecnologia em ADS.'),
(2, 'Administração de Empresas', 3000, 8, 'Bacharelado em Administração.'),
(3, 'Enfermagem', 4000, 10, 'Bacharelado em Enfermagem.'),
(4, 'Direito', 3700, 10, 'Bacharelado em Direito.'),
(5, 'Engenharia de Software', 3600, 8, 'Bacharelado em Engenharia de Software.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cur_di`
--

DROP TABLE IF EXISTS `cur_di`;
CREATE TABLE `cur_di` (
  `id_disciplina` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cur_di`
--

INSERT INTO `cur_di` (`id_disciplina`, `id_curso`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE `disciplinas` (
  `id_disciplina` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id_disciplina`, `nome`, `carga_horaria`, `id_prof`) VALUES
(1, 'Algoritmos e Lógica', 80, 1),
(2, 'Modelagem de Dados', 80, 2),
(3, 'Redes de Computadores', 60, 3),
(4, 'Estrutura de Dados', 80, 4),
(5, 'POO', 80, 5),
(6, 'Interface IHC', 40, 6),
(7, 'Sistemas Operacionais', 60, 7),
(8, 'Desenvolvimento Web', 80, 8),
(9, 'Inteligência Artificial', 60, 9),
(10, 'Banco de Dados Avançado', 80, 10),
(11, 'Teoria Geral da Adm', 80, 11),
(12, 'Contabilidade Geral', 80, 12),
(13, 'Gestão de Projetos', 60, 13),
(14, 'Recursos Humanos', 80, 14),
(15, 'Marketing Estratégico', 80, 15),
(16, 'Gestão de Processos', 60, 16),
(17, 'Logística Integrada', 60, 17),
(18, 'Administração Financeira', 80, 18),
(19, 'Cenários Econômicos', 60, 19),
(20, 'Modelos de Negócios', 60, 20),
(21, 'Anatomia Humana', 100, 21),
(22, 'Fisiologia Aplicada', 80, 22),
(23, 'Procedimentos de UTI', 80, 23),
(24, 'Doenças Infecciosas', 60, 24),
(25, 'Pronto Socorro', 80, 25),
(26, 'Enfermagem Pediátrica', 80, 26),
(27, 'Saúde Coletiva', 60, 27),
(28, 'Obstetrícia Geral', 80, 28),
(29, 'Patologia Humana', 60, 29),
(30, 'Saúde do Idoso', 60, 30),
(31, 'Direito Civil I', 80, 31),
(32, 'Direito Penal I', 80, 32),
(33, 'Direito Constitucional', 80, 33),
(34, 'Direito do Trabalho', 60, 34),
(35, 'Direito Tributário', 80, 35),
(36, 'Direito Processual', 80, 36),
(37, 'Direito Público', 60, 37),
(38, 'Direito Ambiental', 60, 38),
(39, 'Direito Internacional', 60, 39),
(40, 'Filosofia do Direito', 40, 40),
(41, 'Engenharia de Requisitos', 80, 41),
(42, 'Arquitetura de Software', 80, 42),
(43, 'Cultura DevOps', 60, 43),
(44, 'Testes de Software', 80, 44),
(45, 'Qualidade de Processo', 60, 45),
(46, 'Métodos Ágeis', 60, 46),
(47, 'Arquitetura Cloud', 80, 47),
(48, 'Segurança da Informação', 60, 48),
(49, 'Desenvolvimento Mobile', 80, 49),
(50, 'Microsserviços', 60, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `di_ava`
--

DROP TABLE IF EXISTS `di_ava`;
CREATE TABLE `di_ava` (
  `id_disciplina` int(11) NOT NULL,
  `id_avaliacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `di_ava`
--

INSERT INTO `di_ava` (`id_disciplina`, `id_avaliacao`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(7, 25),
(7, 26),
(7, 27),
(7, 28),
(8, 29),
(8, 30),
(8, 31),
(8, 32),
(9, 34),
(9, 35),
(9, 36),
(10, 37),
(10, 38),
(10, 39),
(10, 40),
(34, 33);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE `matriculas` (
  `id_matricula` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `data_matricula` date NOT NULL,
  `situacao_matricula` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`id_matricula`, `id_aluno`, `data_matricula`, `situacao_matricula`) VALUES
(1, 1, '2026-02-10', 'Ativo'),
(2, 2, '2026-02-10', 'Ativo'),
(3, 3, '2026-02-10', 'Ativo'),
(4, 4, '2026-02-10', 'Ativo'),
(5, 5, '2026-02-10', 'Ativo'),
(6, 6, '2026-02-10', 'Ativo'),
(7, 7, '2026-02-10', 'Ativo'),
(8, 8, '2026-02-10', 'Ativo'),
(9, 9, '2026-02-10', 'Ativo'),
(10, 10, '2026-02-10', 'Ativo'),
(11, 11, '2026-02-10', 'Ativo'),
(12, 12, '2026-02-10', 'Ativo'),
(13, 13, '2026-02-10', 'Ativo'),
(14, 14, '2026-02-10', 'Ativo'),
(15, 15, '2026-02-10', 'Ativo'),
(16, 16, '2026-02-10', 'Ativo'),
(17, 17, '2026-02-10', 'Ativo'),
(18, 18, '2026-02-10', 'Ativo'),
(19, 19, '2026-02-10', 'Ativo'),
(20, 20, '2026-02-10', 'Ativo'),
(21, 21, '2026-02-10', 'Ativo'),
(22, 22, '2026-02-10', 'Ativo'),
(23, 23, '2026-02-10', 'Ativo'),
(24, 24, '2026-02-10', 'Ativo'),
(25, 25, '2026-02-10', 'Ativo'),
(26, 26, '2026-02-10', 'Ativo'),
(27, 27, '2026-02-10', 'Ativo'),
(28, 28, '2026-02-10', 'Ativo'),
(29, 29, '2026-02-10', 'Ativo'),
(30, 30, '2026-02-10', 'Ativo'),
(31, 31, '2026-02-10', 'Ativo'),
(32, 32, '2026-02-10', 'Ativo'),
(33, 33, '2026-02-10', 'Ativo'),
(34, 34, '2026-02-10', 'Ativo'),
(35, 35, '2026-02-10', 'Ativo'),
(36, 36, '2026-02-10', 'Ativo'),
(37, 37, '2026-02-10', 'Ativo'),
(38, 38, '2026-02-10', 'Ativo'),
(39, 39, '2026-02-10', 'Ativo'),
(40, 40, '2026-02-10', 'Ativo'),
(41, 41, '2026-02-10', 'Ativo'),
(42, 42, '2026-02-10', 'Ativo'),
(43, 43, '2026-02-10', 'Ativo'),
(44, 44, '2026-02-10', 'Ativo'),
(45, 45, '2026-02-10', 'Ativo'),
(46, 46, '2026-02-10', 'Ativo'),
(47, 47, '2026-02-10', 'Ativo'),
(48, 48, '2026-02-10', 'Ativo'),
(49, 49, '2026-02-10', 'Ativo'),
(50, 50, '2026-02-10', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ma_tur`
--

DROP TABLE IF EXISTS `ma_tur`;
CREATE TABLE `ma_tur` (
  `id_matricula` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ma_tur`
--

INSERT INTO `ma_tur` (`id_matricula`, `id_turma`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE `professores` (
  `id_prof` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `formacao` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `id_rua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id_prof`, `nome`, `CPF`, `formacao`, `email`, `telefone`, `id_rua`) VALUES
(1, 'Prof. Carlos Silva', '11111111111', 'Doutorado em Computação', 'carlos@escola.com', '11999990001', 2),
(2, 'Prof. Ana Santos', '11111111112', 'Mestrado em TI', 'ana@escola.com', '11999990002', 1),
(3, 'Prof. Roberto Costa', '11111111113', 'Especialização em Redes', 'roberto@escola.com', '11999990003', 3),
(4, 'Prof. Juliana Lima', '11111111114', 'Doutorado em Algoritmos', 'juliana@escola.com', '11999990004', 4),
(5, 'Prof. Marcos Souza', '11111111115', 'Mestrado em Engenharia', 'marcos@escola.com', '11999990005', 1),
(6, 'Prof. Sandra Melo', '11111111116', 'Doutorado em UX', 'sandra@escola.com', '11999990006', 5),
(7, 'Prof. Ricardo Dias', '11111111117', 'Mestrado em Sistemas', 'ricardo@escola.com', '11999990007', 6),
(8, 'Prof. Patricia Cruz', '11111111118', 'Especialização em Web', 'patricia@escola.com', '11999990008', 1),
(9, 'Prof. Fernando Alves', '11111111119', 'Doutorado em IA', 'fernando@escola.com', '11999990009', 7),
(10, 'Prof. Camila Rocha', '11111111120', 'Mestrado em Dados', 'camila@escola.com', '11999990010', 8),
(11, 'Prof. Bruno Oliveira', '22222222201', 'Doutorado em Adm', 'bruno@escola.com', '11988880001', 9),
(12, 'Prof. Carla Mendes', '22222222202', 'Mestrado em Finanças', 'carla@escola.com', '11988880002', 1),
(13, 'Prof. Diego Ramos', '22222222203', 'MBA em Projetos', 'diego@escola.com', '11988880003', 10),
(14, 'Prof. Elena Vieira', '22222222204', 'Doutorado em RH', 'elena@escola.com', '11988880004', 11),
(15, 'Prof. Fabio Nunes', '22222222205', 'Mestrado em Marketing', 'fabio@escola.com', '11988880005', 12),
(16, 'Prof. Gisele Garcia', '22222222206', 'Doutorado em Processos', 'gisele@escola.com', '11988880006', 1),
(17, 'Prof. Hugo Ribeiro', '22222222207', 'Mestrado em Logística', 'hugo@escola.com', '11988880007', 13),
(18, 'Prof. Ines Carvalho', '22222222208', 'Especialização em Adm', 'ines@escola.com', '11988880008', 14),
(19, 'Prof. Jorge Fontes', '22222222209', 'Doutorado em Economia', 'jorge@escola.com', '11988880009', 1),
(20, 'Prof. Karina Lopes', '22222222210', 'Mestrado em Negócios', 'karina@escola.com', '11988880010', 15),
(21, 'Prof. Luis Antunes', '33333333301', 'Doutorado em Saúde', 'luis@escola.com', '11977770001', 1),
(22, 'Prof. Marta Souza', '33333333302', 'Mestrado em Anatomia', 'marta@escola.com', '11977770002', 16),
(23, 'Prof. Nuno Peres', '33333333303', 'Especialização UTI', 'nuno@escola.com', '11977770003', 17),
(24, 'Prof. Olivia Castro', '33333333304', 'Doutorado Infecciosas', 'olivia@escola.com', '11977770004', 18),
(25, 'Prof. Pedro Martins', '33333333305', 'Mestrado Urgência', 'pedro@escola.com', '11977770005', 1),
(26, 'Prof. Regina Fonseca', '33333333306', 'Doutorado Pediatria', 'regina@escola.com', '11977770006', 2),
(27, 'Prof. Sergio Reis', '33333333307', 'Mestrado Saúde Pública', 'sergio@escola.com', '11977770007', 1),
(28, 'Prof. Tania Guimarães', '33333333308', 'Especialização Obstetrícia', 'tania@escola.com', '11977770008', 4),
(29, 'Prof. Valter Xavier', '33333333309', 'Doutorado Patologia', 'valter@escola.com', '11977770009', 1),
(30, 'Prof. Zélia Toledo', '33333333310', 'Mestrado Idosos', 'zelia@escola.com', '11977770010', 6),
(31, 'Prof. Andreia Barbosa', '44444444401', 'Doutorado em Direito Civil', 'andreia@escola.com', '11966660001', 1),
(32, 'Prof. Caio Teodoro', '44444444402', 'Mestrado em Penal', 'caio@escola.com', '11966660002', 8),
(33, 'Prof. Debora Franco', '44444444403', 'Doutorado em Constitucional', 'debora@escola.com', '11966660003', 1),
(34, 'Prof. Elias Miranda', '44444444404', 'Mestrado em Trabalho', 'elias@escola.com', '11966660004', 1),
(35, 'Prof. Flavia Pinto', '44444444405', 'Especialização Tributário', 'flavia@escola.com', '11966660005', 10),
(36, 'Prof. Gabriel Marques', '44444444406', 'Doutorado Processual', 'gabriel@escola.com', '11966660006', 1),
(37, 'Prof. Helena Viana', '44444444407', 'Mestrado Público', 'helena@escola.com', '11966660007', 1),
(38, 'Prof. Igor Rezende', '44444444408', 'Doutorado Ambiental', 'igor@escola.com', '11966660008', 12),
(39, 'Prof. Julia Machado', '44444444409', 'Mestrado Internacional', 'julia@escola.com', '11966660009', 1),
(40, 'Prof. Lucas Cordeiro', '44444444410', 'Doutorado Filosofia Jurídica', 'lucas@escola.com', '11966660010', 1),
(41, 'Prof. Murilo Peixoto', '55555555501', 'Doutorado em Requisitos', 'murilo@escola.com', '11955550001', 1),
(42, 'Prof. Natalia Aguiar', '55555555502', 'Mestrado em Arquitetura', 'natalia@escola.com', '11955550002', 14),
(43, 'Prof. Otavio Gimenez', '55555555503', 'Especialização DevOps', 'otavio@escola.com', '11955550003', 1),
(44, 'Prof. Paula Antunes', '55555555504', 'Doutorado em Testes', 'paula@escola.com', '11955550004', 1),
(45, 'Prof. Quenia Teixeira', '55555555505', 'Mestrado Qualidade de Software', 'quenia@escola.com', '11955550005', 1),
(46, 'Prof. Rafael Frota', '55555555506', 'Doutorado Ágil', 'rafael@escola.com', '11955550006', 1),
(47, 'Prof. Simone Leitão', '55555555507', 'Mestrado Cloud', 'simone@escola.com', '11955550007', 1),
(48, 'Prof. Thiago Dorneles', '55555555508', 'Especialização Segurança', 'thiago@escola.com', '11955550008', 16),
(49, 'Prof. Ursula Prates', '55555555509', 'Doutorado Mobile', 'ursula@escola.com', '11955550009', 1),
(50, 'Prof. Vitor Fagundes', '55555555510', 'Mestrado Microsserviços', 'vitor@escola.com', '11955550010', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
CREATE TABLE `responsaveis` (
  `id_responsavel` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `parentesco` varchar(20) NOT NULL,
  `id_rua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `responsaveis`
--

INSERT INTO `responsaveis` (`id_responsavel`, `nome`, `CPF`, `parentesco`, `id_rua`) VALUES
(1, 'Responsavel 1', '10000000001', 'Pai', 1),
(2, 'Responsavel 2', '10000000002', 'Mãe', 2),
(3, 'Responsavel 3', '10000000003', 'Pai', 3),
(4, 'Responsavel 4', '10000000004', 'Mãe', 1),
(5, 'Responsavel 5', '10000000005', 'Outro', 2),
(6, 'Responsavel 6', '10000000006', 'Pai', 3),
(7, 'Responsavel 7', '10000000007', 'Mãe', 1),
(8, 'Responsavel 8', '10000000008', 'Pai', 2),
(9, 'Responsavel 9', '10000000009', 'Mãe', 3),
(10, 'Responsavel 10', '10000000010', 'Outro', 1),
(11, 'Responsavel 11', '10000000011', 'Pai', 2),
(12, 'Responsavel 12', '10000000012', 'Mãe', 3),
(13, 'Responsavel 13', '10000000013', 'Pai', 1),
(14, 'Responsavel 14', '10000000014', 'Mãe', 2),
(15, 'Responsavel 15', '10000000015', 'Outro', 3),
(16, 'Responsavel 16', '10000000016', 'Pai', 1),
(17, 'Responsavel 17', '10000000017', 'Mãe', 2),
(18, 'Responsavel 18', '10000000018', 'Pai', 3),
(19, 'Responsavel 19', '10000000019', 'Mãe', 1),
(20, 'Responsavel 20', '10000000020', 'Outro', 2),
(21, 'Responsavel 21', '10000000021', 'Pai', 3),
(22, 'Responsavel 22', '10000000022', 'Mãe', 1),
(23, 'Responsavel 23', '10000000023', 'Pai', 2),
(24, 'Responsavel 24', '10000000024', 'Mãe', 3),
(25, 'Responsavel 25', '10000000025', 'Outro', 1),
(26, 'Responsavel 26', '10000000026', 'Pai', 2),
(27, 'Responsavel 27', '10000000027', 'Mãe', 3),
(28, 'Responsavel 28', '10000000028', 'Pai', 1),
(29, 'Responsavel 29', '10000000029', 'Mãe', 2),
(30, 'Responsavel 30', '10000000030', 'Outro', 3),
(31, 'Responsavel 31', '10000000031', 'Pai', 1),
(32, 'Responsavel 32', '10000000032', 'Mãe', 2),
(33, 'Responsavel 33', '10000000033', 'Pai', 3),
(34, 'Responsavel 34', '10000000034', 'Mãe', 1),
(35, 'Responsavel 35', '10000000035', 'Outro', 2),
(36, 'Responsavel 36', '10000000036', 'Pai', 3),
(37, 'Responsavel 37', '10000000037', 'Mãe', 1),
(38, 'Responsavel 38', '10000000038', 'Pai', 2),
(39, 'Responsavel 39', '10000000039', 'Mãe', 3),
(40, 'Responsavel 40', '10000000040', 'Outro', 1),
(41, 'Responsavel 41', '10000000041', 'Pai', 2),
(42, 'Responsavel 42', '10000000042', 'Mãe', 3),
(43, 'Responsavel 43', '10000000043', 'Pai', 1),
(44, 'Responsavel 44', '10000000044', 'Mãe', 2),
(45, 'Responsavel 45', '10000000045', 'Outro', 3),
(46, 'Responsavel 46', '10000000046', 'Pai', 1),
(47, 'Responsavel 47', '10000000047', 'Mãe', 2),
(48, 'Responsavel 48', '10000000048', 'Pai', 3),
(49, 'Responsavel 49', '10000000049', 'Mãe', 1),
(50, 'Responsavel 50', '10000000050', 'Outro', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ruas`
--

DROP TABLE IF EXISTS `ruas`;
CREATE TABLE `ruas` (
  `id_rua` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `id_bairro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ruas`
--

INSERT INTO `ruas` (`id_rua`, `nome`, `id_bairro`) VALUES
(1, 'Avenida Paulista', 1),
(2, 'Rua Augusta', 1),
(3, 'Rua Consolação', 1),
(4, 'Rua Domingos de Morais', 2),
(5, 'Rua Vergueiro', 2),
(6, 'Rua Luís Góis', 2),
(7, 'Rua dos Pinheiros', 3),
(8, 'Avenida Rebouças', 3),
(9, 'Rua Teodoro Sampaio', 3),
(10, 'Alameda dos Anapurus', 4),
(11, 'Avenida Ibirapuera', 4),
(12, 'Rua Moaci', 4),
(13, 'Rua Voluntários da Pátria', 5),
(14, 'Rua Cruzeiro do Sul', 5),
(15, 'Rua Alfredo Pujol', 5),
(16, 'Rua Bom Pastor', 6),
(17, 'Rua Silva Bueno', 6),
(18, 'Avenida Nazaré', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE `turmas` (
  `id_turma` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `anoLetivo` varchar(30) NOT NULL,
  `turno` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id_turma`, `id_curso`, `anoLetivo`, `turno`) VALUES
(1, 1, '2026', 'Noturno'),
(2, 2, '2026', 'Matutino'),
(3, 3, '2026', 'Integral'),
(4, 4, '2026', 'Noturno'),
(5, 5, '2026', 'Noturno');

-- --------------------------------------------------------

--
-- Estrutura para tabela `uf`
--

DROP TABLE IF EXISTS `uf`;
CREATE TABLE `uf` (
  `id_uf` int(11) NOT NULL,
  `nome` varchar(22) NOT NULL,
  `sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `uf`
--

INSERT INTO `uf` (`id_uf`, `nome`, `sigla`) VALUES
(1, 'São Paulo', 'SP');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `id_rua` (`id_rua`);

--
-- Índices de tabela `al_re`
--
ALTER TABLE `al_re`
  ADD PRIMARY KEY (`id_aluno`,`id_responsavel`),
  ADD KEY `id_responsavel` (`id_responsavel`);

--
-- Índices de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id_avaliacao`);

--
-- Índices de tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id_bairro`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`id_boletim`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices de tabela `bo_di`
--
ALTER TABLE `bo_di`
  ADD PRIMARY KEY (`id_boletim`,`id_disciplina`),
  ADD KEY `id_disciplina` (`id_disciplina`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `id_uf` (`id_uf`);

--
-- Índices de tabela `coordenador`
--
ALTER TABLE `coordenador`
  ADD PRIMARY KEY (`id_prof`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Índices de tabela `cur_di`
--
ALTER TABLE `cur_di`
  ADD PRIMARY KEY (`id_disciplina`,`id_curso`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id_disciplina`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Índices de tabela `di_ava`
--
ALTER TABLE `di_ava`
  ADD PRIMARY KEY (`id_disciplina`,`id_avaliacao`),
  ADD KEY `id_avaliacao` (`id_avaliacao`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices de tabela `ma_tur`
--
ALTER TABLE `ma_tur`
  ADD PRIMARY KEY (`id_matricula`,`id_turma`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id_prof`),
  ADD KEY `id_rua` (`id_rua`);

--
-- Índices de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`id_responsavel`),
  ADD KEY `id_rua` (`id_rua`);

--
-- Índices de tabela `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`id_rua`),
  ADD KEY `id_bairro` (`id_bairro`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Índices de tabela `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`id_uf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id_bairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `boletins`
--
ALTER TABLE `boletins`
  MODIFY `id_boletim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `id_responsavel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `ruas`
--
ALTER TABLE `ruas`
  MODIFY `id_rua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `uf`
--
ALTER TABLE `uf`
  MODIFY `id_uf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`id_rua`) REFERENCES `ruas` (`id_rua`);

--
-- Restrições para tabelas `al_re`
--
ALTER TABLE `al_re`
  ADD CONSTRAINT `al_re_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`),
  ADD CONSTRAINT `al_re_ibfk_2` FOREIGN KEY (`id_responsavel`) REFERENCES `responsaveis` (`id_responsavel`);

--
-- Restrições para tabelas `bairros`
--
ALTER TABLE `bairros`
  ADD CONSTRAINT `bairros_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`);

--
-- Restrições para tabelas `boletins`
--
ALTER TABLE `boletins`
  ADD CONSTRAINT `boletins_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`);

--
-- Restrições para tabelas `bo_di`
--
ALTER TABLE `bo_di`
  ADD CONSTRAINT `bo_di_ibfk_1` FOREIGN KEY (`id_boletim`) REFERENCES `boletins` (`id_boletim`),
  ADD CONSTRAINT `bo_di_ibfk_2` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`id_disciplina`);

--
-- Restrições para tabelas `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `cidades_ibfk_1` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`);

--
-- Restrições para tabelas `coordenador`
--
ALTER TABLE `coordenador`
  ADD CONSTRAINT `coordenador_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professores` (`id_prof`);

--
-- Restrições para tabelas `cur_di`
--
ALTER TABLE `cur_di`
  ADD CONSTRAINT `cur_di_ibfk_1` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`id_disciplina`),
  ADD CONSTRAINT `cur_di_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);

--
-- Restrições para tabelas `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professores` (`id_prof`);

--
-- Restrições para tabelas `di_ava`
--
ALTER TABLE `di_ava`
  ADD CONSTRAINT `di_ava_ibfk_1` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplinas` (`id_disciplina`),
  ADD CONSTRAINT `di_ava_ibfk_2` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`);

--
-- Restrições para tabelas `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`);

--
-- Restrições para tabelas `ma_tur`
--
ALTER TABLE `ma_tur`
  ADD CONSTRAINT `ma_tur_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matriculas` (`id_matricula`),
  ADD CONSTRAINT `ma_tur_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turmas` (`id_turma`);

--
-- Restrições para tabelas `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`id_rua`) REFERENCES `ruas` (`id_rua`);

--
-- Restrições para tabelas `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD CONSTRAINT `responsaveis_ibfk_1` FOREIGN KEY (`id_rua`) REFERENCES `ruas` (`id_rua`);

--
-- Restrições para tabelas `ruas`
--
ALTER TABLE `ruas`
  ADD CONSTRAINT `ruas_ibfk_1` FOREIGN KEY (`id_bairro`) REFERENCES `bairros` (`id_bairro`);

--
-- Restrições para tabelas `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
