-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-02-2019 a las 11:27:16
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.4.36-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `taller1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_clientes` double NOT NULL AUTO_INCREMENT,
  `id_vendedores` double NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `frecuente` varchar(30) NOT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `id_vendedores`, `nombre`, `Sexo`, `frecuente`) VALUES
(1, 1, 'Juan lazaro', 'M', '3 meses'),
(2, 2, 'William barcelona', 'M', '5 meses'),
(3, 3, 'Camila mesa', 'F', '1 año'),
(4, 4, 'Karla hernandez', 'F', '2 meses'),
(5, 5, 'Pedro cardenales', 'M', '8 meses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE IF NOT EXISTS `vendedores` (
  `id_vendedores` double NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `numero_telefonico` double NOT NULL,
  `id_ventas` double NOT NULL,
  PRIMARY KEY (`id_vendedores`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id_vendedores`, `nombre`, `apellido`, `Sexo`, `numero_telefonico`, `id_ventas`) VALUES
(1, 'Maria', 'Perez', 'F', 4142200757, 1),
(2, 'David ', 'Molina', 'M', 4162631228, 2),
(3, 'Pedro', 'Villanueva', 'M', 4164271554, 3),
(4, 'Blue ', 'Cardenal', 'M', 4248596334, 4),
(5, 'Luis', 'Montilla', 'M', 4265896768, 5),
(6, 'Monica ', 'Salvador', 'F', 4245896345, 6),
(7, 'Marta', 'Molina', 'F', 412785963, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `id_ventas` double NOT NULL AUTO_INCREMENT,
  `id_vendedores` double NOT NULL,
  `id_cliente` double NOT NULL,
  PRIMARY KEY (`id_ventas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `id_vendedores`, `id_cliente`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
