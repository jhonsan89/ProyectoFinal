-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 07:21 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salud`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblatencionmedica`
--

CREATE TABLE `tblatencionmedica` (
  `idatencionmedica` bigint(20) NOT NULL,
  `tipoatencion` varchar(100) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblatencionmedica`
--

INSERT INTO `tblatencionmedica` (`idatencionmedica`, `tipoatencion`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Consulta General', '2018-11-24 18:13:32', '2018-11-24 18:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblciudad`
--

CREATE TABLE `tblciudad` (
  `idciudad` bigint(20) NOT NULL,
  `ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartamento`
--

CREATE TABLE `tbldepartamento` (
  `iddepartamento` bigint(20) NOT NULL,
  `departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblenfermedades`
--

CREATE TABLE `tblenfermedades` (
  `idenfermedad` bigint(20) NOT NULL,
  `enfermedad` varchar(100) NOT NULL,
  `fechaingreso` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenfermedades`
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
-- Table structure for table `tbleps`
--

CREATE TABLE `tbleps` (
  `ideps` bigint(20) NOT NULL,
  `eps` varchar(150) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbleps`
--

INSERT INTO `tbleps` (`ideps`, `eps`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Sura', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(2, 'Coomeva', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(3, 'SaludTotal', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(4, 'Savia Salud', '2018-11-23 01:33:06', '2018-11-23 01:33:06'),
(5, 'SaludCoop', '2018-11-23 01:33:06', '2018-11-23 01:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblestadocivil`
--

CREATE TABLE `tblestadocivil` (
  `idestadocivil` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblestadocivil`
--

INSERT INTO `tblestadocivil` (`idestadocivil`, `nombre`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Soltero', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(2, 'Casado', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(3, 'Separado', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(4, 'Viudo', '2018-11-23 01:34:20', '2018-11-23 01:34:20'),
(5, 'Union Libre', '2018-11-23 01:34:20', '2018-11-23 01:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicamento`
--

CREATE TABLE `tblmedicamento` (
  `idmedicamento` bigint(20) NOT NULL,
  `medicamento` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicamento`
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
-- Table structure for table `tblmedicos`
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
-- Dumping data for table `tblmedicos`
--

INSERT INTO `tblmedicos` (`idmedico`, `nombres`, `apellidos`, `telefono`, `identificacion`, `tipoidentificacion`, `foto`, `fecharegistro`, `fechamodificacion`) VALUES
(1, 'Alvaro', 'Román ', '3117635623', 1036934034, '1', '66fdd-error-medico-e1482949554572.png', '2018-11-24 18:12:06', '2018-11-24 18:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblordenmedica`
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
-- Table structure for table `tblpacientes`
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
-- Dumping data for table `tblpacientes`
--

INSERT INTO `tblpacientes` (`idpacientes`, `nombre`, `apellidos`, `identificacion`, `tipoidentificacion`, `fechanacimiento`, `telefono`, `direccion`, `foto`, `eps`, `tiposangre`, `enfermedad`, `enfermedad2`, `enfermedad3`, `medicamento`, `medicamento2`, `medicamento3`, `pais`, `departamento`, `ciudad`, `fechaingreso`, `fechamodificacion`, `notasmedicas`, `observaciones`) VALUES
(1, 'Octavio', 'Ramirez Marquez', 42764147, '1', '1959-04-21', '3029875431', 'Cll 22 # 55 - 13', '459d1-unnamed-1-.jpg', '5', '', '', '', '', '', '', '', '', '', 0, '2018-11-24 18:10:25', '2018-11-24 18:10:25', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpais`
--

CREATE TABLE `tblpais` (
  `idpais` bigint(20) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblperfiles`
--

CREATE TABLE `tblperfiles` (
  `idperfil` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblperfiles`
--

INSERT INTO `tblperfiles` (`idperfil`, `nombre`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'Administrator', '2018-11-17 02:45:13', '2018-11-17 02:45:13'),
(2, 'User', '2018-11-17 02:45:13', '2018-11-17 02:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservacita`
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
-- Dumping data for table `tblreservacita`
--

INSERT INTO `tblreservacita` (`idreservacita`, `nombres`, `identificacion`, `tipoidentificacion`, `nombre`, `tipoatencion`, `fechareserva`) VALUES
(1, '1', 1, '1', '1', '1', '2018-11-29 14:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbltipoidentificacion`
--

CREATE TABLE `tbltipoidentificacion` (
  `idtipo` bigint(20) NOT NULL,
  `tipoidentificacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltipoidentificacion`
--

INSERT INTO `tbltipoidentificacion` (`idtipo`, `tipoidentificacion`) VALUES
(1, 'Cédula de Ciudadania'),
(2, 'Tarjeta de Identidad'),
(3, 'Registro Civil'),
(4, 'Cédula de Extrangería');

-- --------------------------------------------------------

--
-- Table structure for table `tbltiposangre`
--

CREATE TABLE `tbltiposangre` (
  `idtiposangre` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltiposangre`
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
-- Table structure for table `tblusuarios`
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
-- Dumping data for table `tblusuarios`
--

INSERT INTO `tblusuarios` (`idusuario`, `correo`, `clave`, `nombre`, `perfil`, `telefono`, `foto`, `fechaingreso`, `fechamodificacion`) VALUES
(1, 'sebas@mail.com', 'db25f2fc14cd2d2b1e7af307241f548fb03c312a', 'Sebastian Cano', 1, '55555551', 'a2286-maxresdefault.jpg', '2018-11-17 02:48:52', '2018-11-19 14:09:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblatencionmedica`
--
ALTER TABLE `tblatencionmedica`
  ADD PRIMARY KEY (`idatencionmedica`);

--
-- Indexes for table `tblciudad`
--
ALTER TABLE `tblciudad`
  ADD PRIMARY KEY (`idciudad`);

--
-- Indexes for table `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indexes for table `tblenfermedades`
--
ALTER TABLE `tblenfermedades`
  ADD PRIMARY KEY (`idenfermedad`);

--
-- Indexes for table `tbleps`
--
ALTER TABLE `tbleps`
  ADD PRIMARY KEY (`ideps`);

--
-- Indexes for table `tblestadocivil`
--
ALTER TABLE `tblestadocivil`
  ADD PRIMARY KEY (`idestadocivil`);

--
-- Indexes for table `tblmedicamento`
--
ALTER TABLE `tblmedicamento`
  ADD PRIMARY KEY (`idmedicamento`);

--
-- Indexes for table `tblmedicos`
--
ALTER TABLE `tblmedicos`
  ADD PRIMARY KEY (`idmedico`);

--
-- Indexes for table `tblordenmedica`
--
ALTER TABLE `tblordenmedica`
  ADD PRIMARY KEY (`idordenmedica`);

--
-- Indexes for table `tblpacientes`
--
ALTER TABLE `tblpacientes`
  ADD PRIMARY KEY (`idpacientes`);

--
-- Indexes for table `tblpais`
--
ALTER TABLE `tblpais`
  ADD PRIMARY KEY (`idpais`);

--
-- Indexes for table `tblperfiles`
--
ALTER TABLE `tblperfiles`
  ADD PRIMARY KEY (`idperfil`);

--
-- Indexes for table `tblreservacita`
--
ALTER TABLE `tblreservacita`
  ADD PRIMARY KEY (`idreservacita`);

--
-- Indexes for table `tbltipoidentificacion`
--
ALTER TABLE `tbltipoidentificacion`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indexes for table `tbltiposangre`
--
ALTER TABLE `tbltiposangre`
  ADD PRIMARY KEY (`idtiposangre`);

--
-- Indexes for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblatencionmedica`
--
ALTER TABLE `tblatencionmedica`
  MODIFY `idatencionmedica` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblciudad`
--
ALTER TABLE `tblciudad`
  MODIFY `idciudad` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  MODIFY `iddepartamento` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblenfermedades`
--
ALTER TABLE `tblenfermedades`
  MODIFY `idenfermedad` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbleps`
--
ALTER TABLE `tbleps`
  MODIFY `ideps` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblestadocivil`
--
ALTER TABLE `tblestadocivil`
  MODIFY `idestadocivil` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicamento`
--
ALTER TABLE `tblmedicamento`
  MODIFY `idmedicamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblmedicos`
--
ALTER TABLE `tblmedicos`
  MODIFY `idmedico` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblordenmedica`
--
ALTER TABLE `tblordenmedica`
  MODIFY `idordenmedica` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpacientes`
--
ALTER TABLE `tblpacientes`
  MODIFY `idpacientes` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpais`
--
ALTER TABLE `tblpais`
  MODIFY `idpais` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblperfiles`
--
ALTER TABLE `tblperfiles`
  MODIFY `idperfil` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblreservacita`
--
ALTER TABLE `tblreservacita`
  MODIFY `idreservacita` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltipoidentificacion`
--
ALTER TABLE `tbltipoidentificacion`
  MODIFY `idtipo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltiposangre`
--
ALTER TABLE `tbltiposangre`
  MODIFY `idtiposangre` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `idusuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
