-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2018 a las 22:23:45
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `salud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblatencionmedica`
--

CREATE TABLE `tblatencionmedica` (
  `idatencionmedica` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblciudad`
--

CREATE TABLE `tblciudad` (
  `idciudad` bigint(20) NOT NULL,
  `ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartamento`
--

CREATE TABLE `tbldepartamento` (
  `iddepartamento` bigint(20) NOT NULL,
  `departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblenfermedades`
--

CREATE TABLE `tblenfermedades` (
  `idenfermedad` bigint(20) NOT NULL,
  `enfermedad` varchar(100) NOT NULL,
  `fechaingreso` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbleps`
--

CREATE TABLE `tbleps` (
  `ideps` bigint(20) NOT NULL,
  `eps` varchar(150) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblestadocivil`
--

CREATE TABLE `tblestadocivil` (
  `idestadocivil` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmedicamento`
--

CREATE TABLE `tblmedicamento` (
  `idmedicamento` bigint(20) NOT NULL,
  `medicamento` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmedicos`
--

CREATE TABLE `tblmedicos` (
  `idmedico` bigint(20) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `tipoidentificacion` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `fecharegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblordenmedica`
--

CREATE TABLE `tblordenmedica` (
  `idordenmedica` bigint(20) NOT NULL,
  `idpaciente` bigint(20) NOT NULL,
  `idmedico` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idmedicamento` bigint(20) NOT NULL,
  `cantidad` int(2) NOT NULL,
  `observaciones` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpacientes`
--

CREATE TABLE `tblpacientes` (
  `idpacientes` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `tipoidentificacion` varchar(50) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `eps` varchar(150) NOT NULL,
  `tiposangre` varchar(50) NOT NULL,
  `enfermedad` varchar(100) NOT NULL,
  `enfermedad2` varchar(100) NOT NULL,
  `enfermedad3` varchar(100) NOT NULL,
  `medicamento` varchar(50) NOT NULL,
  `medicamento2` varchar(50) NOT NULL,
  `medicamento3` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `ciudad` int(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notasmedicas` varchar(200) NOT NULL,
  `observaciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpais`
--

CREATE TABLE `tblpais` (
  `idpais` bigint(20) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblperfiles`
--

CREATE TABLE `tblperfiles` (
  `idperfil` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblperfiles`
--

INSERT INTO `tblperfiles` (`idperfil`, `nombre`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Administrator', '2018-11-17 02:45:13', '2018-11-17 02:45:13'),
(2, 'User', '2018-11-17 02:45:13', '2018-11-17 02:45:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblreservacita`
--

CREATE TABLE `tblreservacita` (
  `idreservacita` bigint(20) NOT NULL,
  `idmedico` bigint(20) NOT NULL,
  `idpaciente` bigint(20) NOT NULL,
  `idatencionmedica` bigint(20) NOT NULL,
  `fechareserva` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipoidentificacion`
--

CREATE TABLE `tbltipoidentificacion` (
  `idtipo` bigint(20) NOT NULL,
  `tipoidentificacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltiposangre`
--

CREATE TABLE `tbltiposangre` (
  `idtiposangre` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `idusuario` bigint(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `perfil` int(8) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblusuarios`
--

INSERT INTO `tblusuarios` (`idusuario`, `correo`, `clave`, `nombre`, `perfil`, `telefono`, `foto`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'sebas@mail.com', 'db25f2fc14cd2d2b1e7af307241f548fb03c312a', 'Sebastian Cano', 1, '55555551', '', '2018-11-17 02:48:52', '2018-11-17 03:08:42');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblatencionmedica`
--
ALTER TABLE `tblatencionmedica`
  ADD PRIMARY KEY (`idatencionmedica`);

--
-- Indices de la tabla `tblciudad`
--
ALTER TABLE `tblciudad`
  ADD PRIMARY KEY (`idciudad`);

--
-- Indices de la tabla `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `tblenfermedades`
--
ALTER TABLE `tblenfermedades`
  ADD PRIMARY KEY (`idenfermedad`);

--
-- Indices de la tabla `tbleps`
--
ALTER TABLE `tbleps`
  ADD PRIMARY KEY (`ideps`);

--
-- Indices de la tabla `tblestadocivil`
--
ALTER TABLE `tblestadocivil`
  ADD PRIMARY KEY (`idestadocivil`);

--
-- Indices de la tabla `tblmedicamento`
--
ALTER TABLE `tblmedicamento`
  ADD PRIMARY KEY (`idmedicamento`);

--
-- Indices de la tabla `tblmedicos`
--
ALTER TABLE `tblmedicos`
  ADD PRIMARY KEY (`idmedico`);

--
-- Indices de la tabla `tblordenmedica`
--
ALTER TABLE `tblordenmedica`
  ADD PRIMARY KEY (`idordenmedica`);

--
-- Indices de la tabla `tblpacientes`
--
ALTER TABLE `tblpacientes`
  ADD PRIMARY KEY (`idpacientes`);

--
-- Indices de la tabla `tblpais`
--
ALTER TABLE `tblpais`
  ADD PRIMARY KEY (`idpais`);

--
-- Indices de la tabla `tblperfiles`
--
ALTER TABLE `tblperfiles`
  ADD PRIMARY KEY (`idperfil`);

--
-- Indices de la tabla `tblreservacita`
--
ALTER TABLE `tblreservacita`
  ADD PRIMARY KEY (`idreservacita`);

--
-- Indices de la tabla `tbltipoidentificacion`
--
ALTER TABLE `tbltipoidentificacion`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tbltiposangre`
--
ALTER TABLE `tbltiposangre`
  ADD PRIMARY KEY (`idtiposangre`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblatencionmedica`
--
ALTER TABLE `tblatencionmedica`
  MODIFY `idatencionmedica` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblciudad`
--
ALTER TABLE `tblciudad`
  MODIFY `idciudad` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  MODIFY `iddepartamento` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblenfermedades`
--
ALTER TABLE `tblenfermedades`
  MODIFY `idenfermedad` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbleps`
--
ALTER TABLE `tbleps`
  MODIFY `ideps` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblestadocivil`
--
ALTER TABLE `tblestadocivil`
  MODIFY `idestadocivil` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblmedicamento`
--
ALTER TABLE `tblmedicamento`
  MODIFY `idmedicamento` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblmedicos`
--
ALTER TABLE `tblmedicos`
  MODIFY `idmedico` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblordenmedica`
--
ALTER TABLE `tblordenmedica`
  MODIFY `idordenmedica` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblpacientes`
--
ALTER TABLE `tblpacientes`
  MODIFY `idpacientes` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblpais`
--
ALTER TABLE `tblpais`
  MODIFY `idpais` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblperfiles`
--
ALTER TABLE `tblperfiles`
  MODIFY `idperfil` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tblreservacita`
--
ALTER TABLE `tblreservacita`
  MODIFY `idreservacita` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbltipoidentificacion`
--
ALTER TABLE `tbltipoidentificacion`
  MODIFY `idtipo` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbltiposangre`
--
ALTER TABLE `tbltiposangre`
  MODIFY `idtiposangre` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `idusuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
