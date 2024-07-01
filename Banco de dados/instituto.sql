-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Abr-2021 às 20:12
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instituto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigos`
--

CREATE TABLE `artigos` (
  `cod_artigo` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `pag_inicial` int(11) NOT NULL,
  `pag_final` int(11) NOT NULL,
  `cod_periodico` int(11) NOT NULL,
  `titulo_periodico` text NOT NULL,
  `editora` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `artigos`
--

INSERT INTO `artigos` (`cod_artigo`, `titulo`, `pag_inicial`, `pag_final`, `cod_periodico`, `titulo_periodico`, `editora`) VALUES
(1, '0000-00-00', 1, 500, 0, '0', '0'),
(1, 'Origem', 1, 500, 0, 'Origem das especies', 'darwinismo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pesquisador`
--

CREATE TABLE `pesquisador` (
  `cod_pesquisador` int(50) NOT NULL,
  `nome` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pesquisador`
--

INSERT INTO `pesquisador` (`cod_pesquisador`, `nome`) VALUES
(1, 'Charles Darwin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
