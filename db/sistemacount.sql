-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2018 a las 23:46:58
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemacount`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autocomplete`
--

CREATE TABLE `autocomplete` (
  `id` int(12) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autocomplete`
--

INSERT INTO `autocomplete` (`id`, `nombre`) VALUES
(1, 'perrito'),
(2, 'mauricio'),
(3, 'javier'),
(4, 'javier'),
(5, 'dios'),
(6, 'marta'),
(7, 'javier'),
(8, 'marta1'),
(9, ''),
(10, ''),
(11, 'marta1'),
(12, ''),
(13, ''),
(14, 'foca'),
(15, 'amigo'),
(16, 'ernesto'),
(17, 'ernesto'),
(18, 'ernesto'),
(19, 'ernesto'),
(20, 'ernesto'),
(21, 'ernesto'),
(22, 'ernesto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL,
  `estado_categoria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`, `identificacion_usuario`, `estado_categoria`) VALUES
(1, 'activos', NULL, 'defecto'),
(2, 'egresos', NULL, 'defecto'),
(3, 'ingreso', NULL, 'defecto'),
(4, 'pasivos', NULL, 'defecto'),
(6, 'patrimonio', NULL, 'defecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_item`
--

CREATE TABLE `categorias_item` (
  `id_categoria_item` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `referencia` varchar(30) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `id_categorizacion_rama6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorizacion_rama2`
--

CREATE TABLE `categorizacion_rama2` (
  `id_categorizacion_rama2` int(11) NOT NULL,
  `titulo_categorizacion_rama2` text NOT NULL,
  `descripcion_categorizacion_rama2` varchar(40) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `estado_categorizacion_rama2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorizacion_rama2`
--

INSERT INTO `categorizacion_rama2` (`id_categorizacion_rama2`, `titulo_categorizacion_rama2`, `descripcion_categorizacion_rama2`, `id_categoria`, `estado_categorizacion_rama2`) VALUES
(1, 'activos corrientes', '', 1, 'defecto'),
(2, 'activos no corrientes', '', 1, 'defecto'),
(5, 'costos de ventas y operacion', '', 2, 'defecto'),
(6, 'depreciaciones, amortizaciones y deterioros', '', 2, 'defecto'),
(7, 'gastos de administracion', '', 2, 'defecto'),
(8, 'gastos por impuestos', '', 2, 'defecto'),
(9, 'otros gastos', '', 2, 'defecto'),
(10, 'ingresos de actividades ordinarias', '', 3, 'defecto'),
(11, 'otros ingresos', '', 3, 'defecto'),
(12, 'pasivos corrientes', '', 4, 'defecto'),
(13, 'pasivos no corrientes', '', 4, 'defecto'),
(14, 'ajuste por saldos iniciales', '', 6, 'defecto'),
(15, 'capital social', '', 6, 'defecto'),
(16, 'ganancia acumulada', '', 6, 'defecto'),
(17, '100 - transportes mascotas', '', 1, 'defecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorizacion_rama3`
--

CREATE TABLE `categorizacion_rama3` (
  `id_categorizacion_rama3` int(11) NOT NULL,
  `titulo_categorizacion_rama3` text NOT NULL,
  `descripcion_categorizacion_rama3` varchar(20) NOT NULL,
  `id_categorizacion_rama2` int(11) NOT NULL,
  `estado_categorizacion_rama3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorizacion_rama3`
--

INSERT INTO `categorizacion_rama3` (`id_categorizacion_rama3`, `titulo_categorizacion_rama3`, `descripcion_categorizacion_rama3`, `id_categorizacion_rama2`, `estado_categorizacion_rama3`) VALUES
(2, 'deudores comerciales y otras cuentas por cobrar', '', 1, 'defecto'),
(3, 'efectivo y equivalentes de efectivo', '', 1, 'defecto'),
(4, 'inventarios', '', 1, 'defecto'),
(5, 'inversiones a corto plazo', '', 1, 'defecto'),
(6, 'otos activos corrientes', '', 1, 'defecto'),
(7, 'otros activos no corrientes', '', 2, 'defecto'),
(8, 'propiedad planta y equipo(activos fijos)', '', 2, 'defecto'),
(9, 'costos de los servicios vendidos', '', 5, 'defecto'),
(10, 'costos de la mercancía vendida', '', 5, 'defecto'),
(11, 'depreciación de planta y equipo', '', 6, 'defecto'),
(12, 'deterioro de cuentas por cobrar', '', 6, 'defecto'),
(13, 'gastos de personal', '', 7, 'defecto'),
(14, 'gastos generales', '', 7, 'defecto'),
(15, 'impuestos de renta y complementarios', '', 8, 'defecto'),
(16, 'ajustes por diferencia en cambio', '', 9, 'defecto'),
(17, 'gastos financieros', '', 9, 'defecto'),
(18, 'devoluciones en ventas', '', 10, 'defecto'),
(19, 'ventas', '', 10, 'defecto'),
(20, 'ingresos financieros', '', 11, 'defecto'),
(21, 'otros ingresos diversos', '', 11, 'defecto'),
(22, 'cuentas por pagar', '', 12, 'defecto'),
(23, 'obligaciones financieras', '', 12, 'defecto'),
(24, 'obligaciones laborales y de seguridad social', '', 12, 'defecto'),
(25, 'otros pasivos corrientes', '', 12, 'defecto'),
(26, 'pasivos por impuestos corrientes', '', 12, 'defecto'),
(27, 'otros pasivos no corrientes', '', 13, 'defecto'),
(28, 'prestamos a largo plazo', '', 13, 'defecto'),
(29, 'ajuste iniciales en bancos', '', 14, 'defecto'),
(30, 'ajustes iniciales en inventarios', '', 14, 'defecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorizacion_rama4`
--

CREATE TABLE `categorizacion_rama4` (
  `id_categorizacion_rama4` int(11) NOT NULL,
  `titulo_categorizacion_rama4` text NOT NULL,
  `descripcion_categorizacion_rama4` varchar(40) NOT NULL,
  `id_categorizacion_rama3` int(11) NOT NULL,
  `estado_categorizacion_rama4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorizacion_rama4`
--

INSERT INTO `categorizacion_rama4` (`id_categorizacion_rama4`, `titulo_categorizacion_rama4`, `descripcion_categorizacion_rama4`, `id_categorizacion_rama3`, `estado_categorizacion_rama4`) VALUES
(1, 'activos por impuestos corrientes', '', 2, 'defecto'),
(2, 'avances y anticipos entregados', '', 2, 'defecto'),
(3, 'cunetas por cobrar clientes', '', 2, 'defecto'),
(4, 'otras cuentas por cobrar', '', 2, 'defecto'),
(5, 'cunetas por cobrar clientes', '', 2, 'defecto'),
(6, 'otras cuentas por cobrar', '', 2, 'defecto'),
(7, 'bancos', '', 3, 'defecto'),
(8, 'caja', '', 3, 'defecto'),
(9, 'bancos', '', 3, 'defecto'),
(10, 'caja', '', 3, 'defecto'),
(11, 'ajuste al inventario', '', 10, 'defecto'),
(12, 'costos del inventario', '', 10, 'defecto'),
(13, 'descuentos financieros', '', 10, 'defecto'),
(14, 'devoluciones en compras de inventarios', '', 10, 'defecto'),
(15, 'ajuste al inventario', '', 10, 'defecto'),
(16, 'costos del inventario', '', 10, 'defecto'),
(17, 'descuentos financieros', '', 10, 'defecto'),
(18, 'devoluciones en compras de inventarios', '', 10, 'defecto'),
(19, 'sueldos', '', 13, 'defecto'),
(21, 'arrendamientos', '', 14, 'defecto'),
(22, 'combustibles y lubricantes', '', 14, 'defecto'),
(23, 'comicion onorarios y servicios', '', 14, 'defecto'),
(24, 'otros gastos generales', '', 14, 'defecto'),
(25, 'papeleria', '', 14, 'defecto'),
(26, 'publicidad', '', 14, 'defecto'),
(27, 'seguros generales', '', 14, 'defecto'),
(28, 'servicios de aseo, cafeteria, restaurante y lavanderia', '', 14, 'defecto'),
(29, 'servicios publicos', '', 14, 'defecto'),
(30, 'vigilancia', '', 14, 'defecto'),
(31, 'arrendamientos', '', 14, 'defecto'),
(32, 'combustibles y lubricantes', '', 14, 'defecto'),
(33, 'comicion onorarios y servicios', '', 14, 'defecto'),
(34, 'otros gastos generales', '', 14, 'defecto'),
(35, 'papeleria', '', 14, 'defecto'),
(36, 'publicidad', '', 14, 'defecto'),
(41, 'avances y anticipos resibidos', '', 22, 'defecto'),
(42, 'cuentas por pagar a proveedores', '', 22, 'defecto'),
(43, 'otras cuenta por pagar', '', 22, 'defecto'),
(44, 'avances y anticipos resibidos', '', 22, 'defecto'),
(45, 'cuentas por pagar a proveedores', '', 22, 'defecto'),
(46, 'otras cuenta por pagar', '', 22, 'defecto'),
(47, 'targeta de credito', '', 23, 'defecto'),
(48, 'targeta de credito', '', 23, 'defecto'),
(49, 'salarios y prestaciones sociales', '', 24, 'defecto'),
(50, 'salarios y prestaciones sociales', '', 24, 'defecto'),
(51, 'impuestos por pagar', '', 26, 'defecto'),
(52, 'retenciones por pagar', '', 26, 'defecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorizacion_rama5`
--

CREATE TABLE `categorizacion_rama5` (
  `id_categorizacion_rama5` int(11) NOT NULL,
  `titulo_categorizacion_rama5` text NOT NULL,
  `descripcion_categorizacion_rama5` varchar(40) NOT NULL,
  `id_categorizacion_rama4` int(11) NOT NULL,
  `estado_categorizacion_rama5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorizacion_rama5`
--

INSERT INTO `categorizacion_rama5` (`id_categorizacion_rama5`, `titulo_categorizacion_rama5`, `descripcion_categorizacion_rama5`, `id_categorizacion_rama4`, `estado_categorizacion_rama5`) VALUES
(1, 'impuestos a favor', '', 1, 'defecto'),
(2, 'retenciones a favor', '', 1, ''),
(3, 'cuentas por cobrar empleados', '', 4, 'defecto'),
(4, 'devoluciones a proveedores', '', 4, ''),
(5, 'prestamos a terceros', '', 4, 'defecto'),
(9, 'bancos 1', '', 7, 'defecto'),
(11, 'caja general', '', 8, 'defecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorizacion_rama6`
--

CREATE TABLE `categorizacion_rama6` (
  `id_categorizacion_rama6` int(11) NOT NULL,
  `titulo_categorizacion_rama6` text NOT NULL,
  `descripcion_categorizacion_rama6` varchar(30) NOT NULL,
  `id_categorizacion_rama5` int(11) NOT NULL,
  `estado_categorizacion_rama6` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorizacion_rama6`
--

INSERT INTO `categorizacion_rama6` (`id_categorizacion_rama6`, `titulo_categorizacion_rama6`, `descripcion_categorizacion_rama6`, `id_categorizacion_rama5`, `estado_categorizacion_rama6`) VALUES
(1, 'anticipos o saldos a favor del impuesto de indus', '', 1, 'defecto'),
(2, 'impuesto a las ventas a favor', '', 1, 'defecto'),
(3, 'inpuesto de industria y comercio retenido', '', 2, 'defecto'),
(4, 'retencion de impuestos a las ventas a favor', '', 2, 'defecto'),
(5, 'retencion en la fuente a favor', '', 2, 'defecto'),
(6, 'inpuesto de industria y comercio retenido', '', 2, 'defecto'),
(7, 'retencion de impuestos a las ventas a favor', '', 2, 'defecto'),
(8, 'retencion en la fuente a favor', '', 2, 'defecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `identificacion_cliente` int(11) NOT NULL,
  `nacionalidad_cliente` text NOT NULL,
  `nombre_cliente` text NOT NULL,
  `apellido_cliente` text NOT NULL,
  `correo_cliente` varchar(60) NOT NULL,
  `edad_cliente` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion_cliente` varchar(60) NOT NULL,
  `telefono_cliente` int(11) NOT NULL,
  `estrato` int(1) NOT NULL,
  `hora_registro` time NOT NULL,
  `fecha_registro` date NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `identificacion_cliente`, `nacionalidad_cliente`, `nombre_cliente`, `apellido_cliente`, `correo_cliente`, `edad_cliente`, `fecha_nacimiento`, `direccion_cliente`, `telefono_cliente`, `estrato`, `hora_registro`, `fecha_registro`, `identificacion_usuario`) VALUES
(10, 101, 'colombia', 'juan gomez', 'palacios', '', 10, '0000-00-00', '', 0, 0, '00:00:00', '0000-00-00', 1010),
(11, 345, 'colombiano', 'javier buitrago', 'dfdgggfg', 'ingjavier', 234, '2018-04-04', 'jajaj', 1212, 3, '00:00:00', '2018-04-11', 1010),
(13, 349, 'colo', 'mauricio', 'gonzalez', 'faffdf', 23, '2018-04-05', 'jajaj', 23, 3, '00:00:00', '2018-04-12', 1010),
(14, 45566, 'colombiano', 'mendoza', 'ortega', 'ffff', 23, '2018-04-05', 'qq', 1212, 3, '00:00:00', '2018-04-12', 1010),
(15, 88243, 'venezuela', 'albeiro', '', 'ingjavier', 32, '2018-04-13', 'jajaj', 23, 3, '00:00:00', '2018-04-13', 1010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuraciones`
--

CREATE TABLE `configuraciones` (
  `id_configuracion` int(11) NOT NULL,
  `conf_factura` text NOT NULL,
  `conf_cotizacion` text NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuraciones`
--

INSERT INTO `configuraciones` (`id_configuracion`, `conf_factura`, `conf_cotizacion`, `identificacion_usuario`) VALUES
(1, '', 'simple', 1010),
(2, '', 'simple', 11),
(3, '', 'simple', 10234563);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE `cotizaciones` (
  `id_cotizacion` int(11) NOT NULL,
  `cod_cotizacion` varchar(20) NOT NULL,
  `cliente_cotizacion` int(11) NOT NULL,
  `observaciones_cotizacion` varchar(255) NOT NULL,
  `notas_cotizacion` varchar(255) NOT NULL,
  `fecha_cotizacion` varchar(10) NOT NULL,
  `vencimiento_cotizacion` varchar(10) NOT NULL,
  `vendedor_cotizacion` text NOT NULL,
  `precio_unitario` double NOT NULL,
  `precio_total` double NOT NULL,
  `impuesto_cotizacion` varchar(10) NOT NULL,
  `cantidad_cotizacion` varchar(10) NOT NULL,
  `hora_cotizacion` varchar(10) NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL,
  `tipo_cotizacion` text NOT NULL,
  `producto_cotizacion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cotizaciones`
--

INSERT INTO `cotizaciones` (`id_cotizacion`, `cod_cotizacion`, `cliente_cotizacion`, `observaciones_cotizacion`, `notas_cotizacion`, `fecha_cotizacion`, `vencimiento_cotizacion`, `vendedor_cotizacion`, `precio_unitario`, `precio_total`, `impuesto_cotizacion`, `cantidad_cotizacion`, `hora_cotizacion`, `identificacion_usuario`, `tipo_cotizacion`, `producto_cotizacion`) VALUES
(13, '', 3232, '', '', '2018-Jan-1', '', '', 0, 0, '', '', '00:10:10', 11, '', ''),
(1, '101', 6, 'jhioh', 'hioho', '2017-Dec-3', '2017-12-20', 'pedro', 100, 200, '1.2', '2', '03:13:59', 11, '', ''),
(5, '102', 0, 'nuevas hbdyuqwgd', 'notas bastas', '2017-Dec-3', '2016-11-28', 'pablo garcias', 90000, 900000, '6', '10', '03:28:36', 11, '', ''),
(33, '10201902', 1245455, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', '2018-Jan-1', '', '', 0, 0, '', '14', '23:50:29', 10234563, '', '4545'),
(8, '1112', 1892, 'estas son las observaciones', 'estas son las notas', '2018-Jan-1', '2018-01-21', 'soy el vendedor', 10000, 90000, '', '9', '20:29:46', 1010, '', ''),
(9, '1113', 1892, '', '', '2018-Jan-1', '', '', 0, 0, '', '', '20:48:39', 1010, '', ''),
(10, '1114', 1028736478, '', '', '2018-Jan-1', '', '', 0, 0, '', '', '21:24:53', 1010, '', ''),
(11, '1115', 1028736478, 'observaciones', 'notas de la coti', '2018-Jan-1', '2018-01-21', 'juna', 100000, 200000, '1%', '2', '23:08:02', 1010, '', ''),
(12, '1116', 1892, '', '', '2018-Jan-1', '2018-01-28', '', 0, 0, '', '', '23:39:44', 1010, '', ''),
(17, '1117', 3232, '', '', '2018-Jan-1', '', '', 0, 0, '', '', '00:14:51', 11, '', ''),
(18, '1118', 1028736478, 'qqqqqqqqqqqqqqqqqqqqq', 'qqqqq', '2018-Jan-1', '', 'qqqqqqqqqqqqqq', 0, 0, '', '', '00:16:03', 1010, '', ''),
(19, '1119', 1892, 'swsw', 'swsw', '2018-Jan-1', '', 'sw', 0, 0, '', '', '00:17:05', 1010, '', ''),
(21, '1120', 198237271, 'estas observaciones son de prueba para esta cotizacion', '', '2018-Jan-1', '2018-01-16', '', 0, 0, '', '6', '23:35:42', 1010, '', ''),
(23, '1121', 1892, '', '', '2018-Jan-1', '', '', 0, 0, '', '', '00:43:01', 11, '', ''),
(24, '1122', 112121212, '', '', '2018-Jan-1', '', '', 0, 0, '', '6', '00:47:23', 11, '', ''),
(27, '1124', 1892, '', '', '2018-Jan-1', '', '', 0, 0, '', '12', '00:57:57', 1010, '', ''),
(16, '123456', 3232, '', '', '2018-Jan-1', '', '', 0, 0, '', '', '00:14:36', 11, '', ''),
(3, '129', 0, 'la que desee', 'buenas', '2017-Dec-3', '2015-11-30', 'pedro ramon', 10000, 30000, '1%', '3', '03:20:53', 11, '', ''),
(30, '1293', 198237271, 'qwesdsd111111111111', '', '2018-Jan-1', '2018-01-20', '', 0, 0, '10%', '6', '22:38:11', 1010, '', '123273827888'),
(31, '1998', 198237271, 'en este momento no hay observaciones', 'sin notas', '2018-Jan-1', '2018-01-20', '', 0, 0, '', '19', '23:03:13', 1010, '', '123273827888'),
(29, '2020', 1892, 'dsd', '', '2018-Jan-1', '2018-01-12', '', 0, 0, '', '5', '22:34:25', 1010, '', ''),
(34, '988', 198237271, 'ninguna', 'ninguna', '2018-Mar-1', '2018-03-12', '', 0, 0, '', '16', '09:31:36', 1010, '', '0012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id_descuento` int(11) NOT NULL,
  `descuento` float NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`id_descuento`, `descuento`, `id_usuario`) VALUES
(5, 1.1, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `identificacion_empleado` int(10) NOT NULL,
  `nombre_empleado` text NOT NULL,
  `apellido_empleado` text NOT NULL,
  `fecha_nacimiento` varchar(40) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `salario` double NOT NULL,
  `edad` int(11) NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `identificacion_empleado`, `nombre_empleado`, `apellido_empleado`, `fecha_nacimiento`, `fecha_ingreso`, `cargo`, `salario`, `edad`, `identificacion_usuario`) VALUES
(1, 109234567, 'camila', 'fernandez', '2012-01-10', '0000-00-00', 'cagera', 1.8, 23, 10234563);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `numeracion` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `notas` varchar(200) NOT NULL,
  `fecha` varchar(14) NOT NULL,
  `vencimiento` varchar(14) NOT NULL,
  `plazo` varchar(15) NOT NULL,
  `bodega` varchar(30) NOT NULL,
  `id_entrada` int(11) NOT NULL,
  `tipo_entrada` varchar(20) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `subtotal` double NOT NULL,
  `descuentoTotal` double NOT NULL,
  `subtotalDescuento` double NOT NULL,
  `totalTotal` double NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`numeracion`, `numero`, `notas`, `fecha`, `vencimiento`, `plazo`, `bodega`, `id_entrada`, `tipo_entrada`, `fecha_entrada`, `hora_entrada`, `subtotal`, `descuentoTotal`, `subtotalDescuento`, `totalTotal`, `id_cliente`) VALUES
(111111, 99, '', '', '', '', 'principal', 55, 'factura recurrente', '2018-04-13', '03:12:09', 0, 0, 0, 0, 10),
(12, 1212, '', '2018-04-12', '2018-04-19', '', 'principal', 56, 'factura recurrente', '2018-04-13', '03:17:41', 0, 0, 0, 0, 10),
(12, 12124, '', '', '', '8 dias', 'principal', 57, 'factura recurrente', '2018-04-14', '05:31:26', 0, 0, 0, 0, 14),
(12, 12124, '', '', '', '8 dias', 'principal', 58, 'factura recurrente', '2018-04-14', '05:32:24', 0, 0, 0, 0, 14),
(12, 12124, '', '', '', 'Contado', 'principal', 59, 'factura recurrente', '2018-04-14', '05:41:47', 0, 0, 0, 0, 13),
(12, 12124, '', '', '', 'Contado', 'principal', 60, 'factura recurrente', '2018-04-14', '05:42:41', 0, 0, 0, 0, 13),
(12, 12124, '', '', '', 'Contado', 'principal', 61, 'factura recurrente', '2018-04-14', '05:43:12', 0, 0, 0, 0, 13),
(12, 12124, '', '', '', 'Contado', 'principal', 62, 'factura recurrente', '2018-04-14', '05:43:56', 0, 0, 0, 0, 13),
(12, 12124, '', '', '', 'Contado', 'principal', 63, 'factura recurrente', '2018-04-14', '05:44:12', 0, 0, 0, 0, 13),
(12, 12124, '', '', '', 'Contado', 'principal', 64, 'factura recurrente', '2018-04-14', '05:44:32', 0, 0, 0, 0, 13),
(12, 12124, '', '', '', 'Contado', 'principal', 65, 'factura recurrente', '2018-04-14', '05:44:59', 0, 0, 0, 0, 13),
(12, 333, '', '2018-04-14', '2018-04-14', 'Contado', 'principal', 66, 'factura recurrente', '2018-04-14', '06:04:01', 122, 122, 1333, 15, 122),
(12, 12124, '', '2018-04-21', '2018-04-14', 'Contado', 'principal', 67, 'factura recurrente', '2018-04-14', '10:07:46', 0, 0, 0, 11, 0),
(12, 12124, '', '', '', '8 dias', 'principal', 68, 'factura recurrente', '2018-04-15', '20:17:48', 1222, 12213, 122233, 10, 1233),
(31, 1212, '', '2018-04-16', '2018-04-19', '30 dias', 'principal', 69, 'factura recurrente', '2018-04-16', '07:32:26', 111, 111, 1112, 15, 112),
(15, 1212, '', '2018-04-16', '2018-04-19', '30 dias', 'principal', 70, 'factura recurrente', '2018-04-16', '07:33:58', 111, 111, 1112, 15, 112),
(16, 12124, '', '', '', 'Contado', 'principal', 71, 'factura recurrente', '2018-04-16', '08:17:05', 1222, 12213, 122233, 11, 1233),
(31, 12124, '', '2018-12-31', '2017-11-30', 'Contado', 'principal', 72, 'factura recurrente', '2018-04-17', '17:54:23', 1222, 1212, 1644, 13, 1222),
(31, 12124, '', '', '', 'Contado', 'principal', 73, 'factura recurrente', '2018-04-17', '18:04:23', 0, 0, 1644, 15, 0),
(12, 12124, '', '', '', 'Contado', 'principal', 74, 'factura recurrente', '2018-04-17', '18:09:55', 0, 0, 1644, 15, 0),
(12, 12124, '', '', '', 'Contado', 'principal', 75, 'factura recurrente', '2018-04-17', '18:10:03', 0, 0, 1644, 15, 0),
(12, 12124, '', '', '', 'Contado', 'principal', 76, 'factura recurrente', '2018-04-17', '18:10:05', 0, 0, 1644, 15, 0),
(12, 12124, '', '', '', 'Contado', 'principal', 77, 'factura recurrente', '2018-04-17', '18:20:48', 0, 0, 1644, 15, 0),
(12, 12, '', '', '', 'Contado', 'principal', 78, 'factura recurrente', '2018-04-17', '18:26:42', 0, 0, 0, 15, 0),
(12, 12124, '', '', '', 'Contado', 'principal', 79, 'factura recurrente', '2018-04-17', '18:31:20', 0, 0, 0, 15, 0),
(12, 12124, '', '', '', 'Contado', 'principal', 80, 'factura recurrente', '2018-04-17', '20:09:17', 0, 0, 0, 10, 0),
(1, 1, '', '2018-04-17', '2018-04-24', '8 dias', 'principal', 81, 'factura recurrente', '2018-04-17', '20:10:00', 0, 0, 0, 15, 0),
(99999, 0, '', '', '', 'Contado', 'principal', 82, 'factura recurrente', '2018-04-17', '20:15:23', 0, 0, 0, 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id_gasto` int(11) NOT NULL,
  `nombre_gasto` varchar(30) NOT NULL,
  `descripcion_gasto` varchar(500) NOT NULL,
  `cantidad_gasto` int(11) NOT NULL,
  `fecha_gasto` date NOT NULL,
  `hora_gasto` time NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id_gasto`, `nombre_gasto`, `descripcion_gasto`, `cantidad_gasto`, `fecha_gasto`, `hora_gasto`, `identificacion_usuario`) VALUES
(2, 'videojuegos', 'compro 2 videojuegos', 4000, '2013-01-15', '12:00:00', 1010),
(24, 'magazin', 'se compraron 10 maga', 30000, '2013-01-01', '01:00:31', 11),
(25, 'baldosa', 'se compraron 10 valdosas', 20000, '2013-01-01', '01:00:38', 11),
(26, 'maron', 'se compro m', 50000, '2013-01-01', '01:00:16', 11),
(27, 'modas', 'se compraron camisas para la empresa', 250000, '2013-01-01', '01:00:17', 11),
(28, 'papeleria', 'se gasto un promedio de 10% en papeleria', 10000, '2013-01-01', '12:00:50', 10234563);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inpuestos`
--

CREATE TABLE `inpuestos` (
  `id_inpuesto` int(11) NOT NULL,
  `inpuesto` float NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inpuestos`
--

INSERT INTO `inpuestos` (`id_inpuesto`, `inpuesto`, `id_usuario`) VALUES
(1, 11, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id_inventario` int(11) NOT NULL,
  `codigo_inventario` int(11) NOT NULL,
  `nombre_inventario` varchar(30) NOT NULL,
  `fecha_inventario` date NOT NULL,
  `hora_inventario` time NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(90) NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL,
  `categoria_inventario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id_inventario`, `codigo_inventario`, `nombre_inventario`, `fecha_inventario`, `hora_inventario`, `estado`, `cantidad`, `precio`, `imagen`, `identificacion_usuario`, `categoria_inventario`) VALUES
(28, 120, 'pruebas', '2013-01-01', '11:01:14', 'malo', 129, 9820, 'Jellyfish.jpg', 1010, 'yogur'),
(29, 123, 'bases de gaseosa', '2013-01-01', '12:01:45', 'bueno', 9, 1, 'Hydrangeas.jpg', 1010, 'lacteos'),
(30, 1023, 'repuestos ', '2013-01-01', '02:01:05', 'bueno', 10, 10, 'index-Register.png', 1010, 'gaseosas'),
(31, 1929, 'Repelentes', '2013-01-01', '02:01:25', 'bueno', 2, 9, 'index-Register.png', 1010, 'maltin'),
(39, 1203, 'mercado', '2013-01-01', '02:01:01', 'bueno', 3, 3, 'coleccion-de-logos-de-fitness_1324-62.jpg', 11, 'manzanas'),
(41, 192, 'arrtefactos Tecnologicos', '2013-01-01', '03:01:45', 'bueno', 18, 18, 'Ejercicios-que-mejoran-la-resistencia-muscular.jpg', 11, 'pescados'),
(88, 192, 'salud', '2013-01-01', '12:01:54', 'malo', 3, 3, 'Chrysanthemum.jpg', 10234563, 'salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios_item`
--

CREATE TABLE `inventarios_item` (
  `id_inventario_item` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `referencia` varchar(20) NOT NULL,
  `precio_venta` float NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `impuesto` varchar(10) NOT NULL,
  `id_categoria_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_factura`
--

CREATE TABLE `item_factura` (
  `id_item_factura` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `referencia` varchar(30) NOT NULL,
  `precio_unitario` double NOT NULL,
  `descuento` float NOT NULL,
  `impuesto` float NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` double NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_entrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item_factura`
--

INSERT INTO `item_factura` (`id_item_factura`, `item`, `referencia`, `precio_unitario`, `descuento`, `impuesto`, `descripcion`, `cantidad`, `total`, `fecha`, `hora`, `id_entrada`) VALUES
(12, 'pelas', '2323', 23333, 12, 14, 'wewrr', 11, 12222222, '2018-04-12', '00:00:00', 47),
(13, 'INSERTAR', '344', 1000, 10, 10, '78yy', 12, 78888, '2018-04-13', '03:09:55', 53),
(14, '1', '344', 1000, 10, 10, 'des', 12, 78888, '2018-04-13', '03:12:09', 55),
(15, '3', '344', 1000, 10, 10, 'des', 12, 123455, '2018-04-13', '03:12:09', 55),
(16, '0', '000', 0, 0, 0, '000', 0, 0, '2018-04-13', '03:17:41', 56),
(17, '1', '1', 1, 1, 1, '11', 1, 1, '2018-04-13', '03:17:41', 56),
(18, '12:31', '344', 1000, 10, 10, 'des', 12, 78888, '2018-04-14', '05:32:24', 58),
(19, '12:35', '344', 1000, 78, 1212, 'des', 12, 78888, '2018-04-14', '05:43:12', 61),
(20, '12:36', '', 121, 78, 1212, 'des', 12, 78888, '2018-04-14', '05:44:12', 63),
(21, '12:36', '', 121, 10, 1212, '', 12, 78888, '2018-04-14', '05:44:59', 65),
(22, 'INSERTAR', '', 1000, 10, 10, '', 12, 78888, '2018-04-14', '06:04:01', 66),
(23, 'pilas', '', 1000, 10, 10, 'des', 12, 78888, '2018-04-14', '10:07:46', 67),
(24, '15:35', '344', 1000, 10, 10, 'des', 12, 78888, '2018-04-15', '20:17:48', 68),
(25, '2:20', '344', 1000, 10, 10, 'des', 12, 78888, '2018-04-16', '07:20:41', 68),
(26, '2:20', '344', 1000, 10, 10, 'des', 12, 78888, '2018-04-16', '07:26:01', 68),
(27, '2:22', '344', 1000, 10, 10, 'des', 12, 78888, '2018-04-16', '07:26:01', 68),
(28, 'pilas', '', 121, 10, 10, 'des', 12, 78888, '2018-04-16', '07:32:26', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `id_material` int(11) NOT NULL,
  `nombre_material` text NOT NULL,
  `tipo_material` text NOT NULL,
  `valor_material` double NOT NULL,
  `marca_material` varchar(20) NOT NULL,
  `cantidad_material` int(11) NOT NULL,
  `hora_registro` time NOT NULL,
  `fecha_registro` date NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`id_material`, `nombre_material`, `tipo_material`, `valor_material`, `marca_material`, `cantidad_material`, `hora_registro`, `fecha_registro`, `identificacion_usuario`) VALUES
(2, 'tigeras', 'papeleria', 2000, 'corta', 5, '00:00:01', '2013-01-01', 10234563),
(4, 'acrilico', 'pintura', 50000, 'pintuco', 10, '00:00:01', '2013-01-01', 1010),
(5, 'acrilico', 'pintura', 40000, 'pintuco', 10, '00:00:01', '2013-01-01', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numeraciones`
--

CREATE TABLE `numeraciones` (
  `id_numeracion` int(11) NOT NULL,
  `nombre_numeracion` varchar(30) NOT NULL,
  `preferida` text NOT NULL,
  `estado` text NOT NULL,
  `resolucion` varchar(50) NOT NULL,
  `prefijo` text NOT NULL,
  `siguiente_numero` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `identificacion_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `numeraciones`
--

INSERT INTO `numeraciones` (`id_numeracion`, `nombre_numeracion`, `preferida`, `estado`, `resolucion`, `prefijo`, `siguiente_numero`, `tipo`, `identificacion_usuario`) VALUES
(1, 'xboxxs', '14', 'activo', '98', 'o', 19, 'numeracion factura de venta', 1010),
(2, 'wq', '1', 'activo', '123', 'a', 1, 'numeracion factura de venta', 1010),
(3, 'no', '0', 'activo', '12333', 's', 12, 'numeracion factura de venta', 1010),
(4, '2', '0', 'activo', '111', 'd', 1, 'numeracion factura de venta', 1010),
(5, '2', '0', 'activo', '222', 'r', 4, 'numeracion factura de venta', 1010),
(7, '12', 'no', 'activo', '2', '2', 1, 'numeracion factura de venta', 1010),
(8, '12brd', 'si', 'activo', '12312312312', 'e', 1, 'numeracion factura de venta', 1010),
(9, 'nn', 'si', 'activo', '21213', 'e', 1, 'numeracion factura de venta', 1010),
(10, 'nueva', 'si', 'activo', '1213213 2018', 'e', 10, 'numeracion factura de venta', 1010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numeraciones_generales`
--

CREATE TABLE `numeraciones_generales` (
  `id_numeracion_general` int(11) NOT NULL,
  `numeracion_resibo_caja` int(11) NOT NULL,
  `numeracion_comprobante_pago` int(11) NOT NULL,
  `numeracion_nota_credito` int(11) NOT NULL,
  `numeracion_remicion` int(11) NOT NULL,
  `numeracion_cotizacion` int(11) NOT NULL,
  `numeracion_orden_compra` int(11) NOT NULL,
  `estado_registro` text NOT NULL,
  `identificacion_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `numeraciones_generales`
--

INSERT INTO `numeraciones_generales` (`id_numeracion_general`, `numeracion_resibo_caja`, `numeracion_comprobante_pago`, `numeracion_nota_credito`, `numeracion_remicion`, `numeracion_cotizacion`, `numeracion_orden_compra`, `estado_registro`, `identificacion_usuario`) VALUES
(7, 555, 3, 2147483647, 13454542, 1, 1, 'activo', 1010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plazos`
--

CREATE TABLE `plazos` (
  `id_plazo` int(11) NOT NULL,
  `nombre_plazo` varchar(20) NOT NULL,
  `dias_plazo` int(20) NOT NULL,
  `identificacion_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plazos`
--

INSERT INTO `plazos` (`id_plazo`, `nombre_plazo`, `dias_plazo`, `identificacion_usuario`) VALUES
(6, 'nuevo plazo', 15, 1010),
(7, '', 0, 1010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `cod_producto` varchar(20) NOT NULL,
  `nombre_producto` text NOT NULL,
  `descripcion_producto` varchar(200) NOT NULL,
  `precio_producto` double NOT NULL,
  `fecha_producto` date NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `cod_producto`, `nombre_producto`, `descripcion_producto`, `precio_producto`, `fecha_producto`, `identificacion_usuario`) VALUES
(7, '119', '7832hd', 'jduehd', 6734, '2018-01-16', 11),
(8, '109', 'uu', 'uu', 12000, '2018-01-16', 1010),
(9, '118', 'este es nuevo', 'nuevo es este', 19000, '2018-01-16', 11),
(10, '123273827888', '88', '88', 18400, '2018-01-16', 1010),
(11, '0012', 'porcelana', 'porcelana de landino', 16000, '2018-01-18', 1010),
(12, '4545', 'balones', 'bellos balones', 56000, '2018-01-18', 10234563);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `identificacion_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(40) NOT NULL,
  `tipo_proveedor` text NOT NULL,
  `producto_provee` varchar(30) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` int(11) NOT NULL,
  `valor_producto` double NOT NULL,
  `identificacion_usuario` int(11) DEFAULT NULL,
  `hora_registro` time NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `identificacion_proveedor`, `nombre_proveedor`, `tipo_proveedor`, `producto_provee`, `direccion`, `telefono`, `valor_producto`, `identificacion_usuario`, `hora_registro`, `fecha_registro`) VALUES
(5, 1982763, 'juan manuel', 'Empresa', 'chocoltes jet', 'avenida 3 cucuta aeropuerto', 32198474, 300, 11, '00:00:01', '2013-01-01'),
(6, 1988827, 'panela.sas', 'Empresa', 'panela', 'bucaramanga', 5765347, 2000, 1010, '00:00:09', '2018-03-11'),
(4, 2147483647, 's', 'Empresa', 'ers', 'sjs', 332, 20000, 10234563, '00:00:02', '2013-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_provee`
--

CREATE TABLE `user_provee` (
  `identificacion_usuario` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `nombre_empresa` varchar(30) NOT NULL,
  `id_negocio` varchar(30) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `numero_contacto` int(10) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `imagen_empresa` varchar(90) NOT NULL,
  `nacionalidad` text NOT NULL,
  `cargo` text NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` int(11) NOT NULL,
  `website_link` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `identificacion`, `nombre_empresa`, `id_negocio`, `correo`, `numero_contacto`, `usuario`, `clave`, `nombre`, `apellido`, `imagen_empresa`, `nacionalidad`, `cargo`, `direccion`, `telefono`, `website_link`) VALUES
(4, 0, '', '', 'is@', 0, 'is', 'is', '', '', '', '', '', '', 0, ''),
(2, 11, '', '', '', 0, 'admin', 'admin', 'admin', 'admin', 'fondo-inspirador-con-chico-en-un-gimnasio_23-2147597734.jpg', 'admin', 'admin', 'admin', 11, ''),
(1, 1010, 'empresaBd', 'negocioBd', 'inst@unn.com', 3245464, 'brayan', 'brayan', 'brayan', 'duarte', 'logo.png', 'colombia', 'desarrollador de software', 'barrio navarro wolf parte alta', 2147483647, 'sin web'),
(3, 10234563, 'BrayanDev', 'lo mejor en desarrollo', 'brayanDev@brayanDev.com', 321565321, 'isadmin', 'isadmin', 'admin_user', 'a_u', 'isadmin.png', 'colombia', 'ful stack developer', 'barrio navarro', 2147483647, 'sfre@osjdue,oc.comeo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autocomplete`
--
ALTER TABLE `autocomplete`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `categorias_item`
--
ALTER TABLE `categorias_item`
  ADD PRIMARY KEY (`id_categoria_item`),
  ADD KEY `id_categoria` (`id_categorizacion_rama6`),
  ADD KEY `id_categorizacion_rama5` (`id_categorizacion_rama6`);

--
-- Indices de la tabla `categorizacion_rama2`
--
ALTER TABLE `categorizacion_rama2`
  ADD PRIMARY KEY (`id_categorizacion_rama2`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `categorizacion_rama3`
--
ALTER TABLE `categorizacion_rama3`
  ADD PRIMARY KEY (`id_categorizacion_rama3`),
  ADD KEY `id_categorizacion_rama2` (`id_categorizacion_rama2`),
  ADD KEY `id_categorizacion_rama2_2` (`id_categorizacion_rama2`);

--
-- Indices de la tabla `categorizacion_rama4`
--
ALTER TABLE `categorizacion_rama4`
  ADD PRIMARY KEY (`id_categorizacion_rama4`),
  ADD KEY `id_categorizacion_rama3` (`id_categorizacion_rama3`);

--
-- Indices de la tabla `categorizacion_rama5`
--
ALTER TABLE `categorizacion_rama5`
  ADD PRIMARY KEY (`id_categorizacion_rama5`),
  ADD KEY `id_categorizacion_rama4` (`id_categorizacion_rama4`);

--
-- Indices de la tabla `categorizacion_rama6`
--
ALTER TABLE `categorizacion_rama6`
  ADD PRIMARY KEY (`id_categorizacion_rama6`),
  ADD KEY `id_categorizacion_rama5` (`id_categorizacion_rama5`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`identificacion_cliente`),
  ADD UNIQUE KEY `id_cliente` (`id_cliente`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  ADD UNIQUE KEY `id_configuracion` (`id_configuracion`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD PRIMARY KEY (`cod_cotizacion`),
  ADD UNIQUE KEY `id_cotizacion` (`id_cotizacion`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id_descuento`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`identificacion_empleado`),
  ADD UNIQUE KEY `id_empleado` (`id_empleado`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id_entrada`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id_gasto`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `inpuestos`
--
ALTER TABLE `inpuestos`
  ADD PRIMARY KEY (`id_inpuesto`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `inventarios_item`
--
ALTER TABLE `inventarios_item`
  ADD PRIMARY KEY (`id_inventario_item`),
  ADD KEY `id_categoria_item` (`id_categoria_item`);

--
-- Indices de la tabla `item_factura`
--
ALTER TABLE `item_factura`
  ADD PRIMARY KEY (`id_item_factura`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `numeraciones`
--
ALTER TABLE `numeraciones`
  ADD PRIMARY KEY (`id_numeracion`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `numeraciones_generales`
--
ALTER TABLE `numeraciones_generales`
  ADD PRIMARY KEY (`id_numeracion_general`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `plazos`
--
ALTER TABLE `plazos`
  ADD PRIMARY KEY (`id_plazo`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`identificacion_proveedor`),
  ADD UNIQUE KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `identificacion_usuario` (`identificacion_usuario`);

--
-- Indices de la tabla `user_provee`
--
ALTER TABLE `user_provee`
  ADD KEY `identificacion_usuario` (`identificacion_usuario`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`identificacion`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autocomplete`
--
ALTER TABLE `autocomplete`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `categorias_item`
--
ALTER TABLE `categorias_item`
  MODIFY `id_categoria_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `categorizacion_rama2`
--
ALTER TABLE `categorizacion_rama2`
  MODIFY `id_categorizacion_rama2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `categorizacion_rama3`
--
ALTER TABLE `categorizacion_rama3`
  MODIFY `id_categorizacion_rama3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `categorizacion_rama4`
--
ALTER TABLE `categorizacion_rama4`
  MODIFY `id_categorizacion_rama4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `categorizacion_rama5`
--
ALTER TABLE `categorizacion_rama5`
  MODIFY `id_categorizacion_rama5` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `categorizacion_rama6`
--
ALTER TABLE `categorizacion_rama6`
  MODIFY `id_categorizacion_rama6` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  MODIFY `id_configuracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  MODIFY `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id_descuento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id_entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id_gasto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `inpuestos`
--
ALTER TABLE `inpuestos`
  MODIFY `id_inpuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `inventarios_item`
--
ALTER TABLE `inventarios_item`
  MODIFY `id_inventario_item` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `item_factura`
--
ALTER TABLE `item_factura`
  MODIFY `id_item_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `numeraciones`
--
ALTER TABLE `numeraciones`
  MODIFY `id_numeracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `numeraciones_generales`
--
ALTER TABLE `numeraciones_generales`
  MODIFY `id_numeracion_general` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `plazos`
--
ALTER TABLE `plazos`
  MODIFY `id_plazo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorias_item`
--
ALTER TABLE `categorias_item`
  ADD CONSTRAINT `categorias_item_ibfk_1` FOREIGN KEY (`id_categorizacion_rama6`) REFERENCES `categorizacion_rama6` (`id_categorizacion_rama6`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorizacion_rama2`
--
ALTER TABLE `categorizacion_rama2`
  ADD CONSTRAINT `categorizacion_rama2_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorizacion_rama3`
--
ALTER TABLE `categorizacion_rama3`
  ADD CONSTRAINT `categorizacion_rama3_ibfk_1` FOREIGN KEY (`id_categorizacion_rama2`) REFERENCES `categorizacion_rama2` (`id_categorizacion_rama2`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorizacion_rama4`
--
ALTER TABLE `categorizacion_rama4`
  ADD CONSTRAINT `categorizacion_rama4_ibfk_1` FOREIGN KEY (`id_categorizacion_rama3`) REFERENCES `categorizacion_rama3` (`id_categorizacion_rama3`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorizacion_rama5`
--
ALTER TABLE `categorizacion_rama5`
  ADD CONSTRAINT `categorizacion_rama5_ibfk_1` FOREIGN KEY (`id_categorizacion_rama4`) REFERENCES `categorizacion_rama4` (`id_categorizacion_rama4`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorizacion_rama6`
--
ALTER TABLE `categorizacion_rama6`
  ADD CONSTRAINT `categorizacion_rama6_ibfk_1` FOREIGN KEY (`id_categorizacion_rama5`) REFERENCES `categorizacion_rama5` (`id_categorizacion_rama5`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  ADD CONSTRAINT `configuraciones_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD CONSTRAINT `cotizaciones_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD CONSTRAINT `descuentos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `gastos_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inpuestos`
--
ALTER TABLE `inpuestos`
  ADD CONSTRAINT `inpuestos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `inventarios_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventarios_item`
--
ALTER TABLE `inventarios_item`
  ADD CONSTRAINT `inventarios_item_ibfk_1` FOREIGN KEY (`id_categoria_item`) REFERENCES `categorias_item` (`id_categoria_item`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `numeraciones`
--
ALTER TABLE `numeraciones`
  ADD CONSTRAINT `numeraciones_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `numeraciones_generales`
--
ALTER TABLE `numeraciones_generales`
  ADD CONSTRAINT `numeraciones_generales_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `plazos`
--
ALTER TABLE `plazos`
  ADD CONSTRAINT `plazos_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`identificacion_usuario`) REFERENCES `usuarios` (`identificacion`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
