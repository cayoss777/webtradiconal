-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2019 a las 15:52:13
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdventas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `pa_actores_lista` ()  SELECT
  *
FROM
  vendedor$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar` (`vid` INT(10), `vvendedor` VARCHAR(40), `vdireccion` VARCHAR(40), `vfechaventa` DATE)  insert into vendedor(id,vendedor,direccion,fechaventa) 
	VALUES(vid,vvendedor ,vdireccion ,vfechaventa)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar2` (`vid` INT(1), `vvendedor` VARCHAR(40), `vdireccion` VARCHAR(40), `vfechaventa` DATE, `vimagen` VARCHAR(30))  insert into vendedor(id,vendedor,direccion,fechaventa) 
	VALUES(vid,vvendedor ,vdireccion ,vfechaventa,vimagen)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar3` (`vid` INT(10), `vvendedor` VARCHAR(40), `vdireccion` VARCHAR(40), `vfechaventa` DATE, `vimagen` VARCHAR(30))  insert into vendedor(id,vendedor,direccion,fechaventa,foto) 
	VALUES(vid,vvendedor ,vdireccion ,vfechaventa,vimagen)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar` ()  SELECT
  *
FROM
  vendedor$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `codigo_ciu` int(4) NOT NULL,
  `nombre_ciu` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`codigo_ciu`, `nombre_ciu`) VALUES
(0, 'Cusco'),
(2, 'Lima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ta_cliente`
--

CREATE TABLE `ta_cliente` (
  `cod_clie` int(7) NOT NULL,
  `nom_cli` varchar(15) NOT NULL,
  `ape_cli` varchar(15) NOT NULL,
  `celular` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ta_cliente`
--

INSERT INTO `ta_cliente` (`cod_clie`, `nom_cli`, `ape_cli`, `celular`) VALUES
(100, 'Lauro', 'Enciso', 983744950),
(200, 'Javier', 'Huacho', 983744950);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ta_producto`
--

CREATE TABLE `ta_producto` (
  `cod_pro` int(7) NOT NULL,
  `des_pro` varchar(20) NOT NULL,
  `pre_pro` decimal(7,2) NOT NULL,
  `sto_pro` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ta_producto`
--
--

INSERT INTO `ta_producto` (`cod_pro`, `des_pro`, `pre_pro`, `sto_pro`) VALUES
(10, 'Arroz', '3.00', 20),
(20, 'Azúcar', '3.50', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ta_recibo`
--

CREATE TABLE `ta_recibo` (
  `cod_rec` int(7) NOT NULL,
  `cod_cli` int(7) NOT NULL,
  `cod_pro` int(7) NOT NULL,
  `can_pro` int(5) NOT NULL,
  `fec_rec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id` int(10) NOT NULL,
  `vendedor` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `fechaventa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id`, `vendedor`, `direccion`, `fechaventa`) VALUES
(70, 'Cayo', 'Antabamba', '2019-06-01'),
(100, 'Claudio', 'Antabamba', '2019-05-31'),
(111, 'Calixto', 'Antabamba', '2019-06-25'),
(300, 'Lucho', 'Grau', '2019-06-01'),
(666, 'Filio', 'Santa Rosa', '2019-06-28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`codigo_ciu`);

--
-- Indices de la tabla `ta_cliente`
--
ALTER TABLE `ta_cliente`
  ADD PRIMARY KEY (`cod_clie`);

--
-- Indices de la tabla `ta_producto`
--
ALTER TABLE `ta_producto`
  ADD PRIMARY KEY (`cod_pro`);

--
-- Indices de la tabla `ta_recibo`
--
ALTER TABLE `ta_recibo`
  ADD PRIMARY KEY (`cod_rec`),
  ADD KEY `cod_cli` (`cod_cli`),
  ADD KEY `cod_pro` (`cod_pro`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ta_recibo`
--
ALTER TABLE `ta_recibo`
  ADD CONSTRAINT `ta_recibo_ibfk_1` FOREIGN KEY (`cod_pro`) REFERENCES `ta_producto` (`cod_pro`),
  ADD CONSTRAINT `ta_recibo_ibfk_2` FOREIGN KEY (`cod_cli`) REFERENCES `ta_cliente` (`cod_clie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
