-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2020 a las 16:11:03
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agromafnic.`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agroquimico`
--

CREATE TABLE `agroquimico` (
  `idAgroquimico` int(11) NOT NULL,
  `producto` varchar(60) NOT NULL,
  `dosis` varchar(50) NOT NULL,
  `presentacion` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `tipoMoneda` int(11) NOT NULL,
  `estadoProducto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aporte`
--

CREATE TABLE `aporte` (
  `numAporte` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipoAporte` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fechaAporte` date NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `numCliente` int(11) NOT NULL,
  `PersonaU` int(11) NOT NULL,
  `tipoCliente` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradores`
--

CREATE TABLE `colaboradores` (
  `numColaborador` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `tipoColaborador` char(3) NOT NULL COMMENT 'Emp = empresa, Ins = institucion, Agro = agroservicio.',
  `departamento` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultivo`
--

CREATE TABLE `cultivo` (
  `IdCultivo` int(11) NOT NULL,
  `cultivo` varchar(60) NOT NULL,
  `variedad` int(11) NOT NULL,
  `descripcionC` int(11) NOT NULL,
  `departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `municipio` int(11) NOT NULL,
  `region` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad`
--

CREATE TABLE `enfermedad` (
  `idEnfermedad` int(11) NOT NULL,
  `enfermedad` varchar(50) NOT NULL,
  `descripcionEnfermedad` int(11) NOT NULL,
  `idTipoEnfermedad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista`
--

CREATE TABLE `especialista` (
  `idEspecialista` int(11) NOT NULL,
  `especialista` varchar(150) NOT NULL,
  `personaUsuario` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `idMunicipio` int(11) NOT NULL,
  `Municipio` int(11) NOT NULL,
  `descripcionMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `IdPersona` int(11) NOT NULL,
  `nombreP` varchar(300) NOT NULL,
  `apellidoP` varchar(300) NOT NULL,
  `correo` varchar(450) NOT NULL,
  `fechaNac` date NOT NULL,
  `genero` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plaga`
--

CREATE TABLE `plaga` (
  `idPlaga` int(11) NOT NULL,
  `plaga` varchar(50) NOT NULL,
  `raza` varchar(50) NOT NULL,
  `descripcionPlaga` varchar(150) NOT NULL,
  `idTipoPlaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion`
--

CREATE TABLE `presentacion` (
  `idPresentacion` int(11) NOT NULL,
  `presentacion` varchar(25) NOT NULL,
  `envase` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sintomas`
--

CREATE TABLE `sintomas` (
  `idSintomas` int(11) NOT NULL,
  `sintoma` varchar(150) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoenfermedad`
--

CREATE TABLE `tipoenfermedad` (
  `idTipoEnfermedad` int(11) NOT NULL,
  `tipoEnfermedad` varchar(50) NOT NULL,
  `descripcionEnfermedad` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipograno`
--

CREATE TABLE `tipograno` (
  `idTipoGrano` int(11) NOT NULL,
  `variedad` varchar(150) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomoneda`
--

CREATE TABLE `tipomoneda` (
  `idTipoMoneda` int(11) NOT NULL,
  `tipoMoneda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoplaga`
--

CREATE TABLE `tipoplaga` (
  `idTipoPlaga` int(11) NOT NULL,
  `tipoPlaga` int(11) NOT NULL,
  `Descripcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotratamientos`
--

CREATE TABLE `tipotratamientos` (
  `idTipoTratamientos` int(11) NOT NULL,
  `tipoTratamiento` varchar(150) NOT NULL,
  `descripcionTipoTratamiento` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `numTratamientos` int(11) NOT NULL,
  `tratamientos` varchar(150) NOT NULL,
  `tipoTratamientos` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `personaU` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agroquimico`
--
ALTER TABLE `agroquimico`
  ADD PRIMARY KEY (`idAgroquimico`),
  ADD KEY `agroquimico-moneda` (`tipoMoneda`),
  ADD KEY `agroquimico-presentacion` (`presentacion`);

--
-- Indices de la tabla `aporte`
--
ALTER TABLE `aporte`
  ADD PRIMARY KEY (`numAporte`),
  ADD KEY `aporte-cliente` (`cliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`numCliente`),
  ADD KEY `cliente-persona` (`PersonaU`);

--
-- Indices de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`numColaborador`),
  ADD KEY `colaborador-departamento` (`departamento`);

--
-- Indices de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  ADD PRIMARY KEY (`IdCultivo`),
  ADD KEY `cultivo-departamento` (`departamento`),
  ADD KEY `cultivo-variedad` (`variedad`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`idDepartamento`),
  ADD KEY `departamento-municipio` (`municipio`);

--
-- Indices de la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  ADD PRIMARY KEY (`idEnfermedad`),
  ADD KEY `enfemerdad-tipoenfermedad` (`idTipoEnfermedad`);

--
-- Indices de la tabla `especialista`
--
ALTER TABLE `especialista`
  ADD PRIMARY KEY (`idEspecialista`),
  ADD KEY `especialista-usuario` (`personaUsuario`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`idMunicipio`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`IdPersona`);

--
-- Indices de la tabla `plaga`
--
ALTER TABLE `plaga`
  ADD PRIMARY KEY (`idPlaga`),
  ADD KEY `plaga-tipoPlaga` (`idTipoPlaga`);

--
-- Indices de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  ADD PRIMARY KEY (`idPresentacion`);

--
-- Indices de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  ADD PRIMARY KEY (`idSintomas`);

--
-- Indices de la tabla `tipoenfermedad`
--
ALTER TABLE `tipoenfermedad`
  ADD PRIMARY KEY (`idTipoEnfermedad`);

--
-- Indices de la tabla `tipograno`
--
ALTER TABLE `tipograno`
  ADD PRIMARY KEY (`idTipoGrano`);

--
-- Indices de la tabla `tipomoneda`
--
ALTER TABLE `tipomoneda`
  ADD PRIMARY KEY (`idTipoMoneda`);

--
-- Indices de la tabla `tipoplaga`
--
ALTER TABLE `tipoplaga`
  ADD PRIMARY KEY (`idTipoPlaga`);

--
-- Indices de la tabla `tipotratamientos`
--
ALTER TABLE `tipotratamientos`
  ADD PRIMARY KEY (`idTipoTratamientos`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`numTratamientos`),
  ADD KEY `tratamientos-tipotratamientos` (`tipoTratamientos`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `usuario-persona` (`personaU`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agroquimico`
--
ALTER TABLE `agroquimico`
  MODIFY `idAgroquimico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aporte`
--
ALTER TABLE `aporte`
  MODIFY `numAporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `numCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `numColaborador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  MODIFY `IdCultivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  MODIFY `idEnfermedad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialista`
--
ALTER TABLE `especialista`
  MODIFY `idEspecialista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `idMunicipio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `IdPersona` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plaga`
--
ALTER TABLE `plaga`
  MODIFY `idPlaga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `idPresentacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sintomas`
--
ALTER TABLE `sintomas`
  MODIFY `idSintomas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoenfermedad`
--
ALTER TABLE `tipoenfermedad`
  MODIFY `idTipoEnfermedad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipograno`
--
ALTER TABLE `tipograno`
  MODIFY `idTipoGrano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipomoneda`
--
ALTER TABLE `tipomoneda`
  MODIFY `idTipoMoneda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoplaga`
--
ALTER TABLE `tipoplaga`
  MODIFY `idTipoPlaga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipotratamientos`
--
ALTER TABLE `tipotratamientos`
  MODIFY `idTipoTratamientos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `numTratamientos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agroquimico`
--
ALTER TABLE `agroquimico`
  ADD CONSTRAINT `agroquimico-moneda` FOREIGN KEY (`tipoMoneda`) REFERENCES `tipomoneda` (`idTipoMoneda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agroquimico-presentacion` FOREIGN KEY (`presentacion`) REFERENCES `presentacion` (`idPresentacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `aporte`
--
ALTER TABLE `aporte`
  ADD CONSTRAINT `aporte-cliente` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`numCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente-persona` FOREIGN KEY (`PersonaU`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD CONSTRAINT `colaborador-departamento` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cultivo`
--
ALTER TABLE `cultivo`
  ADD CONSTRAINT `cultivo-departamento` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cultivo-variedad` FOREIGN KEY (`variedad`) REFERENCES `tipograno` (`idTipoGrano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento-municipio` FOREIGN KEY (`municipio`) REFERENCES `municipio` (`idMunicipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  ADD CONSTRAINT `enfemerdad-tipoenfermedad` FOREIGN KEY (`idTipoEnfermedad`) REFERENCES `tipoenfermedad` (`idTipoEnfermedad`);

--
-- Filtros para la tabla `especialista`
--
ALTER TABLE `especialista`
  ADD CONSTRAINT `especialista-usuario` FOREIGN KEY (`personaUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `plaga`
--
ALTER TABLE `plaga`
  ADD CONSTRAINT `plaga-tipoPlaga` FOREIGN KEY (`idTipoPlaga`) REFERENCES `tipoplaga` (`idTipoPlaga`);

--
-- Filtros para la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD CONSTRAINT `tratamientos-tipotratamientos` FOREIGN KEY (`tipoTratamientos`) REFERENCES `tipotratamientos` (`idTipoTratamientos`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario-persona` FOREIGN KEY (`personaU`) REFERENCES `persona` (`IdPersona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
