-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 21, 2024 at 04:39 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szatnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `box`
--

CREATE TABLE `box` (
  `id` int(2) UNSIGNED NOT NULL,
  `room_id` int(1) UNSIGNED NOT NULL,
  `accesability` tinyint(1) NOT NULL,
  `capacity` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `box`
--

INSERT INTO `box` (`id`, `room_id`, `accesability`, `capacity`) VALUES
(1, 1, 0, 43),
(2, 1, 1, 44),
(3, 1, 1, 45),
(4, 1, 1, 45),
(5, 1, 1, 45),
(6, 1, 1, 16),
(7, 2, 1, 47),
(8, 2, 1, 47),
(9, 2, 1, 47),
(10, 2, 0, 44),
(11, 2, 0, 44);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item`
--

CREATE TABLE `item` (
  `id` int(3) UNSIGNED NOT NULL,
  `box_id` int(2) UNSIGNED NOT NULL,
  `state` enum('is','is not','not existing') NOT NULL,
  `comment` text DEFAULT NULL,
  `material` enum('normal','old','wood','wood2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `box_id`, `state`, `comment`, `material`) VALUES
(1, 1, 'is', NULL, 'normal'),
(2, 1, 'is', NULL, 'normal'),
(3, 1, 'is', NULL, 'normal'),
(4, 1, 'is', NULL, 'normal'),
(5, 1, 'is', NULL, 'normal'),
(6, 1, 'is', NULL, 'normal'),
(7, 1, 'is', NULL, 'normal'),
(8, 1, 'is', NULL, 'normal'),
(9, 1, 'is', NULL, 'normal'),
(10, 1, 'is', NULL, 'normal'),
(11, 1, 'is', NULL, 'normal'),
(12, 1, 'is', NULL, 'normal'),
(13, 1, 'is', NULL, 'normal'),
(14, 1, 'is', NULL, 'normal'),
(15, 1, 'is', NULL, 'normal'),
(16, 1, 'is', NULL, 'normal'),
(17, 1, 'is', NULL, 'normal'),
(18, 1, 'is', NULL, 'normal'),
(19, 1, 'is', NULL, 'normal'),
(20, 1, 'is', NULL, 'normal'),
(21, 1, 'is', NULL, 'normal'),
(22, 1, 'is', NULL, 'normal'),
(23, 1, 'is', NULL, 'normal'),
(24, 1, 'is', NULL, 'normal'),
(25, 1, 'is', NULL, 'normal'),
(26, 1, 'is', NULL, 'normal'),
(27, 1, 'is', NULL, 'normal'),
(28, 1, 'is', NULL, 'normal'),
(29, 1, 'is', NULL, 'normal'),
(30, 1, 'is', NULL, 'normal'),
(31, 1, 'is', NULL, 'normal'),
(32, 1, 'is', NULL, 'normal'),
(33, 1, 'is', NULL, 'normal'),
(34, 1, 'is', NULL, 'normal'),
(35, 1, 'is', NULL, 'normal'),
(36, 1, 'is', NULL, 'normal'),
(37, 1, 'is', NULL, 'normal'),
(38, 1, 'is', NULL, 'normal'),
(39, 1, 'is', NULL, 'normal'),
(40, 1, 'is', NULL, 'normal'),
(41, 1, 'is', NULL, 'normal'),
(42, 1, 'is', NULL, 'normal'),
(43, 1, 'is', NULL, 'normal'),
(44, 1, 'is', NULL, 'normal'),
(45, 2, 'is', NULL, 'normal'),
(46, 2, 'is', NULL, 'normal'),
(47, 2, 'is', NULL, 'normal'),
(48, 2, 'is', NULL, 'normal'),
(49, 2, 'is', NULL, 'normal'),
(50, 2, 'is', NULL, 'normal'),
(51, 2, 'is', NULL, 'normal'),
(52, 2, 'is', NULL, 'normal'),
(53, 2, 'is', NULL, 'normal'),
(54, 2, 'is', NULL, 'normal'),
(55, 2, 'is', NULL, 'normal'),
(56, 2, 'is', NULL, 'normal'),
(57, 2, 'is', NULL, 'normal'),
(58, 2, 'is', NULL, 'normal'),
(59, 2, 'is', NULL, 'normal'),
(60, 2, 'is', NULL, 'normal'),
(61, 2, 'is', NULL, 'normal'),
(62, 2, 'is', NULL, 'normal'),
(63, 2, 'is', NULL, 'normal'),
(64, 2, 'is', NULL, 'normal'),
(65, 2, 'is', NULL, 'normal'),
(66, 2, 'is', NULL, 'normal'),
(67, 2, 'is', NULL, 'normal'),
(68, 2, 'is', NULL, 'normal'),
(69, 2, 'is', NULL, 'normal'),
(70, 2, 'is', NULL, 'normal'),
(71, 2, 'is', NULL, 'normal'),
(72, 2, 'is', NULL, 'normal'),
(73, 2, 'is', NULL, 'normal'),
(74, 2, 'is', NULL, 'normal'),
(75, 2, 'is', NULL, 'normal'),
(76, 2, 'is', NULL, 'normal'),
(77, 2, 'is', NULL, 'normal'),
(78, 2, 'is', NULL, 'normal'),
(79, 2, 'is', NULL, 'normal'),
(80, 2, 'is', NULL, 'normal'),
(81, 2, 'is', NULL, 'normal'),
(82, 2, 'is', NULL, 'normal'),
(83, 2, 'is', NULL, 'normal'),
(84, 2, 'is', NULL, 'normal'),
(85, 2, 'is', NULL, 'normal'),
(86, 2, 'is', NULL, 'normal'),
(87, 2, 'is', NULL, 'normal'),
(88, 2, 'is', NULL, 'normal'),
(89, 2, 'is', NULL, 'normal'),
(90, 3, 'is', NULL, 'normal'),
(91, 3, 'is', NULL, 'normal'),
(92, 3, 'is', NULL, 'normal'),
(93, 3, 'is', NULL, 'normal'),
(94, 3, 'is', NULL, 'normal'),
(95, 3, 'is', NULL, 'normal'),
(96, 3, 'is', NULL, 'normal'),
(97, 3, 'is', NULL, 'normal'),
(98, 3, 'is', NULL, 'normal'),
(99, 3, 'is', NULL, 'normal'),
(100, 3, 'is', NULL, 'normal'),
(101, 3, 'is', NULL, 'normal'),
(102, 3, 'is', NULL, 'normal'),
(103, 3, 'is', NULL, 'normal'),
(104, 3, 'is', NULL, 'normal'),
(105, 3, 'is', NULL, 'normal'),
(106, 3, 'is', NULL, 'normal'),
(107, 3, 'is', NULL, 'normal'),
(108, 3, 'is', NULL, 'normal'),
(109, 3, 'is', NULL, 'normal'),
(110, 3, 'is', NULL, 'normal'),
(111, 3, 'is', NULL, 'normal'),
(112, 3, 'is', NULL, 'normal'),
(113, 3, 'is', NULL, 'normal'),
(114, 3, 'is', NULL, 'normal'),
(115, 3, 'is', NULL, 'normal'),
(116, 3, 'is', NULL, 'normal'),
(117, 3, 'is', NULL, 'normal'),
(118, 3, 'is', NULL, 'normal'),
(119, 3, 'is', NULL, 'normal'),
(120, 3, 'is', NULL, 'normal'),
(121, 3, 'is', NULL, 'normal'),
(122, 3, 'is', NULL, 'normal'),
(123, 3, 'is', NULL, 'normal'),
(124, 3, 'is', NULL, 'normal'),
(125, 3, 'is', NULL, 'normal'),
(126, 3, 'is', NULL, 'normal'),
(127, 3, 'is', NULL, 'normal'),
(128, 3, 'is', NULL, 'normal'),
(129, 3, 'is', NULL, 'normal'),
(130, 3, 'is', NULL, 'normal'),
(131, 3, 'is', NULL, 'normal'),
(132, 3, 'is', NULL, 'normal'),
(133, 3, 'is', NULL, 'normal'),
(134, 3, 'is', NULL, 'normal'),
(135, 3, 'is', NULL, 'normal'),
(136, 4, 'is', NULL, 'normal'),
(137, 4, 'is', NULL, 'normal'),
(138, 4, 'is', NULL, 'normal'),
(139, 4, 'is', NULL, 'normal'),
(140, 4, 'is', NULL, 'normal'),
(141, 4, 'is', NULL, 'normal'),
(142, 4, 'is', NULL, 'normal'),
(143, 4, 'is', NULL, 'normal'),
(144, 4, 'is', NULL, 'normal'),
(145, 4, 'is', NULL, 'normal'),
(146, 4, 'is', NULL, 'normal'),
(147, 4, 'is', NULL, 'normal'),
(148, 4, 'is', NULL, 'normal'),
(149, 4, 'is', NULL, 'normal'),
(150, 4, 'is', NULL, 'normal'),
(151, 4, 'is', NULL, 'normal'),
(152, 4, 'is', NULL, 'normal'),
(153, 4, 'is', NULL, 'normal'),
(154, 4, 'is', NULL, 'normal'),
(155, 4, 'is', NULL, 'normal'),
(156, 4, 'is', NULL, 'normal'),
(157, 4, 'is', NULL, 'normal'),
(158, 4, 'is', NULL, 'normal'),
(159, 4, 'is', NULL, 'normal'),
(160, 4, 'is', NULL, 'normal'),
(161, 4, 'is', NULL, 'normal'),
(162, 4, 'is', NULL, 'normal'),
(163, 4, 'is', NULL, 'normal'),
(164, 4, 'is', NULL, 'normal'),
(165, 4, 'is', NULL, 'normal'),
(166, 4, 'is', NULL, 'normal'),
(167, 4, 'is', NULL, 'normal'),
(168, 4, 'is', NULL, 'normal'),
(169, 4, 'is', NULL, 'normal'),
(170, 4, 'is', NULL, 'normal'),
(171, 4, 'is', NULL, 'normal'),
(172, 4, 'is', NULL, 'normal'),
(173, 4, 'is', NULL, 'normal'),
(174, 4, 'is', NULL, 'normal'),
(175, 4, 'is', NULL, 'normal'),
(176, 4, 'is', NULL, 'normal'),
(177, 4, 'is', NULL, 'normal'),
(178, 4, 'is', NULL, 'normal'),
(179, 4, 'is', NULL, 'normal'),
(180, 4, 'is', NULL, 'normal'),
(181, 4, 'is', NULL, 'normal'),
(182, 5, 'is', NULL, 'normal'),
(183, 5, 'is', NULL, 'normal'),
(184, 5, 'is', NULL, 'normal'),
(185, 5, 'is', NULL, 'normal'),
(186, 5, 'is', NULL, 'normal'),
(187, 5, 'is', NULL, 'normal'),
(188, 5, 'is', NULL, 'normal'),
(189, 5, 'is', NULL, 'normal'),
(190, 5, 'is', NULL, 'normal'),
(191, 5, 'is', NULL, 'normal'),
(192, 5, 'is', NULL, 'normal'),
(193, 5, 'is', NULL, 'normal'),
(194, 5, 'is', NULL, 'normal'),
(195, 5, 'is', NULL, 'normal'),
(196, 5, 'is', NULL, 'normal'),
(197, 5, 'is', NULL, 'normal'),
(198, 5, 'is', NULL, 'normal'),
(199, 5, 'is', NULL, 'normal'),
(200, 5, 'is', NULL, 'normal'),
(201, 5, 'is', NULL, 'normal'),
(202, 5, 'is', NULL, 'normal'),
(203, 5, 'is', NULL, 'normal'),
(204, 5, 'is', NULL, 'normal'),
(205, 5, 'is', NULL, 'normal'),
(206, 5, 'is', NULL, 'normal'),
(207, 5, 'is', NULL, 'normal'),
(208, 5, 'is', NULL, 'normal'),
(209, 5, 'is', NULL, 'normal'),
(210, 5, 'is', NULL, 'normal'),
(211, 5, 'is', NULL, 'normal'),
(212, 5, 'is', NULL, 'normal'),
(213, 5, 'is', NULL, 'normal'),
(214, 5, 'is', NULL, 'normal'),
(215, 5, 'is', NULL, 'normal'),
(216, 5, 'is', NULL, 'normal'),
(217, 5, 'is', NULL, 'normal'),
(218, 5, 'is', NULL, 'normal'),
(219, 5, 'is', NULL, 'normal'),
(220, 5, 'is', NULL, 'normal'),
(221, 5, 'is', NULL, 'normal'),
(222, 5, 'is', NULL, 'normal'),
(223, 5, 'is', NULL, 'normal'),
(224, 5, 'is', NULL, 'normal'),
(225, 5, 'is', NULL, 'normal'),
(226, 5, 'is', NULL, 'normal'),
(227, 5, 'is', NULL, 'normal'),
(228, 6, 'is', NULL, 'normal'),
(229, 6, 'is', NULL, 'normal'),
(230, 6, 'is', NULL, 'normal'),
(231, 6, 'is', NULL, 'normal'),
(232, 6, 'is', NULL, 'normal'),
(233, 6, 'is', NULL, 'normal'),
(234, 6, 'is', NULL, 'normal'),
(235, 6, 'is', NULL, 'normal'),
(236, 6, 'is', NULL, 'normal'),
(237, 6, 'is', NULL, 'normal'),
(238, 6, 'is', NULL, 'normal'),
(239, 6, 'is', NULL, 'normal'),
(240, 6, 'is', NULL, 'normal'),
(241, 6, 'is', NULL, 'normal'),
(242, 6, 'is', NULL, 'normal'),
(243, 6, 'is', NULL, 'normal'),
(244, 6, 'is', NULL, 'normal'),
(245, 7, 'is', NULL, 'normal'),
(246, 7, 'is', NULL, 'normal'),
(247, 7, 'is', NULL, 'normal'),
(248, 7, 'is', NULL, 'normal'),
(249, 7, 'is', NULL, 'normal'),
(250, 7, 'is', NULL, 'normal'),
(251, 7, 'is', NULL, 'normal'),
(252, 7, 'is', NULL, 'normal'),
(253, 7, 'is', NULL, 'normal'),
(254, 7, 'is', NULL, 'normal'),
(255, 7, 'is', NULL, 'normal'),
(256, 7, 'is', NULL, 'normal'),
(257, 7, 'is', NULL, 'normal'),
(258, 7, 'is', NULL, 'normal'),
(259, 7, 'is', NULL, 'normal'),
(260, 7, 'is', NULL, 'normal'),
(261, 7, 'is', NULL, 'normal'),
(262, 7, 'is', NULL, 'normal'),
(263, 7, 'is', NULL, 'normal'),
(264, 7, 'is', NULL, 'normal'),
(265, 7, 'is', NULL, 'normal'),
(266, 7, 'is', NULL, 'normal'),
(267, 7, 'is', NULL, 'normal'),
(268, 7, 'is', NULL, 'normal'),
(269, 7, 'is', NULL, 'normal'),
(270, 7, 'is', NULL, 'normal'),
(271, 7, 'is', NULL, 'normal'),
(272, 7, 'is', NULL, 'normal'),
(273, 7, 'is', NULL, 'normal'),
(274, 7, 'is', NULL, 'normal'),
(275, 7, 'is', NULL, 'normal'),
(276, 7, 'is', NULL, 'normal'),
(277, 7, 'is', NULL, 'normal'),
(278, 7, 'is', NULL, 'normal'),
(279, 7, 'is', NULL, 'normal'),
(280, 7, 'is', NULL, 'normal'),
(281, 7, 'is', NULL, 'normal'),
(282, 7, 'is', NULL, 'normal'),
(283, 7, 'is', NULL, 'normal'),
(284, 7, 'is', NULL, 'normal'),
(285, 7, 'is', NULL, 'normal'),
(286, 7, 'is', NULL, 'normal'),
(287, 7, 'is', NULL, 'normal'),
(288, 7, 'is', NULL, 'normal'),
(289, 7, 'is', NULL, 'normal'),
(290, 7, 'is', NULL, 'normal'),
(291, 7, 'is', NULL, 'normal'),
(292, 7, 'is', NULL, 'normal'),
(293, 8, 'is', NULL, 'normal'),
(294, 8, 'is', NULL, 'normal'),
(295, 8, 'is', NULL, 'normal'),
(296, 8, 'is', NULL, 'normal'),
(297, 8, 'is', NULL, 'normal'),
(298, 8, 'is', NULL, 'normal'),
(299, 8, 'is', NULL, 'normal'),
(300, 8, 'is', NULL, 'normal'),
(301, 8, 'is', NULL, 'normal'),
(302, 8, 'is', NULL, 'normal'),
(303, 8, 'is', NULL, 'normal'),
(304, 8, 'is', NULL, 'normal'),
(305, 8, 'is', NULL, 'normal'),
(306, 8, 'is', NULL, 'normal'),
(307, 8, 'is', NULL, 'normal'),
(308, 8, 'is', NULL, 'normal'),
(309, 8, 'is', NULL, 'normal'),
(310, 8, 'is', NULL, 'normal'),
(311, 8, 'is', NULL, 'normal'),
(312, 8, 'is', NULL, 'normal'),
(313, 8, 'is', NULL, 'normal'),
(314, 8, 'is', NULL, 'normal'),
(315, 8, 'is', NULL, 'normal'),
(316, 8, 'is', NULL, 'normal'),
(317, 8, 'is', NULL, 'normal'),
(318, 8, 'is', NULL, 'normal'),
(319, 8, 'is', NULL, 'normal'),
(320, 8, 'is', NULL, 'normal'),
(321, 8, 'is', NULL, 'normal'),
(322, 8, 'is', NULL, 'normal'),
(323, 8, 'is', NULL, 'normal'),
(324, 8, 'is', NULL, 'normal'),
(325, 8, 'is', NULL, 'normal'),
(326, 8, 'is', NULL, 'normal'),
(327, 8, 'is', NULL, 'normal'),
(328, 8, 'is', NULL, 'normal'),
(329, 8, 'is', NULL, 'normal'),
(330, 8, 'is', NULL, 'normal'),
(331, 8, 'is', NULL, 'normal'),
(332, 8, 'is', NULL, 'normal'),
(333, 8, 'is', NULL, 'normal'),
(334, 8, 'is', NULL, 'normal'),
(335, 8, 'is', NULL, 'normal'),
(336, 8, 'is', NULL, 'normal'),
(337, 8, 'is', NULL, 'normal'),
(338, 8, 'is', NULL, 'normal'),
(339, 8, 'is', NULL, 'normal'),
(340, 8, 'is', NULL, 'normal'),
(341, 9, 'is', NULL, 'normal'),
(342, 9, 'is', NULL, 'normal'),
(343, 9, 'is', NULL, 'normal'),
(344, 9, 'is', NULL, 'normal'),
(345, 9, 'is', NULL, 'normal'),
(346, 9, 'is', NULL, 'normal'),
(347, 9, 'is', NULL, 'normal'),
(348, 9, 'is', NULL, 'normal'),
(349, 9, 'is', NULL, 'normal'),
(350, 9, 'is', NULL, 'normal'),
(351, 9, 'is', NULL, 'normal'),
(352, 9, 'is', NULL, 'normal'),
(353, 9, 'is', NULL, 'normal'),
(354, 9, 'is', NULL, 'normal'),
(355, 9, 'is', NULL, 'normal'),
(356, 9, 'is', NULL, 'normal'),
(357, 9, 'is', NULL, 'normal'),
(358, 9, 'is', NULL, 'normal'),
(359, 9, 'is', NULL, 'normal'),
(360, 9, 'is', NULL, 'normal'),
(361, 9, 'is', NULL, 'normal'),
(362, 9, 'is', NULL, 'normal'),
(363, 9, 'is', NULL, 'normal'),
(364, 9, 'is', NULL, 'normal'),
(365, 9, 'is', NULL, 'normal'),
(366, 9, 'is', NULL, 'normal'),
(367, 9, 'is', NULL, 'normal'),
(368, 9, 'is', NULL, 'normal'),
(369, 9, 'is', NULL, 'normal'),
(370, 9, 'is', NULL, 'normal'),
(371, 9, 'is', NULL, 'normal'),
(372, 9, 'is', NULL, 'normal'),
(373, 9, 'is', NULL, 'normal'),
(374, 9, 'is', NULL, 'normal'),
(375, 9, 'is', NULL, 'normal'),
(376, 9, 'is', NULL, 'normal'),
(377, 9, 'is', NULL, 'normal'),
(378, 9, 'is', NULL, 'normal'),
(379, 9, 'is', NULL, 'normal'),
(380, 9, 'is', NULL, 'normal'),
(381, 9, 'is', NULL, 'normal'),
(382, 9, 'is', NULL, 'normal'),
(383, 9, 'is', NULL, 'normal'),
(384, 9, 'is', NULL, 'normal'),
(385, 9, 'is', NULL, 'normal'),
(386, 9, 'is', NULL, 'normal'),
(387, 9, 'is', NULL, 'normal'),
(388, 9, 'is', NULL, 'normal'),
(389, 10, 'is', NULL, 'normal'),
(390, 10, 'is', NULL, 'normal'),
(391, 10, 'is', NULL, 'normal'),
(392, 10, 'is', NULL, 'normal'),
(393, 10, 'is', NULL, 'normal'),
(394, 10, 'is', NULL, 'normal'),
(395, 10, 'is', NULL, 'normal'),
(396, 10, 'is', NULL, 'normal'),
(397, 10, 'is', NULL, 'normal'),
(398, 10, 'is', NULL, 'normal'),
(399, 10, 'is', NULL, 'normal'),
(400, 10, 'is', NULL, 'normal'),
(401, 10, 'is', NULL, 'normal'),
(402, 10, 'is', NULL, 'normal'),
(403, 10, 'is', NULL, 'normal'),
(404, 10, 'is', NULL, 'normal'),
(405, 10, 'is', NULL, 'normal'),
(406, 10, 'is', NULL, 'normal'),
(407, 10, 'is', NULL, 'normal'),
(408, 10, 'is', NULL, 'normal'),
(409, 10, 'is', NULL, 'normal'),
(410, 10, 'is', NULL, 'normal'),
(411, 10, 'is', NULL, 'normal'),
(412, 10, 'is', NULL, 'normal'),
(413, 10, 'is', NULL, 'normal'),
(414, 10, 'is', NULL, 'normal'),
(415, 10, 'is', NULL, 'normal'),
(416, 10, 'is', NULL, 'normal'),
(417, 10, 'is', NULL, 'normal'),
(418, 10, 'is', NULL, 'normal'),
(419, 10, 'is', NULL, 'normal'),
(420, 10, 'is', NULL, 'normal'),
(421, 10, 'is', NULL, 'normal'),
(422, 10, 'is', NULL, 'normal'),
(423, 10, 'is', NULL, 'normal'),
(424, 10, 'is', NULL, 'normal'),
(425, 10, 'is', NULL, 'normal'),
(426, 10, 'is', NULL, 'normal'),
(427, 10, 'is', NULL, 'normal'),
(428, 10, 'is', NULL, 'normal'),
(429, 10, 'is', NULL, 'normal'),
(430, 10, 'is', NULL, 'normal'),
(431, 10, 'is', NULL, 'normal'),
(432, 10, 'is', NULL, 'normal'),
(433, 10, 'is', NULL, 'normal'),
(434, 11, 'is', NULL, 'normal'),
(435, 11, 'is', NULL, 'normal'),
(436, 11, 'is', NULL, 'normal'),
(437, 11, 'is', NULL, 'normal'),
(438, 11, 'is', NULL, 'normal'),
(439, 11, 'is', NULL, 'normal'),
(440, 11, 'is', NULL, 'normal'),
(441, 11, 'is', NULL, 'normal'),
(442, 11, 'is', NULL, 'normal'),
(443, 11, 'is', NULL, 'normal'),
(444, 11, 'is', NULL, 'normal'),
(445, 11, 'is', NULL, 'normal'),
(446, 11, 'is', NULL, 'normal'),
(447, 11, 'is', NULL, 'normal'),
(448, 11, 'is', NULL, 'normal'),
(449, 11, 'is', NULL, 'normal'),
(450, 11, 'is', NULL, 'normal'),
(451, 11, 'is', NULL, 'normal'),
(452, 11, 'is', NULL, 'normal'),
(453, 11, 'is', NULL, 'normal'),
(454, 11, 'is', NULL, 'normal'),
(455, 11, 'is', NULL, 'normal'),
(456, 11, 'is', NULL, 'normal'),
(457, 11, 'is', NULL, 'normal'),
(458, 11, 'is', NULL, 'normal'),
(459, 11, 'is', NULL, 'normal'),
(460, 11, 'is', NULL, 'normal'),
(461, 11, 'is', NULL, 'normal'),
(462, 11, 'is', NULL, 'normal'),
(463, 11, 'is', NULL, 'normal'),
(464, 11, 'is', NULL, 'normal'),
(465, 11, 'is', NULL, 'normal'),
(466, 11, 'is', NULL, 'normal'),
(467, 11, 'is', NULL, 'normal'),
(468, 11, 'is', NULL, 'normal'),
(469, 11, 'is', NULL, 'normal'),
(470, 11, 'is', NULL, 'normal'),
(471, 11, 'is', NULL, 'normal'),
(472, 11, 'is', NULL, 'normal'),
(473, 11, 'is', NULL, 'normal'),
(474, 11, 'is', NULL, 'normal'),
(475, 11, 'is', NULL, 'normal'),
(476, 11, 'is', NULL, 'normal'),
(477, 11, 'is', NULL, 'normal'),
(478, 11, 'is', NULL, 'normal');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `room`
--

CREATE TABLE `room` (
  `id` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`) VALUES
(1),
(2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indeksy dla tabeli `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indeksy dla tabeli `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `box`
--
ALTER TABLE `box`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `box`
--
ALTER TABLE `box`
  ADD CONSTRAINT `box_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
