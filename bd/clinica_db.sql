-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/10/2026 às 20:39
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
-- Banco de dados: `clinica_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbadministrador`
--

CREATE TABLE `tbadministrador` (
  `id_usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tbadministrador`
--

INSERT INTO `tbadministrador` (`id_usuario`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbconsulta`
--

CREATE TABLE `tbconsulta` (
  `id_consulta` int(10) UNSIGNED NOT NULL,
  `id_paciente` int(10) UNSIGNED NOT NULL,
  `id_profissional` int(10) UNSIGNED NOT NULL,
  `id_recepcionista` int(10) UNSIGNED NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `status_consulta` enum('agendada','confirmada','realizada','cancelada','nao_compareceu') NOT NULL DEFAULT 'agendada',
  `observacao_consulta` text DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tbconsulta`
--

INSERT INTO `tbconsulta` (`id_consulta`, `id_paciente`, `id_profissional`, `id_recepcionista`, `data_consulta`, `hora_consulta`, `status_consulta`, `observacao_consulta`, `criado_em`) VALUES
(1, 7, 4, 2, '2026-10-26', '08:00:00', 'agendada', 'Consulta de rotina e avaliação geral.', '2026-10-23 17:18:06'),
(2, 8, 6, 3, '2026-10-26', '09:00:00', 'confirmada', 'Avaliação cardiológica preventiva.', '2026-10-23 17:18:06'),
(3, 9, 5, 2, '2026-10-26', '10:00:00', 'agendada', 'Avaliação pediátrica de rotina.', '2026-10-23 17:18:06'),
(4, 10, 4, 3, '2026-10-27', '08:30:00', 'confirmada', 'Paciente relata dores de cabeça frequentes.', '2026-10-23 17:18:06'),
(5, 7, 6, 2, '2026-10-27', '14:00:00', 'agendada', 'Avaliação de pressão arterial.', '2026-10-23 17:18:06'),
(6, 8, 4, 2, '2026-10-20', '09:30:00', 'realizada', 'Consulta concluída. Orientações gerais fornecidas.', '2026-10-23 17:18:06'),
(7, 9, 5, 3, '2026-10-21', '11:00:00', 'realizada', 'Acompanhamento pediátrico concluído.', '2026-10-23 17:18:06'),
(8, 10, 6, 2, '2026-10-28', '15:00:00', 'cancelada', 'Cancelamento solicitado pela paciente.', '2026-10-23 17:18:06'),
(9, 7, 4, 3, '2026-10-22', '10:30:00', 'nao_compareceu', 'Paciente não compareceu ao horário agendado.', '2026-10-23 17:18:06'),
(10, 8, 6, 2, '2026-10-29', '16:00:00', 'confirmada', 'Retorno para avaliação de exames cardiológicos.', '2026-10-23 17:18:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbespecialidade`
--

CREATE TABLE `tbespecialidade` (
  `id_especialidade` int(10) UNSIGNED NOT NULL,
  `nome_especialidade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tbespecialidade`
--

INSERT INTO `tbespecialidade` (`id_especialidade`, `nome_especialidade`) VALUES
(3, 'Cardiologia'),
(1, 'Clínica Geral'),
(4, 'Dermatologia'),
(2, 'Pediatria'),
(5, 'Psicologia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbpaciente`
--

CREATE TABLE `tbpaciente` (
  `id_usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tbpaciente`
--

INSERT INTO `tbpaciente` (`id_usuario`) VALUES
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbprofissionalsaude`
--

CREATE TABLE `tbprofissionalsaude` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `crm_profissional` varchar(30) NOT NULL,
  `id_especialidade` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tbprofissionalsaude`
--

INSERT INTO `tbprofissionalsaude` (`id_usuario`, `crm_profissional`, `id_especialidade`) VALUES
(4, 'RN-TESTE-001', 1),
(5, 'RN-TESTE-002', 2),
(6, 'RN-TESTE-003', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbrecepcionista`
--

CREATE TABLE `tbrecepcionista` (
  `id_usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tbrecepcionista`
--

INSERT INTO `tbrecepcionista` (`id_usuario`) VALUES
(2),
(3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbusuario`
--

CREATE TABLE `tbusuario` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `nome_usuario` varchar(120) NOT NULL,
  `email_usuario` varchar(150) NOT NULL,
  `senha_usuario` varchar(255) NOT NULL,
  `genero_usuario` varchar(30) DEFAULT NULL,
  `telefone_usuario` varchar(20) DEFAULT NULL,
  `cpf_usuario` char(11) DEFAULT NULL,
  `tipo_usuario` enum('administrador','recepcionista','paciente','profissional_saude') NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
--  Dados para a tabela `tbusuario`
--

INSERT INTO `tbusuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `genero_usuario`, `telefone_usuario`, `cpf_usuario`, `tipo_usuario`, `criado_em`) VALUES
(1, 'Carlos Henrique', 'carlos.henrique@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Masculino', '84999990001', NULL, 'administrador', '2026-10-23 17:17:14'),
(2, 'Ana Beatriz', 'ana.beatriz@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Feminino', '84999990002', NULL, 'recepcionista', '2026-10-23 17:17:14'),
(3, 'Mariana Costa', 'mariana.costa@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Feminino', '84999990003', NULL, 'recepcionista', '2026-10-23 17:17:14'),
(4, 'Ricardo Almeida', 'ricardo.almeida@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Masculino', '84999990004', NULL, 'profissional_saude', '2026-10-23 17:17:14'),
(5, 'Fernanda Oliveira', 'fernanda.oliveira@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Feminino', '84999990005', NULL, 'profissional_saude', '2026-10-23 17:17:14'),
(6, 'Lucas Ferreira', 'lucas.ferreira@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Masculino', '84999990006', NULL, 'profissional_saude', '2026-10-23 17:17:14'),
(7, 'Joao Pedro', 'joao.pedro@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Masculino', '84999990007', NULL, 'paciente', '2026-10-23 17:17:15'),
(8, 'Juliana Santos', 'juliana.santos@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Feminino', '84999990008', NULL, 'paciente', '2026-10-23 17:17:15'),
(9, 'Pedro Henrique', 'pedro.henrique@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Masculino', '84999990009', NULL, 'paciente', '2026-10-23 17:17:15'),
(10, 'Camila Rodrigues', 'camila.rodrigues@humanizar.com', '$2y$12$Uleuv.3j5N9ReGPVeqsZKOBaPWg4peYOlskYaMJZdcDTeqVPxczeG', 'Feminino', '84999990010', NULL, 'paciente', '2026-10-23 17:17:15');

-- --------------------------------------------------------

--
-- Estrutura para view `vw_consultas`
--
CREATE TABLE `vw_consultas` (
`id_consulta` int(10) unsigned
,`nome_paciente` varchar(120)
,`nome_profissional` varchar(120)
,`telefone_paciente` varchar(20)
,`especialidade` varchar(100)
,`status_consulta` enum('agendada','confirmada','realizada','cancelada','nao_compareceu')
,`data_consulta` date
,`hora_consulta` time
,`observacao_consulta` text
);

-- --------------------------------------------------------

--
-- Estrutura para view `vw_consultas`
--
DROP TABLE IF EXISTS `vw_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_consultas`  AS SELECT `c`.`id_consulta` AS `id_consulta`, `up`.`nome_usuario` AS `nome_paciente`, `upr`.`nome_usuario` AS `nome_profissional`, `up`.`telefone_usuario` AS `telefone_paciente`, `e`.`nome_especialidade` AS `especialidade`, `c`.`status_consulta` AS `status_consulta`, `c`.`data_consulta` AS `data_consulta`, `c`.`hora_consulta` AS `hora_consulta`, `c`.`observacao_consulta` AS `observacao_consulta` FROM (((((`tbconsulta` `c` join `tbpaciente` `p` on(`c`.`id_paciente` = `p`.`id_usuario`)) join `tbusuario` `up` on(`p`.`id_usuario` = `up`.`id_usuario`)) join `tbprofissionalsaude` `ps` on(`c`.`id_profissional` = `ps`.`id_usuario`)) join `tbusuario` `upr` on(`ps`.`id_usuario` = `upr`.`id_usuario`)) join `tbespecialidade` `e` on(`ps`.`id_especialidade` = `e`.`id_especialidade`)) ;
--
-- Índices de tabela `tbadministrador`
--
ALTER TABLE `tbadministrador`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `tbconsulta`
--
ALTER TABLE `tbconsulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `fk_consulta_paciente` (`id_paciente`),
  ADD KEY `fk_consulta_profissional` (`id_profissional`),
  ADD KEY `fk_consulta_recepcionista` (`id_recepcionista`),
  ADD KEY `idx_consulta_data_hora` (`data_consulta`,`hora_consulta`),
  ADD KEY `idx_consulta_status` (`status_consulta`);

--
-- Índices de tabela `tbespecialidade`
--
ALTER TABLE `tbespecialidade`
  ADD PRIMARY KEY (`id_especialidade`),
  ADD UNIQUE KEY `nome_especialidade` (`nome_especialidade`);

--
-- Índices de tabela `tbpaciente`
--
ALTER TABLE `tbpaciente`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `tbprofissionalsaude`
--
ALTER TABLE `tbprofissionalsaude`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `crm_profissional` (`crm_profissional`),
  ADD KEY `fk_profissional_especialidade` (`id_especialidade`);

--
-- Índices de tabela `tbrecepcionista`
--
ALTER TABLE `tbrecepcionista`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email_usuario` (`email_usuario`),
  ADD UNIQUE KEY `cpf_usuario` (`cpf_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbconsulta`
--
ALTER TABLE `tbconsulta`
  MODIFY `id_consulta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tbespecialidade`
--
ALTER TABLE `tbespecialidade`
  MODIFY `id_especialidade` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbadministrador`
--
ALTER TABLE `tbadministrador`
  ADD CONSTRAINT `fk_administrador_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbusuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbconsulta`
--
ALTER TABLE `tbconsulta`
  ADD CONSTRAINT `fk_consulta_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `tbpaciente` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_consulta_profissional` FOREIGN KEY (`id_profissional`) REFERENCES `tbprofissionalsaude` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_consulta_recepcionista` FOREIGN KEY (`id_recepcionista`) REFERENCES `tbrecepcionista` (`id_usuario`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbpaciente`
--
ALTER TABLE `tbpaciente`
  ADD CONSTRAINT `fk_paciente_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbusuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbprofissionalsaude`
--
ALTER TABLE `tbprofissionalsaude`
  ADD CONSTRAINT `fk_profissional_especialidade` FOREIGN KEY (`id_especialidade`) REFERENCES `tbespecialidade` (`id_especialidade`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profissional_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbusuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbrecepcionista`
--
ALTER TABLE `tbrecepcionista`
  ADD CONSTRAINT `fk_recepcionista_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbusuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
