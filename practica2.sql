-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-12-2019 a las 22:04:05
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juguete`
--

DROP TABLE IF EXISTS `juguete`;
CREATE TABLE IF NOT EXISTS `juguete` (
  `Id_juguete` int(20) NOT NULL,
  `nombre_juguete` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio_juguete` decimal(5,2) NOT NULL,
  PRIMARY KEY (`Id_juguete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `juguete`
--

INSERT INTO `juguete` (`Id_juguete`, `nombre_juguete`, `precio_juguete`) VALUES
(1, 'Aula de ciencia: Robot Mini ERP', '159.95'),
(2, 'Carbón', '0.00'),
(3, 'Cochecito Classic', '99.95'),
(4, 'Consola PS4 1 TB', '349.90'),
(5, 'Lego Villa familiar modular', '64.99'),
(6, 'Magia Borrás Clásica 150 trucos con luz', '32.95'),
(7, 'Meccano Excavadora construcción', '30.99'),
(8, 'Nenuco Hace pompas', '29.95'),
(9, 'Peluche delfín rosa', '34.00'),
(10, 'Pequeordenador', '22.95'),
(11, 'Robot Coji', '69.95'),
(12, 'Telescopio astronómico terrestre', '72.00'),
(13, 'Twister', '17.95');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lleva`
--

DROP TABLE IF EXISTS `lleva`;
CREATE TABLE IF NOT EXISTS `lleva` (
  `Id_lleva` int(20) NOT NULL AUTO_INCREMENT,
  `juguete_lleva` int(20) NOT NULL,
  `reyes_lleva` int(20) NOT NULL,
  PRIMARY KEY (`Id_lleva`),
  KEY `juguete_lleva` (`juguete_lleva`),
  KEY `reyes_lleva` (`reyes_lleva`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `lleva`
--

INSERT INTO `lleva` (`Id_lleva`, `juguete_lleva`, `reyes_lleva`) VALUES
(1, 2, 1),
(2, 1, 1),
(3, 3, 2),
(4, 4, 2),
(5, 2, 3),
(6, 11, 3),
(7, 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nino`
--

DROP TABLE IF EXISTS `nino`;
CREATE TABLE IF NOT EXISTS `nino` (
  `Id_nino` int(20) NOT NULL AUTO_INCREMENT,
  `nombre_nino` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fechadeNacimiento_nino` date NOT NULL,
  `bueno` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_nino`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `nino`
--

INSERT INTO `nino` (`Id_nino`, `nombre_nino`, `apellido`, `fechadeNacimiento_nino`, `bueno`) VALUES
(1, 'Alberto', 'Alcántara', '1994-10-13', 'No'),
(2, 'Beatriz', 'Bueno', '1982-04-18', 'Sí'),
(3, 'Carlos', 'Crepo', '1998-12-01', 'Sí'),
(4, 'Diana', 'Domínguez', '1987-09-02', 'No'),
(5, 'Emilio', 'Enamorado', '1996-08-12', 'Sí'),
(6, 'Francisca', 'Fernández', '1990-07-28', 'Sí'),
(7, 'Beatriz', 'Bueno', '1982-04-18', 'Sí'),
(8, 'Carlos', 'Crepo', '1998-12-01', 'Sí'),
(9, 'Diana', 'Domínguez', '1987-09-02', 'No'),
(10, 'Emilio', 'Enamorado', '1996-08-12', 'Sí'),
(11, 'Francisca', 'Fernández', '1990-07-28', 'Sí');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obtiene`
--

DROP TABLE IF EXISTS `obtiene`;
CREATE TABLE IF NOT EXISTS `obtiene` (
  `Id_obtiene` int(20) NOT NULL AUTO_INCREMENT,
  `jugete_obtiene` int(20) NOT NULL,
  `ninos_obtiene` int(20) NOT NULL,
  PRIMARY KEY (`Id_obtiene`),
  KEY `jugete_obtiene` (`jugete_obtiene`),
  KEY `ninos_obtiene` (`ninos_obtiene`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `obtiene`
--

INSERT INTO `obtiene` (`Id_obtiene`, `jugete_obtiene`, `ninos_obtiene`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 3, 2),
(4, 4, 3),
(5, 2, 4),
(6, 11, 5),
(7, 7, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reyes`
--

DROP TABLE IF EXISTS `reyes`;
CREATE TABLE IF NOT EXISTS `reyes` (
  `Id_reyes` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`Id_reyes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `reyes`
--

INSERT INTO `reyes` (`Id_reyes`, `nombre`) VALUES
(1, 'Melchor'),
(2, 'Gaspar'),
(3, 'Baltasar');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lleva`
--
ALTER TABLE `lleva`
  ADD CONSTRAINT `lleva_ibfk_1` FOREIGN KEY (`reyes_lleva`) REFERENCES `reyes` (`Id_reyes`) ON DELETE CASCADE,
  ADD CONSTRAINT `lleva_ibfk_2` FOREIGN KEY (`juguete_lleva`) REFERENCES `juguete` (`Id_juguete`) ON DELETE CASCADE;

--
-- Filtros para la tabla `obtiene`
--
ALTER TABLE `obtiene`
  ADD CONSTRAINT `obtiene_ibfk_1` FOREIGN KEY (`ninos_obtiene`) REFERENCES `nino` (`Id_nino`) ON DELETE CASCADE,
  ADD CONSTRAINT `obtiene_ibfk_2` FOREIGN KEY (`jugete_obtiene`) REFERENCES `juguete` (`Id_juguete`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
