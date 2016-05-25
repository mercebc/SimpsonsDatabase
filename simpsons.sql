-- phpMyAdmin SQL Dump
-- version 4.4.13
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-10-2015 a las 10:53:22
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `simpsons`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodios`
--

CREATE TABLE IF NOT EXISTS `episodios` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estreno` date NOT NULL,
  `web` varchar(255) NOT NULL,
  `sinopsis` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `episodios`
--

INSERT INTO `episodios` (`id`, `nombre`, `estreno`, `web`, `sinopsis`) VALUES
(1, 'Good Night', '1987-04-19', 'https://en.wikipedia.org/wiki/Good_Night_(The_Simpsons_short)', 'Marge y Homer les dan las buenas noches a sus hijos pero todo no estÃ¡ planeado. FilosÃ³ficamente Bart contempla las maravillas de la mente, Lisa escucha a Marge decir: "Si no te duermes viene el Coco" y teme que realmente venga; y Maggie estÃ¡ traumatizada con la canciÃ³n "Rock-a-bye Baby". Al final, todos los hijos deciden dormir con sus padres.'),
(2, 'Simpsons Roasting on an Open Fire', '1989-12-17', 'https://en.wikipedia.org/wiki/Simpsons_Roasting_on_an_Open_Fire', 'Todo comienza cuando, despuÃ©s de haber asistido al espectÃ¡culo de Navidad de Bart y Lisa a la Escuela Primaria de Springfield, Marge les pregunta quÃ© desean recibir como regalos para Navidad: Bart pide un tatuaje y Lisa pide un poni, pero Marge se niega a ofrecerles estos regalos. '),
(3, 'Oh Brother, Where Art Thou?', '1991-02-21', 'https://en.wikipedia.org/wiki/Oh_Brother,_Where_Art_Thou%3F', 'Jasper Beardley y Abraham Simpson estÃ¡n en el cine mirando una pelÃ­cula, pero se molestan mucho por la incomodidad y por la mala iluminaciÃ³n. Luego de la pelÃ­cula, el abuelo se queja furioso con Jeremy Freedman de lo malo que es ese cine. Jeremy le advierte que siendo anciano, no debe agitarse tanto por que podrÃ­a darle un ataque; pero Ã©l no se tranquiliza: el Abuelo cae al suelo y es llevado al hospital.'),
(4, 'Bart After Dark', '1996-11-24', 'https://en.wikipedia.org/wiki/Bart_After_Dark', 'Todo comienza cuando una caricatura de Itchy & Scratchy se interrumpe para emitir un boletÃ­n especial de noticias: un contenedor de petrÃ³leo se habÃ­a quebrado y habÃ­a derramado miles de litros de petrÃ³leo en la playa "Baby Seal".');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE IF NOT EXISTS `personajes` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `sexo` enum('masculino','femenino') NOT NULL,
  `edad` tinyint(3) unsigned NOT NULL,
  `ocupacion` varchar(100) NOT NULL,
  `cabello` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `role` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `sexo`, `edad`, `ocupacion`, `cabello`, `web`, `role`) VALUES
(1, 'Homer Simpson', 'masculino', 38, 'inspector de seguridad de la planta de energÃ­a nuclear de Springfield', 'Actualmente dos pelos arriba y dos pelos en forma de M a cada costado.', 'https://en.wikipedia.org/wiki/Homer_Simpson', 'Homer Simpson realiza las tÃ­picas funciones patriarcales de cabeza de familia en las telecomedias: es quien lleva dinero al hogar y descuida los quehaceres domÃ©sticos por el ocio.'),
(2, 'Marge Simpson', 'femenino', 34, 'ama de casa', 'Beehive en color azul', 'https://en.wikipedia.org/wiki/Marge_Simpson', 'Esencialmente ella es ama de casa, abocada a los quehaceres domÃ©sticos, como limpiar, cocinar y cuidar de sus hijos, y a la gestiÃ³n econÃ³mica de la casa. '),
(3, 'Bart Simpson', 'masculino', 10, 'estudiante', 'Rubio encrestado, con nueve puntas', 'https://en.wikipedia.org/wiki/Bart_Simpson', 'Su rol principal es el de hacer travesuras, ademÃ¡s de meterse Ã©l mismo en lÃ­os o a los demÃ¡s, y asÃ­ generar tramas para los episodios'),
(4, 'Lisa Simpson', 'femenino', 8, 'estudiante', 'Rubio puntiagudo de ocho puntas', 'https://en.wikipedia.org/wiki/Lisa_Simpson', 'NiÃ±a superdotada, rendimiento acadÃ©mico sea elevado, aficiÃ³n a la lectura y al estudio. Plantea los problemas tÃ­picos que conlleva la convivencia de dos hermanos de diferente sexo con apenas dos aÃ±os de diferencia y en cuestionar los valores del mundo adulto.'),
(5, 'Maggie Simpson', 'femenino', 1, 'bebÃ©', 'Rubio puntiagudo', 'https://en.wikipedia.org/wiki/Maggie_Simpson', 'El rol que Maggie desempeÃ±a en la serie estÃ¡ muy reducido y puede, o no, concordar con su edad. Como bebÃ©, Maggie se limita a comer, dormir, defecar, eructar y succionar su chupete.'),
(6, 'Grampa Simpson', 'masculino', 83, 'jubilado\r\n', 'CafÃ©/Amarillo', 'https://en.wikipedia.org/wiki/Grampa_Simpson', 'Abraham Simpson es el abuelo de la familia protagonista, bastante despreciado por sus seres queridos y marginado por su condiciÃ³n de anciano. Su rol en la serie es generalmente auxiliar. Cuida de los niÃ±os.'),
(7, 'Mona Simpson', 'femenino', 75, 'activista', 'Canoso', 'https://en.wikipedia.org/wiki/Mona_Simpson_(The_Simpsons)', 'Durante los aÃ±os 60, cuando Homer era un niÃ±o, ingresÃ³ en el movimiento hippie llegando a participar en el activismo contra el capitalismo y el consumismo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparto`
--

CREATE TABLE IF NOT EXISTS `reparto` (
  `id` int(10) unsigned NOT NULL,
  `personaje_id` int(10) unsigned NOT NULL,
  `episodio_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reparto`
--

INSERT INTO `reparto` (`id`, `personaje_id`, `episodio_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 3),
(8, 4, 4),
(9, 2, 4),
(10, 3, 4),
(11, 1, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `episodios`
--
ALTER TABLE `episodios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personaje_id` (`personaje_id`),
  ADD KEY `episodio_id` (`episodio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `episodios`
--
ALTER TABLE `episodios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `reparto`
--
ALTER TABLE `reparto`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD CONSTRAINT `reparto_ibfk_1` FOREIGN KEY (`personaje_id`) REFERENCES `personajes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reparto_ibfk_2` FOREIGN KEY (`episodio_id`) REFERENCES `episodios` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
