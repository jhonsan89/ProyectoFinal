-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2018 at 02:19 AM
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
  `nombre` varchar(100) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `nombre` varchar(1) NOT NULL,
  `fechaingreso` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbleps`
--

CREATE TABLE `tbleps` (
  `ideps` bigint(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicamento`
--

CREATE TABLE `tblmedicamento` (
  `idmedicamento` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `tiposangre` varchar(50) NOT NULL,
  `enfermedad` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `ciudad` int(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `observaciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `tblreservacita`
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
-- Table structure for table `tbltiposangre`
--

CREATE TABLE `tbltiposangre` (
  `idtiposangre` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `idatencionmedica` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idenfermedad` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbleps`
--
ALTER TABLE `tbleps`
  MODIFY `ideps` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestadocivil`
--
ALTER TABLE `tblestadocivil`
  MODIFY `idestadocivil` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmedicamento`
--
ALTER TABLE `tblmedicamento`
  MODIFY `idmedicamento` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmedicos`
--
ALTER TABLE `tblmedicos`
  MODIFY `idmedico` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblordenmedica`
--
ALTER TABLE `tblordenmedica`
  MODIFY `idordenmedica` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpacientes`
--
ALTER TABLE `tblpacientes`
  MODIFY `idpacientes` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpais`
--
ALTER TABLE `tblpais`
  MODIFY `idpais` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblperfiles`
--
ALTER TABLE `tblperfiles`
  MODIFY `idperfil` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreservacita`
--
ALTER TABLE `tblreservacita`
  MODIFY `idreservacita` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltiposangre`
--
ALTER TABLE `tbltiposangre`
  MODIFY `idtiposangre` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `idusuario` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
