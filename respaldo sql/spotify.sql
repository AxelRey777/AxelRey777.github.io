-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2024 a las 10:01:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(60, 'Balsa', 1, '00:05:00', '2024-06-03', 1, 'Bocanada'),
(61, 'pantyhouse', 4, '00:06:10', '2024-06-03', 1, 'French exit'),
(62, 'Birds dont sing', 4, '00:03:06', '2024-06-02', 1, 'French exit'),
(63, 'louise', 4, '00:03:23', '2024-06-02', 1, 'French exit'),
(64, 'hate yourself', 4, '00:04:40', '2024-06-04', 1, 'French exit'),
(65, 'the gateway', 4, '00:04:03', '2024-06-04', 1, 'French exit'),
(66, 'talk to strangers', 4, '00:04:02', '2024-06-06', 1, 'French exit'),
(67, 'the blonde', 4, '00:06:42', '2024-06-04', 1, 'French exit'),
(68, 'daughter of a cop', 4, '00:05:04', '2024-06-03', 1, 'French exit'),
(69, 'Lovers Rock', 4, '00:02:35', '2024-06-04', 1, 'French exit'),
(70, 'her and her friend', 4, '00:05:54', '2024-06-02', 1, 'French exit'),
(71, 'come when you call', 4, '00:04:12', '2024-06-03', 1, 'French exit'),
(72, 'Anjela', 4, '00:05:13', '2024-06-03', 1, 'French exit'),
(73, 'takin what not yours', 6, '00:04:42', '2024-06-04', 1, 'who really cares'),
(74, 'song about me', 6, '00:02:12', '2024-06-03', 1, 'who really cares'),
(75, 'cigarretes out the window', 6, '00:04:21', '2024-06-05', 1, 'who really cares'),
(76, 'intro', 6, '00:05:09', '2024-06-04', 1, 'Absolution'),
(77, 'apocalypse please', 6, '00:06:09', '2024-06-05', 1, 'Absolution'),
(78, 'time is running out', 1, '00:03:20', '2024-06-03', 1, 'Absolution'),
(79, 'sign of absolution', 6, '00:03:02', '2024-06-05', 1, 'Absolution'),
(80, 'stockholm syndrome', 4, '00:03:20', '2024-06-05', 1, 'Absolution'),
(81, ' falling away with you', 1, '00:02:20', '2024-06-04', 1, 'Absolution'),
(82, 'interlude', 1, '00:04:30', '2024-06-06', 1, 'Absolution'),
(83, 'hysteria', 6, '00:04:20', '2024-06-06', 1, 'Absolution'),
(84, 'blackout', 1, '00:03:20', '2024-06-04', 1, 'Absolution'),
(85, 'butterflies and hurricanes', 6, '00:04:30', '2024-06-03', 1, 'Absolution'),
(86, 'the small print', 6, '00:04:30', '2024-06-04', 1, 'Absolution'),
(87, 'fury', 6, '00:04:23', '2024-06-05', 1, 'Absolution'),
(88, 'endlessly', 6, '00:01:32', '2024-06-05', 1, 'Absolution'),
(89, 'troughts of a dying atheist', 1, '00:03:23', '2024-06-05', 1, 'Absolution'),
(90, 'ruled by secrecy', 6, '00:03:22', '2024-06-04', 1, 'Absolution'),
(91, 'airbag', 6, '00:07:07', '2024-06-04', 1, 'Ok computer'),
(92, 'paranoid android', 6, '00:03:23', '2024-06-05', 1, 'Ok computer'),
(93, 'subterranean homesick alien', 6, '00:04:30', '2024-06-06', 1, 'Ok computer'),
(94, 'exit music', 6, '00:05:40', '2024-06-03', 1, 'Ok computer'),
(95, 'let down', 1, '00:05:21', '2024-06-02', 1, 'Ok computer'),
(96, 'karma police', 6, '00:02:12', '2024-06-04', 1, 'Ok computer'),
(97, 'fitter happier', 1, '00:03:23', '2024-06-04', 1, 'Ok computer'),
(98, 'electioneering', 1, '00:05:32', '2024-06-05', 1, 'Ok computer'),
(99, 'climbing up the walls', 1, '00:03:23', '2024-06-05', 1, 'Ok computer'),
(100, 'climbing up walls', 1, '00:03:43', '2024-06-07', 1, 'Ok computer'),
(101, 'no surprises', 6, '00:06:32', '2024-06-05', 1, 'Ok computer'),
(102, 'lucky', 6, '00:05:32', '2024-06-05', 1, 'Ok computer'),
(103, 'the tourist', 6, '00:02:12', '2024-06-04', 1, 'Ok computer'),
(104, 'creep', 1, '00:05:42', '2024-06-05', 1, 'pablo honey'),
(105, 'anyone can play guitar', 6, '00:03:12', '2024-06-05', 1, 'pablo honey'),
(106, 'united in grief', 7, '00:04:21', '2024-06-04', 1, 'mr morale and the big steppers'),
(107, 'N', 7, '00:04:21', '2024-06-05', 1, 'mr morale and the big steppers'),
(108, 'worldwide steppers', 7, '00:03:21', '2024-06-06', 1, 'mr morale and the big steppers'),
(109, 'die hard', 7, '00:03:32', '2024-06-03', 1, 'mr morale and the big steppers'),
(110, 'father time', 7, '00:03:54', '2024-06-05', 1, 'mr morale and the big steppers'),
(111, 'rich interlude', 7, '00:03:42', '2024-06-07', 1, 'mr morale and the big steppers'),
(112, 'rich spirit', 1, '00:05:42', '2024-06-03', 1, 'mr morale and the big steppers'),
(113, 'we cry together', 7, '00:03:43', '2024-06-02', 1, 'mr morale and the big steppers'),
(114, 'purple hearts', 7, '00:04:32', '2024-06-04', 1, 'mr morale and the big steppers'),
(115, 'count me out', 7, '00:05:32', '2024-06-05', 1, 'mr morale and the big steppers'),
(116, 'crown', 7, '00:04:32', '2024-06-05', 1, 'mr morale and the big steppers'),
(117, 'silent hill', 7, '00:04:12', '2024-06-05', 1, 'mr morale and the big steppers'),
(118, 'savior interlude', 7, '00:05:43', '2024-06-04', 1, 'mr morale and the big steppers'),
(119, 'mr morale', 7, '00:05:12', '2024-06-05', 1, 'mr morale and the big steppers'),
(120, 'auntie diaries', 7, '00:05:41', '2024-06-04', 1, 'mr morale and the big steppers'),
(121, 'the world we knew', 8, '00:04:32', '2024-06-03', 1, 'the world we knew'),
(122, 'somethin stupid', 2, '00:03:23', '2024-06-04', 1, 'the world we knew'),
(123, 'this is my love', 8, '00:03:12', '2024-06-03', 1, 'the world we knew'),
(124, 'born free', 2, '00:05:32', '2024-06-04', 1, 'the world we knew'),
(125, 'dont sleep in the subway', 2, '00:04:21', '2024-06-03', 1, 'the world we knew'),
(126, 'this town', 8, '00:04:30', '2024-06-04', 1, 'the world we knew'),
(127, 'this is my song', 8, '00:06:43', '2024-06-04', 1, 'the world we knew'),
(128, 'you are there', 2, '00:01:23', '2024-06-04', 1, 'the world we knew'),
(129, 'drinking again', 8, '00:03:12', '2024-06-04', 1, 'the world we knew'),
(130, 'som enchanted evening', 8, '00:03:23', '2024-06-04', 1, 'the world we knew'),
(131, 'strangers in the night', 2, '00:04:12', '2024-06-04', 1, 'strangers in the night'),
(132, 'summer wind', 2, '00:04:03', '2024-06-04', 1, 'strangers in the night'),
(133, 'all or nothing at all', 2, '00:02:12', '2024-06-05', 1, 'strangers in the night'),
(134, 'downtown', 2, '00:05:43', '2024-06-05', 1, 'strangers in the night'),
(135, 'call me', 8, '00:04:54', '2024-06-06', 1, 'strangers in the night'),
(136, 'the adults are talking', 4, '00:03:23', '2024-06-04', 1, 'The new abnormal'),
(137, 'selfless', 1, '00:04:32', '2024-06-04', 1, 'The new abnormal'),
(138, 'brooklyn bridge to chorus', 6, '00:02:42', '2024-06-04', 1, 'The new abnormal'),
(139, 'bad desicions', 1, '00:05:32', '2024-06-02', 1, 'The new abnormal'),
(140, 'eternal summer', 6, '00:03:32', '2024-06-04', 1, 'The new abnormal'),
(141, 'at the door', 6, '00:05:32', '2024-06-03', 1, 'The new abnormal'),
(142, 'why are sundays so depressing', 1, '00:05:32', '2024-06-04', 1, 'The new abnormal'),
(143, 'not the same anymore', 1, '00:04:54', '2024-06-05', 1, 'The new abnormal'),
(144, 'ode to mets', 6, '00:05:42', '2024-06-05', 1, 'The new abnormal'),
(145, 'is this it', 1, '00:03:56', '2024-06-05', 1, 'Is this it'),
(146, 'someday', 1, '00:05:32', '2024-06-05', 1, 'Is this it'),
(147, 'alone together', 6, '00:05:32', '2024-06-04', 1, 'Is this it'),
(148, 'last nite', 4, '00:05:13', '2024-06-05', 1, 'Is this it'),
(149, 'take it or leave it', 6, '00:04:32', '2024-06-05', 1, 'Is this it'),
(150, 'hard to explain', 1, '00:02:23', '2024-06-04', 1, 'Is this it');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
