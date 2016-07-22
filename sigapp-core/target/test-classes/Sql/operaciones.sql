-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2016 a las 18:43:12
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `operaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
`IdCliente` int(11) NOT NULL,
  `NumMedidor` int(11) NOT NULL,
  `NumInscripcion` int(11) NOT NULL,
  `Nombre` varchar(75) NOT NULL,
  `Apellidos` varchar(200) DEFAULT NULL,
  `Direccion` varchar(250) NOT NULL,
  `Dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos`
--

CREATE TABLE IF NOT EXISTS `elementos` (
`IdElementos` int(11) NOT NULL,
  `NombreElemento` varchar(250) NOT NULL,
  `TipoElemento` varchar(15) NOT NULL,
  `DescripcionElemento` varchar(750) NOT NULL,
  `UnidadElemento` varchar(10) NOT NULL,
  `CostoElemento` double DEFAULT NULL,
  `Fechacompra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE IF NOT EXISTS `equipos` (
`IdEquipo` int(11) NOT NULL,
  `NombreEqui` varchar(150) NOT NULL,
  `DescripcionEqui` varchar(150) NOT NULL,
  `Area` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`IdEquipo`, `NombreEqui`, `DescripcionEqui`, `Area`) VALUES
(1, 'Electrobonba de eje horizontal', 'Hidrostal', 'Caudal'),
(2, 'Balon de Cloro de Gas 60 KG', 'Balon de Cloro de Gas 60 KG', 'Caudal'),
(3, 'Balanza Plataforma', 'Balanza Plataforma', 'Caudal'),
(4, 'Clorador de Inyeccion al vacio', 'Clorador de Inyeccion al vacio', 'Caudal'),
(6, 'Hipoclorinador', 'Hipoclorinador', 'Caudal'),
(7, 'Cloracion de Inyeccion Directa', 'Cloracion de Inyeccion Directa', 'Nivel'),
(8, 'Inyector Directo', 'Inyector Directo', 'Nivel'),
(9, 'Medidor tipo wotman vertical', 'Medidor tipo wotman vertical', 'Nivel'),
(10, 'Medidor de energia electrica monofasico', 'Medidor de energia electrica monofasico', 'Nivel'),
(11, 'Medidor Por Flotador', 'Medidor Por Flotador', 'Nivel'),
(12, 'Grifo Contra Incendio Tipo Poste', 'Grifo Contra Incendio Tipo Poste', 'Presion'),
(13, 'Laboratorio T-B Empssapal sa', 'Laboratorio T-B Empssapal sa', 'Presion'),
(14, 'Medidor Tipo Wotman Horizontal', 'Medidor Tipo Wotman Horizontal', 'Presion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equiposutilizar`
--

CREATE TABLE IF NOT EXISTS `equiposutilizar` (
`IdEquiposUtilizar` int(11) NOT NULL,
  `IdOrden` int(11) NOT NULL,
  `IdVehiculos` int(11) NOT NULL,
  `FechaUso` date NOT NULL,
  `Tiempo` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
`IdEstado` int(11) NOT NULL,
  `IdOrden` int(11) NOT NULL,
  `IdSolicitud` int(11) NOT NULL,
  `Estado` varchar(25) NOT NULL,
  `Observaciones` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE IF NOT EXISTS `herramientas` (
`IdHerramientas` int(11) NOT NULL,
  `Nombreherr` varchar(150) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `FechaCompra` date DEFAULT NULL,
  `Marcaherramienta` varchar(50) DEFAULT NULL,
  `CantidadTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE IF NOT EXISTS `orden` (
`IdOrden` int(11) NOT NULL,
  `IdResponsables` int(11) NOT NULL,
  `FechaOrden` date NOT NULL,
  `DescripcionOrden` varchar(500) NOT NULL,
  `Estado` varchar(15) DEFAULT NULL,
  `Situacion` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
`IdPersonal` int(11) NOT NULL,
  `Nombre` varchar(75) NOT NULL,
  `ApellidoPat` varchar(100) NOT NULL,
  `ApellidoMat` varchar(100) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Correo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`IdPersonal`, `Nombre`, `ApellidoPat`, `ApellidoMat`, `Edad`, `Telefono`, `Direccion`, `Correo`) VALUES
(1, 'Francisco', 'Mamani', 'Quispe', 55, 984532726, 'jr:japan 124', 'asdasdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntocontrol`
--

CREATE TABLE IF NOT EXISTS `puntocontrol` (
`IdPuntoControl` int(11) NOT NULL,
  `TipoControl` varchar(100) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  `NombreControl` varchar(500) NOT NULL,
  `Descripcion` varchar(750) NOT NULL,
  `Direccion` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puntocontrol`
--

INSERT INTO `puntocontrol` (`IdPuntoControl`, `TipoControl`, `Estado`, `NombreControl`, `Descripcion`, `Direccion`) VALUES
(1, 'Redes Distribucion', 'Activo', 'Red de distribucion jr: pierola 1232', 'esta red tiene un diametro de 25', 'jr: pierola'),
(2, 'Reservorio', 'Activo', 'Reservorio de Pichasani', 'El reservorio actualmente funcionado', 'jr; calvario alto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respersonal`
--

CREATE TABLE IF NOT EXISTS `respersonal` (
`IdRespersonal` int(11) NOT NULL,
  `IdResponsables` int(11) NOT NULL,
  `IdPersonal` int(11) NOT NULL,
  `Cargo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsables`
--

CREATE TABLE IF NOT EXISTS `responsables` (
`IdResponsables` int(11) NOT NULL,
  `Area` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
`IdServicios` int(11) NOT NULL,
  `NombreSer` varchar(50) NOT NULL,
  `TipoServicios` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE IF NOT EXISTS `solicitud` (
`IdSolicitud` int(11) NOT NULL,
  `DireccionServicio` varchar(150) NOT NULL,
  `FechaSol` date NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdSubServicios` int(11) NOT NULL,
  `Descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subservicios`
--

CREATE TABLE IF NOT EXISTS `subservicios` (
`IdSubServicios` int(11) NOT NULL,
  `IdServicios` int(11) NOT NULL,
  `NombreSub` varchar(75) NOT NULL,
  `Tiempo` double NOT NULL,
  `Costosub` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomedicion`
--

CREATE TABLE IF NOT EXISTS `tipomedicion` (
`IdMedicion` int(11) NOT NULL,
  `IdEquipo` int(11) NOT NULL,
  `IdPuntoControl` int(11) NOT NULL,
  `IdPersonal` int(11) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `FechaMedicion` date NOT NULL,
  `Hora` varchar(15) NOT NULL,
  `Anotaciones` varchar(1000) NOT NULL,
  `CValorLC` double DEFAULT NULL,
  `PValorMAC` double DEFAULT NULL,
  `NValorM` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipomedicion`
--

INSERT INTO `tipomedicion` (`IdMedicion`, `IdEquipo`, `IdPuntoControl`, `IdPersonal`, `Tipo`, `FechaMedicion`, `Hora`, `Anotaciones`, `CValorLC`, `PValorMAC`, `NValorM`) VALUES
(1, 1, 1, 1, 'Caudal', '2016-07-20', '12:00', 'asdasdasd', 12, NULL, NULL),
(2, 1, 1, 1, 'Caudal', '2016-07-20', '12:00', 'asdasdasd', 12, NULL, NULL),
(3, 1, 1, 1, 'Caudal', '2016-07-13', '16:04', 'rthgfd', 34, NULL, NULL),
(4, 1, 1, 1, 'Caudal', '2016-07-05', '12:00', '{ñlkjnhbgvfd', 12, NULL, NULL),
(5, 1, 1, 1, 'Caudal', '2016-07-14', '13:00', 'fghj', 15, NULL, NULL),
(6, 1, 2, 1, 'Caudal', '2016-07-07', '12:59', 'mjhgbf', 358, NULL, NULL),
(7, 12, 1, 1, 'Caudal', '2016-07-20', '01:59', 'asdasd', 26, NULL, NULL),
(8, 13, 1, 1, 'Presion', '2016-07-20', '13:00', 'asd', 12, NULL, NULL),
(9, 4, 1, 1, 'Presion', '2016-07-20', '01:00', 'sdfghjk', 12, 123, NULL),
(10, 1, 1, 1, 'Caudal', '2016-07-21', '00:00', 'el registro de la electrobonba fue hecha corrcta', 22, 23, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usarelementos`
--

CREATE TABLE IF NOT EXISTS `usarelementos` (
`IdUsarelementos` int(11) NOT NULL,
  `IdOrden` int(11) NOT NULL,
  `IdElementos` int(11) NOT NULL,
  `Cantidadutilizar` varchar(150) NOT NULL,
  `FechaUtilizar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usarequipo`
--

CREATE TABLE IF NOT EXISTS `usarequipo` (
`IdUsarequipo` int(11) NOT NULL,
  `IdOrden` int(11) NOT NULL,
  `IdEquipo` int(11) NOT NULL,
  `Fechautilizar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usarherramientas`
--

CREATE TABLE IF NOT EXISTS `usarherramientas` (
`IdUsarherr` int(11) NOT NULL,
  `IdOrden` int(11) NOT NULL,
  `IdHerramientas` int(11) NOT NULL,
  `Canridadutilizar` int(11) NOT NULL,
  `Fechautilizar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
`IdVehiculos` int(11) NOT NULL,
  `Placa` varchar(15) NOT NULL,
  `Marca` varchar(15) NOT NULL,
  `Movil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `elementos`
--
ALTER TABLE `elementos`
 ADD PRIMARY KEY (`IdElementos`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
 ADD PRIMARY KEY (`IdEquipo`);

--
-- Indices de la tabla `equiposutilizar`
--
ALTER TABLE `equiposutilizar`
 ADD PRIMARY KEY (`IdEquiposUtilizar`), ADD KEY `vehiculos_equiposutilizar_fk` (`IdVehiculos`) USING BTREE, ADD KEY `orden_equiposutilizar_fk` (`IdOrden`) USING BTREE;

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
 ADD PRIMARY KEY (`IdEstado`), ADD KEY `orden_estado_fk` (`IdOrden`) USING BTREE, ADD KEY `solicitud_estado_fk` (`IdSolicitud`) USING BTREE;

--
-- Indices de la tabla `herramientas`
--
ALTER TABLE `herramientas`
 ADD PRIMARY KEY (`IdHerramientas`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
 ADD PRIMARY KEY (`IdOrden`), ADD KEY `responsables_orden_fk` (`IdResponsables`) USING BTREE;

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
 ADD PRIMARY KEY (`IdPersonal`);

--
-- Indices de la tabla `puntocontrol`
--
ALTER TABLE `puntocontrol`
 ADD PRIMARY KEY (`IdPuntoControl`);

--
-- Indices de la tabla `respersonal`
--
ALTER TABLE `respersonal`
 ADD PRIMARY KEY (`IdRespersonal`), ADD KEY `personal_respersonal_fk` (`IdPersonal`) USING BTREE, ADD KEY `responsables_respersonal_fk` (`IdResponsables`) USING BTREE;

--
-- Indices de la tabla `responsables`
--
ALTER TABLE `responsables`
 ADD PRIMARY KEY (`IdResponsables`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
 ADD PRIMARY KEY (`IdServicios`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
 ADD PRIMARY KEY (`IdSolicitud`), ADD KEY `subservicios_solicitud_fk` (`IdSubServicios`) USING BTREE, ADD KEY `cliente_solicitud_fk` (`IdCliente`) USING BTREE;

--
-- Indices de la tabla `subservicios`
--
ALTER TABLE `subservicios`
 ADD PRIMARY KEY (`IdSubServicios`), ADD KEY `servicios_subservicios_fk` (`IdServicios`) USING BTREE;

--
-- Indices de la tabla `tipomedicion`
--
ALTER TABLE `tipomedicion`
 ADD PRIMARY KEY (`IdMedicion`), ADD KEY `puntocontrol_tipomedicion_fk` (`IdPuntoControl`), ADD KEY `personal_tipomedicion_fk` (`IdPersonal`), ADD KEY `equipos_tipomedicion_fk` (`IdEquipo`);

--
-- Indices de la tabla `usarelementos`
--
ALTER TABLE `usarelementos`
 ADD PRIMARY KEY (`IdUsarelementos`), ADD KEY `elementos_usarelementos_fk` (`IdElementos`) USING BTREE, ADD KEY `orden_usarelementos_fk` (`IdOrden`) USING BTREE;

--
-- Indices de la tabla `usarequipo`
--
ALTER TABLE `usarequipo`
 ADD PRIMARY KEY (`IdUsarequipo`), ADD KEY `equipos_usarequipo_fk` (`IdEquipo`) USING BTREE, ADD KEY `orden_usarequipo_fk` (`IdOrden`) USING BTREE;

--
-- Indices de la tabla `usarherramientas`
--
ALTER TABLE `usarherramientas`
 ADD PRIMARY KEY (`IdUsarherr`), ADD KEY `herramientas_usarherramientas_fk` (`IdHerramientas`) USING BTREE, ADD KEY `orden_usarherramientas_fk` (`IdOrden`) USING BTREE;

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
 ADD PRIMARY KEY (`IdVehiculos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `elementos`
--
ALTER TABLE `elementos`
MODIFY `IdElementos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
MODIFY `IdEquipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `equiposutilizar`
--
ALTER TABLE `equiposutilizar`
MODIFY `IdEquiposUtilizar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
MODIFY `IdEstado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `herramientas`
--
ALTER TABLE `herramientas`
MODIFY `IdHerramientas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
MODIFY `IdOrden` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
MODIFY `IdPersonal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `puntocontrol`
--
ALTER TABLE `puntocontrol`
MODIFY `IdPuntoControl` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `respersonal`
--
ALTER TABLE `respersonal`
MODIFY `IdRespersonal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `responsables`
--
ALTER TABLE `responsables`
MODIFY `IdResponsables` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
MODIFY `IdServicios` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
MODIFY `IdSolicitud` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `subservicios`
--
ALTER TABLE `subservicios`
MODIFY `IdSubServicios` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipomedicion`
--
ALTER TABLE `tipomedicion`
MODIFY `IdMedicion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `usarelementos`
--
ALTER TABLE `usarelementos`
MODIFY `IdUsarelementos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usarequipo`
--
ALTER TABLE `usarequipo`
MODIFY `IdUsarequipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usarherramientas`
--
ALTER TABLE `usarherramientas`
MODIFY `IdUsarherr` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
MODIFY `IdVehiculos` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equiposutilizar`
--
ALTER TABLE `equiposutilizar`
ADD CONSTRAINT `orden_equiposutilizar_fk` FOREIGN KEY (`IdOrden`) REFERENCES `orden` (`IdOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `vehiculos_equiposutilizar_fk` FOREIGN KEY (`IdVehiculos`) REFERENCES `vehiculos` (`IdVehiculos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
ADD CONSTRAINT `orden_estado_fk` FOREIGN KEY (`IdOrden`) REFERENCES `orden` (`IdOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `solicitud_estado_fk` FOREIGN KEY (`IdSolicitud`) REFERENCES `solicitud` (`IdSolicitud`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
ADD CONSTRAINT `responsables_orden_fk` FOREIGN KEY (`IdResponsables`) REFERENCES `responsables` (`IdResponsables`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `respersonal`
--
ALTER TABLE `respersonal`
ADD CONSTRAINT `personal_respersonal_fk` FOREIGN KEY (`IdPersonal`) REFERENCES `personal` (`IdPersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `responsables_respersonal_fk` FOREIGN KEY (`IdResponsables`) REFERENCES `responsables` (`IdResponsables`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
ADD CONSTRAINT `cliente_solicitud_fk` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `subservicios_solicitud_fk` FOREIGN KEY (`IdSubServicios`) REFERENCES `subservicios` (`IdSubServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subservicios`
--
ALTER TABLE `subservicios`
ADD CONSTRAINT `servicios_subservicios_fk` FOREIGN KEY (`IdServicios`) REFERENCES `servicios` (`IdServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipomedicion`
--
ALTER TABLE `tipomedicion`
ADD CONSTRAINT `equipos_tipomedicion_fk` FOREIGN KEY (`IdEquipo`) REFERENCES `equipos` (`IdEquipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `personal_tipomedicion_fk` FOREIGN KEY (`IdPersonal`) REFERENCES `personal` (`IdPersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `puntocontrol_tipomedicion_fk` FOREIGN KEY (`IdPuntoControl`) REFERENCES `puntocontrol` (`IdPuntoControl`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usarelementos`
--
ALTER TABLE `usarelementos`
ADD CONSTRAINT `elementos_usarelementos_fk` FOREIGN KEY (`IdElementos`) REFERENCES `elementos` (`IdElementos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `orden_usarelementos_fk` FOREIGN KEY (`IdOrden`) REFERENCES `orden` (`IdOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usarequipo`
--
ALTER TABLE `usarequipo`
ADD CONSTRAINT `equipos_usarequipo_fk` FOREIGN KEY (`IdEquipo`) REFERENCES `equipos` (`IdEquipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `orden_usarequipo_fk` FOREIGN KEY (`IdOrden`) REFERENCES `orden` (`IdOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usarherramientas`
--
ALTER TABLE `usarherramientas`
ADD CONSTRAINT `herramientas_usarherramientas_fk` FOREIGN KEY (`IdHerramientas`) REFERENCES `herramientas` (`IdHerramientas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `orden_usarherramientas_fk` FOREIGN KEY (`IdOrden`) REFERENCES `orden` (`IdOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
