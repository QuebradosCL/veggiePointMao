-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2019 a las 04:49:19
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veggie_point`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advancement`
--

CREATE TABLE `advancement` (
  `IDADVENCEMENT` int(11) NOT NULL,
  `VALUEADCENMENT` int(11) DEFAULT NULL,
  `ADVANCEMENTDESCRIPTION` varchar(650) DEFAULT NULL,
  `URLADVANCEMENT` varchar(1024) DEFAULT NULL,
  `NAMEADVANCEMENT` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `advancement`
--

INSERT INTO `advancement` (`IDADVENCEMENT`, `VALUEADCENMENT`, `ADVANCEMENTDESCRIPTION`, `URLADVANCEMENT`, `NAMEADVANCEMENT`) VALUES
(1, 12, 's', '/images/promos/8AF.jpg', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `IDCONTACT` int(11) NOT NULL,
  `EMAILCONTACT` varchar(250) DEFAULT NULL,
  `FACEBOOKCONTACT` varchar(650) DEFAULT NULL,
  `INSTAGRAM` varchar(650) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`IDCONTACT`, `EMAILCONTACT`, `FACEBOOKCONTACT`, `INSTAGRAM`) VALUES
(1, 'veggie@veggie.cl', 'facebook.com', 'instagram.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_request`
--

CREATE TABLE `delivery_request` (
  `IDREQUEST` int(11) NOT NULL,
  `IDDELIVERYREQUEST` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `information`
--

CREATE TABLE `information` (
  `CODWHO` int(11) NOT NULL,
  `WHOARE` varchar(2050) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `information`
--

INSERT INTO `information` (`CODWHO`, `WHOARE`) VALUES
(1, 'contenido...');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `ID_MENU` int(11) NOT NULL,
  `NAMEMENU` varchar(250) DEFAULT NULL,
  `MENU_VALUE` int(11) DEFAULT NULL,
  `MENU_DESCRIPTION` varchar(650) DEFAULT NULL,
  `URLMENU` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`ID_MENU`, `NAMEMENU`, `MENU_VALUE`, `MENU_DESCRIPTION`, `URLMENU`) VALUES
(1, 'menu 1', 123, 'sas', '/images/menus/7D3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_product`
--

CREATE TABLE `menu_product` (
  `ID_MENU` int(11) NOT NULL,
  `IDPRODUCT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone`
--

CREATE TABLE `phone` (
  `IDPRODUCT` int(11) NOT NULL,
  `NUMBER` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `phone`
--

INSERT INTO `phone` (`IDPRODUCT`, `NUMBER`) VALUES
(3, '56971728999'),
(4, '571458963');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `IDPRODUCT` int(11) NOT NULL,
  `NAMEPRODUCT` varchar(250) DEFAULT NULL,
  `IDTYPEPRODUCT` int(11) DEFAULT NULL,
  `DESCRIPTIONVALUE` varchar(650) DEFAULT NULL,
  `PRODUCTVALUE` int(11) DEFAULT NULL,
  `URLPRODUCT` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`IDPRODUCT`, `NAMEPRODUCT`, `IDTYPEPRODUCT`, `DESCRIPTIONVALUE`, `PRODUCTVALUE`, `URLPRODUCT`) VALUES
(1, 'producto', 1, 's', 12, '/images/products/23A.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_advancement`
--

CREATE TABLE `product_advancement` (
  `IDADVENCEMENT` int(11) NOT NULL,
  `IDPRODUCT` int(11) NOT NULL,
  `DATEADVANCEMENT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state_request`
--

CREATE TABLE `state_request` (
  `IDREQUEST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_product`
--

CREATE TABLE `type_product` (
  `IDTYPEPRODUCT` int(11) NOT NULL,
  `NAMETYPE` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `type_product`
--

INSERT INTO `type_product` (`IDTYPEPRODUCT`, `NAMETYPE`) VALUES
(1, 'type 1'),
(2, 'type 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `EMAIL_CONTACT` varchar(250) NOT NULL,
  `PASSWORD` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`EMAIL_CONTACT`, `PASSWORD`) VALUES
('developer', '12345678'),
('developer@veggie_point.com', '12345678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `advancement`
--
ALTER TABLE `advancement`
  ADD PRIMARY KEY (`IDADVENCEMENT`);

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`IDCONTACT`);

--
-- Indices de la tabla `delivery_request`
--
ALTER TABLE `delivery_request`
  ADD PRIMARY KEY (`IDREQUEST`);

--
-- Indices de la tabla `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`CODWHO`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID_MENU`);

--
-- Indices de la tabla `menu_product`
--
ALTER TABLE `menu_product`
  ADD PRIMARY KEY (`ID_MENU`,`IDPRODUCT`),
  ADD KEY `FK_PRODUCTMENUPRODUCT` (`IDPRODUCT`);

--
-- Indices de la tabla `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`IDPRODUCT`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`IDPRODUCT`),
  ADD KEY `FK_TYPEPRODUCTPRODUCT` (`IDTYPEPRODUCT`);

--
-- Indices de la tabla `product_advancement`
--
ALTER TABLE `product_advancement`
  ADD PRIMARY KEY (`IDADVENCEMENT`,`IDPRODUCT`),
  ADD KEY `FK_PRODUCTPRODUCTADVANCEMENT` (`IDPRODUCT`);

--
-- Indices de la tabla `state_request`
--
ALTER TABLE `state_request`
  ADD PRIMARY KEY (`IDREQUEST`);

--
-- Indices de la tabla `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`IDTYPEPRODUCT`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`EMAIL_CONTACT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `advancement`
--
ALTER TABLE `advancement`
  MODIFY `IDADVENCEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `IDCONTACT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `ID_MENU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phone`
--
ALTER TABLE `phone`
  MODIFY `IDPRODUCT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `IDPRODUCT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `type_product`
--
ALTER TABLE `type_product`
  MODIFY `IDTYPEPRODUCT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `delivery_request`
--
ALTER TABLE `delivery_request`
  ADD CONSTRAINT `FK_STATEREQUESTDELIVERY` FOREIGN KEY (`IDREQUEST`) REFERENCES `state_request` (`IDREQUEST`);

--
-- Filtros para la tabla `menu_product`
--
ALTER TABLE `menu_product`
  ADD CONSTRAINT `FK_MENUPRODUCT` FOREIGN KEY (`ID_MENU`) REFERENCES `menu` (`ID_MENU`),
  ADD CONSTRAINT `FK_PRODUCTMENUPRODUCT` FOREIGN KEY (`IDPRODUCT`) REFERENCES `product` (`IDPRODUCT`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_TYPEPRODUCTPRODUCT` FOREIGN KEY (`IDTYPEPRODUCT`) REFERENCES `type_product` (`IDTYPEPRODUCT`);

--
-- Filtros para la tabla `product_advancement`
--
ALTER TABLE `product_advancement`
  ADD CONSTRAINT `FK_ADVANCEMENTPRODUCTADVANCEMENT` FOREIGN KEY (`IDADVENCEMENT`) REFERENCES `advancement` (`IDADVENCEMENT`),
  ADD CONSTRAINT `FK_PRODUCTPRODUCTADVANCEMENT` FOREIGN KEY (`IDPRODUCT`) REFERENCES `product` (`IDPRODUCT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
