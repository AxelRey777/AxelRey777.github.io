-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:53:42
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(1, 'BTS', 'Grupo de KPOP mas famoso'),
(2, 'Natanael cano', 'Cantante mexicano de corridos tumbados'),
(3, 'Caifanes', 'Banda mexicana de rock fundada en 1989'),
(4, 'Gustavo Cerati', 'Guitarrista Argentino'),
(5, 'Tv girl', 'Grupo musical de estados unidos'),
(6, 'Muse', 'Banda de rock de Reino Unido'),
(7, 'Radiohead', 'Banda de rock britanica'),
(8, 'Kendrick Lamar', 'Rapero estadounidense'),
(9, 'Frank Sinatra', 'Cantante estadounidense'),
(10, 'The Strokes', 'Banda estadounidense de rock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'No dejes que', 1, '00:04:38', '2019-09-11', 1, 'Mascara'),
(2, 'Antes de que nos olviden', 1, '00:06:11', '2024-03-13', 1, 'Mascara'),
(3, 'Afuera', 1, '00:06:10', '2024-06-02', 1, 'popocatepetl'),
(4, 'El año del dragon', 1, '00:05:02', '2024-04-15', 1, 'popocatepetl'),
(5, 'llorona', 1, '00:02:04', '2024-06-01', 1, 'popocatepetl'),
(6, 'miedo', 1, '00:04:00', '2024-06-01', 1, 'popocatepetl'),
(7, 'Ayer medijo un ave', 1, '00:08:30', '2024-06-01', 1, 'popocatepetl'),
(8, 'Aqui no es asi', 1, '00:03:12', '2024-06-02', 1, 'popocatepetl'),
(9, 'Avientame', 1, '00:03:03', '2024-06-01', 1, 'popocatepetl'),
(10, 'Hasta que dejes de respirar', 1, '00:05:03', '2024-06-02', 1, 'popocatepetl'),
(11, 'Quisiera ser alcohol', 1, '00:02:04', '2024-03-12', 1, 'popocatepetl'),
(12, 'Pero nunca me cai', 1, '00:05:08', '2024-05-29', 1, 'popocatepetl\r\n'),
(13, 'metamorfeame', 1, '00:05:33', '2024-02-19', 1, 'Mascara'),
(14, 'Nubes', 1, '00:04:05', '2024-03-12', 1, 'Mascara'),
(15, 'Piedra', 1, '00:02:04', '2024-06-01', 1, 'Mascara'),
(16, 'Diran de mi', 5, '00:04:21', '2023-10-18', 1, 'natamontana'),
(17, 'Mas altas que bajadas', 5, '00:04:29', '2024-06-02', 1, 'natamontana'),
(18, 'la lorekona', 5, '00:03:09', '2024-06-03', 1, 'natamontana'),
(19, 'Un convoy ', 5, '00:06:25', '2024-06-01', 1, 'natamontana'),
(20, 'Pancake', 5, '00:10:33', '2024-06-02', 1, 'natamontana'),
(21, 'viejo lobo', 5, '00:01:33', '2024-06-03', 1, 'natamontana'),
(22, 'AFS', 5, '00:12:33', '2024-06-03', 1, 'natamontana'),
(23, 'eres', 5, '00:05:33', '2024-06-01', 1, 'natamontana'),
(24, 'Mi bello angel', 5, '00:14:33', '2024-06-02', 1, 'natamontana'),
(25, 'en corto', 5, '00:08:22', '2024-06-03', 1, 'natamontana'),
(26, 'AMG', 5, '00:04:22', '2024-06-03', 0, 'natamontana'),
(27, 'Como es aariba es abajo', 5, '00:04:22', '2024-06-01', 1, 'natamontana'),
(28, 'Pacas de billetes', 5, '00:05:44', '2024-06-03', 1, 'natamontana'),
(29, 'dando y dando', 5, '00:04:44', '2024-06-03', 1, 'natamontana'),
(30, 'Ghini', 5, '00:05:33', '2024-06-03', 1, 'natamontana'),
(31, 'intro persona', 3, '00:03:09', '2024-06-03', 1, 'SEVEN'),
(32, 'boy with luv', 3, '00:07:14', '2024-06-01', 1, 'SEVEN'),
(33, 'make it right', 3, '00:05:44', '2024-06-03', 1, 'SEVEN'),
(34, 'dyonisus', 3, '00:04:44', '2024-06-03', 1, 'SEVEN'),
(35, 'interlude shadow', 3, '00:05:33', '2024-06-03', 1, 'SEVEN'),
(36, 'black swan', 3, '00:04:30', '2023-06-03', 1, 'SEVEN'),
(37, 'filter', 3, '00:04:30', '2024-06-04', 1, 'SEVEN'),
(38, 'my time', 3, '00:03:50', '2024-06-07', 1, 'SEVEN'),
(39, 'louder than bombs', 3, '00:03:45', '2024-06-02', 1, 'SEVEN'),
(40, 'On', 3, '00:04:20', '2024-06-01', 1, 'SEVEN'),
(41, 'uGH', 3, '00:02:03', '2024-06-01', 1, 'SEVEN'),
(42, 'Inner child', 3, '00:05:02', '2024-06-01', 1, 'SEVEN'),
(43, 'Friends', 3, '00:04:03', '2024-06-01', 1, 'SEVEN'),
(44, 'Moon', 3, '00:05:30', '2024-06-02', 1, 'SEVEN'),
(45, 'respect', 3, '00:01:30', '2024-06-04', 1, 'SEVEN'),
(46, 'Tabu', 1, '00:03:09', '2024-06-02', 1, 'Bocanada'),
(47, 'Engana', 1, '00:06:25', '2024-06-01', 1, 'Bocanada'),
(48, 'Bocanada', 1, '00:05:44', '2024-06-03', 1, 'Bocanada'),
(49, 'Puente', 1, '00:04:44', '2024-06-03', 1, 'Bocanada'),
(50, 'Rio babel', 1, '00:05:33', '2024-06-03', 1, 'Bocanada'),
(51, 'Beatiful', 1, '00:07:29', '2024-06-03', 1, 'Bocanada'),
(52, 'Perdonar es divino', 1, '00:04:24', '2024-06-03', 1, 'Bocanada'),
(53, 'verbo carne', 1, '00:01:07', '2024-06-03', 1, 'Bocanada'),
(54, 'Raiz', 1, '00:02:35', '2024-06-03', 1, 'Bocanada'),
(55, 'Y si el humo esta en foco...', 1, '00:06:24', '2024-06-03', 1, 'Bocanada'),
(56, 'Paseo inmporal', 1, '00:01:22', '2024-06-03', 1, 'Bocanada'),
(57, 'Aqui y hora', 1, '00:06:52', '2024-06-03', 1, 'Bocanada'),
(58, 'aqui y ahora y despues', 1, '00:05:14', '2024-06-02', 1, 'Bocanada'),
(59, 'Alma', 1, '00:03:27', '2024-06-02', 1, 'Bocanada'),
(60, 'Balsa', 1, '00:05:00', '2024-06-03', 1, 'Bocanada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'Rock'),
(2, 'jazz'),
(3, 'kpop'),
(4, 'funk'),
(5, 'corridos'),
(6, 'rock alternativo\r\n'),
(7, 'rap'),
(8, 'clasica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `descripcion`, `precio`) VALUES
(1, 'individual', 129),
(2, 'estudiantes', 69),
(3, 'duo', 169),
(4, 'familiar', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Axel', 'axel@gmail.com', 1),
(2, 'Jeyli', 'jeyli@gmail.com', 1),
(3, 'Federico', 'federico@gmail.com', 3),
(4, 'Alejandra', 'alejandra@gmail.com', 3),
(5, 'Juan', 'Juan@gmail.com', 4),
(6, 'Hilda', 'Hilda@gmail.com', 4),
(7, 'Ethan', 'ethan@gmail.com', 4),
(8, 'Santiago', 'santiago@gmail.com', 4),
(9, 'Joaquin', 'joaquin@gmail.com', 3),
(10, 'jesica', 'jesica@gmail.com', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descripcion` (`descripcion`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`,`cancion_id`),
  ADD KEY `artista_id_2` (`artista_id`,`cancion_id`),
  ADD KEY `artista_id_3` (`artista_id`,`cancion_id`),
  ADD KEY `artista_id_4` (`artista_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`,`cancion_id`,`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
