-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 08:27 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `48l`
--

-- --------------------------------------------------------

--
-- Table structure for table `applies`
--

CREATE TABLE `applies` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL, NULL),
(2, 'Albania', NULL, NULL, NULL),
(3, 'Algeria', NULL, NULL, NULL),
(4, 'American Samoa', NULL, NULL, NULL),
(5, 'Andorra', NULL, NULL, NULL),
(6, 'Angola', NULL, NULL, NULL),
(7, 'Anguilla', NULL, NULL, NULL),
(8, 'Antarctica', NULL, NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL, NULL),
(10, 'Argentina', NULL, NULL, NULL),
(11, 'Armenia', NULL, NULL, NULL),
(12, 'Aruba', NULL, NULL, NULL),
(13, 'Australia', NULL, NULL, NULL),
(14, 'Austria', NULL, NULL, NULL),
(15, 'Azerbaijan', NULL, NULL, NULL),
(16, 'Bahamas', NULL, NULL, NULL),
(17, 'Bahrain', NULL, NULL, NULL),
(18, 'Bangladesh', NULL, NULL, NULL),
(19, 'Barbados', NULL, NULL, NULL),
(20, 'Belarus', NULL, NULL, NULL),
(21, 'Belgium', NULL, NULL, NULL),
(22, 'Belize', NULL, NULL, NULL),
(23, 'Benin', NULL, NULL, NULL),
(24, 'Bermuda', NULL, NULL, NULL),
(25, 'Bhutan', NULL, NULL, NULL),
(26, 'Bolivia', NULL, NULL, NULL),
(27, 'Bosnia and Herzegowina', NULL, NULL, NULL),
(28, 'Botswana', NULL, NULL, NULL),
(29, 'Bouvet Island', NULL, NULL, NULL),
(30, 'Brazil', NULL, NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL, NULL),
(33, 'Bulgaria', NULL, NULL, NULL),
(34, 'Burkina Faso', NULL, NULL, NULL),
(35, 'Burundi', NULL, NULL, NULL),
(36, 'Cambodia', NULL, NULL, NULL),
(37, 'Cameroon', NULL, NULL, NULL),
(38, 'Canada', NULL, NULL, NULL),
(39, 'Cape Verde', NULL, NULL, NULL),
(40, 'Cayman Islands', NULL, NULL, NULL),
(41, 'Central African Republic', NULL, NULL, NULL),
(42, 'Chad', NULL, NULL, NULL),
(43, 'Chile', NULL, NULL, NULL),
(44, 'China', NULL, NULL, NULL),
(45, 'Christmas Island', NULL, NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL, NULL),
(47, 'Colombia', NULL, NULL, NULL),
(48, 'Comoros', NULL, NULL, NULL),
(49, 'Congo', NULL, NULL, NULL),
(50, 'Congo, the Democratic Republic of the', NULL, NULL, NULL),
(51, 'Cook Islands', NULL, NULL, NULL),
(52, 'Costa Rica', NULL, NULL, NULL),
(53, 'Cote d\'Ivoire', NULL, NULL, NULL),
(54, 'Croatia (Hrvatska)', NULL, NULL, NULL),
(55, 'Cuba', NULL, NULL, NULL),
(56, 'Cyprus', NULL, NULL, NULL),
(57, 'Czech Republic', NULL, NULL, NULL),
(58, 'Denmark', NULL, NULL, NULL),
(59, 'Djibouti', NULL, NULL, NULL),
(60, 'Dominica', NULL, NULL, NULL),
(61, 'Dominican Republic', NULL, NULL, NULL),
(62, 'East Timor', NULL, NULL, NULL),
(63, 'Ecuador', NULL, NULL, NULL),
(64, 'Egypt', NULL, NULL, NULL),
(65, 'El Salvador', NULL, NULL, NULL),
(66, 'Equatorial Guinea', NULL, NULL, NULL),
(67, 'Eritrea', NULL, NULL, NULL),
(68, 'Estonia', NULL, NULL, NULL),
(69, 'Ethiopia', NULL, NULL, NULL),
(70, 'Falkland Islands (Malvinas)', NULL, NULL, NULL),
(71, 'Faroe Islands', NULL, NULL, NULL),
(72, 'Fiji', NULL, NULL, NULL),
(73, 'Finland', NULL, NULL, NULL),
(74, 'France', NULL, NULL, NULL),
(75, 'France Metropolitan', NULL, NULL, NULL),
(76, 'French Guiana', NULL, NULL, NULL),
(77, 'French Polynesia', NULL, NULL, NULL),
(78, 'French Southern Territories', NULL, NULL, NULL),
(79, 'Gabon', NULL, NULL, NULL),
(80, 'Gambia', NULL, NULL, NULL),
(81, 'Georgia', NULL, NULL, NULL),
(82, 'Germany', NULL, NULL, NULL),
(83, 'Ghana', NULL, NULL, NULL),
(84, 'Gibraltar', NULL, NULL, NULL),
(85, 'Greece', NULL, NULL, NULL),
(86, 'Greenland', NULL, NULL, NULL),
(87, 'Grenada', NULL, NULL, NULL),
(88, 'Guadeloupe', NULL, NULL, NULL),
(89, 'Guam', NULL, NULL, NULL),
(90, 'Guatemala', NULL, NULL, NULL),
(91, 'Guinea', NULL, NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL, NULL),
(93, 'Guyana', NULL, NULL, NULL),
(94, 'Haiti', NULL, NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL, NULL),
(96, 'Holy See (Vatican City State)', NULL, NULL, NULL),
(97, 'Honduras', NULL, NULL, NULL),
(98, 'Hong Kong', NULL, NULL, NULL),
(99, 'Hungary', NULL, NULL, NULL),
(100, 'Iceland', NULL, NULL, NULL),
(101, 'India', NULL, NULL, NULL),
(102, 'Indonesia', NULL, NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL, NULL),
(104, 'Iraq', NULL, NULL, NULL),
(105, 'Ireland', NULL, NULL, NULL),
(106, 'Israel', NULL, NULL, NULL),
(107, 'Italy', NULL, NULL, NULL),
(108, 'Jamaica', NULL, NULL, NULL),
(109, 'Japan', NULL, NULL, NULL),
(110, 'Jordan', NULL, NULL, NULL),
(111, 'Kazakhstan', NULL, NULL, NULL),
(112, 'Kenya', NULL, NULL, NULL),
(113, 'Kiribati', NULL, NULL, NULL),
(114, 'Korea, Democratic People\'s Republic of', NULL, NULL, NULL),
(115, 'Korea, Republic of', NULL, NULL, NULL),
(116, 'Kuwait', NULL, NULL, NULL),
(117, 'Kyrgyzstan', NULL, NULL, NULL),
(118, 'Lao, People\'s Democratic Republic', NULL, NULL, NULL),
(119, 'Latvia', NULL, NULL, NULL),
(120, 'Lebanon', NULL, NULL, NULL),
(121, 'Lesotho', NULL, NULL, NULL),
(122, 'Liberia', NULL, NULL, NULL),
(123, 'Libyan Arab Jamahiriya', NULL, NULL, NULL),
(124, 'Liechtenstein', NULL, NULL, NULL),
(125, 'Lithuania', NULL, NULL, NULL),
(126, 'Luxembourg', NULL, NULL, NULL),
(127, 'Macau', NULL, NULL, NULL),
(128, 'Macedonia, The Former Yugoslav Republic of', NULL, NULL, NULL),
(129, 'Madagascar', NULL, NULL, NULL),
(130, 'Malawi', NULL, NULL, NULL),
(131, 'Malaysia', NULL, NULL, NULL),
(132, 'Maldives', NULL, NULL, NULL),
(133, 'Mali', NULL, NULL, NULL),
(134, 'Malta', NULL, NULL, NULL),
(135, 'Marshall Islands', NULL, NULL, NULL),
(136, 'Martinique', NULL, NULL, NULL),
(137, 'Mauritania', NULL, NULL, NULL),
(138, 'Mauritius', NULL, NULL, NULL),
(139, 'Mayotte', NULL, NULL, NULL),
(140, 'Mexico', NULL, NULL, NULL),
(141, 'Micronesia, Federated States of', NULL, NULL, NULL),
(142, 'Moldova, Republic of', NULL, NULL, NULL),
(143, 'Monaco', NULL, NULL, NULL),
(144, 'Mongolia', NULL, NULL, NULL),
(145, 'Montserrat', NULL, NULL, NULL),
(146, 'Morocco', NULL, NULL, NULL),
(147, 'Mozambique', NULL, NULL, NULL),
(148, 'Myanmar', NULL, NULL, NULL),
(149, 'Namibia', NULL, NULL, NULL),
(150, 'Nauru', NULL, NULL, NULL),
(151, 'Nepal', NULL, NULL, NULL),
(152, 'Netherlands', NULL, NULL, NULL),
(153, 'Netherlands Antilles', NULL, NULL, NULL),
(154, 'New Caledonia', NULL, NULL, NULL),
(155, 'New Zealand', NULL, NULL, NULL),
(156, 'Nicaragua', NULL, NULL, NULL),
(157, 'Niger', NULL, NULL, NULL),
(158, 'Nigeria', NULL, NULL, NULL),
(159, 'Niue', NULL, NULL, NULL),
(160, 'Norfolk Island', NULL, NULL, NULL),
(161, 'Northern Mariana Islands', NULL, NULL, NULL),
(162, 'Norway', NULL, NULL, NULL),
(163, 'Oman', NULL, NULL, NULL),
(164, 'Pakistan', NULL, NULL, NULL),
(165, 'Palau', NULL, NULL, NULL),
(166, 'Panama', NULL, NULL, NULL),
(167, 'Papua New Guinea', NULL, NULL, NULL),
(168, 'Paraguay', NULL, NULL, NULL),
(169, 'Peru', NULL, NULL, NULL),
(170, 'Philippines', NULL, NULL, NULL),
(171, 'Pitcairn', NULL, NULL, NULL),
(172, 'Poland', NULL, NULL, NULL),
(173, 'Portugal', NULL, NULL, NULL),
(174, 'Puerto Rico', NULL, NULL, NULL),
(175, 'Qatar', NULL, NULL, NULL),
(176, 'Reunion', NULL, NULL, NULL),
(177, 'Romania', NULL, NULL, NULL),
(178, 'Russian Federation', NULL, NULL, NULL),
(179, 'Rwanda', NULL, NULL, NULL),
(180, 'Saint Kitts and Nevis', NULL, NULL, NULL),
(181, 'Saint Lucia', NULL, NULL, NULL),
(182, 'Saint Vincent and the Grenadines', NULL, NULL, NULL),
(183, 'Samoa', NULL, NULL, NULL),
(184, 'San Marino', NULL, NULL, NULL),
(185, 'Sao Tome and Principe', NULL, NULL, NULL),
(186, 'Saudi Arabia', NULL, NULL, NULL),
(187, 'Senegal', NULL, NULL, NULL),
(188, 'Seychelles', NULL, NULL, NULL),
(189, 'Sierra Leone', NULL, NULL, NULL),
(190, 'Singapore', NULL, NULL, NULL),
(191, 'Slovakia (Slovak Republic)', NULL, NULL, NULL),
(192, 'Slovenia', NULL, NULL, NULL),
(193, 'Solomon Islands', NULL, NULL, NULL),
(194, 'Somalia', NULL, NULL, NULL),
(195, 'South Africa', NULL, NULL, NULL),
(196, 'South Georgia and the South Sandwich Islands', NULL, NULL, NULL),
(197, 'Spain', NULL, NULL, NULL),
(198, 'Sri Lanka', NULL, NULL, NULL),
(199, 'St. Helena', NULL, NULL, NULL),
(200, 'St. Pierre and Miquelon', NULL, NULL, NULL),
(201, 'Sudan', NULL, NULL, NULL),
(202, 'Suriname', NULL, NULL, NULL),
(203, 'Svalbard and Jan Mayen Islands', NULL, NULL, NULL),
(204, 'Swaziland', NULL, NULL, NULL),
(205, 'Sweden', NULL, NULL, NULL),
(206, 'Switzerland', NULL, NULL, NULL),
(207, 'Syrian Arab Republic', NULL, NULL, NULL),
(208, 'Taiwan, Province of China', NULL, NULL, NULL),
(209, 'Tajikistan', NULL, NULL, NULL),
(210, 'Tanzania, United Republic of', NULL, NULL, NULL),
(211, 'Thailand', NULL, NULL, NULL),
(212, 'Togo', NULL, NULL, NULL),
(213, 'Tokelau', NULL, NULL, NULL),
(214, 'Tonga', NULL, NULL, NULL),
(215, 'Trinidad and Tobago', NULL, NULL, NULL),
(216, 'Tunisia', NULL, NULL, NULL),
(217, 'Turkey', NULL, NULL, NULL),
(218, 'Turkmenistan', NULL, NULL, NULL),
(219, 'Turks and Caicos Islands', NULL, NULL, NULL),
(220, 'Tuvalu', NULL, NULL, NULL),
(221, 'Uganda', NULL, NULL, NULL),
(222, 'Ukraine', NULL, NULL, NULL),
(223, 'United Arab Emirates', NULL, NULL, NULL),
(224, 'United Kingdom', NULL, NULL, NULL),
(225, 'United States', NULL, NULL, NULL),
(226, 'United States Minor Outlying Islands', NULL, NULL, NULL),
(227, 'Uruguay', NULL, NULL, NULL),
(228, 'Uzbekistan', NULL, NULL, NULL),
(229, 'Vanuatu', NULL, NULL, NULL),
(230, 'Venezuela', NULL, NULL, NULL),
(231, 'Vietnam', NULL, NULL, NULL),
(232, 'Virgin Islands (British)', NULL, NULL, NULL),
(233, 'Virgin Islands (U.S.)', NULL, NULL, NULL),
(234, 'Wallis and Futuna Islands', NULL, NULL, NULL),
(235, 'Western Sahara', NULL, NULL, NULL),
(236, 'Yemen', NULL, NULL, NULL),
(237, 'Yugoslavia', NULL, NULL, NULL),
(238, 'Zambia', NULL, NULL, NULL),
(239, 'Zimbabwe', NULL, NULL, NULL),
(240, 'Afghanistan', NULL, NULL, NULL),
(241, 'Albania', NULL, NULL, NULL),
(242, 'Algeria', NULL, NULL, NULL),
(243, 'American Samoa', NULL, NULL, NULL),
(244, 'Andorra', NULL, NULL, NULL),
(245, 'Angola', NULL, NULL, NULL),
(246, 'Anguilla', NULL, NULL, NULL),
(247, 'Antarctica', NULL, NULL, NULL),
(248, 'Antigua and Barbuda', NULL, NULL, NULL),
(249, 'Argentina', NULL, NULL, NULL),
(250, 'Armenia', NULL, NULL, NULL),
(251, 'Aruba', NULL, NULL, NULL),
(252, 'Australia', NULL, NULL, NULL),
(253, 'Austria', NULL, NULL, NULL),
(254, 'Azerbaijan', NULL, NULL, NULL),
(255, 'Bahamas', NULL, NULL, NULL),
(256, 'Bahrain', NULL, NULL, NULL),
(257, 'Bangladesh', NULL, NULL, NULL),
(258, 'Barbados', NULL, NULL, NULL),
(259, 'Belarus', NULL, NULL, NULL),
(260, 'Belgium', NULL, NULL, NULL),
(261, 'Belize', NULL, NULL, NULL),
(262, 'Benin', NULL, NULL, NULL),
(263, 'Bermuda', NULL, NULL, NULL),
(264, 'Bhutan', NULL, NULL, NULL),
(265, 'Bolivia', NULL, NULL, NULL),
(266, 'Bosnia and Herzegowina', NULL, NULL, NULL),
(267, 'Botswana', NULL, NULL, NULL),
(268, 'Bouvet Island', NULL, NULL, NULL),
(269, 'Brazil', NULL, NULL, NULL),
(270, 'British Indian Ocean Territory', NULL, NULL, NULL),
(271, 'Brunei Darussalam', NULL, NULL, NULL),
(272, 'Bulgaria', NULL, NULL, NULL),
(273, 'Burkina Faso', NULL, NULL, NULL),
(274, 'Burundi', NULL, NULL, NULL),
(275, 'Cambodia', NULL, NULL, NULL),
(276, 'Cameroon', NULL, NULL, NULL),
(277, 'Canada', NULL, NULL, NULL),
(278, 'Cape Verde', NULL, NULL, NULL),
(279, 'Cayman Islands', NULL, NULL, NULL),
(280, 'Central African Republic', NULL, NULL, NULL),
(281, 'Chad', NULL, NULL, NULL),
(282, 'Chile', NULL, NULL, NULL),
(283, 'China', NULL, NULL, NULL),
(284, 'Christmas Island', NULL, NULL, NULL),
(285, 'Cocos (Keeling) Islands', NULL, NULL, NULL),
(286, 'Colombia', NULL, NULL, NULL),
(287, 'Comoros', NULL, NULL, NULL),
(288, 'Congo', NULL, NULL, NULL),
(289, 'Congo, the Democratic Republic of the', NULL, NULL, NULL),
(290, 'Cook Islands', NULL, NULL, NULL),
(291, 'Costa Rica', NULL, NULL, NULL),
(292, 'Cote d\'Ivoire', NULL, NULL, NULL),
(293, 'Croatia (Hrvatska)', NULL, NULL, NULL),
(294, 'Cuba', NULL, NULL, NULL),
(295, 'Cyprus', NULL, NULL, NULL),
(296, 'Czech Republic', NULL, NULL, NULL),
(297, 'Denmark', NULL, NULL, NULL),
(298, 'Djibouti', NULL, NULL, NULL),
(299, 'Dominica', NULL, NULL, NULL),
(300, 'Dominican Republic', NULL, NULL, NULL),
(301, 'East Timor', NULL, NULL, NULL),
(302, 'Ecuador', NULL, NULL, NULL),
(303, 'Egypt', NULL, NULL, NULL),
(304, 'El Salvador', NULL, NULL, NULL),
(305, 'Equatorial Guinea', NULL, NULL, NULL),
(306, 'Eritrea', NULL, NULL, NULL),
(307, 'Estonia', NULL, NULL, NULL),
(308, 'Ethiopia', NULL, NULL, NULL),
(309, 'Falkland Islands (Malvinas)', NULL, NULL, NULL),
(310, 'Faroe Islands', NULL, NULL, NULL),
(311, 'Fiji', NULL, NULL, NULL),
(312, 'Finland', NULL, NULL, NULL),
(313, 'France', NULL, NULL, NULL),
(314, 'France Metropolitan', NULL, NULL, NULL),
(315, 'French Guiana', NULL, NULL, NULL),
(316, 'French Polynesia', NULL, NULL, NULL),
(317, 'French Southern Territories', NULL, NULL, NULL),
(318, 'Gabon', NULL, NULL, NULL),
(319, 'Gambia', NULL, NULL, NULL),
(320, 'Georgia', NULL, NULL, NULL),
(321, 'Germany', NULL, NULL, NULL),
(322, 'Ghana', NULL, NULL, NULL),
(323, 'Gibraltar', NULL, NULL, NULL),
(324, 'Greece', NULL, NULL, NULL),
(325, 'Greenland', NULL, NULL, NULL),
(326, 'Grenada', NULL, NULL, NULL),
(327, 'Guadeloupe', NULL, NULL, NULL),
(328, 'Guam', NULL, NULL, NULL),
(329, 'Guatemala', NULL, NULL, NULL),
(330, 'Guinea', NULL, NULL, NULL),
(331, 'Guinea-Bissau', NULL, NULL, NULL),
(332, 'Guyana', NULL, NULL, NULL),
(333, 'Haiti', NULL, NULL, NULL),
(334, 'Heard and Mc Donald Islands', NULL, NULL, NULL),
(335, 'Holy See (Vatican City State)', NULL, NULL, NULL),
(336, 'Honduras', NULL, NULL, NULL),
(337, 'Hong Kong', NULL, NULL, NULL),
(338, 'Hungary', NULL, NULL, NULL),
(339, 'Iceland', NULL, NULL, NULL),
(340, 'India', NULL, NULL, NULL),
(341, 'Indonesia', NULL, NULL, NULL),
(342, 'Iran (Islamic Republic of)', NULL, NULL, NULL),
(343, 'Iraq', NULL, NULL, NULL),
(344, 'Ireland', NULL, NULL, NULL),
(345, 'Israel', NULL, NULL, NULL),
(346, 'Italy', NULL, NULL, NULL),
(347, 'Jamaica', NULL, NULL, NULL),
(348, 'Japan', NULL, NULL, NULL),
(349, 'Jordan', NULL, NULL, NULL),
(350, 'Kazakhstan', NULL, NULL, NULL),
(351, 'Kenya', NULL, NULL, NULL),
(352, 'Kiribati', NULL, NULL, NULL),
(353, 'Korea, Democratic People\'s Republic of', NULL, NULL, NULL),
(354, 'Korea, Republic of', NULL, NULL, NULL),
(355, 'Kuwait', NULL, NULL, NULL),
(356, 'Kyrgyzstan', NULL, NULL, NULL),
(357, 'Lao, People\'s Democratic Republic', NULL, NULL, NULL),
(358, 'Latvia', NULL, NULL, NULL),
(359, 'Lebanon', NULL, NULL, NULL),
(360, 'Lesotho', NULL, NULL, NULL),
(361, 'Liberia', NULL, NULL, NULL),
(362, 'Libyan Arab Jamahiriya', NULL, NULL, NULL),
(363, 'Liechtenstein', NULL, NULL, NULL),
(364, 'Lithuania', NULL, NULL, NULL),
(365, 'Luxembourg', NULL, NULL, NULL),
(366, 'Macau', NULL, NULL, NULL),
(367, 'Macedonia, The Former Yugoslav Republic of', NULL, NULL, NULL),
(368, 'Madagascar', NULL, NULL, NULL),
(369, 'Malawi', NULL, NULL, NULL),
(370, 'Malaysia', NULL, NULL, NULL),
(371, 'Maldives', NULL, NULL, NULL),
(372, 'Mali', NULL, NULL, NULL),
(373, 'Malta', NULL, NULL, NULL),
(374, 'Marshall Islands', NULL, NULL, NULL),
(375, 'Martinique', NULL, NULL, NULL),
(376, 'Mauritania', NULL, NULL, NULL),
(377, 'Mauritius', NULL, NULL, NULL),
(378, 'Mayotte', NULL, NULL, NULL),
(379, 'Mexico', NULL, NULL, NULL),
(380, 'Micronesia, Federated States of', NULL, NULL, NULL),
(381, 'Moldova, Republic of', NULL, NULL, NULL),
(382, 'Monaco', NULL, NULL, NULL),
(383, 'Mongolia', NULL, NULL, NULL),
(384, 'Montserrat', NULL, NULL, NULL),
(385, 'Morocco', NULL, NULL, NULL),
(386, 'Mozambique', NULL, NULL, NULL),
(387, 'Myanmar', NULL, NULL, NULL),
(388, 'Namibia', NULL, NULL, NULL),
(389, 'Nauru', NULL, NULL, NULL),
(390, 'Nepal', NULL, NULL, NULL),
(391, 'Netherlands', NULL, NULL, NULL),
(392, 'Netherlands Antilles', NULL, NULL, NULL),
(393, 'New Caledonia', NULL, NULL, NULL),
(394, 'New Zealand', NULL, NULL, NULL),
(395, 'Nicaragua', NULL, NULL, NULL),
(396, 'Niger', NULL, NULL, NULL),
(397, 'Nigeria', NULL, NULL, NULL),
(398, 'Niue', NULL, NULL, NULL),
(399, 'Norfolk Island', NULL, NULL, NULL),
(400, 'Northern Mariana Islands', NULL, NULL, NULL),
(401, 'Norway', NULL, NULL, NULL),
(402, 'Oman', NULL, NULL, NULL),
(403, 'Pakistan', NULL, NULL, NULL),
(404, 'Palau', NULL, NULL, NULL),
(405, 'Panama', NULL, NULL, NULL),
(406, 'Papua New Guinea', NULL, NULL, NULL),
(407, 'Paraguay', NULL, NULL, NULL),
(408, 'Peru', NULL, NULL, NULL),
(409, 'Philippines', NULL, NULL, NULL),
(410, 'Pitcairn', NULL, NULL, NULL),
(411, 'Poland', NULL, NULL, NULL),
(412, 'Portugal', NULL, NULL, NULL),
(413, 'Puerto Rico', NULL, NULL, NULL),
(414, 'Qatar', NULL, NULL, NULL),
(415, 'Reunion', NULL, NULL, NULL),
(416, 'Romania', NULL, NULL, NULL),
(417, 'Russian Federation', NULL, NULL, NULL),
(418, 'Rwanda', NULL, NULL, NULL),
(419, 'Saint Kitts and Nevis', NULL, NULL, NULL),
(420, 'Saint Lucia', NULL, NULL, NULL),
(421, 'Saint Vincent and the Grenadines', NULL, NULL, NULL),
(422, 'Samoa', NULL, NULL, NULL),
(423, 'San Marino', NULL, NULL, NULL),
(424, 'Sao Tome and Principe', NULL, NULL, NULL),
(425, 'Saudi Arabia', NULL, NULL, NULL),
(426, 'Senegal', NULL, NULL, NULL),
(427, 'Seychelles', NULL, NULL, NULL),
(428, 'Sierra Leone', NULL, NULL, NULL),
(429, 'Singapore', NULL, NULL, NULL),
(430, 'Slovakia (Slovak Republic)', NULL, NULL, NULL),
(431, 'Slovenia', NULL, NULL, NULL),
(432, 'Solomon Islands', NULL, NULL, NULL),
(433, 'Somalia', NULL, NULL, NULL),
(434, 'South Africa', NULL, NULL, NULL),
(435, 'South Georgia and the South Sandwich Islands', NULL, NULL, NULL),
(436, 'Spain', NULL, NULL, NULL),
(437, 'Sri Lanka', NULL, NULL, NULL),
(438, 'St. Helena', NULL, NULL, NULL),
(439, 'St. Pierre and Miquelon', NULL, NULL, NULL),
(440, 'Sudan', NULL, NULL, NULL),
(441, 'Suriname', NULL, NULL, NULL),
(442, 'Svalbard and Jan Mayen Islands', NULL, NULL, NULL),
(443, 'Swaziland', NULL, NULL, NULL),
(444, 'Sweden', NULL, NULL, NULL),
(445, 'Switzerland', NULL, NULL, NULL),
(446, 'Syrian Arab Republic', NULL, NULL, NULL),
(447, 'Taiwan, Province of China', NULL, NULL, NULL),
(448, 'Tajikistan', NULL, NULL, NULL),
(449, 'Tanzania, United Republic of', NULL, NULL, NULL),
(450, 'Thailand', NULL, NULL, NULL),
(451, 'Togo', NULL, NULL, NULL),
(452, 'Tokelau', NULL, NULL, NULL),
(453, 'Tonga', NULL, NULL, NULL),
(454, 'Trinidad and Tobago', NULL, NULL, NULL),
(455, 'Tunisia', NULL, NULL, NULL),
(456, 'Turkey', NULL, NULL, NULL),
(457, 'Turkmenistan', NULL, NULL, NULL),
(458, 'Turks and Caicos Islands', NULL, NULL, NULL),
(459, 'Tuvalu', NULL, NULL, NULL),
(460, 'Uganda', NULL, NULL, NULL),
(461, 'Ukraine', NULL, NULL, NULL),
(462, 'United Arab Emirates', NULL, NULL, NULL),
(463, 'United Kingdom', NULL, NULL, NULL),
(464, 'United States', NULL, NULL, NULL),
(465, 'United States Minor Outlying Islands', NULL, NULL, NULL),
(466, 'Uruguay', NULL, NULL, NULL),
(467, 'Uzbekistan', NULL, NULL, NULL),
(468, 'Vanuatu', NULL, NULL, NULL),
(469, 'Venezuela', NULL, NULL, NULL),
(470, 'Vietnam', NULL, NULL, NULL),
(471, 'Virgin Islands (British)', NULL, NULL, NULL),
(472, 'Virgin Islands (U.S.)', NULL, NULL, NULL),
(473, 'Wallis and Futuna Islands', NULL, NULL, NULL),
(474, 'Western Sahara', NULL, NULL, NULL),
(475, 'Yemen', NULL, NULL, NULL),
(476, 'Yugoslavia', NULL, NULL, NULL),
(477, 'Zambia', NULL, NULL, NULL),
(478, 'Zimbabwe', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `r_id` int(10) UNSIGNED NOT NULL,
  `s_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` int(11) NOT NULL DEFAULT '1',
  `approve` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `title`, `description`, `address`, `experience`, `country`, `company_name`, `about_company`, `company_logo`, `salary`, `education`, `job_type`, `availability`, `approve`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '2-9', 'Benin', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '75', 'faculty of law', 'hours', 0, 0, 1, NULL, NULL, NULL),
