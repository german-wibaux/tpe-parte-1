-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2018 a las 14:23:58
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp-especial`
--
CREATE DATABASE `tp-especial`;

USE `tp-especial`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `idMateria` int(11) NOT NULL,
  `nombreMateria` varchar(255) NOT NULL,
  `idModalidad` int(11) DEFAULT NULL,
  `descripcionMateria` varchar(255) NOT NULL,
  `anio` int(11) NOT NULL,
  `division` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`idMateria`, `nombreMateria`, `idModalidad`, `descripcionMateria`, `anio`, `division`) VALUES
(1, 'Produccion de Productos Lacteos I', 1, 'Desc. Produccion de Productos Lacteos I', 1, 1),
(2, 'Ciencias Basicas I', 1, 'Desc. Ciencias Basicas I', 1, 1),
(3, 'Tecnologia y Sociedad I', 1, 'Desc. Tecnologia y Sociedad I', 1, 1),
(4, 'Lengua y Literatura I', 1, 'Desc. Lengua y Literatura I', 1, 1),
(5, 'Historia y Geografia I', 1, 'Desc. Historia y Geografia I', 1, 1),
(6, 'Biologia', 1, 'Desc. Biologia', 1, 1),
(7, 'Ingles I', 1, 'Desc. Ingles I', 1, 1),
(8, 'Matematicas I', 1, 'Desc. Matematicas I', 1, 1),
(9, 'Economia I', 1, 'Desc. Economia I', 1, 1),
(10, 'Informatica I', 1, 'Desc. Informatica I', 1, 1),
(11, 'Educacion Civica', 1, 'Desc. Educacion Civica', 1, 1),
(12, 'Fisica', 1, 'Desc. Fisica', 2, 1),
(13, 'Informatica II', 1, 'Desc. Informatica II', 2, 1),
(14, 'Matematicas II', 1, 'Desc. Matematicas II', 2, 1),
(15, 'Lengua y Literatura II', 1, 'Desc. Lengua y Literatura II', 2, 1),
(16, 'Produccion de Productos Lacteos II', 1, 'Desc. Produccion de Productos Lacteos II', 2, 1),
(17, 'Historia y Geografia II', 1, 'Desc. Historia y Geografia II', 2, 1),
(18, 'Ciencias Basicas II', 1, 'Desc. Ciencias Basicas II', 2, 1),
(19, 'Ingles II', 1, 'Desc. Ingles II', 2, 1),
(20, 'Economia II', 1, 'Desc. Economia II', 2, 1),
(21, 'Tecnologia y Sociedad II', 1, 'Desc. Tecnologia y Sociedad II', 2, 1),
(22, 'Pensamiento Social Contemporaneo', 1, 'Desc. Pensamiento Social Contemporaneo', 3, 1),
(23, 'Ingles III', 1, 'Desc. Ingles III', 3, 1),
(24, 'Matematicas III', 1, 'Desc. Matematicas III', 3, 1),
(25, 'Produccion de Productos Lacteos III', 1, 'Desc. Produccion de Productos Lacteos III', 3, 1),
(26, 'Recursos Humanos', 1, 'Desc. Recursos Humanos', 3, 1),
(27, 'Economia III', 1, 'Desc. Economia III', 3, 1),
(28, 'Quimica', 1, 'Desc. Quimica', 3, 1),
(29, 'Lengua y Literatura III', 1, 'Desc. Lengua y Literatura III', 3, 1),
(30, 'Tecnologia y Sociedad III', 1, 'Desc. Tecnologia y Sociedad III', 3, 1),
(31, 'Informatica III', 1, 'Desc. Informatica III', 3, 1),
(32, 'Historia y Geografia I', 2, 'Desc. Historia y Geografia I', 1, 2),
(33, 'Psicologia', 2, 'Desc. Psicologia', 1, 2),
(34, 'Educacion Para la Salud I', 2, 'Desc. Educacion Para la Salud I', 1, 2),
(35, 'Lengua y Literatura I', 2, 'Desc. Lengua y Literatura I', 1, 2),
(36, 'Biologia', 2, 'Desc. Biologia', 1, 2),
(37, 'Informatica I', 2, 'Desc. Informatica I', 1, 2),
(38, 'Matematicas I', 2, 'Desc. Matematicas I', 1, 2),
(39, 'Recursos Naturales I', 2, 'Desc. Recursos Naturales I', 1, 2),
(40, 'Ingles I', 2, 'Desc. Ingles I', 1, 2),
(41, 'Educacion Civica', 2, 'Desc. Educacion Civica', 1, 2),
(42, 'Gestion en Salud I', 2, 'Desc. Gestion en Salud I', 1, 2),
(43, 'Historia y Geografia II', 2, 'Desc. Historia y Geografia II', 2, 2),
(44, 'Educacion Para la Salud II', 2, 'Desc. Educacion Para la Salud II', 2, 2),
(45, 'Lengua y Literatura II', 2, 'Desc. Lengua y Literatura II', 2, 2),
(46, 'Fisica', 2, 'Desc. Fisica', 2, 2),
(47, 'Gestion en Salud II', 2, 'Desc. Gestion en Salud II', 2, 2),
(48, 'Recursos Naturales II', 2, 'Desc. Recursos Naturales II', 2, 2),
(49, 'Ingles II', 2, 'Desc. Ingles II', 2, 2),
(50, 'Informatica II', 2, 'Desc. Informatica II', 2, 2),
(51, 'Metodología de la Investigacion', 2, 'Desc. Metodología de la Investigacion', 2, 2),
(52, 'Matematicas II', 2, 'Desc. Matematicas II', 2, 2),
(53, 'Politica de Educacion Sanitaria', 2, 'Desc. Politica de Educacion Sanitaria', 3, 2),
(54, 'Pensamiento Social Contemporaneo', 2, 'Desc. Pensamiento Social Contemporaneo', 3, 2),
(55, 'Lengua y Literatura III', 2, 'Desc. Lengua y Literatura III', 3, 2),
(56, 'Quimica', 2, 'Desc. Quimica', 3, 2),
(57, 'Educacion Para la Salud III', 2, 'Desc. Educacion Para la Salud III', 3, 2),
(58, 'Informatica III', 2, 'Desc. Informatica III', 3, 2),
(59, 'Matematicas III', 2, 'Desc. Matematicas III', 3, 2),
(60, 'Gestion en Salud III', 2, 'Desc. Gestion en Salud III', 3, 2),
(61, 'Ingles III', 2, 'Desc. Ingles III', 3, 2),
(62, 'Sociologia', 2, 'Desc. Sociologia', 3, 2),
(63, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 3),
(64, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 3),
(65, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 3),
(66, 'Biologia', 3, 'Desc. Biologia', 1, 3),
(67, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 3),
(68, 'Informatica I', 3, 'Desc. Informatica I', 1, 3),
(69, 'Ingles I', 3, 'Desc. Ingles I', 1, 3),
(70, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 3),
(71, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 3),
(72, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 3),
(73, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 5),
(74, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 5),
(75, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 5),
(76, 'Biologia', 3, 'Desc. Biologia', 1, 5),
(77, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 5),
(78, 'Informatica I', 3, 'Desc. Informatica I', 1, 5),
(79, 'Ingles I', 3, 'Desc. Ingles I', 1, 5),
(80, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 5),
(81, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 5),
(82, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 5),
(83, 'Derecho', 3, 'Desc. Derecho', 2, 3),
(84, 'Informatica II', 3, 'Desc. Informatica II', 2, 3),
(85, 'Fisica', 3, 'Desc. Fisica', 2, 3),
(86, 'Ingles II', 3, 'Desc. Ingles II', 2, 3),
(87, 'Administracion del Personal', 3, 'Desc. Administracion del Personal', 2, 3),
(88, 'Matematicas II', 3, 'Desc. Matematicas II', 2, 3),
(89, 'Lengua y Literatura II', 3, 'Desc. Lengua y Literatura II', 2, 3),
(90, 'Historia y Geografia II', 3, 'Desc. Historia y Geografia II', 2, 3),
(91, 'Especializada II', 3, 'Desc. Especializada II', 2, 3),
(92, 'Derecho', 3, 'Desc. Derecho', 2, 3),
(93, 'Ingles III', 3, 'Desc. Ingles III', 3, 3),
(94, 'Legislacion Impositiva', 3, 'Desc. Legislacion Impositiva', 3, 3),
(95, 'Informatica III', 3, 'Desc. Informatica III', 3, 3),
(96, 'Quimica', 3, 'Desc. Quimica', 3, 3),
(97, 'Pensamiento Social Contemporaneo', 3, 'Desc. Pensamiento Social Contemporaneo', 3, 3),
(98, 'Especializada III', 3, 'Desc. Especializada III', 3, 3),
(99, 'Matematicas III', 3, 'Desc. Matematicas III', 3, 3),
(100, 'Lengua y Literatura III', 3, 'Desc. Lengua y Literatura III', 3, 3),
(101, 'Economia III', 3, 'Desc. Economia III', 3, 3),
(102, 'Educacion Civica', 4, 'Desc. Educacion Civica', 1, 4),
(103, 'Especializada I', 4, 'Desc. Especializada I', 1, 4),
(104, 'Psicologia', 4, 'Desc. Psicologia', 1, 4),
(105, 'Sociologia', 4, 'Desc. Sociologia', 1, 4),
(106, 'Ingles I', 4, 'Desc. Ingles I', 1, 4),
(107, 'Matematicas I', 4, 'Desc. Matematicas I', 1, 4),
(108, 'Historia y Geografia I', 4, 'Desc. Historia y Geografia I', 1, 4),
(109, 'Biologia', 4, 'Desc. Biologia', 1, 4),
(110, 'Lengua y Literatura I', 4, 'Desc. Lengua y Literatura I', 1, 4),
(111, 'Informatica I', 4, 'Desc. Informatica I', 1, 4),
(112, 'Ingles II', 4, 'Desc. Ingles II', 2, 4),
(113, 'Lengua y Literatura II', 4, 'Desc. Lengua y Literatura II', 2, 4),
(114, 'Matematicas II', 4, 'Desc. Matematicas II', 2, 4),
(115, 'Informatica II', 4, 'Desc. Informatica II', 2, 4),
(116, 'Metodología de la Investigacion', 4, 'Desc. Metodología de la Investigacion', 2, 4),
(117, 'Fisica', 4, 'Desc. Fisica', 2, 4),
(118, 'Especializada II', 4, 'Desc. Especializada II', 2, 4),
(119, 'Historia y Geografia II', 4, 'Desc. Historia y Geografia II', 2, 4),
(120, 'Ciencias Politicas', 4, 'Desc. Ciencias Politicas', 2, 4),
(121, 'Lengua y Literatura III', 4, 'Desc. Lengua y Literatura III', 3, 4),
(122, 'Pensamiento Social Contemporaneo', 4, 'Desc. Pensamiento Social Contemporaneo', 3, 4),
(123, 'Matematicas III', 4, 'Desc. Matematicas III', 3, 4),
(124, 'Ingles III', 4, 'Desc. Ingles III', 3, 4),
(125, 'Filosofia', 4, 'Desc. Filosofia', 3, 4),
(126, 'Especializada III', 4, 'Desc. Especializada III', 3, 4),
(127, 'Quimica', 4, 'Desc. Quimica', 3, 4),
(128, 'Comunicación y Medios', 4, 'Desc. Comunicación y Medios', 3, 4),
(129, 'Informatica III', 4, 'Desc. Informatica III', 3, 4),
(130, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 7),
(131, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 7),
(132, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 7),
(133, 'Biologia', 3, 'Desc. Biologia', 1, 7),
(134, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 7),
(135, 'Informatica I', 3, 'Desc. Informatica I', 1, 7),
(136, 'Ingles I', 3, 'Desc. Ingles I', 1, 7),
(137, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 7),
(138, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 7),
(139, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 7),
(140, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 6),
(141, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 6),
(142, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 6),
(143, 'Biologia', 3, 'Desc. Biologia', 1, 6),
(144, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 6),
(145, 'Informatica I', 3, 'Desc. Informatica I', 1, 6),
(146, 'Ingles I', 3, 'Desc. Ingles I', 1, 6),
(147, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 6),
(148, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 6),
(149, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `idModalidad` int(11) NOT NULL,
  `nombreModalidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`idModalidad`, `nombreModalidad`) VALUES
