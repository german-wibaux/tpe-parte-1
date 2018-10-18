-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2018 a las 20:47:24
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

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
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `pass`) VALUES
(15, 'german', '$2y$10$avQXsLiQlEzKBMcrwNeTLumCv1iQytM6/EzvZds2xFvhCAdMU.uxu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Creacion de tabla modalidad
CREATE TABLE `modalidad` (
`idModalidad` int(11) NOT NULL AUTO_INCREMENT,
`nombreModalidad` varchar(255) NOT NULL,
PRIMARY KEY (idModalidad) )
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Carga de datos en tabla modalidad ----------------------
INSERT INTO `modalidad` (`idModalidad`, `nombreModalidad`) VALUES (NULL, 'Bachiller con Orientacion en Bienes y Servicios. Especializacion en Produccion Productos Lacteos.');
INSERT INTO `modalidad` (`idModalidad`, `nombreModalidad`) VALUES (NULL, 'Bachiller con Orientacion en Ciencias Naturales. Especializacion en Salud y Ambiente.');
INSERT INTO `modalidad` (`idModalidad`, `nombreModalidad`) VALUES (NULL, 'Bachiller con Orientacion en Gestion y Administracion. Especializacion en Gestion Empresarial.');
INSERT INTO `modalidad` (`idModalidad`, `nombreModalidad`) VALUES (NULL, 'Bachiller con Orientacion en Ciencias Sociales. Especializacion en Gestion Politicas Publicas.');


-- Creacion de tabla materias
CREATE TABLE `materias` (
`idMateria` int(11) NOT NULL AUTO_INCREMENT,
`nombreMateria` varchar(255) NOT NULL,
`idModalidad` int(11) NOT NULL,
`descripcionMateria` varchar(255) NOT NULL,
`anio` int(11) NOT NULL,
`division` int(11) NOT NULL,
PRIMARY KEY (idMateria) )
ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- Carga de datos en tabla materias ----------------------
INSERT INTO `materias` (`idMateria`, `nombreMateria`, `idModalidad`, `descripcionMateria`, `anio`, `division`)
VALUES
(NULL, 'Produccion de Productos Lacteos I', 1, 'Desc. Produccion de Productos Lacteos I', 1, 1),
(NULL, 'Ciencias Basicas I', 1, 'Desc. Ciencias Basicas I', 1, 1),
(NULL, 'Tecnologia y Sociedad I', 1, 'Desc. Tecnologia y Sociedad I', 1, 1),
(NULL, 'Lengua y Literatura I', 1, 'Desc. Lengua y Literatura I', 1, 1),
(NULL, 'Historia y Geografia I', 1, 'Desc. Historia y Geografia I', 1, 1),
(NULL, 'Biologia', 1, 'Desc. Biologia', 1, 1),
(NULL, 'Ingles I', 1, 'Desc. Ingles I', 1, 1),
(NULL, 'Matematicas I', 1, 'Desc. Matematicas I', 1, 1),
(NULL, 'Economia I', 1, 'Desc. Economia I', 1, 1),
(NULL, 'Informatica I', 1, 'Desc. Informatica I', 1, 1),
(NULL, 'Educacion Civica', 1, 'Desc. Educacion Civica', 1, 1),
(NULL, 'Fisica', 1, 'Desc. Fisica', 2, 1),
(NULL, 'Informatica II', 1, 'Desc. Informatica II', 2, 1),
(NULL, 'Matematicas II', 1, 'Desc. Matematicas II', 2, 1),
(NULL, 'Lengua y Literatura II', 1, 'Desc. Lengua y Literatura II', 2, 1),
(NULL, 'Produccion de Productos Lacteos II', 1, 'Desc. Produccion de Productos Lacteos II', 2, 1),
(NULL, 'Historia y Geografia II', 1, 'Desc. Historia y Geografia II', 2, 1),
(NULL, 'Ciencias Basicas II', 1, 'Desc. Ciencias Basicas II', 2, 1),
(NULL, 'Ingles II', 1, 'Desc. Ingles II', 2, 1),
(NULL, 'Economia II', 1, 'Desc. Economia II', 2, 1),
(NULL, 'Tecnologia y Sociedad II', 1, 'Desc. Tecnologia y Sociedad II', 2, 1),
(NULL, 'Pensamiento Social Contemporaneo', 1, 'Desc. Pensamiento Social Contemporaneo', 3, 1),
(NULL, 'Ingles III', 1, 'Desc. Ingles III', 3, 1),
(NULL, 'Matematicas III', 1, 'Desc. Matematicas III', 3, 1),
(NULL, 'Produccion de Productos Lacteos III', 1, 'Desc. Produccion de Productos Lacteos III', 3, 1),
(NULL, 'Recursos Humanos', 1, 'Desc. Recursos Humanos', 3, 1),
(NULL, 'Economia III', 1, 'Desc. Economia III', 3, 1),
(NULL, 'Quimica', 1, 'Desc. Quimica', 3, 1),
(NULL, 'Lengua y Literatura III', 1, 'Desc. Lengua y Literatura III', 3, 1),
(NULL, 'Tecnologia y Sociedad III', 1, 'Desc. Tecnologia y Sociedad III', 3, 1),
(NULL, 'Informatica III', 1, 'Desc. Informatica III', 3, 1),
(NULL, 'Historia y Geografia I', 2, 'Desc. Historia y Geografia I', 1, 2),
(NULL, 'Psicologia', 2, 'Desc. Psicologia', 1, 2),
(NULL, 'Educacion Para la Salud I', 2, 'Desc. Educacion Para la Salud I', 1, 2),
(NULL, 'Lengua y Literatura I', 2, 'Desc. Lengua y Literatura I', 1, 2),
(NULL, 'Biologia', 2, 'Desc. Biologia', 1, 2),
(NULL, 'Informatica I', 2, 'Desc. Informatica I', 1, 2),
(NULL, 'Matematicas I', 2, 'Desc. Matematicas I', 1, 2),
(NULL, 'Recursos Naturales I', 2, 'Desc. Recursos Naturales I', 1, 2),
(NULL, 'Ingles I', 2, 'Desc. Ingles I', 1, 2),
(NULL, 'Educacion Civica', 2, 'Desc. Educacion Civica', 1, 2),
(NULL, 'Gestion en Salud I', 2, 'Desc. Gestion en Salud I', 1, 2),
(NULL, 'Historia y Geografia II', 2, 'Desc. Historia y Geografia II', 2, 2),
(NULL, 'Educacion Para la Salud II', 2, 'Desc. Educacion Para la Salud II', 2, 2),
(NULL, 'Lengua y Literatura II', 2, 'Desc. Lengua y Literatura II', 2, 2),
(NULL, 'Fisica', 2, 'Desc. Fisica', 2, 2),
(NULL, 'Gestion en Salud II', 2, 'Desc. Gestion en Salud II', 2, 2),
(NULL, 'Recursos Naturales II', 2, 'Desc. Recursos Naturales II', 2, 2),
(NULL, 'Ingles II', 2, 'Desc. Ingles II', 2, 2),
(NULL, 'Informatica II', 2, 'Desc. Informatica II', 2, 2),
(NULL, 'Metodología de la Investigacion', 2, 'Desc. Metodología de la Investigacion', 2, 2),
(NULL, 'Matematicas II', 2, 'Desc. Matematicas II', 2, 2),
(NULL, 'Politica de Educacion Sanitaria', 2, 'Desc. Politica de Educacion Sanitaria', 3, 2),
(NULL, 'Pensamiento Social Contemporaneo', 2, 'Desc. Pensamiento Social Contemporaneo', 3, 2),
(NULL, 'Lengua y Literatura III', 2, 'Desc. Lengua y Literatura III', 3, 2),
(NULL, 'Quimica', 2, 'Desc. Quimica', 3, 2),
(NULL, 'Educacion Para la Salud III', 2, 'Desc. Educacion Para la Salud III', 3, 2),
(NULL, 'Informatica III', 2, 'Desc. Informatica III', 3, 2),
(NULL, 'Matematicas III', 2, 'Desc. Matematicas III', 3, 2),
(NULL, 'Gestion en Salud III', 2, 'Desc. Gestion en Salud III', 3, 2),
(NULL, 'Ingles III', 2, 'Desc. Ingles III', 3, 2),
(NULL, 'Sociologia', 2, 'Desc. Sociologia', 3, 2),
(NULL, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 3),
(NULL, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 3),
(NULL, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 3),
(NULL, 'Biologia', 3, 'Desc. Biologia', 1, 3),
(NULL, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 3),
(NULL, 'Informatica I', 3, 'Desc. Informatica I', 1, 3),
(NULL, 'Ingles I', 3, 'Desc. Ingles I', 1, 3),
(NULL, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 3),
(NULL, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 3),
(NULL, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 3),
(NULL, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 5),
(NULL, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 5),
(NULL, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 5),
(NULL, 'Biologia', 3, 'Desc. Biologia', 1, 5),
(NULL, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 5),
(NULL, 'Informatica I', 3, 'Desc. Informatica I', 1, 5),
(NULL, 'Ingles I', 3, 'Desc. Ingles I', 1, 5),
(NULL, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 5),
(NULL, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 5),
(NULL, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 5),
(NULL, 'Derecho', 3, 'Desc. Derecho', 2, 3),
(NULL, 'Informatica II', 3, 'Desc. Informatica II', 2, 3),
(NULL, 'Fisica', 3, 'Desc. Fisica', 2, 3),
(NULL, 'Ingles II', 3, 'Desc. Ingles II', 2, 3),
(NULL, 'Administracion del Personal', 3, 'Desc. Administracion del Personal', 2, 3),
(NULL, 'Matematicas II', 3, 'Desc. Matematicas II', 2, 3),
(NULL, 'Lengua y Literatura II', 3, 'Desc. Lengua y Literatura II', 2, 3),
(NULL, 'Historia y Geografia II', 3, 'Desc. Historia y Geografia II', 2, 3),
(NULL, 'Especializada II', 3, 'Desc. Especializada II', 2, 3),
(NULL, 'Derecho', 3, 'Desc. Derecho', 2, 3),
(NULL, 'Ingles III', 3, 'Desc. Ingles III', 3, 3),
(NULL, 'Legislacion Impositiva', 3, 'Desc. Legislacion Impositiva', 3, 3),
(NULL, 'Informatica III', 3, 'Desc. Informatica III', 3, 3),
(NULL, 'Quimica', 3, 'Desc. Quimica', 3, 3),
(NULL, 'Pensamiento Social Contemporaneo', 3, 'Desc. Pensamiento Social Contemporaneo', 3, 3),
(NULL, 'Especializada III', 3, 'Desc. Especializada III', 3, 3),
(NULL, 'Matematicas III', 3, 'Desc. Matematicas III', 3, 3),
(NULL, 'Lengua y Literatura III', 3, 'Desc. Lengua y Literatura III', 3, 3),
(NULL, 'Economia III', 3, 'Desc. Economia III', 3, 3),
(NULL, 'Educacion Civica', 4, 'Desc. Educacion Civica', 1, 4),
(NULL, 'Especializada I', 4, 'Desc. Especializada I', 1, 4),
(NULL, 'Psicologia', 4, 'Desc. Psicologia', 1, 4),
(NULL, 'Sociologia', 4, 'Desc. Sociologia', 1, 4),
(NULL, 'Ingles I', 4, 'Desc. Ingles I', 1, 4),
(NULL, 'Matematicas I', 4, 'Desc. Matematicas I', 1, 4),
(NULL, 'Historia y Geografia I', 4, 'Desc. Historia y Geografia I', 1, 4),
(NULL, 'Biologia', 4, 'Desc. Biologia', 1, 4),
(NULL, 'Lengua y Literatura I', 4, 'Desc. Lengua y Literatura I', 1, 4),
(NULL, 'Informatica I', 4, 'Desc. Informatica I', 1, 4),
(NULL, 'Ingles II', 4, 'Desc. Ingles II', 2, 4),
(NULL, 'Lengua y Literatura II', 4, 'Desc. Lengua y Literatura II', 2, 4),
(NULL, 'Matematicas II', 4, 'Desc. Matematicas II', 2, 4),
(NULL, 'Informatica II', 4, 'Desc. Informatica II', 2, 4),
(NULL, 'Metodología de la Investigacion', 4, 'Desc. Metodología de la Investigacion', 2, 4),
(NULL, 'Fisica', 4, 'Desc. Fisica', 2, 4),
(NULL, 'Especializada II', 4, 'Desc. Especializada II', 2, 4),
(NULL, 'Historia y Geografia II', 4, 'Desc. Historia y Geografia II', 2, 4),
(NULL, 'Ciencias Politicas', 4, 'Desc. Ciencias Politicas', 2, 4),
(NULL, 'Lengua y Literatura III', 4, 'Desc. Lengua y Literatura III', 3, 4),
(NULL, 'Pensamiento Social Contemporaneo', 4, 'Desc. Pensamiento Social Contemporaneo', 3, 4),
(NULL, 'Matematicas III', 4, 'Desc. Matematicas III', 3, 4),
(NULL, 'Ingles III', 4, 'Desc. Ingles III', 3, 4),
(NULL, 'Filosofia', 4, 'Desc. Filosofia', 3, 4),
(NULL, 'Especializada III', 4, 'Desc. Especializada III', 3, 4),
(NULL, 'Quimica', 4, 'Desc. Quimica', 3, 4),
(NULL, 'Comunicación y Medios', 4, 'Desc. Comunicación y Medios', 3, 4),
(NULL, 'Informatica III', 4, 'Desc. Informatica III', 3, 4),
(NULL, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 7),
(NULL, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 7),
(NULL, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 7),
(NULL, 'Biologia', 3, 'Desc. Biologia', 1, 7),
(NULL, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 7),
(NULL, 'Informatica I', 3, 'Desc. Informatica I', 1, 7),
(NULL, 'Ingles I', 3, 'Desc. Ingles I', 1, 7),
(NULL, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 7),
(NULL, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 7),
(NULL, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 7),
(NULL, 'Organización y Administracion', 3, 'Desc. Organización y Administracion', 1, 6),
(NULL, 'Contabilidad', 3, 'Desc. Contabilidad', 1, 6),
(NULL, 'Gestion Empresarial', 3, 'Desc. Gestion Empresarial', 1, 6),
(NULL, 'Biologia', 3, 'Desc. Biologia', 1, 6),
(NULL, 'Matematicas I', 3, 'Desc. Matematicas I', 1, 6),
(NULL, 'Informatica I', 3, 'Desc. Informatica I', 1, 6),
(NULL, 'Ingles I', 3, 'Desc. Ingles I', 1, 6),
(NULL, 'Lengua y Literatura I', 3, 'Desc. Lengua y Literatura I', 1, 6),
(NULL, 'Historia y Geografia I', 3, 'Desc. Historia y Geografia I', 1, 6),
(NULL, 'Educacion Civica', 3, 'Desc. Educacion Civica', 1, 6);
COMMIT;