(2, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '1-7', 'Oman', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '97', 'faculty of law', 'full_time', 0, 0, 6, NULL, NULL, NULL),
(3, 'Web Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '3-8', 'Dominican Republic', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '86', 'faculty of law', 'full_time', 0, 0, 1, NULL, NULL, NULL),
(4, 'Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '3-10', 'Cape Verde', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '100', 'faculty of law', 'hours', 0, 0, 2, NULL, NULL, NULL),
(5, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '5-8', 'Dominican Republic', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '90', 'faculty of law', 'full_time', 0, 0, 20, NULL, NULL, NULL),
(6, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '1-6', 'Sudan', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '80', 'faculty of commrece', 'full_time', 0, 0, 14, NULL, NULL, NULL),
(7, 'Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-9', 'Philippines', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '103', 'faculty of commrece', 'hours', 0, 0, 5, NULL, NULL, NULL),
(8, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '4-9', 'Sierra Leone', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '142', 'faculty of commrece', 'full_time', 0, 0, 20, NULL, NULL, NULL),
(9, 'Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '4-6', 'Sierra Leone', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '87', 'faculty of commrece', 'hours', 0, 0, 18, NULL, NULL, NULL),
(10, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '5-7', 'New Caledonia', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '87', 'computer science- Auc', 'full_time', 0, 0, 15, NULL, NULL, NULL),
(11, 'PHP Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '4-9', 'Benin', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '39', 'faculty of law', 'full_time', 0, 0, 17, NULL, NULL, NULL),
(12, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '4-9', 'Iceland', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '62', 'faculty of law', 'full_time', 0, 0, 9, NULL, NULL, NULL),
(13, 'PHP Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '1-6', 'Netherlands Antilles', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '35', 'faculty of law', 'hours', 0, 0, 1, NULL, NULL, NULL),
(14, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '1-5', 'Suriname', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '55', 'faculty of commrece', 'full_time', 0, 0, 18, NULL, NULL, NULL),
(15, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '1-5', 'Burundi', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '59', 'faculty of law', 'full_time', 0, 0, 10, NULL, NULL, NULL),
(16, 'PHP Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '5-7', 'Kyrgyzstan', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '86', 'faculty of law', 'hours', 0, 0, 7, NULL, NULL, NULL),
(17, 'PHP Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '4-10', 'Switzerland', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '62', 'faculty of commrece', 'hours', 0, 0, 16, NULL, NULL, NULL),
(18, 'Web Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '2-5', 'Guinea', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '129', 'faculty of commrece', 'hours', 0, 0, 10, NULL, NULL, NULL),
(19, 'Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '1-9', 'Somalia', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '76', 'faculty of law', 'hours', 0, 0, 12, NULL, NULL, NULL),
(20, 'PHP Web Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '4-7', 'Iceland', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '46', 'faculty of law', 'hours', 0, 0, 18, NULL, NULL, NULL),
(21, 'Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '5-5', 'New Caledonia', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '148', 'computer science- Auc', 'hours', 0, 0, 12, NULL, NULL, NULL),
(22, 'Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '4-7', 'Mauritius', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '59', 'faculty of law', 'hours', 0, 0, 16, NULL, NULL, NULL),
(23, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '4-8', 'Guinea', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '67', 'faculty of commrece', 'full_time', 0, 0, 3, NULL, NULL, NULL),
(24, 'Web Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '4-6', 'Finland', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '134', 'computer science- Auc', 'full_time', 0, 0, 11, NULL, NULL, NULL),
(25, 'PHP Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '1-8', 'Burundi', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '58', 'faculty of law', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(26, 'PHP Web Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '3-9', 'Guinea', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '32', 'faculty of law', 'full_time', 0, 0, 7, NULL, NULL, NULL),
(27, 'Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '3-9', 'Cape Verde', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '26', 'faculty of commrece', 'full_time', 0, 0, 1, NULL, NULL, NULL),
(28, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '1-10', 'Oman', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '110', 'faculty of law', 'hours', 0, 0, 20, NULL, NULL, NULL),
(29, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '4-7', 'Liberia', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '55', 'computer science- Auc', 'full_time', 0, 0, 16, NULL, NULL, NULL),
(30, 'PHP Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '5-8', 'Guinea', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '67', 'faculty of law', 'full_time', 0, 0, 14, NULL, NULL, NULL),
(31, 'PHP Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '5-10', 'Anguilla', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '97', 'faculty of commrece', 'hours', 0, 0, 7, NULL, NULL, NULL),
(32, 'Web Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '3-6', 'Dominican Republic', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '62', 'faculty of law', 'hours', 0, 0, 1, NULL, NULL, NULL),
(33, 'PHP Web Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '5-8', 'Suriname', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '51', 'computer science- Auc', 'hours', 0, 0, 19, NULL, NULL, NULL),
(34, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '2-6', 'Senegal', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '115', 'faculty of commrece', 'full_time', 0, 0, 4, NULL, NULL, NULL),
(35, 'PHP Developer', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '1-7', 'Greece', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '98', 'computer science- Auc', 'hours', 0, 0, 1, NULL, NULL, NULL),
(36, 'Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-5', 'Guinea', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '137', 'faculty of commrece', 'full_time', 0, 0, 7, NULL, NULL, NULL),
(37, 'Full Stack Web Developer (PHP / Laravel)', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '3-6', 'Burundi', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '20', 'computer science- Auc', 'full_time', 0, 0, 16, NULL, NULL, NULL),
(38, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '3-9', 'Iceland', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '95', 'faculty of law', 'full_time', 0, 0, 14, NULL, NULL, NULL),
(39, 'PHP Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '4-6', 'Suriname', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '47', 'computer science- Auc', 'full_time', 0, 0, 12, NULL, NULL, NULL),
(40, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '1-7', 'Guinea', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '116', 'faculty of commrece', 'hours', 0, 0, 2, NULL, NULL, NULL),
(41, 'PHP Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '5-9', 'Costa Rica', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '49', 'computer science- Auc', 'hours', 0, 0, 10, NULL, NULL, NULL),
(42, 'PHP Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '5-7', 'Finland', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '126', 'faculty of commrece', 'full_time', 0, 0, 17, NULL, NULL, NULL),
(43, 'PHP Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '2-10', 'Iceland', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '123', 'faculty of law', 'hours', 0, 0, 2, NULL, NULL, NULL),
(44, 'Web Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '2-9', 'Benin', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '24', 'faculty of commrece', 'full_time', 0, 0, 18, NULL, NULL, NULL),
(45, 'Web Developer', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '3-10', 'Iceland', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '124', 'faculty of commrece', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(46, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '5-7', 'Costa Rica', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '41', 'computer science- Auc', 'full_time', 0, 0, 16, NULL, NULL, NULL),
(47, 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '2-10', 'Venezuela', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '51', 'faculty of commrece', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(48, 'Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '3-6', 'Sri Lanka', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '127', 'faculty of commrece', 'hours', 0, 0, 8, NULL, NULL, NULL),
(49, 'PHP Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '2-8', 'Philippines', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '105', 'faculty of law', 'hours', 0, 0, 10, NULL, NULL, NULL),
(50, 'Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '3-6', 'Philippines', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '71', 'faculty of law', 'hours', 0, 0, 3, NULL, NULL, NULL),
(51, 'Full Stack Web Developer (PHP / Laravel)', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '3-10', 'St. Pierre and Miquelon', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '70', 'computer science- Auc', 'full_time', 1, 0, 1, NULL, NULL, '2018-11-18 14:25:41'),
(52, 'PHP Web Developer', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '2-5', 'Christmas Island', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '112', 'faculty of law', 'full_time', 0, 0, 9, NULL, NULL, NULL),
(53, 'Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '5-6', 'Italy', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '115', 'faculty of commrece', 'hours', 0, 0, 1, NULL, NULL, NULL),
(54, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '1-8', 'Finland', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '73', 'computer science- Auc', 'full_time', 0, 0, 1, NULL, NULL, NULL),
(55, 'Full Stack Web Developer (PHP / Laravel)', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '5-7', 'St. Pierre and Miquelon', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '25', 'faculty of law', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(56, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '3-7', 'Saint Lucia', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '89', 'faculty of commrece', 'full_time', 0, 0, 9, NULL, NULL, NULL),
(57, 'Web Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '5-9', 'French Southern Territories', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '28', 'faculty of commrece', 'full_time', 0, 0, 19, NULL, NULL, NULL),
(58, 'PHP Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '4-10', 'United Arab Emirates', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '67', 'faculty of law', 'full_time', 0, 0, 20, NULL, NULL, NULL),
(59, 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '3-7', 'Chad', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '86', 'computer science- Auc', 'hours', 0, 0, 17, NULL, NULL, NULL),
(60, 'PHP Web Developer', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '5-10', 'Cyprus', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '105', 'computer science- Auc', 'full_time', 0, 0, 7, NULL, NULL, NULL),
(61, 'PHP Web Developer', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '3-10', 'Antarctica', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '93', 'faculty of law', 'full_time', 0, 0, 3, NULL, NULL, NULL),
(62, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-6', 'Saint Kitts and Nevis', 'facebook', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '137', 'faculty of law', 'hours', 0, 0, 12, NULL, NULL, NULL),
(63, 'PHP Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '3-9', 'French Polynesia', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '129', 'computer science- Auc', 'hours', 0, 0, 3, NULL, NULL, NULL),
(64, 'Web Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '1-9', 'Swaziland', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '56', 'faculty of law', 'hours', 0, 0, 15, NULL, NULL, NULL),
(65, 'Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '1-9', 'Martinique', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '132', 'faculty of commrece', 'full_time', 0, 0, 15, NULL, NULL, NULL),
(66, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '2-10', 'Cyprus', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '29', 'computer science- Auc', 'hours', 0, 0, 16, NULL, NULL, NULL),
(67, 'PHP Developer', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '4-5', 'Christmas Island', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '74', 'faculty of commrece', 'full_time', 0, 0, 3, NULL, NULL, NULL),
(68, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '4-8', 'Christmas Island', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '73', 'faculty of commrece', 'full_time', 0, 0, 4, NULL, NULL, NULL),
(69, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '2-9', 'Antarctica', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '46', 'faculty of law', 'full_time', 0, 0, 10, NULL, NULL, NULL),
(70, 'PHP Web Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '2-7', 'Christmas Island', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '41', 'faculty of law', 'hours', 0, 0, 16, NULL, NULL, NULL),
(71, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '3-10', 'Christmas Island', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '145', 'computer science- Auc', 'hours', 0, 0, 1, NULL, NULL, NULL),
(72, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '1-6', 'Antarctica', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '126', 'faculty of law', 'hours', 0, 0, 5, NULL, NULL, NULL),
(73, 'Web Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '2-10', 'Cuba', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '54', 'faculty of law', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(74, 'Web Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '3-5', 'Sweden', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '97', 'computer science- Auc', 'full_time', 0, 0, 18, NULL, NULL, NULL),
(75, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '2-5', 'Saint Kitts and Nevis', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '106', 'faculty of law', 'full_time', 0, 0, 3, NULL, NULL, NULL),
(76, 'PHP Developer', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '4-8', 'Nigeria', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '123', 'faculty of commrece', 'full_time', 0, 0, 7, NULL, NULL, NULL),
(77, 'PHP Web Developer', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '4-10', 'Italy', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '97', 'computer science- Auc', 'hours', 0, 0, 15, NULL, NULL, NULL),
(78, 'PHP Developer', 'WordPress Web Developer - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '1-5', 'Albania', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '107', 'faculty of law', 'hours', 0, 0, 8, NULL, NULL, NULL),
(79, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '2-6', 'Djibouti', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '55', 'faculty of commrece', 'full_time', 0, 0, 20, NULL, NULL, NULL),
(80, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '3-6', 'Saint Kitts and Nevis', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '44', 'faculty of law', 'hours', 0, 0, 9, NULL, NULL, NULL),
(81, 'PHP Web Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '3-6', 'Portugal', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '21', 'faculty of commrece', 'full_time', 0, 0, 17, NULL, NULL, NULL),
(82, 'PHP Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '1-6', 'Mongolia', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '98', 'faculty of commrece', 'hours', 0, 0, 16, NULL, NULL, NULL),
(83, 'Full Stack Web Developer (PHP / Laravel)', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '4-10', 'Cyprus', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '99', 'faculty of commrece', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(84, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '1-9', 'Antarctica', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '109', 'faculty of law', 'hours', 0, 0, 9, NULL, NULL, NULL),
(85, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '1-6', 'Christmas Island', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '34', 'faculty of commrece', 'hours', 0, 0, 12, NULL, NULL, NULL),
(86, 'Full Stack Web Developer (PHP / Laravel)', 'PHP Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '5-7', 'Sweden', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '61', 'faculty of law', 'full_time', 0, 0, 17, NULL, NULL, NULL);
INSERT INTO `jobs` (`id`, `name`, `title`, `description`, `address`, `experience`, `country`, `company_name`, `about_company`, `company_logo`, `salary`, `education`, `job_type`, `availability`, `approve`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(87, 'PHP Web Developer', 'WordPress Web Developer - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-9', 'United Arab Emirates', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '86', 'computer science- Auc', 'hours', 0, 0, 6, NULL, NULL, NULL),
(88, 'Web Developer', 'WordPress - Alexandria', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Mohandessin, Giza', '2-10', 'Lebanon', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '112', 'faculty of commrece', 'hours', 0, 0, 14, NULL, NULL, NULL),
(89, 'PHP Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '2-8', 'Lebanon', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '88', 'faculty of commrece', 'hours', 0, 0, 12, NULL, NULL, NULL),
(90, 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '3-9', 'Sweden', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '45', 'faculty of law', 'full_time', 0, 0, 18, NULL, NULL, NULL),
(91, 'PHP Web Developer', 'PHP Web Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Maadi, Cairo', '5-8', 'Portugal', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '111', 'faculty of commrece', 'full_time', 0, 0, 11, NULL, NULL, NULL),
(92, 'PHP Developer', 'PHP Laravel Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Media Misr - Cairo, Egypt', '5-9', 'Albania', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '106', 'faculty of commrece', 'full_time', 0, 0, 6, NULL, NULL, NULL),
(93, 'PHP Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Media Misr - Cairo, Egypt', '3-7', 'Botswana', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '102', 'faculty of law', 'full_time', 0, 0, 1, NULL, NULL, NULL),
(94, 'PHP Developer', 'PHP Developer', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '1-9', 'Cuba', 'facebook', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '47', 'faculty of law', 'full_time', 0, 0, 18, NULL, NULL, NULL),
(95, 'PHP Web Developer', 'PHP Web Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '5-7', 'Mongolia', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '134', 'computer science- Auc', 'full_time', 0, 0, 6, NULL, NULL, NULL),
(96, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Glim, Alexandria', '4-8', 'Finland', 'facebook', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '31', 'computer science- Auc', 'hours', 0, 0, 12, NULL, NULL, NULL),
(97, 'PHP Developer', 'WordPress - Alexandria', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '3-6', 'French Southern Territories', 'google', 'To assign a virtual assistant for our employees to change their lives to better tom, accomplish personal tasks, stabilize their bills and responsibilities, help them raise their kids, motivate them in work', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '122', 'faculty of law', 'full_time', 0, 0, 13, NULL, NULL, NULL),
(98, 'PHP Developer', 'Full Stack Web Developer (PHP / Laravel)', '2+ years of \'experience\'<br>Experience of the full software development lifecycle=> from requirements gathering and functional specification', 'Glim, Alexandria', '1-5', 'St. Pierre and Miquelon', 'google', 'work on improving the family relationship, work on the employee\'s whole family health specially naturally, work on the employee property, fill any unknown gap the employee might feel that he has no clue how to manage it.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '130', 'faculty of commrece', 'full_time', 0, 0, 7, NULL, NULL, NULL),
(99, 'PHP Web Developer', 'PHP Laravel Developer', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Mohandessin, Giza', '1-10', 'Djibouti', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '96', 'computer science- Auc', 'hours', 0, 0, 14, NULL, NULL, NULL),
(100, 'Web Developer', 'Full Stack Web Developer (PHP / Laravel)', 'jQuery, HTML5, and CSS3<br>Understanding of code versioning tools<br>Understanding of Ajax, JSON<br>Max age 35', 'Maadi, Cairo', '2-5', 'South Georgia and the South Sandwich Islands', 'google', 'Nile Multimedia is an Egyptian Limited Liability Company and in accordance with the provisions Act 159 of 1981, Ratified by the General Authority for Investment No. 1309 of 2007, Commercial No. 27762 and Tax card No. 266-680-976.', '/images/jobs/Nile-Multimedia-Egypt-4085-sm.png', '39', 'faculty of commrece', 'full_time', 0, 0, 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `skill_id`, `job_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 6, 1, NULL, NULL, NULL),
(2, 30, 28, NULL, NULL, NULL),
(3, 31, 31, NULL, NULL, NULL),
(4, 25, 18, NULL, NULL, NULL),
(5, 36, 22, NULL, NULL, NULL),
(6, 16, 9, NULL, NULL, NULL),
(7, 20, 8, NULL, NULL, NULL),
(8, 30, 38, NULL, NULL, NULL),
(9, 20, 20, NULL, NULL, NULL),
(10, 40, 7, NULL, NULL, NULL),
(11, 40, 11, NULL, NULL, NULL),
(12, 19, 26, NULL, NULL, NULL),
(13, 29, 32, NULL, NULL, NULL),
(14, 3, 31, NULL, NULL, NULL),
(15, 13, 37, NULL, NULL, NULL),
(16, 28, 38, NULL, NULL, NULL),
(17, 27, 14, NULL, NULL, NULL),
(18, 34, 9, NULL, NULL, NULL),
(19, 24, 36, NULL, NULL, NULL),
(20, 11, 35, NULL, NULL, NULL),
(21, 40, 2, NULL, NULL, NULL),
(22, 12, 31, NULL, NULL, NULL),
(23, 35, 29, NULL, NULL, NULL),
(24, 40, 28, NULL, NULL, NULL),
(25, 14, 10, NULL, NULL, NULL),
(26, 39, 6, NULL, NULL, NULL),
(27, 37, 18, NULL, NULL, NULL),
(28, 31, 5, NULL, NULL, NULL),
(29, 22, 14, NULL, NULL, NULL),
(30, 21, 28, NULL, NULL, NULL),
(31, 36, 20, NULL, NULL, NULL),
(32, 33, 4, NULL, NULL, NULL),
(33, 25, 3, NULL, NULL, NULL),
(34, 29, 2, NULL, NULL, NULL),
(35, 29, 35, NULL, NULL, NULL),
(36, 20, 7, NULL, NULL, NULL),
(37, 30, 31, NULL, NULL, NULL),
(38, 8, 1, NULL, NULL, NULL),
(39, 10, 16, NULL, NULL, NULL),
(40, 34, 40, NULL, NULL, NULL),
(41, 34, 22, NULL, NULL, NULL),
(42, 36, 29, NULL, NULL, NULL),
(43, 5, 7, NULL, NULL, NULL),
(44, 34, 15, NULL, NULL, NULL),
(45, 21, 1, NULL, NULL, NULL),
(46, 28, 19, NULL, NULL, NULL),
(47, 17, 6, NULL, NULL, NULL),
(48, 18, 16, NULL, NULL, NULL),
(49, 21, 13, NULL, NULL, NULL),
(50, 26, 33, NULL, NULL, NULL),
(51, 40, 15, NULL, NULL, NULL),
(52, 3, 26, NULL, NULL, NULL),
(53, 5, 7, NULL, NULL, NULL),
(54, 31, 6, NULL, NULL, NULL),
(55, 37, 9, NULL, NULL, NULL),
(56, 20, 13, NULL, NULL, NULL),
(57, 35, 36, NULL, NULL, NULL),
(58, 8, 36, NULL, NULL, NULL),
(59, 20, 17, NULL, NULL, NULL),
(60, 28, 18, NULL, NULL, NULL),
(61, 7, 34, NULL, NULL, NULL),
(62, 27, 5, NULL, NULL, NULL),
(63, 26, 30, NULL, NULL, NULL),
(64, 22, 3, NULL, NULL, NULL),
(65, 28, 25, NULL, NULL, NULL),
(66, 17, 40, NULL, NULL, NULL),
(67, 18, 39, NULL, NULL, NULL),
(68, 22, 37, NULL, NULL, NULL),
(69, 36, 9, NULL, NULL, NULL),
(70, 22, 5, NULL, NULL, NULL),
(71, 15, 3, NULL, NULL, NULL),
(72, 8, 38, NULL, NULL, NULL),
(73, 1, 20, NULL, NULL, NULL),
(74, 23, 19, NULL, NULL, NULL),
(75, 2, 20, NULL, NULL, NULL),
(76, 5, 8, NULL, NULL, NULL),
(77, 37, 5, NULL, NULL, NULL),
(78, 29, 25, NULL, NULL, NULL),
(79, 34, 6, NULL, NULL, NULL),
(80, 21, 15, NULL, NULL, NULL),
(81, 26, 4, NULL, NULL, NULL),
(82, 32, 28, NULL, NULL, NULL),
(83, 22, 14, NULL, NULL, NULL),
(84, 23, 33, NULL, NULL, NULL),
(85, 40, 27, NULL, NULL, NULL),
(86, 29, 21, NULL, NULL, NULL),
(87, 34, 23, NULL, NULL, NULL),
(88, 35, 1, NULL, NULL, NULL),
(89, 35, 9, NULL, NULL, NULL),
(90, 37, 27, NULL, NULL, NULL),
(91, 18, 14, NULL, NULL, NULL),
(92, 30, 2, NULL, NULL, NULL),
(93, 35, 22, NULL, NULL, NULL),
(94, 5, 22, NULL, NULL, NULL),
(95, 24, 27, NULL, NULL, NULL),
(96, 10, 35, NULL, NULL, NULL),
(97, 2, 1, NULL, NULL, NULL),
(98, 11, 16, NULL, NULL, NULL),
(99, 15, 39, NULL, NULL, NULL),
(100, 26, 34, NULL, NULL, NULL),
(101, 1, 13, NULL, NULL, NULL),
(102, 33, 25, NULL, NULL, NULL),
(103, 17, 36, NULL, NULL, NULL),
(104, 23, 14, NULL, NULL, NULL),
(105, 24, 25, NULL, NULL, NULL),
(106, 25, 17, NULL, NULL, NULL),
(107, 6, 11, NULL, NULL, NULL),
(108, 25, 6, NULL, NULL, NULL),
(109, 5, 11, NULL, NULL, NULL),
(110, 8, 4, NULL, NULL, NULL),
(111, 15, 30, NULL, NULL, NULL),
(112, 35, 14, NULL, NULL, NULL),
(113, 19, 7, NULL, NULL, NULL),
(114, 23, 39, NULL, NULL, NULL),
(115, 4, 15, NULL, NULL, NULL),
(116, 20, 6, NULL, NULL, NULL),
(117, 22, 32, NULL, NULL, NULL),
(118, 19, 38, NULL, NULL, NULL),
(119, 34, 31, NULL, NULL, NULL),
(120, 21, 33, NULL, NULL, NULL),
(121, 4, 21, NULL, NULL, NULL),
(122, 37, 13, NULL, NULL, NULL),
(123, 2, 11, NULL, NULL, NULL),
(124, 18, 13, NULL, NULL, NULL),
(125, 2, 9, NULL, NULL, NULL),
(126, 10, 30, NULL, NULL, NULL),
(127, 35, 9, NULL, NULL, NULL),
(128, 2, 13, NULL, NULL, NULL),
(129, 7, 34, NULL, NULL, NULL),
(130, 19, 2, NULL, NULL, NULL),
(131, 14, 1, NULL, NULL, NULL),
(132, 29, 4, NULL, NULL, NULL),
(133, 39, 26, NULL, NULL, NULL),
(134, 31, 6, NULL, NULL, NULL),
(135, 40, 36, NULL, NULL, NULL),
(136, 5, 37, NULL, NULL, NULL),
(137, 9, 39, NULL, NULL, NULL),
(138, 10, 26, NULL, NULL, NULL),
(139, 22, 35, NULL, NULL, NULL),
(140, 20, 2, NULL, NULL, NULL),
(141, 25, 5, NULL, NULL, NULL),
(142, 19, 24, NULL, NULL, NULL),
(143, 5, 39, NULL, NULL, NULL),
(144, 2, 27, NULL, NULL, NULL),
(145, 27, 14, NULL, NULL, NULL),
(146, 40, 28, NULL, NULL, NULL),
(147, 12, 6, NULL, NULL, NULL),
(148, 5, 38, NULL, NULL, NULL),
(149, 1, 34, NULL, NULL, NULL),
(150, 29, 11, NULL, NULL, NULL),
(151, 39, 7, NULL, NULL, NULL),
(152, 3, 10, NULL, NULL, NULL),
(153, 32, 26, NULL, NULL, NULL),
(154, 19, 38, NULL, NULL, NULL),
(155, 14, 35, NULL, NULL, NULL),
(156, 33, 33, NULL, NULL, NULL),
(157, 31, 34, NULL, NULL, NULL),
(158, 16, 18, NULL, NULL, NULL),
(159, 38, 18, NULL, NULL, NULL),
(160, 9, 11, NULL, NULL, NULL),
(161, 27, 14, NULL, NULL, NULL),
(162, 2, 14, NULL, NULL, NULL),
(163, 33, 37, NULL, NULL, NULL),
(164, 16, 27, NULL, NULL, NULL),
(165, 12, 17, NULL, NULL, NULL),
(166, 20, 9, NULL, NULL, NULL),
(167, 30, 30, NULL, NULL, NULL),
(168, 4, 26, NULL, NULL, NULL),
(169, 3, 15, NULL, NULL, NULL),
(170, 31, 35, NULL, NULL, NULL),
(171, 35, 36, NULL, NULL, NULL),
(172, 5, 35, NULL, NULL, NULL),
(173, 12, 5, NULL, NULL, NULL),
(174, 40, 11, NULL, NULL, NULL),
(175, 11, 11, NULL, NULL, NULL),
(176, 21, 31, NULL, NULL, NULL),
(177, 21, 36, NULL, NULL, NULL),
(178, 6, 9, NULL, NULL, NULL),
(179, 12, 8, NULL, NULL, NULL),
(180, 2, 23, NULL, NULL, NULL),
(181, 37, 33, NULL, NULL, NULL),
(182, 30, 18, NULL, NULL, NULL),
(183, 16, 10, NULL, NULL, NULL),
(184, 37, 27, NULL, NULL, NULL),
(185, 20, 10, NULL, NULL, NULL),
(186, 20, 1, NULL, NULL, NULL),
(187, 3, 7, NULL, NULL, NULL),
(188, 8, 14, NULL, NULL, NULL),
(189, 14, 39, NULL, NULL, NULL),
(190, 26, 40, NULL, NULL, NULL),
(191, 30, 10, NULL, NULL, NULL),
(192, 38, 25, NULL, NULL, NULL),
(193, 8, 21, NULL, NULL, NULL),
(194, 5, 27, NULL, NULL, NULL),
(195, 13, 37, NULL, NULL, NULL),
(196, 4, 20, NULL, NULL, NULL),
(197, 6, 13, NULL, NULL, NULL),
(198, 13, 15, NULL, NULL, NULL),
(199, 39, 17, NULL, NULL, NULL),
(200, 17, 40, NULL, NULL, NULL),
(201, 27, 28, NULL, NULL, NULL),
(202, 26, 14, NULL, NULL, NULL),
(203, 22, 34, NULL, NULL, NULL),
(204, 16, 38, NULL, NULL, NULL),
(205, 22, 14, NULL, NULL, NULL),
(206, 35, 14, NULL, NULL, NULL),
(207, 11, 20, NULL, NULL, NULL),
(208, 30, 19, NULL, NULL, NULL),
(209, 27, 32, NULL, NULL, NULL),
(210, 3, 19, NULL, NULL, NULL),
(211, 10, 12, NULL, NULL, NULL),
(212, 1, 25, NULL, NULL, NULL),
(213, 38, 17, NULL, NULL, NULL),
(214, 13, 26, NULL, NULL, NULL),
(215, 35, 12, NULL, NULL, NULL),
(216, 2, 19, NULL, NULL, NULL),
(217, 27, 32, NULL, NULL, NULL),
(218, 13, 28, NULL, NULL, NULL),
(219, 37, 10, NULL, NULL, NULL),
(220, 37, 23, NULL, NULL, NULL),
(221, 35, 17, NULL, NULL, NULL),
(222, 3, 11, NULL, NULL, NULL),
(223, 20, 30, NULL, NULL, NULL),
(224, 33, 16, NULL, NULL, NULL),
(225, 1, 10, NULL, NULL, NULL),
(226, 24, 37, NULL, NULL, NULL),
(227, 20, 18, NULL, NULL, NULL),
(228, 25, 17, NULL, NULL, NULL),
(229, 1, 27, NULL, NULL, NULL),
(230, 16, 30, NULL, NULL, NULL),
(231, 3, 14, NULL, NULL, NULL),
(232, 7, 10, NULL, NULL, NULL),
(233, 12, 9, NULL, NULL, NULL),
(234, 16, 25, NULL, NULL, NULL),
(235, 36, 14, NULL, NULL, NULL),
(236, 22, 16, NULL, NULL, NULL),
(237, 4, 8, NULL, NULL, NULL),
(238, 32, 14, NULL, NULL, NULL),
(239, 30, 32, NULL, NULL, NULL),
(240, 27, 13, NULL, NULL, NULL),
(241, 32, 40, NULL, NULL, NULL),
(242, 12, 38, NULL, NULL, NULL),
(243, 21, 31, NULL, NULL, NULL),
(244, 18, 10, NULL, NULL, NULL),
(245, 22, 28, NULL, NULL, NULL),
(246, 39, 28, NULL, NULL, NULL),
(247, 18, 32, NULL, NULL, NULL),
(248, 28, 13, NULL, NULL, NULL),
(249, 13, 13, NULL, NULL, NULL),
(250, 3, 39, NULL, NULL, NULL),
(251, 16, 37, NULL, NULL, NULL),
(252, 9, 5, NULL, NULL, NULL),
(253, 7, 34, NULL, NULL, NULL),
(254, 36, 35, NULL, NULL, NULL),
(255, 33, 30, NULL, NULL, NULL),
(256, 16, 16, NULL, NULL, NULL),
(257, 29, 32, NULL, NULL, NULL),
(258, 19, 24, NULL, NULL, NULL),
(259, 8, 37, NULL, NULL, NULL),
(260, 39, 21, NULL, NULL, NULL),
(261, 18, 5, NULL, NULL, NULL),
(262, 12, 18, NULL, NULL, NULL),
(263, 4, 12, NULL, NULL, NULL),
(264, 36, 1, NULL, NULL, NULL),
(265, 27, 5, NULL, NULL, NULL),
(266, 7, 32, NULL, NULL, NULL),
(267, 7, 27, NULL, NULL, NULL),
(268, 15, 27, NULL, NULL, NULL),
(269, 21, 11, NULL, NULL, NULL),
(270, 33, 6, NULL, NULL, NULL),
(271, 26, 34, NULL, NULL, NULL),
(272, 33, 32, NULL, NULL, NULL),
(273, 4, 33, NULL, NULL, NULL),
(274, 20, 9, NULL, NULL, NULL),
(275, 25, 40, NULL, NULL, NULL),
(276, 32, 27, NULL, NULL, NULL),
(277, 6, 10, NULL, NULL, NULL),
(278, 6, 17, NULL, NULL, NULL),
(279, 14, 33, NULL, NULL, NULL),
(280, 6, 24, NULL, NULL, NULL),
(281, 20, 19, NULL, NULL, NULL),
(282, 13, 22, NULL, NULL, NULL),
(283, 29, 39, NULL, NULL, NULL),
(284, 24, 40, NULL, NULL, NULL),
(285, 23, 23, NULL, NULL, NULL),
(286, 23, 39, NULL, NULL, NULL),
(287, 26, 13, NULL, NULL, NULL),
(288, 17, 34, NULL, NULL, NULL),
(289, 8, 5, NULL, NULL, NULL),
(290, 34, 9, NULL, NULL, NULL),
(291, 5, 14, NULL, NULL, NULL),
(292, 4, 26, NULL, NULL, NULL),
(293, 35, 3, NULL, NULL, NULL),
(294, 31, 2, NULL, NULL, NULL),
(295, 29, 22, NULL, NULL, NULL),
(296, 12, 11, NULL, NULL, NULL),
(297, 13, 13, NULL, NULL, NULL),
(298, 15, 26, NULL, NULL, NULL),
(299, 37, 8, NULL, NULL, NULL),
(300, 11, 34, NULL, NULL, NULL),
(301, 25, 24, NULL, NULL, NULL),
(302, 7, 25, NULL, NULL, NULL),
(303, 20, 6, NULL, NULL, NULL),
(304, 14, 31, NULL, NULL, NULL),
(305, 1, 18, NULL, NULL, NULL),
(306, 5, 39, NULL, NULL, NULL),
(307, 20, 18, NULL, NULL, NULL),
(308, 16, 3, NULL, NULL, NULL),
(309, 33, 25, NULL, NULL, NULL),
(310, 40, 21, NULL, NULL, NULL),
(311, 26, 23, NULL, NULL, NULL),
(312, 20, 31, NULL, NULL, NULL),
(313, 7, 23, NULL, NULL, NULL),
(314, 14, 10, NULL, NULL, NULL),
(315, 2, 15, NULL, NULL, NULL),
(316, 38, 28, NULL, NULL, NULL),
(317, 27, 40, NULL, NULL, NULL),
(318, 34, 13, NULL, NULL, NULL),
(319, 5, 26, NULL, NULL, NULL),
(320, 9, 39, NULL, NULL, NULL),
(321, 3, 24, NULL, NULL, NULL),
(322, 28, 10, NULL, NULL, NULL),
(323, 29, 4, NULL, NULL, NULL),
(324, 19, 8, NULL, NULL, NULL),
(325, 16, 21, NULL, NULL, NULL),
(326, 6, 23, NULL, NULL, NULL),
(327, 10, 27, NULL, NULL, NULL),
(328, 15, 14, NULL, NULL, NULL),
(329, 40, 25, NULL, NULL, NULL),
(330, 26, 14, NULL, NULL, NULL),
(331, 10, 34, NULL, NULL, NULL),
(332, 18, 3, NULL, NULL, NULL),
(333, 37, 2, NULL, NULL, NULL),
(334, 35, 33, NULL, NULL, NULL),
(335, 34, 8, NULL, NULL, NULL),
(336, 27, 24, NULL, NULL, NULL),
(337, 16, 5, NULL, NULL, NULL),
(338, 16, 29, NULL, NULL, NULL),
(339, 33, 30, NULL, NULL, NULL),
(340, 1, 15, NULL, NULL, NULL),
(341, 5, 13, NULL, NULL, NULL),
(342, 27, 30, NULL, NULL, NULL),
(343, 12, 36, NULL, NULL, NULL),
(344, 10, 10, NULL, NULL, NULL),
(345, 40, 17, NULL, NULL, NULL),
(346, 21, 20, NULL, NULL, NULL),
(347, 19, 35, NULL, NULL, NULL),
(348, 12, 40, NULL, NULL, NULL),
(349, 20, 21, NULL, NULL, NULL),
(350, 38, 25, NULL, NULL, NULL),
(351, 9, 4, NULL, NULL, NULL),
(352, 17, 1, NULL, NULL, NULL),
(353, 39, 19, NULL, NULL, NULL),
(354, 8, 2, NULL, NULL, NULL),
(355, 37, 18, NULL, NULL, NULL),
(356, 26, 37, NULL, NULL, NULL),
(357, 33, 4, NULL, NULL, NULL),
(358, 20, 18, NULL, NULL, NULL),
(359, 10, 27, NULL, NULL, NULL),
(360, 36, 8, NULL, NULL, NULL),
(361, 10, 7, NULL, NULL, NULL),
(362, 39, 18, NULL, NULL, NULL),
(363, 26, 40, NULL, NULL, NULL),
(364, 37, 32, NULL, NULL, NULL),
(365, 25, 27, NULL, NULL, NULL),
(366, 29, 34, NULL, NULL, NULL),
(367, 19, 2, NULL, NULL, NULL),
(368, 2, 39, NULL, NULL, NULL),
(369, 5, 38, NULL, NULL, NULL),
(370, 40, 27, NULL, NULL, NULL),
(371, 30, 23, NULL, NULL, NULL),
(372, 39, 33, NULL, NULL, NULL),
(373, 30, 10, NULL, NULL, NULL),
(374, 21, 32, NULL, NULL, NULL),
(375, 29, 7, NULL, NULL, NULL),
(376, 21, 33, NULL, NULL, NULL),
(377, 9, 32, NULL, NULL, NULL),
(378, 36, 9, NULL, NULL, NULL),
(379, 21, 23, NULL, NULL, NULL),
(380, 37, 17, NULL, NULL, NULL),
(381, 35, 24, NULL, NULL, NULL),
(382, 40, 28, NULL, NULL, NULL),
(383, 24, 15, NULL, NULL, NULL),
(384, 21, 20, NULL, NULL, NULL),
(385, 5, 30, NULL, NULL, NULL),
(386, 15, 31, NULL, NULL, NULL),
(387, 3, 38, NULL, NULL, NULL),
(388, 9, 29, NULL, NULL, NULL),
(389, 18, 1, NULL, NULL, NULL),
(390, 3, 33, NULL, NULL, NULL),
(391, 31, 28, NULL, NULL, NULL),
(392, 18, 9, NULL, NULL, NULL),
(393, 22, 26, NULL, NULL, NULL),
(394, 9, 9, NULL, NULL, NULL),
(395, 20, 24, NULL, NULL, NULL),
(396, 24, 19, NULL, NULL, NULL),
(397, 10, 1, NULL, NULL, NULL),
(398, 6, 5, NULL, NULL, NULL),
(399, 10, 37, NULL, NULL, NULL),
(400, 38, 28, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `read` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msg`, `r_id`, `user_id`, `read`, `created_at`, `updated_at`) VALUES
(2, 'hi', 5, 1, 0, '2018-11-22 16:37:07', '2018-11-22 16:37:07'),
(3, 'how are u', 5, 1, 0, '2018-11-22 16:37:27', '2018-11-22 16:37:27'),
(4, 'hi', 5, 1, 0, '2018-11-22 16:38:46', '2018-11-22 16:38:46'),
(5, 'jow are u', 5, 1, 0, '2018-11-22 16:38:56', '2018-11-22 16:38:56'),
(6, 'good', 5, 1, 0, '2018-11-22 16:39:10', '2018-11-22 16:39:10'),
(7, 'ji', 1, 5, 0, '2018-11-22 16:44:00', '2018-11-22 16:44:00'),
(8, 'ji', 1, 5, 0, '2018-11-22 16:44:04', '2018-11-22 16:44:04'),
(9, 'ji', 1, 5, 0, '2018-11-22 16:44:11', '2018-11-22 16:44:11'),
(10, 'ji', 1, 5, 0, '2018-11-22 16:44:50', '2018-11-22 16:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_07_31_234854_create_jobs_table', 1),
(9, '2018_08_01_022244_create_skills_table', 1),
(10, '2018_08_01_220711_job_skills_name_table', 1),
(11, '2018_08_02_032028_create_bookmarks_table', 1),
(12, '2018_08_02_145640_create_applies_table', 1),
(13, '2018_08_08_212733_create_user_skills_table', 1),
(14, '2018_08_09_213347_create_country_table', 1),
(15, '2018_08_11_192640_create_follows_table', 1),
(16, '2018_08_12_002342_create_messages_table', 1),
(17, '2018_08_13_023610_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2e7661d4274f7f162de7b2d4174c786e5cca948090fb52e32207d2d7d8f11c6841f8bf0891ceee80', 1, 2, NULL, '[]', 0, '2018-11-22 12:36:04', '2018-11-22 12:36:04', '2019-11-22 14:36:04'),
('59d8adc2297a56ac03ab8d0e8e4d88d364397f60545795310628e09384c6c7e606c1bad657dd86bd', 1, 2, NULL, '[]', 0, '2018-11-22 12:38:30', '2018-11-22 12:38:30', '2019-11-22 14:38:30'),
('5c4fce888ffe19101f13d60fd39e4df87a303fd8cc43f13556c7c04dcefb35fdc6506670a5f6f82c', 5, 2, NULL, '[]', 0, '2018-11-22 16:43:42', '2018-11-22 16:43:42', '2019-11-22 18:43:42'),
('8f0aa3a175b8f8e026e92ca770766768886459809be8c1df013d060b3ee878cbb8989917d706f73f', 1, 2, NULL, '[]', 0, '2018-11-18 14:16:29', '2018-11-18 14:16:29', '2019-11-18 16:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'lPm89JrmCMIHACtNPWHzSPmOuqmEXzeQQvLDgb7Y', 'http://localhost', 1, 0, 0, '2018-11-18 14:02:46', '2018-11-18 14:02:46'),
(2, NULL, 'Laravel Password Grant Client', 'qRxikaf4UvbsbWEF4aKEqOmufxycnhSPd8QkUEBt', 'http://localhost', 0, 1, 0, '2018-11-18 14:02:46', '2018-11-18 14:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-11-18 14:02:46', '2018-11-18 14:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('5090a33aff552da038a08223aa3e01267fd15d9c2810570f399e20229637d27db8af094d928eed68', '8f0aa3a175b8f8e026e92ca770766768886459809be8c1df013d060b3ee878cbb8989917d706f73f', 0, '2019-11-18 16:16:29'),
('7025a9a5f0385d84787514bc91d93dc5b014060dcb0a825e78278b4af8d7e85e246695a6fdf8abb6', '59d8adc2297a56ac03ab8d0e8e4d88d364397f60545795310628e09384c6c7e606c1bad657dd86bd', 0, '2019-11-22 14:38:30'),
('758d03462f73b32422e0a863c7266e7e1cf9102b422bc82a2936baf548ded040472d075e6c708fe8', '5c4fce888ffe19101f13d60fd39e4df87a303fd8cc43f13556c7c04dcefb35fdc6506670a5f6f82c', 0, '2019-11-22 18:43:42'),
('7ce383a40117b2aa2636ce4cf93bf47222d731bdcf25999b4df0ffb53f98d400a36cad85f65cdb20', '2e7661d4274f7f162de7b2d4174c786e5cca948090fb52e32207d2d7d8f11c6841f8bf0891ceee80', 0, '2019-11-22 14:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'WordPress', NULL, NULL, NULL),
(2, 'Microsoft', NULL, NULL, NULL),
(3, 'Office', NULL, NULL, NULL),
(4, 'Adobe', NULL, NULL, NULL),
(5, 'Photoshop', NULL, NULL, NULL),
(6, 'Adobe Photoshop', NULL, NULL, NULL),
(7, 'Adobe Illustrator', NULL, NULL, NULL),
(8, 'Adobe Indesign', NULL, NULL, NULL),
(9, 'Interface Design', NULL, NULL, NULL),
(10, 'Information Technology (IT)', NULL, NULL, NULL),
(11, 'Graphic Design', NULL, NULL, NULL),
(12, 'Web Design', NULL, NULL, NULL),
(13, 'HTML', NULL, NULL, NULL),
(14, 'CSS', NULL, NULL, NULL),
(15, 'jQuery', NULL, NULL, NULL),
(16, 'Bootstrap Framework', NULL, NULL, NULL),
(17, 'Testing', NULL, NULL, NULL),
(18, 'Animation', NULL, NULL, NULL),
(19, 'Human Resources (HR)', NULL, NULL, NULL),
(20, 'Recruitment', NULL, NULL, NULL),
(21, 'Interviews', NULL, NULL, NULL),
(22, 'Employee Relations', NULL, NULL, NULL),
(23, 'Employment Law', NULL, NULL, NULL),
(24, 'IT/Software Development', NULL, NULL, NULL),
(25, 'Marketing/PR/Advertising', NULL, NULL, NULL),
(26, 'Project/Program Management', NULL, NULL, NULL),
(27, 'Startup', NULL, NULL, NULL),
(28, 'magento', NULL, NULL, NULL),
(29, 'HTML5', NULL, NULL, NULL),
(30, 'CSS3', NULL, NULL, NULL),
(31, 'PostgreSQL', NULL, NULL, NULL),
(32, 'GitPlus', NULL, NULL, NULL),
(33, 'Angular', NULL, NULL, NULL),
(34, 'TypeScript', NULL, NULL, NULL),
(35, 'React', NULL, NULL, NULL),
(36, 'Computer Science', NULL, NULL, NULL),
(37, 'Software Engineering', NULL, NULL, NULL),
(38, 'Python', NULL, NULL, NULL),
(39, 'Web Development', NULL, NULL, NULL),
(40, 'Software Development', NULL, NULL, NULL),
(41, 'Linux', NULL, NULL, NULL),
(42, 'Diango', NULL, NULL, NULL),
(43, 'REST', NULL, NULL, NULL),
(44, 'Shell Scripting', NULL, NULL, NULL),
(45, 'Software Technologies', NULL, NULL, NULL),
(46, 'API', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `follow` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `country`, `job`, `about`, `avatar`, `role`, `gender`, `follow`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hesham', 'mohamed', 'DCohfv7x4@gmail.com', '$2y$10$xoTeBjrUbNv0Wi109pJFiOVaZaisXXR9vNOBWFtNsoO01SQcTATMm', '+2011477617871', 'Cocos (Keeling) Islands', 'HR', 'OBBNTONfBGn80ci', '', 'user', 'male', NULL, NULL, NULL, NULL),
(2, 'mohamed', 'sayed', 'FQb1mzOy1@gmail.com', '$2y$10$4F5/Dg.vQvxNPiiKA1NOk.p3hESr00oQsqB0M7.y3d2UeNXmZ0pKq', '+2011475210642', 'Algeria', 'lawyer', 'X75gQdbDwc8jiB7', '', 'user', 'female', NULL, NULL, NULL, NULL),
(3, 'hussin', 'hassan', 'uDDvpXYI4@gmail.com', '$2y$10$j21wTHLkj2DFrHCBNhVmhOuV8teubN1QRUzgd3ZU.sBCdRvNbfWJu', '+2011261677158', 'Cocos (Keeling) Islands', 'Business Man', 'jjpjFQvY6AleuPV', '', 'user', 'female', NULL, NULL, NULL, NULL),
(4, 'hassan', 'hussin', '9b84ZGDy4@gmail.com', '$2y$10$layzgtOy0SzhHw8jYN0wh.T6wsL3C5e46wy0zfDIrDB0AI9U2v54K', '+2011820834518', 'Denmark', 'Student', 'btHESGkDVMuyGLO', '', 'user', 'female', NULL, NULL, NULL, NULL),
(5, 'hesham', 'sayed', 'qJjOxI5X3@gmail.com', '$2y$10$LOGnyVL86OIsju1eWjkMr.gYIZR3n41nP2YYBw0w0uiwfc0UzB6EO', '+2011674751717', 'Australia', 'Student', 'K94z0NWazoStfoA', '', 'user', 'female', NULL, NULL, NULL, NULL),
(6, 'Ahmed', 'Ahmed', 'PcTgOqu14@gmail.com', '$2y$10$tZ9m4HFQmQQ68w1.CLQ2j.jWDcZj1bgAbH2TxYmzUzC/gDOhBTJ4y', '+2011427141648', 'Barbados', 'Doctor', '05E9q5JShH6p2wx', '', 'user', 'female', NULL, NULL, NULL, NULL),
(7, 'sayed', 'hassan', 'oy57Epyt1@gmail.com', '$2y$10$gSKDtpMSJauNpXgZwDneUuSSM0yee6WgRfYoJSZc31KIEmHAWWDVG', '+2011427566227', 'Cocos (Keeling) Islands', 'Student', 'askBk7D5gPxd7Dk', '', 'user', 'female', NULL, NULL, NULL, NULL),
(8, 'hussin', 'sayed', 'Ir8mPDMY1@gmail.com', '$2y$10$Eoj3vFzzqTBalGFbpmhSEOLcsMRZWo1wJWuN5xl18HnCaBEwKjOcy', '+201154645967', 'Guam', 'lawyer', '7vyPjvNkOHTWkIf', '', 'user', 'female', NULL, NULL, NULL, NULL),
(9, 'hussin', 'hassan', 'PbJgk8sp2@gmail.com', '$2y$10$orOxD7r7Sh1eAC8TvBzOJeIfVqrFAsDrk/xHM8hlxAvBirnTDpk9e', '+2011410417151', 'Grenada', 'Student', 'eOyQo31McICM4Nu', '', 'user', 'female', NULL, NULL, NULL, NULL),
(10, 'Alaa', 'Alaa', 'DGFukKHL2@gmail.com', '$2y$10$NrHMkeLDHZGPCyYsGwR1bexsKRaLdWIN7tCHtwRG3qHizJOdo9eeq', '+2011599136261', 'Guyana', 'Business Man', 'N36CxZOu6Zh4FNm', '', 'user', 'male', NULL, NULL, NULL, NULL),
(11, 'hussin', 'sayed', '1X9Itxdl2@gmail.com', '$2y$10$.oGGPB8cLjUm3tL.GREtBeLVWTxXo/gh7TbG9O43M08wsQwZYV0A.', '+2011147524581', 'Australia', 'Doctor', 'Tmvhz9lLnjPThZ6', '', 'user', 'male', NULL, NULL, NULL, NULL),
(12, 'sayed', 'hussin', 'v4f4Qhba2@gmail.com', '$2y$10$.HBSbLaYt/G6iS6kVBMra.mWTrAf/zQMlpE9X0Ju5C0DJzKGeLpAq', '+201158840918', 'Guyana', 'Doctor', 'jEqPh3wI1ADxkn8', '', 'user', 'female', NULL, NULL, NULL, NULL),
(13, 'Ahmed', 'Ahmed', 'AaPNdFzO4@gmail.com', '$2y$10$JGA6dpQbjS9Vzs8O.jT2hO2lHuRnA12/QeT8uds.qDKvThFA1YMua', '+201188803948', 'Barbados', 'Accountant', 'sAtkst8MNdbeekn', '', 'user', 'female', NULL, NULL, NULL, NULL),
(14, 'Ahmed', 'sayed', 'nhplwTws4@gmail.com', '$2y$10$CTi3VC/JkucH865jZq8LAOKUOLPsk2aUSWCPaO9NfVHr8UpkAHHmq', '+2011185789700', 'Denmark', 'Doctor', 'XiZLgAmSgc33JzX', '', 'user', 'male', NULL, NULL, NULL, NULL),
(15, 'Ahmed', 'sayed', 'OtQZ1z0i1@gmail.com', '$2y$10$2LQNiCs8dh7Ku/EopgrE3uD7nn.WaK8AmCYvmN0PYm7Exf9oc.Qfi', '+2011419228281', 'Australia', 'Accountant', 'Q4Aeqt1YArQPX9A', '', 'user', 'male', NULL, NULL, NULL, NULL),
(16, 'hassan', 'mohamed', 'D6Kt0ZbP4@gmail.com', '$2y$10$j2wUbwni5mh9loLKVeZZhe1gvrqqGkUT3L9ceEEeDBXHvQhhT1/fS', '+2011915923715', 'French Southern Territories', 'Business Man', 'Ko3jqLKW5FoKZuO', '', 'user', 'male', NULL, NULL, NULL, NULL),
(17, 'Alaa', 'Alaa', 'Kq2ImWHZ2@gmail.com', '$2y$10$XMCzYHHPsvC23SIcxs/xOuFHtKt8PFmpZB8Ay4RPgfRGnZml6B2uG', '+2011600398030', 'Australia', 'Business Man', '9DBzwX4Ci0Aadlj', '', 'user', 'male', NULL, NULL, NULL, NULL),
(18, 'Ahmed', 'hussin', 'xwpbsRyG1@gmail.com', '$2y$10$88w0ssTZZFIv5U/gRQJU.OLiRt5OiEpyZPJyR/JFsNGyMlJDmxJqC', '+2011100573624', 'Australia', 'Student', '2lmKtGhbum3SsbO', '', 'user', 'male', NULL, NULL, NULL, NULL),
(19, 'hesham', 'sayed', 'LLRukC8W1@gmail.com', '$2y$10$w1jjWI1AejK0e3jB1VIdn.892uJ31Ney/qQR3I8.fyTRR3/xU/DMW', '+2011387444558', 'Australia', 'Business Man', 'sJolWnOkhVJMVZq', '', 'user', 'female', NULL, NULL, NULL, NULL),
(20, 'sayed', 'Alaa', '6MlxKdxo2@gmail.com', '$2y$10$lAa93mchwkTLZcpFvRgp..p3x3HwqjTIyz/NbEZ2C4lUXX5tRP3yK', '+2011425336833', 'French Guiana', 'Business Man', 'w3HRglrTOTOdQDw', '', 'user', 'male', NULL, NULL, NULL, NULL),
(21, 'sayed', 'hesham', 'HLFioMDr3@gmail.com', '$2y$10$lhmOLEMngY.UmZ7iUaYFceRBdhUOYarC3/moDvMc7/VP6X1Xkd/ny', '+2011555755293', 'Guyana', 'Student', 'ionjRV2poBjmPK2', '', 'user', 'male', NULL, NULL, NULL, NULL),
(22, 'sayed', 'hussin', 'OLCXxo6g2@gmail.com', '$2y$10$3ZPhCE7PtPQzRzLXO4Dp0.WlCsWxPDU6fQZAau1FVeZdSsNF7lofy', '+201192766715', 'French Southern Territories', 'HR', 'OThJueVk1mVxGCS', '', 'user', 'male', NULL, NULL, NULL, NULL),
(23, 'hesham', 'hesham', 'D4jKnV563@gmail.com', '$2y$10$bXUZBRpj/9GNAQgQSlAffevkfYIdjIitRXWz4sNVRecHALlXbNMc6', '+2011109503178', 'Denmark', 'Business Man', 'xtBh1IYlHEMWytH', '', 'user', 'male', NULL, NULL, NULL, NULL),
(24, 'sayed', 'Ahmed', 'eQLBBVwz1@gmail.com', '$2y$10$/Y9.NcOi.JpRMJugohlVCO736ERLwGbSb3RGdpBWvW0aC//Dq1uw6', '+2011692376245', 'Barbados', 'lawyer', '8WWoeoQJgPptSit', '', 'user', 'female', NULL, NULL, NULL, NULL),
(25, 'hussin', 'hassan', 'l5Wp2APt1@gmail.com', '$2y$10$hsgYgjC43tOfVIPK7ZB39OMmxkHbWML1NP.pteJevULUzGGZC6JTG', '+2011539170363', 'Aruba', 'Doctor', 'Rqsr8wnSX14oXtP', '', 'user', 'male', NULL, NULL, NULL, NULL),
(26, 'Alaa', 'hassan', 'bdr1Dijk4@gmail.com', '$2y$10$yekdIDA7/VHy4G/H0iaaH.ZEOUi1hFs8dEvvRhMIWYyJmlUAt9HhO', '+2011343420790', 'Cocos (Keeling) Islands', 'HR', 'R4MeH9GcdtRgsAY', '', 'user', 'female', NULL, NULL, NULL, NULL),
(27, 'Alaa', 'hesham', 'wZoWIYpw1@gmail.com', '$2y$10$xWR5oLx23tATOCRadOCyU.aktgO5dovtOv5eT9ZbwyxnKPgIZSI/q', '+2011220522836', 'French Southern Territories', 'Accountant', 'EbmPQtLUzU3xp3d', '', 'user', 'male', NULL, NULL, NULL, NULL),
(28, 'mohamed', 'Alaa', 'AiClmP7a4@gmail.com', '$2y$10$FOph1JHJEL9rNXux1sYJ7e7W.fWEah/IjuSqIh/YjIDW9xekXyoeO', '+2011645452374', 'Barbados', 'Business Man', 'NMe66kCzD3rdLDQ', '', 'user', 'female', NULL, NULL, NULL, NULL),
(29, 'hesham', 'hussin', 'ZcKIF6kJ3@gmail.com', '$2y$10$kWSOc0RFhfoLssKc1yyWgOpwwGjdBEsNf2yY5wFQUxWANfSnzPSgu', '+2011306021036', 'Guyana', 'Accountant', 'qKTywJ08mnAJm0k', '', 'user', 'male', NULL, NULL, NULL, NULL),
(30, 'Ahmed', 'hassan', '8HMfWwMc1@gmail.com', '$2y$10$QySQZb/qQ8.QRWJd/Jf2y.EzujE01WYabL4gOC/PTHOXXRFrag8B.', '+2011672382027', 'Denmark', 'HR', 'XoZpeO1vQ28YbH5', '', 'user', 'male', NULL, NULL, NULL, NULL),
(31, 'Ahmed', 'hussin', '7uSowKFz2@gmail.com', '$2y$10$hpquOEQIWsW6E9VdqzYGhe1zo/PWqE5d1y9yVRS3y2sxCrf2Ff1ay', '+2011490816706', 'Cocos (Keeling) Islands', 'lawyer', 'RNbfSwj8UuWtPfo', '', 'user', 'female', NULL, NULL, NULL, NULL),
(32, 'Alaa', 'Alaa', 'oMhiQj8U4@gmail.com', '$2y$10$CVvtjjbmSkDqYSUUacuzfuwsxMJNP0aSiC8vz.wI2UHjMN4UZyCqi', '+201125344713', 'French Guiana', 'Student', 'VLTymYlwTnHSU2L', '', 'user', 'male', NULL, NULL, NULL, NULL),
(33, 'sayed', 'hassan', 'HO7JjgtO1@gmail.com', '$2y$10$5XwGGDwWHaUM/sFJxWZe7eKXKpKERXrZWZVo9QaF1c5WvT47cbEWS', '+2011820082719', 'Grenada', 'Business Man', 'GyDoD6yd2FH3hLa', '', 'user', 'female', NULL, NULL, NULL, NULL),
(34, 'mohamed', 'Alaa', '013Ac9Yu2@gmail.com', '$2y$10$EcNgfACvC6rZzsIFGlnfxeXc7M4SdH12OHARGxdh4W1yVMWqS5cuq', '+2011917056854', 'Aruba', 'Doctor', 'TlDxqyHllD4iL2j', '', 'user', 'female', NULL, NULL, NULL, NULL),
(35, 'Ahmed', 'hassan', 'ibXUUMSE4@gmail.com', '$2y$10$CLwBOUpoX5sY16gbRMZ6ZOY/If3LHV52zObgJ6.jFYTj/sI9XuXe2', '+2011553138604', 'Guam', 'HR', '86MZqWzxtsGM8kW', '', 'user', 'female', NULL, NULL, NULL, NULL),
(36, 'Alaa', 'Alaa', 'rueWdIUp1@gmail.com', '$2y$10$dDb6WlGo68GVDfYKYN3Xt./T4j9fFdEAgd3lmyQ057I96hY/YVAS6', '+2011867326572', 'Denmark', 'lawyer', 'IXQPK4tb261SHXK', '', 'user', 'female', NULL, NULL, NULL, NULL),
(37, 'hussin', 'Alaa', '4yyvITfx2@gmail.com', '$2y$10$1fUmiaMk66B.M8s7q2Gc.ORI7UjT8JGGFpTg60ZiuzkpS4Ur5iPti', '+2011733431983', 'Australia', 'Doctor', 'oxqRKWdldOrxDDC', '', 'user', 'male', NULL, NULL, NULL, NULL),
(38, 'Alaa', 'Ahmed', '8s6wQq0E2@gmail.com', '$2y$10$GMG88pD73M3.nIxHwzIZVOee2UPr4WOJqV7AlvOeuEczhfjHLKiL.', '+2011572561405', 'Guam', 'Business Man', '7ooKcvQcpmAI0xe', '', 'user', 'male', NULL, NULL, NULL, NULL),
(39, 'hesham', 'hesham', 'kWE9VRdT4@gmail.com', '$2y$10$2.hrFJYpmm2bSDrqXWqwBe/dn3Expk7bJBwy8P81xDdrEwl/IgydO', '+2011410489076', 'Australia', 'Student', '74jakZ77mDlTeFN', '', 'user', 'female', NULL, NULL, NULL, NULL),
(40, 'hassan', 'hesham', 'BROVXWci3@gmail.com', '$2y$10$t/VmV3We7NMEllN6AdXXKORzUsLOITjaGzDX18sGxLowDpoc8kSvC', '+2011429745034', 'Aruba', 'Doctor', 'wNO8vLfp3XPbHvG', '', 'user', 'male', NULL, NULL, NULL, NULL),
(41, 'hassan', 'Ahmed', '6SbKV2J24@gmail.com', '$2y$10$p21KhSXI/05DcGBD/k/POejh04u2yzgWb3xg/MEtqRUCt/Ac8ZcXi', '+2011562808126', 'Botswana', 'Doctor', 'EiOTCdFkli7tsjz', '', 'user', 'female', NULL, NULL, NULL, NULL),
(42, 'Ahmed', 'sayed', 'pHizRCo12@gmail.com', '$2y$10$KAmiYrDfZ1GI7Md.WrwVa.DjqNjmQ7Y20e9W5HsN3UQ9aTMZUiiLq', '+2011144722482', 'Ecuador', 'Business Man', '085MrNmumLH6esa', '', 'user', 'female', NULL, NULL, NULL, NULL),
(43, 'Ahmed', 'hesham', 'BcFnoe9S1@gmail.com', '$2y$10$2z48TxQ8NVBxc.84nw3q1OGJ17LQ5oCTj5.J0BjTItIIdQklZhy6i', '+2011426379590', 'India', 'Accountant', 'WnWGWX4ZicI02Zp', '', 'user', 'female', NULL, NULL, NULL, NULL),
(44, 'hussin', 'hussin', 'VVoISQN34@gmail.com', '$2y$10$SMn.SBAVHMGgAVJSg9errOU.k3UBSqgkb2PQtMMew4XLJSIkkz09u', '+2011768906147', 'Albania', 'Doctor', 'vpAkH3bt9kk2kL5', '', 'user', 'male', NULL, NULL, NULL, NULL),
(45, 'hassan', 'hassan', 'uy6n8iDA2@gmail.com', '$2y$10$vwHOa5qojf.kaL1QusX8.u4/RqA3xWqrnLceqU6733xCQCSmPcpUG', '+201117565968', 'Benin', 'Business Man', 'Kxws5blfeqGM5gh', '', 'user', 'female', NULL, NULL, NULL, NULL),
(46, 'mohamed', 'hussin', '7A463WFB4@gmail.com', '$2y$10$8aRwLXQ9cCSbU/E25HF/rOhs488LAHy4odVXfZWKDGi0kO30Vo6dG', '+2011113098285', 'Benin', 'lawyer', 'A2g7U3BnZnljJfL', '', 'user', 'female', NULL, NULL, NULL, NULL),
(47, 'hesham', 'mohamed', 'Kc5mtRLS1@gmail.com', '$2y$10$gQRY89xM0Msg2OyuhQ2UNOO9D8p1E6m.4y8Vxeb1FPuL8V6NSGTHS', '+201117539121', 'Faroe Islands', 'Business Man', 'Ol1OWTH3D4SAAg1', '', 'user', 'male', NULL, NULL, NULL, NULL),
(48, 'Ahmed', 'Alaa', 'O8oAovGF3@gmail.com', '$2y$10$Pp9bWUg8axEzOW0NK0ZJgeJTSFh/KJSq9689kthKYEuaDhikfHvuS', '+2011831836875', 'Ecuador', 'Business Man', 'EKBmy9a7CVrYt7i', '', 'user', 'male', NULL, NULL, NULL, NULL),
(49, 'hussin', 'hesham', 'vpV8tNZe2@gmail.com', '$2y$10$GGXeEnjA1.rF8Jx.2rrQdOLigq874XJsgchS2APT12VGP0Pj4HgFu', '+2011295193003', 'Hungary', 'HR', 'NX6T1qPlSMtXqwT', '', 'user', 'female', NULL, NULL, NULL, NULL),
(50, 'hussin', 'Ahmed', 'HaC2k2n93@gmail.com', '$2y$10$Z0/49DOOYn7XDvP7lrMFkOtY..6BURIYg2bbCc8jYmbvZDWLBdCx.', '+2011221264134', 'India', 'lawyer', 'YarILdsrF1OLnze', '', 'user', 'male', NULL, NULL, NULL, NULL),
(51, 'hassan', 'hesham', 'VQG2aCKy1@gmail.com', '$2y$10$RVVYeJRn5CwEAxXxMcnCj.0JSnJ87QpzYb0eRWX1ON.ZVOwHc94qS', '+2011929873191', 'Albania', 'Business Man', 'kgIRmv3VkwuawhV', '', 'user', 'female', NULL, NULL, NULL, NULL),
(52, 'Ahmed', 'mohamed', 'X3qBitbM3@gmail.com', '$2y$10$MTARxBXwrK5/rqBvfntVAer5ftJ9IBGLRbNVlisK81K.u3NqWMOFu', '+2011567450669', 'Albania', 'Business Man', 'QkiJEloqc5cI6wd', '', 'user', 'male', NULL, NULL, NULL, NULL),
(53, 'Ahmed', 'hussin', 'ScDIJm4n1@gmail.com', '$2y$10$nDOT3NS52QOoAqLJdcNap.KaudomLKLwFKnb1lSkpdQ66w42ACeRm', '+2011274474595', 'Benin', 'Student', 'wjArYfUWEYmMkPd', '', 'user', 'male', NULL, NULL, NULL, NULL),
(54, 'Alaa', 'mohamed', 'eTzmlxqi4@gmail.com', '$2y$10$gkJa52xDiGoLQgC5bOwv3.e0.m3OZ3eggm7Wcad1o2ZD6ePxeVOq.', '+2011172533278', 'Hungary', 'Accountant', 'gGhXFlVwBZMzwC5', '', 'user', 'male', NULL, NULL, NULL, NULL),
(55, 'Alaa', 'Alaa', 'VIxzxPYL3@gmail.com', '$2y$10$WJ.HxU1D02.qLNPspN5cqubfC9Rqods9m8kpgj90BN5ihnxJaS8l.', '+2011297595653', 'Albania', 'HR', 'OwxM3SccLSfPkKE', '', 'user', 'female', NULL, NULL, NULL, NULL),
(56, 'hussin', 'hussin', 'tEAn4zgo3@gmail.com', '$2y$10$qrRBlzd/PNyQxt1dnG9ou.rW4dlPtfOrDBdXgEaa2pMQKNMGchlVW', '+2011630117158', 'Ghana', 'HR', 'nKMea2yekshSAgw', '', 'user', 'female', NULL, NULL, NULL, NULL),
(57, 'Alaa', 'Alaa', '4CPIdD2e3@gmail.com', '$2y$10$c/7FTR0pEty7f.nqB.ot/./e/4kNVMK3UfEiWSwyuQ.LVwyanGfca', '+2011783234360', 'Ghana', 'HR', '6snlFudLWniICXb', '', 'user', 'male', NULL, NULL, NULL, NULL),
(58, 'hesham', 'Ahmed', 'niuLb51K3@gmail.com', '$2y$10$Ru0GFS1TAevrtuzaWRVqP.MMWOgeGBTMYAUxrYNueJ/TQjAgUVTKK', '+2011471026171', 'Ghana', 'Student', 'E6vgazNyGBrLztR', '', 'user', 'female', NULL, NULL, NULL, NULL),
(59, 'Ahmed', 'Ahmed', 'UJNJFkic2@gmail.com', '$2y$10$rNRIu98a/u2/x.KgiKbL6.w08KHcqV.oxYKIKteIcEIudBN6S9J06', '+2011683097152', 'Ghana', 'HR', '2ga4WL2jt9P5i9S', '', 'user', 'female', NULL, NULL, NULL, NULL),
(60, 'hassan', 'hussin', 'XkSfQesr1@gmail.com', '$2y$10$Vjy06jeqB2bB9EAYdMjMJe16pmSsYZOInBn8lYCsfvP4jyMAlBtcu', '+2011524423657', 'Benin', 'Doctor', 'LmT5NywTA803ask', '', 'user', 'female', NULL, NULL, NULL, NULL),
(61, 'hussin', 'Alaa', 'RfpNgPj71@gmail.com', '$2y$10$6MAOxTMn8tNiXarCeHSjBugexu13H7gSQs5gzRyzOUVNci2iNe/K6', '+2011831023195', 'Ecuador', 'Business Man', '8lZYOWwTqIHbaMB', '', 'user', 'female', NULL, NULL, NULL, NULL),
(62, 'hesham', 'sayed', 'ZW00LL2D2@gmail.com', '$2y$10$VioAkQDH/xHrNc44HMTn1e7Gj81D4f82tQkc2vvHLzqbAd3xumidC', '+2011825656832', 'Germany', 'lawyer', 'jPDlK6cnxbBZ7zb', '', 'user', 'male', NULL, NULL, NULL, NULL),
(63, 'Alaa', 'hassan', 'DEJR5hFF1@gmail.com', '$2y$10$6PLxt5a7pr5UzGWadGtIvOfmyX7FYDcfeR6nZuoEbhW.yJzzWqmpq', '+2011286021688', 'Albania', 'HR', '4WuwafuxVka1kyI', '', 'user', 'male', NULL, NULL, NULL, NULL),
(64, 'hesham', 'hassan', 'JlFHBy604@gmail.com', '$2y$10$7mjv/RSuC7R/VsQatOwva.DYMdWAoHsqJ9Vdd5Gnig4cO1t2IdSCm', '+2011189403925', 'Ecuador', 'HR', 'EnBAeInBV8cMroM', '', 'user', 'female', NULL, NULL, NULL, NULL),
(65, 'Ahmed', 'hussin', 'b926GaMf1@gmail.com', '$2y$10$3GM3rJq2ZEHsVir7Jyh.FuDastgC4MWwwDqHn8qtpREM3z2PJWrcy', '+2011798412062', 'Benin', 'Business Man', 'AEBs35PkC3VTtYt', '', 'user', 'male', NULL, NULL, NULL, NULL),
(66, 'hassan', 'hassan', 'H7YA2JIh4@gmail.com', '$2y$10$8TDPd/YSlTZS.Qcpsw8z8emXVE.yZGTgH18WT7XEc860bfrcu9.xy', '+2011383760339', 'Guam', 'Doctor', 'yNFcHlgwPnzO8tJ', '', 'user', 'male', NULL, NULL, NULL, NULL),
(67, 'Alaa', 'hassan', '92IeNmB64@gmail.com', '$2y$10$1Tw2P6lLwWMcBH9VFii6sO1OIEY63FtdrJy0Hqs5qGLGotmgKI03.', '+2011646210678', 'Hungary', 'Student', 'exD6B3KGkPD0Vri', '', 'user', 'male', NULL, NULL, NULL, NULL),
(68, 'mohamed', 'Ahmed', 'DXuX0A8M1@gmail.com', '$2y$10$MoUn4g34Q6nw5fmrVS/V3uLJ0r5gpDbvFS16Y7Qo5LkZrAUv1LXvW', '+2011466635532', 'Botswana', 'Student', 'FI3fV5K6lCt36Vd', '', 'user', 'male', NULL, NULL, NULL, NULL),
(69, 'hussin', 'hassan', 'b6TxC4Jw3@gmail.com', '$2y$10$JfnNuYAl7vb4fKsTyd39SezVsfeh0HVPxflgs6GpodNEJpZ7Xj8xW', '+2011830869931', 'Hungary', 'Doctor', '6XzBADYJHAJn8yS', '', 'user', 'female', NULL, NULL, NULL, NULL),
(70, 'mohamed', 'hussin', 'Kjn9wl8L4@gmail.com', '$2y$10$U51zSL/bjPQW990r7BMmzeJ/LX6nWq3Gpjm7GG6FGqw.331NNyjga', '+2011795631519', 'Hungary', 'Student', 'QfKaoe8BgwYsZUs', '', 'user', 'male', NULL, NULL, NULL, NULL),
(71, 'sayed', 'hussin', 'Yr0wztVT4@gmail.com', '$2y$10$jmluv/uIL6xMbjOGTpDoveZ.B7DHqXvT7qQNYU7F8OsL/HDdOJ/zC', '+2011910646725', 'Ghana', 'lawyer', '8IdrMraBhBUxjoC', '', 'user', 'male', NULL, NULL, NULL, NULL),
(72, 'sayed', 'hussin', 'M2Vf3mSM3@gmail.com', '$2y$10$jIBjPyPNYORoolYQNWDrKOz7qVYoHM90hF1wATJT6BR3njZdo7O/i', '+2011244049507', 'Ghana', 'HR', 'a16NhkqRUIoKjfp', '', 'user', 'male', NULL, NULL, NULL, NULL),
(73, 'hussin', 'Alaa', 'bI26gmyN3@gmail.com', '$2y$10$AWGKCCECon.cJWf5QXMNX.IH6QhgBzuUL3ZrpZyzD2j.gCQWdXANe', '+2011857158266', 'Germany', 'HR', 'sOK8lMVUnVNQetN', '', 'user', 'female', NULL, NULL, NULL, NULL),
(74, 'Alaa', 'mohamed', '9KhLagDJ1@gmail.com', '$2y$10$EgfOJFdMycuAaoB4XeZz2eXrojAfDNfVKFlQiSfrE.L/DXuyh4Oum', '+2011455134687', 'Cayman Islands', 'HR', 'mwx8SPDplwjxsIj', '', 'user', 'male', NULL, NULL, NULL, NULL),
(75, 'mohamed', 'Alaa', 'flsAkymf1@gmail.com', '$2y$10$doAx6IINhfhOYRxGyLvgUezISHXSj7FpdQno3O4yYXrkmXfwi0lz6', '+2011626263379', 'India', 'Accountant', 'YkLgRE6r9FYhQR6', '', 'user', 'male', NULL, NULL, NULL, NULL),
(76, 'hesham', 'hesham', 'gWfwuata3@gmail.com', '$2y$10$E8/Em/WzHIwHHJJ0HNUaB.gjdio.3l.uadnKbZZj6uSig8EgxjmUK', '+2011503476872', 'Botswana', 'Accountant', 'Jn6pq0uCMVvntNr', '', 'user', 'male', NULL, NULL, NULL, NULL),
(77, 'hesham', 'hussin', 'X7BpHJsL1@gmail.com', '$2y$10$57tr4IHMw/..mk6HYpCKq.OIT7Yj0W37VrbpDdYfdwYsFBpUgqFIW', '+2011383823040', 'India', 'Business Man', 'yCxYgfjZdniA3zS', '', 'user', 'female', NULL, NULL, NULL, NULL),
(78, 'hassan', 'hussin', '0nYZtGYd3@gmail.com', '$2y$10$syA.wzXf9JMxpRGridUS0urHSaYSetndASNFzRaLJZiKELOtG90BC', '+2011189643529', 'Cayman Islands', 'Student', 'B9FW6JJdKHSHDg7', '', 'user', 'male', NULL, NULL, NULL, NULL),
(79, 'hassan', 'mohamed', 'GFmJRvPI4@gmail.com', '$2y$10$cjfeWWkGNxpYMIaKuMy3lujsgwL8XIqGnU/zS0wrdFgo1PRNnBaVi', '+2011544274797', 'Albania', 'Business Man', 'iGV4YNMdCK2Ewcd', '', 'user', 'female', NULL, NULL, NULL, NULL),
(80, 'Ahmed', 'mohamed', 'shAZ5Ffd4@gmail.com', '$2y$10$/Kr3j/E8q6zX34nGTo9NtOB2Dq3wOEoihJcBefteFHsKf1UtxDjvG', '+2011409462326', 'Botswana', 'HR', 'b5zYFwWwg20mXUm', '', 'user', 'male', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `skill_id`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 12, 15, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applies`
--
ALTER TABLE `applies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applies_user_id_index` (`user_id`),
  ADD KEY `applies_job_id_index` (`job_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_index` (`user_id`),
  ADD KEY `bookmarks_job_id_index` (`job_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follows_r_id_index` (`r_id`),
  ADD KEY `follows_s_id_index` (`s_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_user_id_index` (`user_id`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_skills_skill_id_index` (`skill_id`),
  ADD KEY `job_skills_job_id_index` (`job_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_r_id_index` (`r_id`),
  ADD KEY `messages_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_skills_skill_id_index` (`skill_id`),
  ADD KEY `user_skills_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applies`
--
ALTER TABLE `applies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applies`
--
ALTER TABLE `applies`
  ADD CONSTRAINT `applies_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follows_s_id_foreign` FOREIGN KEY (`s_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD CONSTRAINT `job_skills_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
