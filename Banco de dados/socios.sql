-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Abr-2021 às 20:18
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socios`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `cod_servico` int(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `mes_referencia` text NOT NULL,
  `valor_pago` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`cod_servico`, `descricao`, `mes_referencia`, `valor_pago`) VALUES
(1, 'votar nas novas aquisicoes', 'janeiro', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `socios`
--

CREATE TABLE `socios` (
  `numero` int(50) NOT NULL,
  `nome` text NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cod_tipo_socio` int(50) NOT NULL,
  `desc_socio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `socios`
--

INSERT INTO `socios` (`numero`, `nome`, `endereco`, `cod_tipo_socio`, `desc_socio`) VALUES
(10, 'jose ramos', 'flores unidas da marinha jd militar 500', 1, '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
