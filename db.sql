-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-08-2022 a las 13:58:50
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basediplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(2, 'Receta para un Lemon Pie', 'Prepará un delicioso Lemon pie con nosotros', 'Ingredientes\r\n100 g de manteca blanda\r\n1 yema\r\n2 cucharadas de azúcar\r\n2 cucharadas de agua fría\r\n1 cucharada de vinagre\r\n1 taza de harina   \r\n\r\nPreparación\r\nPaso 1\r\n\r\nLa masa. Aplastar con el tenedor la manteca, la yema, el azúcar, el agua y el vinagre, hasta obtener una pasta. Incorporar de a poco la harina hasta que se forme un bollo.\r\n\r\nPaso 2\r\n\r\nAplastar ligeramente la masa con el palote enharinado, colocarla en una tartera desarmable enmantecada y enharinada y terminar de estirarla aplastando con los dedos enharinados. Pincharla con un tenedor. Recortar los bordes en forma prolija.\r\n\r\nPaso 3\r\n\r\nCocinar la tarta en horno caliente hasta que la masa esté sequita y suavemente dorada. Retirar del horno y dejar enfriar.\r\n\r\nPaso 4\r\n\r\nEl relleno. Poner en una cacerola el agua, el azúcar, el jugo de limón y la fécula. Mezclar con batidor de alambre. Llevar al fuego y cocinar mezclando continuamente hasta que la preparación hierva y espese. Retirar del fuego y verter sobre las yemas previamente batidas.\r\n\r\nPaso 5\r\n\r\nVolver a poner la mezcla en la cacerola y llevar nuevamente al fuego, revolviendo siempre hasta que espese un poco más. Retirar la mezcla del fuego, tamizarla en un bol y, mientras esté caliente, mezclar la manteca y la ralladura.\r\n\r\nPaso 6\r\n\r\nUna vez tibia la crema, rellenar la tarta precocida, alisando la superficie.\r\n\r\nPaso 7\r\n\r\nEl merengue. Realizar un almíbar con el azúcar y una cucharada de agua. Batir las claras hasta espumarlas. Cuando el almíbar llegue  los 118°, verterlo en fomra de hilo sobre las claras, mientras se baten. Continuar el batido hasta que el bowl se sienta frío. \r\n\r\nPaso 8\r\n\r\nEstacionar la tarta en la heladera hasta que la crema esté bien firme. Retirar la tarta de la heladera y cubrirla totalmente con el merengue. Para que quede \"doradita\", meterla en el horno un minuto. Enfriar.\r\n\r\n ', 'zexce8bqnzizqqb9ghuh'),
(3, 'prueba 3', 'agregando una tercera prueba ', 'intentando eliminar esta prueba', NULL),
(5, '123', '123', '123 ', 'xzyqbb9jusnstpqzstlp'),
(6, '¿Y ahora con que acompañamos?', 'Advierten que en 45 días nos podemos quedar sin café en la Argentina', '“El tema del café es gravísimo, las últimas medidas han restringido aún más el poco cupo que había. Los trámites de importación comienzan a ser denegados y corren peligro los stocks”, aseguró Marcelo Salas, dueño de la cadena Café Martínez.\r\n\r\nLas cadenas de cafeterías y los fabricantes de café son uno de los rubros más afectados por las trabas a las importaciones. Desde el sector, remarcan que su materia prima es 100% importada y que no tienen forma de reemplazarla: en la Argentina no se producen los granos de café que luego pasan a ser molidos y envasados por los fabricantes locales.\r\n\r\nPor el cupo cada vez más limitado para las importaciones, la empresa Café Martínez tuvo que reducir la venta de sus cafés envasados en supermercados y sus exportaciones a países de la región para poder compensar la falta de su insumo principal y poder abastecer a sus 210 locales en el país, donde trabajan unas 3.000 personas, según detalló a Infobae Marcelo Salas, socio y director de la empresa.', 'rdwi5r4qo0zdfzdsahkm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'christian', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'daniel', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'chris', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
