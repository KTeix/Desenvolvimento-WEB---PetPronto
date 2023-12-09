-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/12/2023 às 17:09
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
-- Banco de dados: `petpronto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alertas`
--

CREATE TABLE `alertas` (
  `tab_cliente_cpf_cli` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `regiao` varchar(255) DEFAULT NULL,
  `horario` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `tab_plano_idtab_plano` int(11) NOT NULL,
  `tab_cliente_cpf_cli` int(11) NOT NULL,
  `tipo` int(10) UNSIGNED DEFAULT NULL,
  `preco` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clinicasquetrabalha`
--

CREATE TABLE `clinicasquetrabalha` (
  `tab_clinica_idtab_clinica` int(11) NOT NULL,
  `tab_veterinario_idtab_veterinario` int(11) NOT NULL,
  `turno` varchar(30) DEFAULT NULL,
  `escala` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco_clinica`
--

CREATE TABLE `endereco_clinica` (
  `id_end_cli` int(11) NOT NULL,
  `rua_cli` varchar(30) DEFAULT NULL,
  `cep_cli` varchar(30) DEFAULT NULL,
  `numero_cli` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_atendimento`
--

CREATE TABLE `tab_atendimento` (
  `tab_veterinario_idtab_veterinario` int(11) NOT NULL,
  `tab_prontuario_idtab_prontuario` int(11) NOT NULL,
  `data_atendimento` date DEFAULT NULL,
  `id_atendimento` date DEFAULT NULL,
  `data_alta_pront` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_atendimento`
--

INSERT INTO `tab_atendimento` (`tab_veterinario_idtab_veterinario`, `tab_prontuario_idtab_prontuario`, `data_atendimento`, `id_atendimento`, `data_alta_pront`) VALUES
(1, 1, '2023-05-10', NULL, NULL),
(1, 2, '0000-00-00', '0000-00-00', NULL),
(1, 29, '0000-00-00', NULL, NULL),
(1, 30, NULL, NULL, NULL),
(1, 31, NULL, NULL, NULL),
(1, 32, NULL, NULL, NULL),
(1, 33, NULL, NULL, NULL),
(1, 34, NULL, NULL, NULL),
(1, 35, NULL, NULL, NULL),
(1, 36, '2024-02-08', NULL, '2024-02-08'),
(1, 37, '2024-02-08', NULL, '2024-02-08'),
(1, 38, '0000-00-00', NULL, '0000-00-00'),
(1, 39, '0000-00-00', NULL, '0000-00-00'),
(1, 40, '0000-00-00', NULL, '0000-00-00'),
(1, 41, '0000-00-00', NULL, '0000-00-00'),
(1, 42, '0000-00-00', NULL, '0000-00-00'),
(1, 47, '0000-00-00', NULL, '0000-00-00'),
(1, 48, '0000-00-00', NULL, '0000-00-00'),
(1, 49, '0000-00-00', NULL, '0000-00-00'),
(1, 50, '0000-00-00', NULL, '0000-00-00'),
(1, 51, '0000-00-00', NULL, '0000-00-00'),
(1, 52, '0000-00-00', NULL, '0000-00-00'),
(1, 53, NULL, NULL, '0000-00-00'),
(1, 54, NULL, NULL, '0000-00-00'),
(1, 55, NULL, NULL, '0000-00-00'),
(1, 56, NULL, NULL, '0000-00-00'),
(1, 57, '2023-12-03', NULL, '2024-03-01'),
(1, 58, '2023-12-03', NULL, '2024-02-01'),
(1, 59, '2023-12-03', NULL, '2024-02-01'),
(1, 60, '2023-12-03', NULL, '2024-02-01'),
(1, 61, '2023-12-03', NULL, '2024-02-01'),
(1, 62, '2023-12-03', NULL, '2024-02-01'),
(1, 63, '2023-12-03', NULL, NULL),
(1, 64, '2023-12-03', NULL, '2024-03-01'),
(1, 65, '2023-12-03', NULL, NULL),
(1, 66, '2023-12-03', NULL, NULL),
(1, 67, '2023-12-03', NULL, NULL),
(1, 68, '2023-12-03', NULL, NULL),
(1, 69, '2023-12-03', NULL, NULL),
(1, 70, '2023-12-03', NULL, NULL),
(1, 71, '2023-12-03', NULL, NULL),
(1, 72, '2023-12-03', NULL, '2024-02-01'),
(1, 73, '2023-12-03', NULL, '2024-02-01'),
(1, 74, '2023-12-03', NULL, '2024-02-01'),
(1, 75, '2023-12-03', NULL, NULL),
(1, 76, '2023-12-03', NULL, '2024-02-01'),
(1, 77, '2023-12-03', NULL, NULL),
(1, 78, '2023-12-03', NULL, NULL),
(1, 79, '2023-12-03', NULL, NULL),
(1, 80, '2023-12-03', NULL, '1970-01-01'),
(1, 81, '2023-12-03', NULL, '2024-03-01'),
(1, 82, '2023-12-03', NULL, '2024-03-01'),
(1, 83, '2023-12-03', NULL, NULL),
(1, 84, '2023-12-03', NULL, NULL),
(1, 85, '2023-12-03', NULL, NULL),
(1, 86, '2023-12-03', NULL, NULL),
(1, 87, '2023-12-03', NULL, NULL),
(1, 88, '2023-12-03', NULL, NULL),
(1, 89, '2023-12-03', NULL, NULL),
(1, 90, '2023-12-03', NULL, '2024-02-01'),
(1, 91, '2023-12-03', NULL, '2024-02-01'),
(1, 92, '2023-12-03', NULL, '2024-02-01'),
(1, 93, '2023-12-03', NULL, NULL),
(1, 94, '2023-12-03', NULL, '2024-02-01'),
(1, 95, '2023-12-03', NULL, '2024-02-01'),
(1, 96, '2023-12-03', NULL, '2024-02-01'),
(1, 97, '2023-12-03', NULL, '2023-04-02'),
(1, 98, '2023-12-03', NULL, '2023-04-02'),
(1, 99, '2023-12-03', NULL, '2023-04-02'),
(1, 100, '2023-12-03', NULL, '2023-12-03'),
(1, 101, '2023-12-03', NULL, '2023-04-02'),
(1, 102, '2023-12-03', NULL, '1970-01-01'),
(1, 103, '2023-12-03', NULL, '0000-00-00'),
(1, 104, '2023-12-03', NULL, '0000-00-00'),
(1, 105, '2023-12-03', NULL, '1970-01-01'),
(1, 106, '2023-12-03', NULL, '1970-01-01'),
(1, 107, '2023-12-03', NULL, '2023-05-02'),
(1, 108, '2023-12-03', NULL, '2024-03-01'),
(1, 109, '2023-12-03', NULL, '2024-03-01'),
(1, 110, '2023-12-03', NULL, '2024-03-01'),
(1, 111, '2023-12-03', NULL, '1970-01-01'),
(1, 112, '2023-12-03', NULL, '1970-01-01'),
(1, 113, '2023-12-03', NULL, '1970-01-01'),
(1, 114, '2023-12-03', NULL, '1970-01-01'),
(1, 115, '2023-12-03', NULL, '1970-01-01'),
(1, 116, '2023-12-03', NULL, '2023-09-02'),
(1, 117, '2023-12-03', NULL, '2023-09-02'),
(1, 118, '2023-12-03', NULL, NULL),
(1, 119, '2023-12-03', NULL, '2023-12-03'),
(1, 120, '2023-12-03', NULL, NULL),
(1, 121, '2023-12-03', NULL, '2023-09-02'),
(1, 122, '2023-12-03', NULL, '2023-09-02'),
(1, 123, '2023-12-03', NULL, '2023-09-02'),
(1, 124, '2023-12-03', NULL, '2023-09-02'),
(1, 125, '2023-12-03', NULL, NULL),
(1, 126, '2023-12-03', NULL, '2023-12-03'),
(1, 127, '2023-12-03', NULL, '1970-01-01'),
(1, 128, '2023-12-03', NULL, '2024-03-01'),
(1, 129, '2023-12-03', NULL, '2024-03-01'),
(1, 130, '2023-12-03', NULL, NULL),
(1, 131, '2023-12-03', NULL, '2023-09-02'),
(1, 132, '2023-12-03', NULL, '1970-01-01'),
(1, 133, '2023-12-03', NULL, '1970-01-01'),
(1, 134, '2023-12-03', NULL, NULL),
(1, 135, '2023-12-03', NULL, NULL),
(1, 136, '2023-12-03', NULL, NULL),
(1, 137, '2023-12-04', NULL, NULL),
(1, 138, '2023-12-04', NULL, NULL),
(2, 2, '2023-06-15', NULL, NULL),
(2, 140, '2023-12-04', NULL, NULL),
(2, 141, '2023-12-04', NULL, NULL),
(2, 142, '2023-12-04', NULL, NULL),
(2, 143, '2023-12-05', NULL, '2024-03-01'),
(2, 144, '2023-12-05', NULL, NULL),
(2, 145, '2023-12-05', NULL, NULL),
(2, 146, '2023-12-05', NULL, NULL),
(2, 147, '2023-12-05', NULL, '2023-09-02'),
(2, 148, '2023-12-05', NULL, NULL),
(2, 149, '2023-12-05', NULL, NULL),
(2, 150, '2023-12-05', NULL, NULL),
(2, 151, '2023-12-05', NULL, NULL),
(2, 152, '2023-12-07', NULL, '1970-01-01'),
(3, 3, '2023-04-20', NULL, NULL),
(4, 4, '2023-07-01', NULL, NULL),
(5, 5, '2023-02-12', NULL, NULL),
(6, 6, '2023-08-05', NULL, NULL),
(7, 7, '2023-09-18', NULL, NULL),
(8, 8, '2023-03-22', NULL, NULL),
(9, 9, '2023-11-10', NULL, NULL),
(10, 10, '2023-01-25', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_cliente`
--

CREATE TABLE `tab_cliente` (
  `nome_cli` varchar(50) NOT NULL,
  `sobrenome_cli` varchar(50) NOT NULL,
  `cpf_cli` int(11) NOT NULL,
  `tel_cel_cli` varchar(11) DEFAULT NULL,
  `tel_phone_cli` varchar(11) DEFAULT NULL,
  `rua_cli` varchar(50) DEFAULT NULL,
  `cep_cli` varchar(8) DEFAULT NULL,
  `numero_rua_cli` varchar(10) DEFAULT NULL,
  `email_cli` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_cliente`
--

INSERT INTO `tab_cliente` (`nome_cli`, `sobrenome_cli`, `cpf_cli`, `tel_cel_cli`, `tel_phone_cli`, `rua_cli`, `cep_cli`, `numero_rua_cli`, `email_cli`) VALUES
('Ana', 'Rocha', 111222333, '987654321', '123456789', 'Rua D', '34567890', '1011', NULL),
('João', 'Silva', 123456789, '987654321', '123456789', 'Rua A', '12345678', '123', NULL),
('Julia', 'Sousa', 222111000, '987654321', '123456789', 'Rua J', '89012345', '2223', NULL),
('Gustavo', 'Almeida', 333222111, '987654321', '123456789', 'Rua I', '78901234', '2021', NULL),
('Camila', 'Martins', 444333222, '987654321', '123456789', 'Rua F', '45678901', '1415', NULL),
('Carlos', 'Oliveira', 555666777, '987654321', '123456789', 'Rua C', '56789012', '789', NULL),
('Isabela', 'Pereira', 666555444, '987654321', '123456789', 'Rua H', '67890123', '1819', NULL),
('Rafael', 'Mendes', 777666555, '987654321', '123456789', 'Rua G', '56789012', '1617', NULL),
('Maria', 'Santos', 987654321, '987654321', '123456789', 'Rua B', '87654321', '456', NULL),
('Lucas', 'Lima', 999888777, '987654321', '123456789', 'Rua E', '23456789', '1213', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_clinica`
--

CREATE TABLE `tab_clinica` (
  `idtab_clinica` int(11) NOT NULL,
  `nome_cli` varchar(30) DEFAULT NULL,
  `tel_cel_cli` varchar(30) DEFAULT NULL,
  `tel_phone_cli` varchar(30) DEFAULT NULL,
  `cnpj` varchar(30) DEFAULT NULL,
  `nome_fantasia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_dataaplicacaovacina`
--

CREATE TABLE `tab_dataaplicacaovacina` (
  `id_aplicacao_vacina` int(11) NOT NULL,
  `tab_prontuario_idtab_prontuario` int(11) DEFAULT NULL,
  `tab_vacina_idtab_vacina` int(11) DEFAULT NULL,
  `data_aplicacao` date DEFAULT NULL,
  `proxima_dose` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_dataaplicacaovacina`
--

INSERT INTO `tab_dataaplicacaovacina` (`id_aplicacao_vacina`, `tab_prontuario_idtab_prontuario`, `tab_vacina_idtab_vacina`, `data_aplicacao`, `proxima_dose`) VALUES
(1, 6, 1, '2023-12-25', '2024-01-25'),
(2, 6, 1, '2023-12-10', '2024-01-10'),
(3, 6, 1, '2023-12-20', '2024-01-20'),
(4, 6, 1, '2023-12-30', '2024-01-30'),
(5, 6, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL),
(7, 6, NULL, NULL, NULL),
(8, 6, 1, '0000-00-00', NULL),
(9, 6, 1, '0000-00-00', NULL),
(10, 6, 2, '0000-00-00', NULL),
(11, 6, 3, '0000-00-00', NULL),
(12, 6, 3, '0000-00-00', NULL),
(13, 6, NULL, NULL, NULL),
(14, 6, 2, '0000-00-00', NULL),
(15, 6, 1, '0000-00-00', NULL),
(16, 6, 4, '0000-00-00', NULL),
(17, 6, 5, '0000-00-00', NULL),
(18, 6, 6, '0000-00-00', NULL),
(19, 6, 6, '0000-00-00', NULL),
(20, 6, 6, '0000-00-00', '0000-00-00'),
(21, 6, 1, '0000-00-00', '0000-00-00'),
(22, 6, 6, '0000-00-00', '0000-00-00'),
(23, 6, 6, '0000-00-00', '0000-00-00'),
(24, 6, 3, '0000-00-00', '0000-00-00'),
(25, 6, 4, '0000-00-00', '0000-00-00'),
(26, 6, 6, '0000-00-00', '0000-00-00'),
(27, 6, 5, '0000-00-00', '0000-00-00'),
(28, 6, 4, '0000-00-00', '0000-00-00'),
(29, 6, 3, '2004-01-20', NULL),
(30, 6, 3, '2004-01-20', NULL),
(31, 6, 3, '2004-01-20', '2004-01-20'),
(32, 6, 1, NULL, '2004-01-20'),
(33, 6, 1, '2025-01-20', '2004-01-20'),
(34, 6, 6, NULL, '2004-01-20'),
(35, 6, 5, NULL, '2002-01-20'),
(36, 6, 5, '2025-01-20', '2002-01-20'),
(37, 2, 1, '2025-01-20', '2004-01-20'),
(38, 1, 1, NULL, '2002-01-20'),
(39, 1, 1, '2025-01-20', '2002-01-20'),
(40, 1, 1, '2004-01-20', '2002-01-20'),
(41, 1, 1, NULL, '2004-01-20'),
(42, 4, 1, '2025-01-20', '2002-01-20'),
(43, 1, 4, NULL, '2002-01-20'),
(44, 7, 4, '2025-01-20', '2025-01-20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_dataaplicacaovacina_temp`
--

CREATE TABLE `tab_dataaplicacaovacina_temp` (
  `tab_prontuario_idtab_prontuario` int(11) NOT NULL,
  `tab_vacina_idtab_vacina` int(11) NOT NULL,
  `data_aplicacao` date DEFAULT NULL,
  `proxima_dose` date DEFAULT NULL,
  `id_aplicacao_vacina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_loginvet`
--

CREATE TABLE `tab_loginvet` (
  `tab_veterinario_idtab_veterinario` int(11) NOT NULL,
  `usuario_vet` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_loginvet`
--

INSERT INTO `tab_loginvet` (`tab_veterinario_idtab_veterinario`, `usuario_vet`, `senha`) VALUES
(1, '0', 'ALUNA1'),
(2, 'abab', 'abab');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_login_cli`
--

CREATE TABLE `tab_login_cli` (
  `tab_cliente_cpf_cli` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_pet`
--

CREATE TABLE `tab_pet` (
  `idtab_pet` int(11) NOT NULL,
  `tab_cliente_cpf_cli` int(11) NOT NULL,
  `nome_pet` varchar(50) DEFAULT NULL,
  `registro_pet` varchar(50) DEFAULT NULL,
  `idade_pet` int(2) DEFAULT NULL,
  `raca_pet` varchar(20) DEFAULT NULL,
  `porte_pet` varchar(20) DEFAULT NULL,
  `foto_pet` blob DEFAULT NULL,
  `peso_pet` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_pet`
--

INSERT INTO `tab_pet` (`idtab_pet`, `tab_cliente_cpf_cli`, `nome_pet`, `registro_pet`, `idade_pet`, `raca_pet`, `porte_pet`, `foto_pet`, `peso_pet`) VALUES
(1, 987654321, 'Fido', 'ABC123', 3, 'Labrador', 'Médio', NULL, NULL),
(2, 987654321, 'Bolinha', 'XYZ456', 2, 'Poodle', 'Pequeno', NULL, NULL),
(3, 123456789, 'Rex', 'DEF789', 4, 'Bulldog', 'Grande', NULL, NULL),
(4, 555666777, 'Mel', 'GHI012', 1, 'Shih Tzu', 'Pequeno', NULL, NULL),
(5, 111222333, 'Tom', 'JKL345', 5, 'Siamês', 'Pequeno', NULL, NULL),
(6, 999888777, 'Luna', 'MNO678', 2, 'Persa', 'Pequeno', NULL, NULL),
(7, 444333222, 'Bob', 'PQR901', 3, 'Dálmata', 'Médio', NULL, NULL),
(8, 777666555, 'Thor', 'STU234', 1, 'Golden Retriever', 'Grande', NULL, NULL),
(9, 666555444, 'Mia', 'VWX567', 4, 'Maine Coon', 'Grande', NULL, NULL),
(10, 333222111, 'Toby', 'YZA890', 2, 'Beagle', 'Médio', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_plano`
--

CREATE TABLE `tab_plano` (
  `idtab_plano` int(11) NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `preco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_prontuario`
--

CREATE TABLE `tab_prontuario` (
  `idtab_prontuario` int(11) NOT NULL,
  `tab_pet_idtab_pet` int(11) NOT NULL,
  `peso_pronto` double DEFAULT NULL,
  `descricao_pronto` varchar(255) DEFAULT NULL,
  `receita_pronto_online` varchar(150) DEFAULT NULL,
  `orientacoes` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `receita_fisica_pronto` blob DEFAULT NULL,
  `exames_fisico_pronto` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_prontuario`
--

INSERT INTO `tab_prontuario` (`idtab_prontuario`, `tab_pet_idtab_pet`, `peso_pronto`, `descricao_pronto`, `receita_pronto_online`, `orientacoes`, `titulo`, `receita_fisica_pronto`, `exames_fisico_pronto`) VALUES
(1, 1, 5.2, 'Exame de rotina realizado. O pet está saudável.', 'N/A', 'Sem orientações específicas.', 'Consulta de Rotina', NULL, NULL),
(2, 2, 8.5, 'O pet apresentou problemas digestivos. Recomendada dieta leve.', 'Medicação para problemas digestivos', 'Evitar alimentos pesados.', 'Problema de Digestão', NULL, NULL),
(3, 3, 7, 'Vacinação anual realizada. O pet está protegido contra doenças comuns.', 'N/A', 'Próxima vacinação em 1 ano.', 'Vacinação Anual', NULL, NULL),
(4, 4, 6.8, 'Cirurgia de esterilização realizada com sucesso.', 'N/A', 'Repouso recomendado por 2 semanas.', 'Cirurgia de Esterilização', NULL, NULL),
(5, 5, 4.5, 'Exame de sangue realizado para verificar a saúde geral do pet.', 'N/A', 'Sem problemas detectados.', 'Exame de Sangue', NULL, NULL),
(6, 6, 9.2, 'Consulta de emergência devido a uma lesão. O pet está em recuperação.', 'Medicação para dor', 'Repouso absoluto por 1 semana.', 'Consulta de Emergência', NULL, NULL),
(7, 7, 12.3, 'Exame geriátrico realizado. O pet está envelhecendo bem.', 'N/A', 'Acompanhamento semestral recomendado.', 'Acompanhamento Geriátrico', NULL, NULL),
(8, 8, 5.8, 'O pet apresentou dor de ouvido. Tratamento realizado.', 'Medicação para infecção de ouvido', 'Evitar exposição à água por 2 semanas.', 'Dor de Ouvido', NULL, NULL),
(9, 9, 6, 'Problema de pele diagnosticado. Tratamento em andamento.', 'Creme para aplicação local', 'Evitar coçar a área afetada.', 'Problema de Pele', NULL, NULL),
(10, 10, 7.5, 'Exame de rotina realizado. O pet está saudável.', 'N/A', 'Sem orientações específicas.', 'Consulta de Rotina', NULL, NULL),
(20, 1, NULL, 'a', NULL, 'a', 'a', NULL, NULL),
(21, 1, NULL, 'a', NULL, 'a', 'a', NULL, NULL),
(22, 1, NULL, 'a', 'a', 'a', 'a', NULL, NULL),
(23, 1, NULL, 'aaa', 'aaaaaaa', 'aaaaa', 'dor a', NULL, NULL),
(24, 1, NULL, 'ab', 'ab', 'ab', 'ab', NULL, NULL),
(25, 1, NULL, 'abs', 'abs', 'abs', 'abs', NULL, NULL),
(26, 1, NULL, 'abs', 'abs', 'abs', 'abs', NULL, NULL),
(27, 1, NULL, 'a', 'a', 'a', 'a', NULL, NULL),
(28, 1, 2.5, 'a', 'a', 'a', 'a', NULL, NULL),
(29, 1, 0, 'a', 'BEZATAZIL', 'a', 'a', NULL, NULL),
(30, 1, 2.5, 'a', 'a', 'a', 'a', NULL, NULL),
(31, 1, 2.5, 'a', 'a', 'a', 'a', NULL, NULL),
(32, 1, 2.5, 'a', 'aaaa', 'a', 'a', NULL, NULL),
(33, 1, 2.5, 'a', 'aaaa', 'a', 'a', NULL, NULL),
(34, 1, 2.5, 'a', 'a', 'a', 'a', NULL, NULL),
(35, 1, 2.5, 'a', 'a', 'a', 'a', NULL, NULL),
(36, 1, 2.5, 'a', 'a', 'a', 'aaa', NULL, NULL),
(37, 1, 2.5, 'a', 'a', 'a', 'aaa', NULL, NULL),
(38, 1, 2.5, 'a', 'aa', 'a', 'a', NULL, NULL),
(39, 1, 2.5, 'a', 'as', 'as', 'Não come', NULL, NULL),
(40, 1, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(41, 1, 2.5, 'a', 'a', 'a', 'ab', NULL, NULL),
(42, 2, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(47, 2, 2.5, 'a', 'a', 'a', 'a', NULL, NULL),
(48, 2, 12, 'a', 'a', 'a', 'a', NULL, NULL),
(49, 2, 89, 'b', 'b', 'b', 'b', NULL, NULL),
(50, 1, 0, 'aag', 'aagg', 'agg', 'aag', NULL, NULL),
(51, 1, 0, 'aaa', 'aaaaaagggg', 'Virose, tomar soro, e antibioticos', 'aa', NULL, NULL),
(52, 1, 500, 'a', 'a', 'a', 'atila', NULL, NULL),
(53, 1, 2.5, '78', '789', '78', 'aaobau', NULL, NULL),
(54, 1, 2.5, 'APO', 'HHHH', 'APO', 'MAGINA', NULL, NULL),
(55, 1, 2.5, 'aaa', 'a', 'aaa', 'AMONG US', NULL, NULL),
(56, 1, 7.5, 'AB', 'ABB', 'AB', 'ABU', NULL, NULL),
(57, 1, 4.5, 'orelha', '4a', 'aaa', 'orelha', NULL, NULL),
(58, 1, 2.5, 'a', 'ujj', 'a', 'aaa', NULL, NULL),
(59, 1, 12, 'kk', 'kkk', 'kkk', 'aaa', NULL, NULL),
(60, 9, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(61, 9, 2.5, 'açucar', 'PAAAAA', 'EEEE', 'asnose', NULL, NULL),
(62, 9, 150, 'Sintomas de amor', 'SE POSSIVEL COMER UM SALGADO ARABE DE 16 METROS', 'Soro', 'Atila tussindo, com muita dor no pancreas e nauseas', NULL, NULL),
(63, 1, 0, '', '', '', '', NULL, NULL),
(64, 1, 999, '9999', 'aa', '999', 'ubabau', NULL, NULL),
(65, 1, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(66, 1, 0, 'asdasd', 'asdasd', 'asdsad', 'asdas', NULL, NULL),
(67, 1, 0, 'asdasd', 'asdasd', 'asdsad', 'Assobia', NULL, NULL),
(68, 1, 0, 'asdasd', 'asdasd', 'asdsad', 'Assobia', NULL, NULL),
(69, 1, 0, 'asss', 'assss', 'asss', 'asss', NULL, NULL),
(70, 1, 0, 'asss', 'assss', 'asss', 'asss', NULL, NULL),
(71, 1, 0, 'asss', 'assss', 'asss', 'asss', NULL, NULL),
(72, 1, 80, 'aaaaaaa', 'PIMPOLHO', 'aaaaaaa', 'aiuy', NULL, NULL),
(73, 1, 80, 'aaaaaaa', 'PIMPOLHO', 'aaaaaaa', 'aiuy', NULL, NULL),
(74, 1, 80, 'aaaaaaa', 'PIMPOLHO', 'aaaaaaa', 'aiuy', NULL, NULL),
(75, 1, 0, '', '', '', '', NULL, NULL),
(76, 1, 800, 'ASDA', 'ASD', 'ASDASD', 'ATILAPO', NULL, NULL),
(77, 1, 0, 'acido', 'acido', 'acido', 'acido', NULL, NULL),
(78, 1, 0, 'acido', 'acido', 'acido', 'acido', NULL, NULL),
(79, 1, 0, 'acido', 'acido', 'acido', 'acido', NULL, NULL),
(80, 1, 0, 'aa', 'a', 'aa', 'Não come', NULL, NULL),
(81, 1, 0, 'a', 'aaa', 'aaa', 'ab', NULL, NULL),
(82, 1, 0, 'a', 'aaa', 'aaa', 'abs', NULL, NULL),
(83, 5, 0, '', '', '', '', NULL, NULL),
(84, 5, 0, '', '', '', '', NULL, NULL),
(85, 5, 0, 'aa', 'aaaa', 'aa', 'kia', NULL, NULL),
(86, 5, 0, 'aa', 'aaaa', 'aa', 'kia', NULL, NULL),
(87, 5, 0, 'aa', 'aaaa', 'aa', 'kia', NULL, NULL),
(88, 5, 0, 'aa', 'aaaa', 'aa', 'kia', NULL, NULL),
(89, 5, 0, '', '', '', '', NULL, NULL),
(90, 5, 0, 'asd', 'a', 'asd', 'asd', NULL, NULL),
(91, 5, 0, 'asd', 'a', 'asd', 'asd', NULL, NULL),
(92, 5, 0, 'asd', 'a', 'asd', 'asd', NULL, NULL),
(93, 5, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(94, 5, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(95, 1, 70, 'comeu coco', 'a', 'as', 'raphael', NULL, NULL),
(96, 1, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(97, 1, 998, 'GUIM', 'AAA', 'GUIM', 'ATILA OTA', NULL, NULL),
(98, 1, 998, 'GUIM', 'AAA', 'GUIM', 'ATILA OTA', NULL, NULL),
(99, 1, 998, 'GUIM', 'AAA', 'GUIM', 'ATILA OTA', NULL, NULL),
(100, 1, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(101, 1, 0, 'HUHU', 'KOPJOP', 'UHU', 'UHU', NULL, NULL),
(102, 1, 12, 'PORCA', 'AAAAAAA', 'Virose, tomar soro, e antibioticos', 'Não come', NULL, NULL),
(103, 1, 9, 'aaa', 'Kombi', 'aaa', 'aaa', NULL, NULL),
(104, 1, 9, 'aaa', 'Kombi', 'aaa', 'aaa', NULL, NULL),
(105, 1, 0, 'aa', 'a', 'aaa', 'aaa', NULL, NULL),
(106, 1, 0, 'aa', 'a', 'aaa', 'aaa', NULL, NULL),
(107, 1, 0, 'aaa', 'aaaa', 'aaa', 'aaa', NULL, NULL),
(108, 1, 2.5, 'ATILA MORDEU MEU CACHORRO E BATEU NELE', 'AAAAA', 'SORO', 'Não come', NULL, NULL),
(109, 1, 2.5, 'AA', 'AAA', 'A', 'AAA', NULL, NULL),
(110, 1, 2.5, 'AA', 'AAA', 'A', 'AAA', NULL, NULL),
(111, 1, 0, 'AA', 'AAA', 'AAA', 'AAA', NULL, NULL),
(112, 1, 0, 'AA', 'AAA', 'AAA', 'AAA', NULL, NULL),
(113, 1, 12, 'asd', 'a', 'ab', 'Não come', NULL, NULL),
(114, 1, 12, 'asd', 'a', 'ab', 'Não come', NULL, NULL),
(115, 1, 12, 'aaa', 'aaa', 'aa', 'ab', NULL, NULL),
(116, 1, 0, 'asdasdasdasd', 'aaaaa', 'asdasdasdasdasdasdasd', 'asdasdasd', NULL, NULL),
(117, 1, 0, 'asdasdasdasd', 'aaaaa', 'asdasdasdasdasdasdasd', 'asdasdasd', NULL, NULL),
(118, 1, 0, 'aa', '', 'aa', 'aa', NULL, NULL),
(119, 1, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(120, 1, 0, '', '', '', '', NULL, NULL),
(121, 1, 0, 'assaas', 'aaaa', 'assaas', 'ássasa', NULL, NULL),
(122, 1, 0, 'assaas', 'aaaa', 'assaas', 'ássasa', NULL, NULL),
(123, 1, 0, 'assaas', 'aaaa', 'assaas', 'ássasa', NULL, NULL),
(124, 1, 0, 'bbb', 'bbb', 'bb', 'aabbb', NULL, NULL),
(125, 1, 0, '', '', '', '', NULL, NULL),
(126, 1, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(127, 1, 8.7, 'OLHA AQUI', '44', 'OLHA AQUI', 'OLHA AQUI', NULL, NULL),
(128, 1, 9, 'AASD', 'ASD', 'ASDASD', 'AAA', NULL, NULL),
(129, 1, 0, 'ASD', 'ASD', 'ASD', 'ASDDAS', NULL, NULL),
(130, 1, 0, '', '', '', '', NULL, NULL),
(131, 1, 2.5, 'AA', 'AAA', 'AA', 'AÇUCAR', NULL, NULL),
(132, 1, 9.6, 'oloko', 'aa', 'kokoo', 'AAAPORGEL', NULL, NULL),
(133, 1, 9.6, 'oloko', 'aa', 'kokoo', 'AAAPORGEL', NULL, NULL),
(134, 1, 0, '', '', '', '', NULL, NULL),
(135, 1, 0, '', '', '', '', NULL, NULL),
(136, 8, 2.5, 'A', 'AA', 'A', 'AAA', NULL, NULL),
(137, 10, 0, 'a', 'a', 'a', 'a', NULL, NULL),
(138, 10, 0, 'a', 'a', '', 'a', NULL, NULL),
(140, 1, 0, 'ab', '', '', 'abab', NULL, NULL),
(141, 1, 2.5, 'Choro', 'aa', 'Tomar soro', 'COMEU CHOCOLATE', NULL, NULL),
(142, 6, 0, 'AA', 'AAA', 'AA', 'AA', NULL, NULL),
(143, 2, 87, 'asdasudhu', 'a', 'asudhauds', 'ahuahuahua', NULL, NULL),
(144, 2, 0, '', '', '', '', NULL, NULL),
(145, 2, 0, '', '', '', '', NULL, NULL),
(146, 2, 0, '', '', '', '', NULL, NULL),
(147, 2, 12, 'aa', 'aa', 'aaa', 'aa', NULL, NULL),
(148, 2, 0, 'asd', 'asd', 'asd', 'asd', NULL, NULL),
(149, 2, 0, '', '', '', '', NULL, NULL),
(150, 2, 0, '', '', '', '', NULL, NULL),
(151, 2, 0, 'asdasd', 'asdasd', '', 'aasdasd', NULL, NULL),
(152, 1, 2.5, 'Mancando', 'tala', 'Soro', 'Pata quebrada', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_uni_clinica`
--

CREATE TABLE `tab_uni_clinica` (
  `tab_clinica_idtab_clinica` int(11) NOT NULL,
  `endereco_clinica_id_end_cli` int(11) NOT NULL,
  `unidade` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_vacina`
--

CREATE TABLE `tab_vacina` (
  `idtab_vacina` int(11) NOT NULL,
  `tipo_vacina` date DEFAULT NULL,
  `tempoduracao_dose` double DEFAULT NULL,
  `ml_dose` double DEFAULT NULL,
  `titulo_vacina` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_vacina`
--

INSERT INTO `tab_vacina` (`idtab_vacina`, `tipo_vacina`, `tempoduracao_dose`, `ml_dose`, `titulo_vacina`) VALUES
(1, '0000-00-00', 30, 1.5, 'Vacina A'),
(2, '0000-00-00', 45, 2, 'Vacina B'),
(3, '0000-00-00', 60, 2.5, 'Vacina C'),
(4, NULL, NULL, NULL, 'Vacina D'),
(5, NULL, NULL, NULL, 'Vacina E'),
(6, NULL, NULL, NULL, 'Vacina F');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tab_veterinario`
--

CREATE TABLE `tab_veterinario` (
  `idtab_veterinario` int(11) NOT NULL,
  `nome_vet` varchar(60) DEFAULT NULL,
  `crm_vet` varchar(60) DEFAULT NULL,
  `espe_vet` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tab_veterinario`
--

INSERT INTO `tab_veterinario` (`idtab_veterinario`, `nome_vet`, `crm_vet`, `espe_vet`) VALUES
(1, 'Dr. Ana Silva', 'CRM12345', 'Clínica Geral'),
(2, 'Dr. Carlos Oliveira', 'CRM67890', 'Ortopedia'),
(3, 'Dra. Marina Costa', 'CRM54321', 'Dermatologia'),
(4, 'Dr. Ricardo Santos', 'CRM98765', 'Cardiologia'),
(5, 'Dra. Fernanda Lima', 'CRM23456', 'Oftalmologia'),
(6, 'Dr. Lucas Pereira', 'CRM78901', 'Odontologia'),
(7, 'Dra. Beatriz Souza', 'CRM65432', 'Nutrição Animal'),
(8, 'Dr. Gabriela Almeida', 'CRM10987', 'Neurologia'),
(9, 'Dra. João Mendes', 'CRM21098', 'Geriatria'),
(10, 'Dr. Paula Rocha', 'CRM87654', 'Radiologia');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alertas`
--
ALTER TABLE `alertas`
  ADD KEY `tab_cliente_cpf_cli` (`tab_cliente_cpf_cli`);

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`tab_plano_idtab_plano`,`tab_cliente_cpf_cli`),
  ADD KEY `tab_cliente_cpf_cli` (`tab_cliente_cpf_cli`);

--
-- Índices de tabela `clinicasquetrabalha`
--
ALTER TABLE `clinicasquetrabalha`
  ADD PRIMARY KEY (`tab_clinica_idtab_clinica`,`tab_veterinario_idtab_veterinario`),
  ADD KEY `tab_veterinario_idtab_veterinario` (`tab_veterinario_idtab_veterinario`);

--
-- Índices de tabela `endereco_clinica`
--
ALTER TABLE `endereco_clinica`
  ADD PRIMARY KEY (`id_end_cli`);

--
-- Índices de tabela `tab_atendimento`
--
ALTER TABLE `tab_atendimento`
  ADD PRIMARY KEY (`tab_veterinario_idtab_veterinario`,`tab_prontuario_idtab_prontuario`),
  ADD KEY `tab_prontuario_idtab_prontuario` (`tab_prontuario_idtab_prontuario`);

--
-- Índices de tabela `tab_cliente`
--
ALTER TABLE `tab_cliente`
  ADD PRIMARY KEY (`cpf_cli`);

--
-- Índices de tabela `tab_clinica`
--
ALTER TABLE `tab_clinica`
  ADD PRIMARY KEY (`idtab_clinica`);

--
-- Índices de tabela `tab_dataaplicacaovacina`
--
ALTER TABLE `tab_dataaplicacaovacina`
  ADD PRIMARY KEY (`id_aplicacao_vacina`),
  ADD KEY `tab_prontuario_idtab_prontuario` (`tab_prontuario_idtab_prontuario`),
  ADD KEY `tab_vacina_idtab_vacina` (`tab_vacina_idtab_vacina`);

--
-- Índices de tabela `tab_loginvet`
--
ALTER TABLE `tab_loginvet`
  ADD KEY `tab_veterinario_idtab_veterinario` (`tab_veterinario_idtab_veterinario`);

--
-- Índices de tabela `tab_login_cli`
--
ALTER TABLE `tab_login_cli`
  ADD KEY `tab_cliente_cpf_cli` (`tab_cliente_cpf_cli`);

--
-- Índices de tabela `tab_pet`
--
ALTER TABLE `tab_pet`
  ADD PRIMARY KEY (`idtab_pet`),
  ADD KEY `tab_cliente_cpf_cli` (`tab_cliente_cpf_cli`);

--
-- Índices de tabela `tab_plano`
--
ALTER TABLE `tab_plano`
  ADD PRIMARY KEY (`idtab_plano`);

--
-- Índices de tabela `tab_prontuario`
--
ALTER TABLE `tab_prontuario`
  ADD PRIMARY KEY (`idtab_prontuario`),
  ADD KEY `tab_pet_idtab_pet` (`tab_pet_idtab_pet`);

--
-- Índices de tabela `tab_uni_clinica`
--
ALTER TABLE `tab_uni_clinica`
  ADD PRIMARY KEY (`tab_clinica_idtab_clinica`,`endereco_clinica_id_end_cli`),
  ADD KEY `endereco_clinica_id_end_cli` (`endereco_clinica_id_end_cli`);

--
-- Índices de tabela `tab_vacina`
--
ALTER TABLE `tab_vacina`
  ADD PRIMARY KEY (`idtab_vacina`);

--
-- Índices de tabela `tab_veterinario`
--
ALTER TABLE `tab_veterinario`
  ADD PRIMARY KEY (`idtab_veterinario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `endereco_clinica`
--
ALTER TABLE `endereco_clinica`
  MODIFY `id_end_cli` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tab_clinica`
--
ALTER TABLE `tab_clinica`
  MODIFY `idtab_clinica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tab_dataaplicacaovacina`
--
ALTER TABLE `tab_dataaplicacaovacina`
  MODIFY `id_aplicacao_vacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `tab_plano`
--
ALTER TABLE `tab_plano`
  MODIFY `idtab_plano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tab_prontuario`
--
ALTER TABLE `tab_prontuario`
  MODIFY `idtab_prontuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de tabela `tab_vacina`
--
ALTER TABLE `tab_vacina`
  MODIFY `idtab_vacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tab_veterinario`
--
ALTER TABLE `tab_veterinario`
  MODIFY `idtab_veterinario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alertas`
--
ALTER TABLE `alertas`
  ADD CONSTRAINT `alertas_ibfk_1` FOREIGN KEY (`tab_cliente_cpf_cli`) REFERENCES `tab_cliente` (`cpf_cli`);

--
-- Restrições para tabelas `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `carrinho_ibfk_1` FOREIGN KEY (`tab_plano_idtab_plano`) REFERENCES `tab_plano` (`idtab_plano`),
  ADD CONSTRAINT `carrinho_ibfk_2` FOREIGN KEY (`tab_cliente_cpf_cli`) REFERENCES `tab_cliente` (`cpf_cli`);

--
-- Restrições para tabelas `clinicasquetrabalha`
--
ALTER TABLE `clinicasquetrabalha`
  ADD CONSTRAINT `clinicasquetrabalha_ibfk_1` FOREIGN KEY (`tab_clinica_idtab_clinica`) REFERENCES `tab_clinica` (`idtab_clinica`),
  ADD CONSTRAINT `clinicasquetrabalha_ibfk_2` FOREIGN KEY (`tab_veterinario_idtab_veterinario`) REFERENCES `tab_veterinario` (`idtab_veterinario`);

--
-- Restrições para tabelas `tab_atendimento`
--
ALTER TABLE `tab_atendimento`
  ADD CONSTRAINT `tab_atendimento_ibfk_1` FOREIGN KEY (`tab_veterinario_idtab_veterinario`) REFERENCES `tab_veterinario` (`idtab_veterinario`),
  ADD CONSTRAINT `tab_atendimento_ibfk_2` FOREIGN KEY (`tab_prontuario_idtab_prontuario`) REFERENCES `tab_prontuario` (`idtab_prontuario`);

--
-- Restrições para tabelas `tab_dataaplicacaovacina`
--
ALTER TABLE `tab_dataaplicacaovacina`
  ADD CONSTRAINT `tab_dataaplicacaovacina_ibfk_1` FOREIGN KEY (`tab_prontuario_idtab_prontuario`) REFERENCES `tab_prontuario` (`idtab_prontuario`),
  ADD CONSTRAINT `tab_dataaplicacaovacina_ibfk_2` FOREIGN KEY (`tab_vacina_idtab_vacina`) REFERENCES `tab_vacina` (`idtab_vacina`);

--
-- Restrições para tabelas `tab_loginvet`
--
ALTER TABLE `tab_loginvet`
  ADD CONSTRAINT `tab_loginvet_ibfk_1` FOREIGN KEY (`tab_veterinario_idtab_veterinario`) REFERENCES `tab_veterinario` (`idtab_veterinario`);

--
-- Restrições para tabelas `tab_login_cli`
--
ALTER TABLE `tab_login_cli`
  ADD CONSTRAINT `tab_login_cli_ibfk_1` FOREIGN KEY (`tab_cliente_cpf_cli`) REFERENCES `tab_cliente` (`cpf_cli`);

--
-- Restrições para tabelas `tab_pet`
--
ALTER TABLE `tab_pet`
  ADD CONSTRAINT `tab_pet_ibfk_1` FOREIGN KEY (`tab_cliente_cpf_cli`) REFERENCES `tab_cliente` (`cpf_cli`);

--
-- Restrições para tabelas `tab_prontuario`
--
ALTER TABLE `tab_prontuario`
  ADD CONSTRAINT `tab_prontuario_ibfk_1` FOREIGN KEY (`tab_pet_idtab_pet`) REFERENCES `tab_pet` (`idtab_pet`);

--
-- Restrições para tabelas `tab_uni_clinica`
--
ALTER TABLE `tab_uni_clinica`
  ADD CONSTRAINT `tab_uni_clinica_ibfk_1` FOREIGN KEY (`tab_clinica_idtab_clinica`) REFERENCES `tab_clinica` (`idtab_clinica`),
  ADD CONSTRAINT `tab_uni_clinica_ibfk_2` FOREIGN KEY (`endereco_clinica_id_end_cli`) REFERENCES `endereco_clinica` (`id_end_cli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
