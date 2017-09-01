-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2017 a las 00:04:25
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carne`
--

CREATE TABLE `carne` (
  `idcarne` int(11) NOT NULL,
  `descrpcion` varchar(45) DEFAULT NULL,
  `fecha_alcualizacion` varchar(45) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carne`
--

INSERT INTO `carne` (`idcarne`, `descrpcion`, `fecha_alcualizacion`, `costo`) VALUES
(1, 'res', '2016/06/05', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo`
--

CREATE TABLE `costo` (
  `idcosto` int(11) NOT NULL,
  `pedido_idpedido` int(11) NOT NULL,
  `costo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `costo`
--

INSERT INTO `costo` (`idcosto`, `pedido_idpedido`, `costo`) VALUES
(3, 1, 12000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ensalada`
--

CREATE TABLE `ensalada` (
  `idensalada` int(11) NOT NULL,
  `descrpcion` varchar(45) DEFAULT NULL,
  `fecha_alcualizacion` varchar(45) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ensalada`
--

INSERT INTO `ensalada` (`idensalada`, `descrpcion`, `fecha_alcualizacion`, `costo`) VALUES
(1, 'fruta ', '207/05/06', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fruta`
--

CREATE TABLE `fruta` (
  `idfruta` int(11) NOT NULL,
  `descrpcion` varchar(45) DEFAULT NULL,
  `fecha_alcualizacion` varchar(45) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fruta`
--

INSERT INTO `fruta` (`idfruta`, `descrpcion`, `fecha_alcualizacion`, `costo`) VALUES
(1, 'pera', '2016/05/06', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `granos`
--

CREATE TABLE `granos` (
  `idGranos` int(11) NOT NULL,
  `descrpcion` varchar(45) DEFAULT NULL,
  `fecha_alcualizacion` varchar(45) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `granos`
--

INSERT INTO `granos` (`idGranos`, `descrpcion`, `fecha_alcualizacion`, `costo`) VALUES
(1, 'arroz', '2017/05/06', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugo`
--

CREATE TABLE `jugo` (
  `idjugo` int(11) NOT NULL,
  `descrpcion` varchar(45) DEFAULT NULL,
  `fecha_alcualizacion` varchar(45) DEFAULT NULL,
  `costo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jugo`
--

INSERT INTO `jugo` (`idjugo`, `descrpcion`, `fecha_alcualizacion`, `costo`) VALUES
(1, 'mora', '2017/06/06', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `idtipo_menu` int(11) NOT NULL,
  `idpedido` int(11) NOT NULL,
  `idSopa` int(11) NOT NULL,
  `idcarne` int(11) NOT NULL,
  `idGranos` int(11) NOT NULL,
  `idfruta` int(11) NOT NULL,
  `idensalada` int(11) NOT NULL,
  `idjugo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`idmenu`, `idtipo_menu`, `idpedido`, `idSopa`, `idcarne`, `idGranos`, `idfruta`, `idensalada`, `idjugo`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `mesa` varchar(45) DEFAULT NULL,
  `pedidocol` varchar(45) DEFAULT NULL,
  `persona_idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `fecha_pedido`, `mesa`, `pedidocol`, `persona_idpersona`) VALUES
(1, '2017-05-02', 'A3', 'SSSS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `nombre`, `apellido`, `ciudad`, `telefono`, `edad`, `idusuario`) VALUES
(1, 'yeisson', 'alvarez', 'bogota', 2147483647, 23, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `idrestaurante` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `menu_idmenu` int(11) DEFAULT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`idrestaurante`, `nombre`, `direccion`, `telefono`, `estado`, `menu_idmenu`, `idusuario`) VALUES
(4, 'EL CAMPO ', 'CALLE 41', 2147483647, 'ACT', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sopa`
--

CREATE TABLE `sopa` (
  `idSopa` int(11) NOT NULL,
  `descrpcion` varchar(45) DEFAULT NULL,
  `fecha_alcualizacion` varchar(45) DEFAULT NULL,
  `costo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sopa`
--

INSERT INTO `sopa` (`idSopa`, `descrpcion`, `fecha_alcualizacion`, `costo`) VALUES
(1, 'SANCOCHO', '2016/02/05', '3000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_menu`
--

CREATE TABLE `tipo_menu` (
  `idtipo_menu` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_menu`
--

INSERT INTO `tipo_menu` (`idtipo_menu`, `nombre`, `fecha`) VALUES
(1, 'CORRIENTE', '2017-06-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `usuariocol` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `contrasena`, `categoria`, `usuariocol`, `estado`) VALUES
(1, 'yalvarez', 'yalvarez', '2', 'ss', 'ACT');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carne`
--
ALTER TABLE `carne`
  ADD PRIMARY KEY (`idcarne`);

--
-- Indices de la tabla `costo`
--
ALTER TABLE `costo`
  ADD PRIMARY KEY (`idcosto`),
  ADD KEY `fk_costo_pedido1_idx` (`pedido_idpedido`);

--
-- Indices de la tabla `ensalada`
--
ALTER TABLE `ensalada`
  ADD PRIMARY KEY (`idensalada`);

--
-- Indices de la tabla `fruta`
--
ALTER TABLE `fruta`
  ADD PRIMARY KEY (`idfruta`);

--
-- Indices de la tabla `granos`
--
ALTER TABLE `granos`
  ADD PRIMARY KEY (`idGranos`);

--
-- Indices de la tabla `jugo`
--
ALTER TABLE `jugo`
  ADD PRIMARY KEY (`idjugo`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`),
  ADD KEY `fk_menu_tipo_menu1_idx` (`idtipo_menu`),
  ADD KEY `fk_menu_pedido1_idx` (`idpedido`),
  ADD KEY `fk_menu_sopa1_idx` (`idSopa`),
  ADD KEY `fk_menu_carne1_idx` (`idcarne`),
  ADD KEY `fk_menu_Granos1_idx` (`idGranos`),
  ADD KEY `fk_menu_fruta1_idx` (`idfruta`),
  ADD KEY `fk_menu_ensalada1_idx` (`idensalada`),
  ADD KEY `fk_menu_jugo1_idx` (`idjugo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `fk_pedido_persona1_idx` (`persona_idpersona`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `fk_persona_usuario1_idx` (`idusuario`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`idrestaurante`),
  ADD KEY `fk_restaurante_menu1_idx` (`menu_idmenu`),
  ADD KEY `fk_restaurante_usuario2_idx` (`idusuario`);

--
-- Indices de la tabla `sopa`
--
ALTER TABLE `sopa`
  ADD PRIMARY KEY (`idSopa`);

--
-- Indices de la tabla `tipo_menu`
--
ALTER TABLE `tipo_menu`
  ADD PRIMARY KEY (`idtipo_menu`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carne`
--
ALTER TABLE `carne`
  MODIFY `idcarne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `costo`
--
ALTER TABLE `costo`
  MODIFY `idcosto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ensalada`
--
ALTER TABLE `ensalada`
  MODIFY `idensalada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fruta`
--
ALTER TABLE `fruta`
  MODIFY `idfruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `granos`
--
ALTER TABLE `granos`
  MODIFY `idGranos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `jugo`
--
ALTER TABLE `jugo`
  MODIFY `idjugo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `idrestaurante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sopa`
--
ALTER TABLE `sopa`
  MODIFY `idSopa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipo_menu`
--
ALTER TABLE `tipo_menu`
  MODIFY `idtipo_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `costo`
--
ALTER TABLE `costo`
  ADD CONSTRAINT `fk_costo_pedido1` FOREIGN KEY (`pedido_idpedido`) REFERENCES `pedido` (`idpedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_Granos1` FOREIGN KEY (`idGranos`) REFERENCES `granos` (`idGranos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_carne1` FOREIGN KEY (`idcarne`) REFERENCES `carne` (`idcarne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_ensalada1` FOREIGN KEY (`idensalada`) REFERENCES `ensalada` (`idensalada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_fruta1` FOREIGN KEY (`idfruta`) REFERENCES `fruta` (`idfruta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_jugo1` FOREIGN KEY (`idjugo`) REFERENCES `jugo` (`idjugo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_pedido1` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`idpedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_sopa1` FOREIGN KEY (`idSopa`) REFERENCES `sopa` (`idSopa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menu_tipo_menu1` FOREIGN KEY (`idtipo_menu`) REFERENCES `tipo_menu` (`idtipo_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_persona_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD CONSTRAINT `fk_restaurante_menu1` FOREIGN KEY (`menu_idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_restaurante_usuario2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