(1, 'Bachiller con Orientacion en Bienes y Servicios. Especializacion en Produccion Productos Lacteos.'),
(2, 'Bachiller con Orientacion en Ciencias Naturales. Especializacion en Salud y Ambiente.'),
(3, 'Bachiller con Orientacion en Gestion y Administracion. Especializacion en Gestion Empresarial.'),
(4, 'Bachiller con Orientacion en Ciencias Sociales. Especializacion en Gestion Politicas Publicas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMateria` (`idMateria`);
  COMMIT;

ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

INSERT INTO `imagenes` (`URL`, `idMateria`) VALUES
('materias/1_001.jpg', 1);
INSERT INTO `imagenes` (`URL`, `idMateria`) VALUES
('materias/1_002.jpg', 1);
INSERT INTO `imagenes` (`URL`, `idMateria`) VALUES
('materias/2_001.jpg', 2);
INSERT INTO `imagenes` (`URL`, `idMateria`) VALUES
('materias/3_001.jpg', 3);
INSERT INTO `imagenes` (`URL`, `idMateria`) VALUES
('materias/3_002.jpg', 3);
INSERT INTO `imagenes` (`URL`, `idMateria`) VALUES
('materias/4_001.jpg', 4);

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `pass`, `rol`) VALUES
(15, 'german', '$2y$10$avQXsLiQlEzKBMcrwNeTLumCv1iQytM6/EzvZds2xFvhCAdMU.uxu', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`idMateria`),
  ADD KEY `idModalidad` (`idModalidad`);


--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`idModalidad`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `comentarios`
    ADD PRIMARY KEY (`id`),
    ADD KEY `idUsuario` (`idUsuario`),
    ADD KEY `idMateria` (`idMateria`);


--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `idMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `idModalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1`
FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2`
FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);

--
-- Filtros para la tabla `materias`
--


ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`idModalidad`) REFERENCES `modalidad` (`idModalidad`) ON DELETE SET NULL;
  COMMIT;


ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
