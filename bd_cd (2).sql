-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2020 a las 20:39:39
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo_maestro`
--

CREATE TABLE `codigo_maestro` (
  `codigo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `codigo_maestro`
--

INSERT INTO `codigo_maestro` (`codigo`) VALUES
(1234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id_dia` int(11) NOT NULL,
  `dia` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`id_dia`, `dia`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades_medicas`
--

CREATE TABLE `especialidades_medicas` (
  `id_especialidad` int(11) NOT NULL,
  `especialidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `especialidades_medicas`
--

INSERT INTO `especialidades_medicas` (`id_especialidad`, `especialidad`) VALUES
(1, 'Cirugía y Traumatología Buco Maxilofacial'),
(2, 'Ortodoncia y Ortopedia Maxilofacial'),
(3, 'Periodoncia'),
(4, 'Imagenología Oral y Maxilofacial'),
(5, 'Rehabilitación Oral'),
(6, 'Endodoncia'),
(7, 'Odontopediatría'),
(8, 'Implantología oral'),
(9, 'Odontología estética o cosmética'),
(10, 'Odontología preventiva'),
(11, 'Cirugía maxilofacial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas_ocupadas`
--

CREATE TABLE `fechas_ocupadas` (
  `idfechasocupadas` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes_fecha` int(11) NOT NULL,
  `bloque` varchar(45) NOT NULL,
  `dia_fecha` int(11) DEFAULT NULL,
  `rut` varchar(45) NOT NULL,
  `diagnostico` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fechas_ocupadas`
--

INSERT INTO `fechas_ocupadas` (`idfechasocupadas`, `id_medico`, `dia`, `mes_fecha`, `bloque`, `dia_fecha`, `rut`, `diagnostico`) VALUES
(39, 107, 2, 12, '1', 13, '00.000.000-0', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `hora` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_medico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `dia`, `hora`, `id_medico`) VALUES
(1857, 1, '8:00-9:30', 108),
(1858, 1, '14:30-16:00', 108),
(1859, 1, '19:45-21:15', 108),
(1860, 1, '11:30-13:00', 108),
(1861, 1, '16:15-17:45', 108),
(1862, 1, '18:00-19:30', 108),
(1863, 2, '8:00-9:30', 108),
(1864, 2, '16:15-17:45', 108),
(1865, 2, '11:30-13:00', 108),
(1866, 2, '18:00-19:30', 108),
(1867, 3, '16:15-17:45', 108),
(1868, 4, '8:00-9:30', 108),
(1869, 4, '18:00-19:30', 108),
(1870, 4, '14:30-16:00', 108),
(1871, 5, '18:00-19:30', 108),
(1872, 5, '19:45-21:15', 108),
(1873, 1, '11:30-13:00', 109),
(1874, 1, '16:15-17:45', 109),
(1875, 2, '16:15-17:45', 109),
(1876, 2, '18:00-19:30', 109),
(1877, 2, '14:30-16:00', 109),
(1878, 2, '19:45-21:15', 109),
(1879, 2, '8:00-9:30', 109),
(1880, 2, '9:45-11:15', 109),
(1881, 3, '9:45-11:15', 109),
(1882, 3, '8:00-9:30', 109),
(1883, 3, '19:45-21:15', 109),
(1884, 3, '11:30-13:00', 109),
(1885, 3, '16:15-17:45', 109),
(1886, 3, '18:00-19:30', 109),
(1887, 4, '8:00-9:30', 109),
(1888, 5, '8:00-9:30', 109),
(1889, 5, '16:15-17:45', 109),
(1890, 5, '18:00-19:30', 109),
(1891, 5, '9:45-11:15', 109),
(1892, 5, '14:30-16:00', 109),
(1893, 6, '19:45-21:15', 109),
(1894, 6, '11:30-13:00', 109),
(1895, 1, '11:30-13:00', 110),
(1896, 1, '14:30-16:00', 110),
(1897, 1, '18:00-19:30', 110),
(1898, 2, '19:45-21:15', 110),
(1899, 2, '8:00-9:30', 110),
(1900, 2, '11:30-13:00', 110),
(1901, 2, '14:30-16:00', 110),
(1902, 2, '18:00-19:30', 110),
(1903, 3, '11:30-13:00', 110),
(1904, 3, '8:00-9:30', 110),
(1905, 3, '18:00-19:30', 110),
(1906, 3, '9:45-11:15', 110),
(1907, 4, '19:45-21:15', 110),
(1908, 4, '11:30-13:00', 110),
(1909, 4, '18:00-19:30', 110),
(1910, 4, '9:45-11:15', 110),
(1911, 4, '14:30-16:00', 110),
(1912, 4, '16:15-17:45', 110),
(1913, 5, '14:30-16:00', 110),
(1914, 5, '19:45-21:15', 110),
(1915, 5, '18:00-19:30', 110),
(1916, 5, '11:30-13:00', 110),
(1917, 5, '9:45-11:15', 110),
(1918, 5, '16:15-17:45', 110),
(1919, 6, '11:30-13:00', 110),
(1920, 6, '19:45-21:15', 110),
(1921, 6, '16:15-17:45', 110),
(1922, 6, '14:30-16:00', 110),
(1923, 6, '9:45-11:15', 110),
(1924, 1, '9:45-11:15', 111),
(1925, 2, '16:15-17:45', 111),
(1926, 2, '9:45-11:15', 111),
(1927, 2, '18:00-19:30', 111),
(1928, 3, '16:15-17:45', 111),
(1929, 3, '11:30-13:00', 111),
(1930, 3, '19:45-21:15', 111),
(1931, 3, '14:30-16:00', 111),
(1932, 4, '8:00-9:30', 111),
(1933, 4, '11:30-13:00', 111),
(1934, 4, '9:45-11:15', 111),
(1935, 4, '19:45-21:15', 111),
(1936, 4, '18:00-19:30', 111),
(1937, 4, '14:30-16:00', 111),
(1938, 5, '19:45-21:15', 111),
(1939, 5, '14:30-16:00', 111),
(1940, 5, '16:15-17:45', 111),
(1941, 5, '18:00-19:30', 111),
(1942, 6, '16:15-17:45', 111),
(1943, 6, '9:45-11:15', 111),
(1944, 1, '9:45-11:15', 112),
(1945, 1, '8:00-9:30', 112),
(1946, 1, '11:30-13:00', 112),
(1947, 2, '11:30-13:00', 112),
(1948, 2, '9:45-11:15', 112),
(1949, 2, '14:30-16:00', 112),
(1950, 2, '16:15-17:45', 112),
(1951, 2, '19:45-21:15', 112),
(1952, 3, '9:45-11:15', 112),
(1953, 3, '11:30-13:00', 112),
(1954, 3, '18:00-19:30', 112),
(1955, 4, '11:30-13:00', 112),
(1956, 4, '18:00-19:30', 112),
(1957, 4, '8:00-9:30', 112),
(1958, 5, '16:15-17:45', 112),
(1959, 5, '18:00-19:30', 112),
(1960, 5, '14:30-16:00', 112),
(1961, 5, '8:00-9:30', 112),
(1962, 5, '11:30-13:00', 112),
(1963, 5, '19:45-21:15', 112),
(1964, 6, '11:30-13:00', 112),
(1965, 6, '14:30-16:00', 112),
(1966, 6, '9:45-11:15', 112),
(1967, 6, '16:15-17:45', 112),
(1968, 1, '19:45-21:15', 113),
(1969, 1, '18:00-19:30', 113),
(1970, 3, '19:45-21:15', 113),
(1971, 3, '9:45-11:15', 113),
(1972, 3, '11:30-13:00', 113),
(1973, 3, '8:00-9:30', 113),
(1974, 3, '16:15-17:45', 113),
(1975, 4, '9:45-11:15', 113),
(1976, 4, '18:00-19:30', 113),
(1977, 4, '19:45-21:15', 113),
(1978, 4, '14:30-16:00', 113),
(1979, 5, '8:00-9:30', 113),
(1996, 3, '19:45-21:15', 115),
(1997, 3, '18:00-19:30', 115),
(1998, 5, '14:30-16:00', 115),
(1999, 6, '9:45-11:15', 115),
(2013, 1, '9:45-11:15', 114),
(2014, 5, '9:45-11:15', 114),
(2015, 4, '11:30-13:00', 114),
(2016, 5, '16:15-17:45', 114),
(2017, 2, '18:00-19:30', 114),
(2018, 1, '11:30-13:00', 116),
(2019, 1, '9:45-11:15', 116),
(2020, 1, '18:00-19:30', 116),
(2021, 1, '8:00-9:30', 116),
(2022, 2, '8:00-9:30', 116),
(2023, 2, '19:45-21:15', 116),
(2024, 2, '9:45-11:15', 116),
(2025, 2, '11:30-13:00', 116),
(2026, 2, '18:00-19:30', 116),
(2027, 2, '16:15-17:45', 116),
(2028, 3, '14:30-16:00', 116),
(2029, 3, '9:45-11:15', 116),
(2030, 3, '19:45-21:15', 116),
(2031, 3, '11:30-13:00', 116),
(2032, 3, '16:15-17:45', 116),
(2033, 3, '18:00-19:30', 116),
(2034, 4, '9:45-11:15', 116),
(2035, 4, '19:45-21:15', 116),
(2036, 4, '11:30-13:00', 116),
(2037, 5, '8:00-9:30', 116),
(2038, 5, '14:30-16:00', 116),
(2039, 5, '16:15-17:45', 116),
(2040, 6, '8:00-9:30', 116),
(2041, 6, '18:00-19:30', 116),
(2042, 6, '9:45-11:15', 116),
(2043, 6, '19:45-21:15', 116),
(2044, 6, '11:30-13:00', 116),
(2045, 6, '14:30-16:00', 116);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rut` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `id_especialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id_medico`, `nombre`, `apellido`, `rut`, `id_especialidad`) VALUES
(116, 'Diego', 'Herrera', '18.754.361-4', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rut` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(14) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `nombre`, `apellidos`, `fecha_nacimiento`, `rut`, `direccion`, `telefono`) VALUES
(7, 'Ricardo', 'Neyra', '12/08/2020', '18.754.361-4', 'Direccion', '9999999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `usuario` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `medico` int(11) NOT NULL,
  `especialidad` int(11) NOT NULL,
  `rut` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`usuario`, `clave`, `nombre`, `apellidos`, `ciudad`, `medico`, `especialidad`, `rut`) VALUES
('medico', '1234', 'Diego', 'Herrera', 'La Serena', 1, 1, '18.754.361-4'),
('secretaria', '1234', 'Diego', 'Herrera', 'La Serena', 0, -1, '18.754.361-4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `codigo_maestro`
--
ALTER TABLE `codigo_maestro`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id_dia`),
  ADD UNIQUE KEY `id_dia` (`id_dia`),
  ADD UNIQUE KEY `id_dia_2` (`id_dia`),
  ADD KEY `id_dia_3` (`id_dia`);

--
-- Indices de la tabla `especialidades_medicas`
--
ALTER TABLE `especialidades_medicas`
  ADD PRIMARY KEY (`id_especialidad`),
  ADD UNIQUE KEY `id_especialidad` (`id_especialidad`);

--
-- Indices de la tabla `fechas_ocupadas`
--
ALTER TABLE `fechas_ocupadas`
  ADD PRIMARY KEY (`idfechasocupadas`),
  ADD KEY `id_medico_idx` (`id_medico`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `horarios_ibfk_1` (`id_medico`),
  ADD KEY `dia` (`dia`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id_medico`),
  ADD UNIQUE KEY `id_medico` (`id_medico`),
  ADD KEY `especialidad` (`id_especialidad`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id_dia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `especialidades_medicas`
--
ALTER TABLE `especialidades_medicas`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `fechas_ocupadas`
--
ALTER TABLE `fechas_ocupadas`
  MODIFY `idfechasocupadas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2046;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dias` (`id_dia`);

--
-- Filtros para la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades_medicas` (`id_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
