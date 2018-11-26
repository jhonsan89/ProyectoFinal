-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2018 a las 01:07:47
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
  `tipoatencion` varchar(100) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblatencionmedica`
--

INSERT INTO `tblatencionmedica` (`idatencionmedica`, `tipoatencion`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Consulta General', '2018-11-24 18:13:32', '2018-11-24 18:13:32');

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

--
-- Volcado de datos para la tabla `tblenfermedades`
--

INSERT INTO `tblenfermedades` (`idenfermedad`, `enfermedad`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Super Gonorrea', '2018-11-22 05:00:00', '0000-00-00 00:00:00'),
(2, 'Lupus', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(3, 'Miastenia', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(4, 'Cancer ', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(5, 'Dermatitis', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(6, 'Trombosis', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(7, 'Migraña', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(8, 'Calculos', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(9, 'Diabetes', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(10, 'Toriodes', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(11, 'VIH', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(12, 'Hipertension', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(13, 'Esquisofrenia', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(14, 'Colon Irritable', '2018-11-23 01:31:44', '2018-11-23 01:31:44'),
(15, 'Hepatitis', '2018-11-23 01:31:44', '2018-11-23 01:31:44');

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

--
-- Volcado de datos para la tabla `tbleps`
--

INSERT INTO `tbleps` (`ideps`, `eps`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Sura', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(2, 'Coomeva', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(3, 'SaludTotal', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(4, 'Savia Salud', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(5, 'SaludCoop', '2018-11-23 01:33:06', '2018-11-23 01:33:06');

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

--
-- Volcado de datos para la tabla `tblestadocivil`
--

INSERT INTO `tblestadocivil` (`idestadocivil`, `nombre`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Soltero', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(2, 'Casado', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(3, 'Separado', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(4, 'Viudo', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(5, 'Union Libre', '2018-11-23 01:34:20', '2018-11-23 01:34:20');

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

--
-- Volcado de datos para la tabla `tblmedicamento`
--

INSERT INTO `tblmedicamento` (`idmedicamento`, `medicamento`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Acetaminofen', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(2, 'Ibuprofeno', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(3, 'Morfina', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(4, 'Enalapril', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(5, 'Metformina', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(6, 'Clotrimazol', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(7, 'Fencafen', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(8, 'Amoxicilina', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(9, 'Carbamazepina', '2018-11-23 01:38:04', '2018-11-23 01:38:04'),
(10, 'Atorvastatina', '2018-11-23 01:38:04', '2018-11-23 01:38:04');

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

--
-- Volcado de datos para la tabla `tblmedicos`
--

INSERT INTO `tblmedicos` (`idmedico`, `nombres`, `apellidos`, `telefono`, `identificacion`, `tipoidentificacion`, `foto`, `fecharegistro`, `fechamodificacion`) VALUES
(1, 'Alvaro', 'Román ', '3117635623', 1036934034, '1', '66fdd-error-medico-e1482949554572.png', '2018-11-24 18:12:06', '2018-11-24 18:12:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblordenmedica`
--

CREATE TABLE `tblordenmedica` (
  `idordenmedica` bigint(20) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `tipoidentificacion` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL COMMENT 'nombre paciente',
  `nombres` varchar(50) NOT NULL COMMENT 'nombre medico',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `medicamento` varchar(50) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `medicamento2` varchar(50) NOT NULL,
  `cantidad2` int(3) NOT NULL,
  `medicamento3` varchar(50) NOT NULL,
  `cantidad3` int(3) NOT NULL,
  `observaciones` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblordenmedica`
--

INSERT INTO `tblordenmedica` (`idordenmedica`, `identificacion`, `tipoidentificacion`, `nombre`, `nombres`, `fecha`, `medicamento`, `cantidad`, `medicamento2`, `cantidad2`, `medicamento3`, `cantidad3`, `observaciones`) VALUES
(1, 1, '1', '1', '1', '2018-11-26 00:06:53', 'Ibuprofeno', 10, '', 0, '', 0, '');

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

--
-- Volcado de datos para la tabla `tblpacientes`
--

INSERT INTO `tblpacientes` (`idpacientes`, `nombre`, `apellidos`, `identificacion`, `tipoidentificacion`, `fechanacimiento`, `telefono`, `direccion`, `foto`, `eps`, `tiposangre`, `enfermedad`, `enfermedad2`, `enfermedad3`, `medicamento`, `medicamento2`, `medicamento3`, `pais`, `departamento`, `ciudad`, `fechaingreso`, `fechamodificacion`, `notasmedicas`, `observaciones`) VALUES
(1, 'Octavio', 'Ramirez Marquez', 42764147, '1', '1959-04-21', '3029875431', 'Cll 22 # 55 - 13', '459d1-unnamed-1-.jpg', '5', '', '', '', '', '', '', '', '', '', 0, '2018-11-24 18:10:25', '2018-11-24 18:10:25', '', 0);

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
  `nombres` varchar(50) NOT NULL COMMENT 'nombre medico',
  `identificacion` int(11) NOT NULL COMMENT 'identificacion paciente',
  `tipoidentificacion` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL COMMENT 'nombre paciente',
  `tipoatencion` varchar(100) NOT NULL COMMENT 'tipo atencion medica',
  `fechareserva` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblreservacita`
--

INSERT INTO `tblreservacita` (`idreservacita`, `nombres`, `identificacion`, `tipoidentificacion`, `nombre`, `tipoatencion`, `fechareserva`) VALUES
(1, '1', 1, '1', '1', '1', '2018-11-29 14:15:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipoidentificacion`
--

CREATE TABLE `tbltipoidentificacion` (
  `idtipo` bigint(20) NOT NULL,
  `tipoidentificacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltipoidentificacion`
--

INSERT INTO `tbltipoidentificacion` (`idtipo`, `tipoidentificacion`) VALUES
(1, 'Cédula de Ciudadania'),
(2, 'Tarjeta de Identidad'),
(3, 'Registro Civil'),
(4, 'Cédula de Extrangería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltiposangre`
--

CREATE TABLE `tbltiposangre` (
  `idtiposangre` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltiposangre`
--

INSERT INTO `tbltiposangre` (`idtiposangre`, `nombre`) VALUES
(1, 'O-'),
(2, 'O+'),
(3, 'A-'),
(4, 'A+'),
(5, 'B-'),
(6, 'B+'),
(7, 'AB-'),
(8, 'AB+');

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
(1, 'sebas@mail.com', 'db25f2fc14cd2d2b1e7af307241f548fb03c312a', 'Sebastian Cano', 1, '55555551', 'a2286-maxresdefault.jpg', '2018-11-17 02:48:52', '2018-11-19 14:09:40');

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
  MODIFY `idatencionmedica` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `idenfermedad` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `tbleps`
--
ALTER TABLE `tbleps`
  MODIFY `ideps` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tblestadocivil`
--
ALTER TABLE `tblestadocivil`
  MODIFY `idestadocivil` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tblmedicamento`
--
ALTER TABLE `tblmedicamento`
  MODIFY `idmedicamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tblmedicos`
--
ALTER TABLE `tblmedicos`
  MODIFY `idmedico` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblordenmedica`
--
ALTER TABLE `tblordenmedica`
  MODIFY `idordenmedica` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblpacientes`
--
ALTER TABLE `tblpacientes`
  MODIFY `idpacientes` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `idreservacita` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbltipoidentificacion`
--
ALTER TABLE `tbltipoidentificacion`
  MODIFY `idtipo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbltiposangre`
--
ALTER TABLE `tbltiposangre`
  MODIFY `idtiposangre` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `idusuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
