-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/11/2024 às 02:45
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gestao_hotel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospedes`
--

CREATE TABLE `hospedes` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `documento` varchar(100) NOT NULL,
  `contato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospedes`
--

INSERT INTO `hospedes` (`id`, `nome`, `documento`, `contato`) VALUES
(1, 'Ana Silva', '123.456.789-00', '(11) 98765-4321'),
(2, 'Carlos Souza', '987.654.321-00', '(21) 87654-3210'),
(3, 'Maria Oliveira', '111.222.333-44', '(31) 76543-2109'),
(4, 'João Santos', '222.333.444-55', '(41) 65432-1098'),
(5, 'Paula Lima', '333.444.555-66', '(51) 54321-0987'),
(6, 'Rafael Costa', '444.555.666-77', '(61) 43210-9876'),
(7, 'Carla Pereira', '555.666.777-88', '(71) 32109-8765'),
(8, 'José Almeida', '666.777.888-99', '(81) 21098-7654'),
(9, 'Lucia Martins', '777.888.999-00', '(91) 10987-6543'),
(10, 'Felipe Rocha', '888.999.000-11', '(11) 99876-5432'),
(11, 'Mariana Costa', '999.000.111-22', '(21) 88765-4321'),
(12, 'Pedro Gomes', '000.111.222-33', '(31) 77654-3210'),
(13, 'Fernanda Souza', '111.222.333-44', '(41) 66543-2109'),
(14, 'Ricardo Alves', '222.333.444-55', '(51) 55432-1098'),
(15, 'Tatiane Santos', '333.444.555-66', '(61) 44321-0987'),
(16, 'Eduardo Pereira', '444.555.666-77', '(71) 33210-9876'),
(17, 'Camila Rocha', '555.666.777-88', '(81) 22109-8765'),
(18, 'Lucas Martins', '666.777.888-99', '(91) 11098-7654'),
(19, 'Sofia Almeida', '777.888.999-00', '(11) 99876-5432');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `hospedes`
--
ALTER TABLE `hospedes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `hospedes`
--
ALTER TABLE `hospedes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
