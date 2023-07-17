-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/07/2023 às 18:34
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT 2016
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5 CSS3', 'Curso básico de HTML5 e CSS3', 40, 37, '2020'),
(2, 'Photoshop', 'Dicas de ADOBE photoshop', 10, 8, '2014'),
(3, 'Java', 'Introdução a linguagem JAVA', 10, 29, '2000'),
(4, 'PHP', 'Curso básico de PHP', 40, 20, '2015'),
(5, 'Algoritimo', 'Curso de Lógica de Progamação', 20, 25, '2012');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `ID_pessoa` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(30) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F','O') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`ID_pessoa`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'RAFAEL', NULL, '2005-06-03', 'M', 100.00, 1.89, 'Brasil'),
(2, 'ANA', NULL, '2003-08-21', 'F', 85.00, 1.67, 'EUA'),
(3, 'Marcio', NULL, '1993-08-21', 'M', 97.00, 1.79, ''),
(4, 'Lidia', NULL, '1950-08-21', 'F', 55.00, 1.55, 'Brasil'),
(6, 'Romeo', NULL, '1975-12-01', 'M', 95.20, 1.74, 'Brasil'),
(7, 'Bruna', NULL, '2004-09-05', 'F', 59.00, 1.65, 'EUA'),
(8, 'Pedro', NULL, '2000-03-17', 'M', 50.00, 1.45, 'Brasil'),
(9, 'Mariana', NULL, '2012-05-05', 'F', 50.00, 1.68, 'Irlanda');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`ID_pessoa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `ID_pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
