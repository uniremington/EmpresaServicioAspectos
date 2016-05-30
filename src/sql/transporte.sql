-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2016 a las 15:48:13
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trans_camion`
--

CREATE TABLE `trans_camion` (
  `ca_matricula` int(11) NOT NULL,
  `ca_potencia` varchar(60) NOT NULL,
  `ca_tipo` varchar(60) NOT NULL,
  `ca_modelo` varchar(60) NOT NULL,
  `cam_rec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trans_camion`
--

INSERT INTO `trans_camion` (`ca_matricula`, `ca_potencia`, `ca_tipo`, `ca_modelo`, `cam_rec`) VALUES
(2, '1', '1', '12', 3),
(3, '129999', '3213', '1993', 3),
(4, '1212', '12121', '212', 3),
(5, '100000', 'carga', '2005', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trans_camionero`
--

CREATE TABLE `trans_camionero` (
  `cam_rec` int(11) NOT NULL,
  `cam_nombre` varchar(60) NOT NULL,
  `cam_poblacion` varchar(60) NOT NULL,
  `cam_telefono` varchar(10) NOT NULL,
  `cam_direccion` varchar(70) NOT NULL,
  `cam_salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trans_camionero`
--

INSERT INTO `trans_camionero` (`cam_rec`, `cam_nombre`, `cam_poblacion`, `cam_telefono`, `cam_direccion`, `cam_salario`) VALUES
(3, 'Jhon', '56789', '45678', 'villa maria', 400000),
(4, 'jorge', '789', '67890', '345', 2348888),
(5, 'herman', '12', '876749', 'carrera popo', 1212),
(6, 'maurot', '32423', '12132', 'carerra 123', 12000),
(7, 'camilo', '3123', '321312', 'carrera 12', 23123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trans_ciudad`
--

CREATE TABLE `trans_ciudad` (
  `ciu_codigo` int(11) NOT NULL,
  `ciu_nombre` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trans_ciudad`
--

INSERT INTO `trans_ciudad` (`ciu_codigo`, `ciu_nombre`) VALUES
(11, 'bogota'),
(31, 'bogota'),
(33, 'lima'),
(34, 'Pereira');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trans_paquete`
--

CREATE TABLE `trans_paquete` (
  `paq_codigo` int(11) NOT NULL,
  `paq_descripcion` varchar(70) NOT NULL,
  `paq_destinatario` varchar(70) NOT NULL,
  `paq_direccion` varchar(70) NOT NULL,
  `cam_rec` int(11) NOT NULL,
  `ciu_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trans_paquete`
--

INSERT INTO `trans_paquete` (`paq_codigo`, `paq_descripcion`, `paq_destinatario`, `paq_direccion`, `cam_rec`, `ciu_codigo`) VALUES
(2, '12', 'zopp agency', 'calle falsa', 3, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `trans_camion`
--
ALTER TABLE `trans_camion`
  ADD PRIMARY KEY (`ca_matricula`),
  ADD KEY `cam_rec` (`cam_rec`);

--
-- Indices de la tabla `trans_camionero`
--
ALTER TABLE `trans_camionero`
  ADD PRIMARY KEY (`cam_rec`);

--
-- Indices de la tabla `trans_ciudad`
--
ALTER TABLE `trans_ciudad`
  ADD PRIMARY KEY (`ciu_codigo`);

--
-- Indices de la tabla `trans_paquete`
--
ALTER TABLE `trans_paquete`
  ADD PRIMARY KEY (`paq_codigo`),
  ADD KEY `cam_rec` (`cam_rec`),
  ADD KEY `ciu_codigo` (`ciu_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `trans_camion`
--
ALTER TABLE `trans_camion`
  MODIFY `ca_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `trans_camionero`
--
ALTER TABLE `trans_camionero`
  MODIFY `cam_rec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `trans_ciudad`
--
ALTER TABLE `trans_ciudad`
  MODIFY `ciu_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `trans_paquete`
--
ALTER TABLE `trans_paquete`
  MODIFY `paq_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `trans_camion`
--
ALTER TABLE `trans_camion`
  ADD CONSTRAINT `trans_camion_ibfk_1` FOREIGN KEY (`cam_rec`) REFERENCES `trans_camionero` (`cam_rec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `trans_paquete`
--
ALTER TABLE `trans_paquete`
  ADD CONSTRAINT `trans_paquete_ibfk_1` FOREIGN KEY (`cam_rec`) REFERENCES `trans_camionero` (`cam_rec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trans_paquete_ibfk_2` FOREIGN KEY (`ciu_codigo`) REFERENCES `trans_ciudad` (`ciu_codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
