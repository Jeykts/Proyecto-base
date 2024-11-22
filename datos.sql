-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2024 a las 05:52:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `divicion` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `modalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `nivel`, `divicion`, `turno`, `modalidad`) VALUES
(1, '23', '7', 'mañana', 'programacion'),
(2, '23', '7', 'mañana', 'programacion'),
(3, '23', '7', 'mañana', 'programacion'),
(4, '5', '7', 'mañana', 'programacion'),
(5, '5', '23', '3', '3'),
(6, '5', '3', '3', '3'),
(7, '5', '7', 'mañana', 'programacion'),
(8, '5', '7', '32', 'programacion'),
(9, '232', '7', 'mañana', 'programacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE `dia` (
  `id_dia` int(11) NOT NULL,
  `ingreso` time DEFAULT NULL,
  `salida` time DEFAULT NULL,
  `fecha` date NOT NULL,
  `dia` varchar(20) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dia`
--

INSERT INTO `dia` (`id_dia`, `ingreso`, `salida`, `fecha`, `dia`, `id_usuario`) VALUES
(1, '01:48:00', '02:49:00', '2024-11-05', '23', NULL),
(2, NULL, '04:47:55', '2024-11-22', 'Friday', 5),
(3, '01:05:00', '00:00:00', '2024-11-22', 'Friday', 8),
(4, '00:32:00', '00:00:00', '2024-11-22', 'Friday', 12),
(5, '00:42:00', '00:00:00', '2024-11-22', 'Friday', 22),
(6, '00:45:00', '01:52:32', '2024-11-22', 'Friday', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena`
--

CREATE TABLE `resena` (
  `id_reseña` int(11) NOT NULL,
  `calificacion` int(11) DEFAULT NULL CHECK (`calificacion` between 1 and 5),
  `donacion` decimal(10,2) DEFAULT NULL,
  `opinion` text DEFAULT NULL,
  `resena` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resena`
--

INSERT INTO `resena` (`id_reseña`, `calificacion`, `donacion`, `opinion`, `resena`) VALUES
(1, 4, 23.00, '23', NULL),
(2, 4, 4.00, 'asdas', NULL),
(3, 4, 3434.00, '4334', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dni` char(8) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `rol`, `email`, `dni`, `fecha_nacimiento`) VALUES
(5, 'Jeyk', 'BERRONDO', '23', 'kalanwa7@gmail.com', '211', '2024-11-15'),
(6, 'Jeyk', 'BERRONDO', '23', 'ishopjeys@gmail.com', '657567', '2024-11-14'),
(7, 'Nazareno Hernan', 'De mauricio Real', 'estudiante', 'nazademauricio54@gmail.com', '69', '2024-11-01'),
(8, 'Jeyk', 'BERRONDO', '23', 'ishopjeys@gmail.com', '70', '2024-11-08'),
(9, 'tuki', 'BERRONDO', '23', 'ishopjeys@gmail.com', '14', '2024-11-21'),
(10, 'Jeyk', 'BERRONDO', '23', 'kalanwa7@gmail.com', '690', '2024-11-21'),
(11, 'Jeyk', 'BERRONDO', 'estudiante', 'ishopjeys@gmail.com', '6575671', '2024-11-14'),
(12, 'Jeyk', 'BERRONDO', '23', 'kalanwa7@gmail.com', '10', '2024-11-21'),
(13, 'Jeyk', 'BERRONDO', 'estudiante', 'ishopjeys@gmail.com', '6576', '2024-11-19'),
(14, 'Jeyk', 'BERRONDO', 'estudiante', 'ishopjeys@gmail.com', '657623', '2024-11-19'),
(15, 'Jeyk', 'BERRONDO', 'estudiante', 'ishopjeys@gmail.com', '6576235', '2024-11-19'),
(16, 'Jeyk', 'BERRONDO', '23', 'ishopjeys@gmail.com', '234334', '2024-11-21'),
(17, 'Jeyk', 'BERRONDO', '23', 'ishopjeys@gmail.com', '32323232', '2024-11-21'),
(18, 'Jeyk', 'BERRONDO', '23', 'ishopjeys@gmail.com', '32323231', '2024-11-21'),
(19, 'Jeyk', 'BERRONDO', '23', 'ishopjeys@gmail.com', '32323238', '2024-11-21'),
(20, 'Jeyk', 'BERRONDO', '2323', 'ishopjeys@gmail.com', '2323', '2024-11-21'),
(21, 'Jeyk', 'BERRONDO', 'estudiante', 'kalanwa7@gmail.com', '12123', '2024-11-21'),
(22, 'Jeyk', 'BERRONDO', 'estudiante67', 'kalanwa7@gmail.com', '67673', '2024-11-20'),
(23, 'Jeyk', 'BERRONDO', 'estudiante', 'ishopjeys@gmail.com', '7', '2024-11-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`id_dia`),
  ADD KEY `relacion usu` (`id_usuario`);

--
-- Indices de la tabla `resena`
--
ALTER TABLE `resena`
  ADD PRIMARY KEY (`id_reseña`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `dia`
--
ALTER TABLE `dia`
  MODIFY `id_dia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `resena`
--
ALTER TABLE `resena`
  MODIFY `id_reseña` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dia`
--
ALTER TABLE `dia`
  ADD CONSTRAINT `relacion usu` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
