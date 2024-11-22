-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/11/2024 às 02:12
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
-- Banco de dados: `hotel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `horario_trabalho` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome`, `cargo`, `horario_trabalho`) VALUES
(1, 'José Almeida', 'Recepcionista', '08:00:00'),
(2, 'Paula Oliveira', 'Camareira', '09:00:00'),
(3, 'Eduardo Costa', 'Gerente', '10:00:00'),
(4, 'Cláudia Santos', 'Recepcionista', '08:00:00'),
(5, 'Carlos Souza', 'Camareiro', '09:00:00'),
(6, 'Rita Fernandes', 'Segurança', '18:00:00'),
(7, 'José Almeida', 'Recepcionista', '08:00:00'),
(8, 'Paula Oliveira', 'Camareira', '09:00:00'),
(9, 'Eduardo Costa', 'Gerente', '10:00:00'),
(10, 'Cláudia Santos', 'Recepcionista', '08:00:00'),
(11, 'Carlos Souza', 'Camareiro', '09:00:00'),
(12, 'Lucas Almeida', 'Garçom', '11:00:00'),
(13, 'Marina Silva', 'Camareira', '09:00:00'),
(14, 'Ricardo Lima', 'Segurança', '18:00:00'),
(15, 'Tatiane Pereira', 'Recepcionista', '07:00:00'),
(16, 'Bruno Martins', 'Camareiro', '09:00:00'),
(17, 'Juliana Souza', 'Gerente', '10:00:00'),
(18, 'Fernanda Oliveira', 'Garçom', '12:00:00'),
(19, 'Marcelo Lima', 'Segurança', '18:00:00'),
(20, 'Giovana Costa', 'Recepcionista', '08:00:00'),
(21, 'Paulo Henrique', 'Camareiro', '10:00:00'),
(22, 'Renata Duarte', 'Recepcionista', '07:00:00'),
(23, 'Andréia Ferreira', 'Camareira', '09:00:00'),
(24, 'Luiz Alberto', 'Segurança', '18:00:00'),
(25, 'Rafael Silva', 'Garçom', '11:00:00'),
(26, 'Viviane Pereira', 'Recepcionista', '08:00:00'),
(27, 'Denise Costa', 'Camareira', '09:00:00'),
(28, 'Gustavo Oliveira', 'Garçom', '11:00:00'),
(29, 'Amanda Rocha', 'Recepcionista', '08:00:00'),
(30, 'Marcos Pereira', 'Segurança', '18:00:00'),
(31, 'Renan Lima', 'Camareiro', '09:00:00'),
(32, 'Sílvia Martins', 'Recepcionista', '07:00:00'),
(33, 'Felipe Costa', 'Gerente', '10:00:00'),
(34, 'Lucas Ferreira', 'Segurança', '18:00:00'),
(35, 'Isabela Souza', 'Garçom', '12:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospedes`
--

CREATE TABLE `hospedes` (
  `id_hospede` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `documento_identificacao` varchar(50) DEFAULT NULL,
  `contato` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospedes`
--

INSERT INTO `hospedes` (`id_hospede`, `nome`, `documento_identificacao`, `contato`) VALUES
(1, 'Carlos Silva Lima', '12345678901', 'carlos@example.com'),
(2, 'Ana Lima', '98765432100', 'ana@example.com'),
(3, 'João Pereira', '11122334455', 'joao@example.com'),
(4, 'Mariana Costa', '55667788990', 'mariana@example.com'),
(5, 'Ricardo Lima', '99887766544', 'ricardo@example.com'),
(6, 'Luana Rocha', '55443322111', 'luana@example.com'),
(7, 'Maria Oliveira', '12345678902', 'maria@example.com'),
(8, 'Carlos Pereira', '12345678903', 'carlos.pereira@example.com'),
(9, 'Ana Costa', '12345678904', 'ana.costa@example.com'),
(10, 'José Santos', '12345678905', 'jose.santos@example.com'),
(11, 'Fernanda Lima', '12345678906', 'fernanda.lima@example.com'),
(12, 'Roberta Ferreira', '12345678907', 'roberta.ferreira@example.com'),
(13, 'Juliana Costa', '12345678908', 'juliana.costa@example.com'),
(14, 'Ricardo Almeida', '12345678909', 'ricardo.almeida@example.com'),
(15, 'Luana Oliveira', '12345678910', 'luana.oliveira@example.com'),
(16, 'Cláudio Souza', '12345678911', 'claudio.souza@example.com'),
(17, 'Marcos Silva', '12345678912', 'marcos.silva@example.com'),
(18, 'Patrícia Rocha', '12345678913', 'patricia.rocha@example.com'),
(19, 'Gabriela Martins', '12345678914', 'gabriela.martins@example.com'),
(20, 'Rafael Lima', '12345678915', 'rafael.lima@example.com'),
(21, 'Luciana Pereira', '12345678916', 'luciana.pereira@example.com'),
(22, 'Eduardo Costa', '12345678917', 'eduardo.costa@example.com'),
(23, 'Simone Rodrigues', '12345678918', 'simone.rodrigues@example.com'),
(24, 'Carlos Eduardo', '12345678919', 'carlos.eduardo@example.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `quartos`
--

CREATE TABLE `quartos` (
  `id_quarto` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `status` enum('disponível','reservado','ocupado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quartos`
--

INSERT INTO `quartos` (`id_quarto`, `tipo`, `preco`, `status`) VALUES
(3, 'Suíte', 200.00, 'ocupado'),
(4, 'Simples', 100.00, 'reservado'),
(5, 'Duplo', 150.00, 'disponível'),
(6, 'Suíte', 200.00, 'disponível'),
(7, 'Simples', 100.00, 'ocupado'),
(8, 'Duplo', 150.00, 'disponível'),
(9, 'Suíte', 200.00, 'reservado'),
(10, 'Simples', 150.00, 'disponível'),
(11, 'Simples', 100.00, 'disponível'),
(12, 'Simples', 100.00, 'disponível'),
(13, 'Duplo', 150.00, 'reservado'),
(14, 'Suíte', 200.00, 'ocupado'),
(15, 'Simples', 100.00, 'disponível'),
(16, 'Duplo', 150.00, 'disponível'),
(17, 'Simples', 100.00, 'reservado'),
(18, 'Suíte', 200.00, 'ocupado'),
(19, 'Duplo', 150.00, 'disponível'),
(20, 'Simples', 100.00, 'ocupado'),
(21, 'Duplo', 150.00, 'disponível'),
(22, 'Simples', 100.00, 'disponível'),
(23, 'Suíte', 200.00, 'reservado'),
(24, 'Simples', 100.00, 'ocupado'),
(25, 'Duplo', 150.00, 'reservado'),
(26, 'Simples', 100.00, 'disponível'),
(27, 'Suíte', 200.00, 'disponível'),
(28, 'Duplo', 150.00, 'ocupado'),
(29, 'Simples', 100.00, 'reservado'),
(30, 'Suíte', 200.00, 'ocupado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_hospede` int(11) DEFAULT NULL,
  `id_quarto` int(11) DEFAULT NULL,
  `data_check_in` date DEFAULT NULL,
  `data_check_out` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_hospede`, `id_quarto`, `data_check_in`, `data_check_out`) VALUES
(2, 2, 5, '2024-11-22', '2024-11-24'),
(3, 3, 7, '2024-11-29', '2024-12-02'),
(4, 4, 9, '2024-11-21', '2024-11-24'),
(6, 6, 4, '2024-11-18', '2024-11-20'),
(7, 1, 4, '2024-11-22', '2024-11-25'),
(8, 2, 5, '2024-11-23', '2024-11-26'),
(9, 3, 6, '2024-11-24', '2024-11-27'),
(10, 4, 7, '2024-11-25', '2024-11-28'),
(11, 5, 8, '2024-11-26', '2024-11-29'),
(12, 6, 9, '2024-11-27', '2024-11-30'),
(13, 7, 10, '2024-11-28', '2024-12-01'),
(14, 8, 11, '2024-11-29', '2024-12-02'),
(15, 9, 12, '2024-11-30', '2024-12-03'),
(16, 10, 13, '2024-12-01', '2024-12-04'),
(17, 9, 13, '2024-11-26', '2024-11-30');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `hospedes`
--
ALTER TABLE `hospedes`
  ADD PRIMARY KEY (`id_hospede`);

--
-- Índices de tabela `quartos`
--
ALTER TABLE `quartos`
  ADD PRIMARY KEY (`id_quarto`);

--
-- Índices de tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_hospede` (`id_hospede`),
  ADD KEY `id_quarto` (`id_quarto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `hospedes`
--
ALTER TABLE `hospedes`
  MODIFY `id_hospede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `quartos`
--
ALTER TABLE `quartos`
  MODIFY `id_quarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_hospede`) REFERENCES `hospedes` (`id_hospede`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_quarto`) REFERENCES `quartos` (`id_quarto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
