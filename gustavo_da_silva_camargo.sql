-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Fev-2025 às 21:00
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gustavo_da_silva_camargo`
--
CREATE DATABASE IF NOT EXISTS `gustavo_da_silva_camargo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gustavo_da_silva_camargo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `COD_CLIENTE` int(11) NOT NULL COMMENT 'Este campo é responsavel de armazenar o codigo do cliente.',
  `nome_cliente` varchar(50) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar o nome do cliente.',
  `endereco` varchar(50) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar o endereço do cliente.',
  `cidade` varchar(50) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar a cidade do cliente.',
  `cep` varchar(10) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar o cep do cliente.',
  `uf` char(2) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar a Unidade Federativa do cliente.',
  `cnpj` varchar(30) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar o Cadastro Nacional da Pessoa Jurídica do cliente.',
  `ie` int(10) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenara Inscrição Estadual do cliente.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`COD_CLIENTE`, `nome_cliente`, `endereco`, `cidade`, `cep`, `uf`, `cnpj`, `ie`) VALUES
(20, 'Beth', 'Av Climério n. 45', 'São Paulo', '25679300', 'SP', '3248512673268', 9280),
(110, 'Jorge', 'Rua Caiapó 13', 'Curitiba', '30078500', 'PR', '1451276498349', NULL),
(130, 'Edmar', 'Rua da Prais s/n', 'Salvador', '30079300', 'BA', '234632842349', 7121),
(157, 'Paulo', 'Tv. Moraes c/3', 'Londrina', NULL, 'PR', '328482233242', 1923),
(180, 'Livio', 'Av. Beira Mar n.1256', 'Florianópolis', '30077500', 'SC', '1273657123474', NULL),
(222, 'Lúcia', 'Rua Itabira 123 loja 09', 'Belo Horizonte', '22124391', 'MG', '2831521393488', 2985),
(234, 'José', 'Quadra 3 bl. 3 sl 1003', 'Brasilia', '22841650', 'DF', '2176357612323', 2931),
(260, 'Susana', 'Rua Lopes Mendes 12', 'Niterói', '30046500', 'RJ', '217635712329', 2530),
(290, 'Renato', 'Rua Meireles n. 123 bl.2 sl.345', 'São Paulo', '30225900', 'SP', '1327657112314', 1820),
(390, 'Sebastião', 'Rua da Igreja n. 10', 'Uberaba', '30438700', 'MG', '321765472133', 9071),
(410, 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078900', 'RJ', '1283512823469', 7431),
(720, 'Ana', 'Rua 17 n. 19', 'Niteroi', '24358310', 'RJ', '12113231/0001-34', 2134),
(830, 'Mauricio', 'Av Paulista 1236 sl/2345', 'São Paulo', '3012683', 'SP', '3281698574656', 9343),
(870, 'Flavio', 'Av. Pres Vargas 10', 'São Paulo', '22763931', 'SP', '2253412693879', 4631);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_do_pedido`
--

CREATE TABLE `item_do_pedido` (
  `NumPedido` int(11) NOT NULL,
  `CodProduto` int(11) NOT NULL,
  `QtdeProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `item_do_pedido`
--

INSERT INTO `item_do_pedido` (`NumPedido`, `CodProduto`, `QtdeProduto`) VALUES
(121, 25, 10),
(121, 31, 35),
(97, 77, 20),
(101, 31, 9),
(148, 45, 8),
(148, 31, 7),
(148, 77, 3),
(148, 25, 10),
(148, 78, 30),
(104, 53, 32),
(203, 31, 6),
(189, 78, 45),
(143, 31, 20),
(105, 78, 10),
(111, 25, 10),
(111, 78, 70),
(103, 53, 37),
(91, 77, 40),
(138, 22, 10),
(138, 77, 35),
(138, 53, 18),
(108, 13, 17),
(119, 77, 40),
(119, 13, 6),
(119, 22, 10),
(119, 53, 43),
(137, 13, 8),
(101, 78, 18),
(104, 78, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `NumPedido` int(11) NOT NULL,
  `DataPedido` datetime NOT NULL,
  `Cliente` varchar(100) NOT NULL,
  `Codigo_Vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`NumPedido`, `DataPedido`, `Cliente`, `Codigo_Vendedor`) VALUES
(91, '2025-02-06 15:30:00', '260', 11),
(97, '2025-02-06 15:30:00', '720', 101),
(98, '2025-02-06 15:30:00', '410', 209),
(101, '2025-02-06 15:30:00', '720', 101),
(103, '2025-02-06 15:30:00', '260', 11),
(104, '2025-02-06 15:30:00', '110', 101),
(105, '2025-02-06 15:30:00', '180', 240),
(108, '2025-02-06 15:30:00', '290', 310),
(111, '2025-02-06 15:30:00', '260', 240),
(119, '2025-02-06 15:30:00', '390', 250),
(121, '2025-02-06 15:30:00', '410', 209),
(127, '2025-02-06 15:30:00', '410', 11),
(137, '2025-02-06 15:30:00', '720', 720),
(138, '2025-02-06 15:30:00', '260', 11),
(143, '2025-02-06 15:30:00', '20', 111),
(148, '2025-02-06 15:30:00', '720', 101),
(189, '2025-02-06 15:30:00', '870', 213),
(203, '2025-02-06 15:30:00', '830', 250);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `CodProduto` int(11) NOT NULL,
  `UnidProduto` varchar(10) DEFAULT NULL,
  `DescProduto` varchar(50) DEFAULT NULL,
  `ValorUnitario` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`CodProduto`, `UnidProduto`, `DescProduto`, `ValorUnitario`) VALUES
(13, 'G', 'Ouro', 6.18),
(22, 'M', 'Linho', 0.11),
(25, 'Kg', 'Queijo', 0.97),
(30, 'SAC', 'Açucar', 0.30),
(31, 'Bar', 'Chocolate', 0.87),
(45, 'M', 'Madeira', 0.25),
(53, 'M', 'Linha', 1.80),
(77, 'M', 'Papel', 1.05),
(78, 'L', 'Vinho', 2.00),
(87, 'M', 'Cano', 1.97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `COD_VENDEDOR` int(11) NOT NULL COMMENT 'Este campo é responsavel de armazenar o codigo do vendedor.',
  `nome_vendedor` varchar(50) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar o nome do vendedor.',
  `sal_fixo` decimal(15,2) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar o salário fixo do vendedor.',
  `faixa_comissao` char(2) DEFAULT NULL COMMENT 'Este campo é responsavel de armazenar a faixa de comissão do vendedor.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`COD_VENDEDOR`, `nome_vendedor`, `sal_fixo`, `faixa_comissao`) VALUES
(11, 'João', 2780.00, 'C'),
(101, 'João', 2650.00, 'C'),
(111, 'Carlos', 2490.32, 'A'),
(209, 'José', 1800.00, 'C'),
(213, 'Jonas', 2300.50, 'A'),
(240, 'Antonio', 9500.00, 'C'),
(250, 'Mauricío', 2930.00, 'B'),
(310, 'Josias', 870.00, 'B'),
(720, 'Felipe', 4600.00, 'A');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`COD_CLIENTE`);

--
-- Índices para tabela `item_do_pedido`
--
ALTER TABLE `item_do_pedido`
  ADD KEY `Fk_NumPedido_pedido` (`NumPedido`),
  ADD KEY `Fk_CodProduto_produto` (`CodProduto`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`NumPedido`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`CodProduto`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`COD_VENDEDOR`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item_do_pedido`
--
ALTER TABLE `item_do_pedido`
  ADD CONSTRAINT `Fk_CodProduto_produto` FOREIGN KEY (`CodProduto`) REFERENCES `produto` (`CodProduto`),
  ADD CONSTRAINT `Fk_NumPedido_pedido` FOREIGN KEY (`NumPedido`) REFERENCES `pedido` (`NumPedido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
