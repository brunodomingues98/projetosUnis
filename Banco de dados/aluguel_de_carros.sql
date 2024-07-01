-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Abr-2021 às 20:05
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aluguel de carros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carros`
--

CREATE TABLE `carros` (
  `placo_carro` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `cod_marca` int(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `ano` varchar(50) NOT NULL,
  `data_aluguel` date NOT NULL,
  `data_devolucao` date NOT NULL,
  `valor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carros`
--

INSERT INTO `carros` (`placo_carro`, `modelo`, `cod_marca`, `marca`, `ano`, `data_aluguel`, `data_devolucao`, `valor`) VALUES
('ABC-1234', 'KA', 1, 'Ford', '2021', '2021-04-01', '2021-04-08', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados do aluguel`
--

CREATE TABLE `dados do aluguel` (
  `cpf` int(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` int(50) NOT NULL,
  `endereço` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dados do aluguel`
--

INSERT INTO `dados do aluguel` (`cpf`, `nome`, `telefone`, `endereço`) VALUES
(2147483647, 'Andre Luiz', 984229908, 'jorge flores jd rosa 169');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
