-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 19-Out-2024 às 03:45
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `local_pcial`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `catalogos`
--

DROP TABLE IF EXISTS `catalogos`;
CREATE TABLE IF NOT EXISTS `catalogos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `catalogos`
--

INSERT INTO `catalogos` (`id`, `titulo`, `created_at`, `updated_at`) VALUES
(4, 'PALÁCIO - CONDE DE ANADIA', '2024-10-19 05:13:03', '2024-10-19 05:13:03'),
(3, 'SÃO LUIZ', '2024-10-19 05:10:35', '2024-10-19 05:10:35'),
(5, 'QUINTA DA CÔRTE', '2024-10-19 05:13:46', '2024-10-19 05:13:46'),
(6, 'HERDADE COMENDA GRANDE', '2024-10-19 05:13:57', '2024-10-19 05:13:57'),
(7, 'HERDADE DO ESPORÃO', '2024-10-19 05:14:07', '2024-10-19 05:14:07'),
(8, 'CASAL GARCIA FRUITZY e SANGRIA', '2024-10-19 05:14:18', '2024-10-19 05:14:18'),
(9, 'DOURO VALE D. MARIA', '2024-10-19 05:14:26', '2024-10-19 05:14:26'),
(10, 'FUNDAÇÃO EUGÊNIO DE ALMEIDA', '2024-10-19 05:14:36', '2024-10-19 05:14:36'),
(11, 'JOSÉ MARIA DA FONSECA', '2024-10-19 05:14:45', '2024-10-19 05:14:45'),
(12, 'BACALHOA', '2024-10-19 05:14:52', '2024-10-19 05:14:52'),
(13, 'QUINTA VALBOM e HERDADE GROUS', '2024-10-19 05:15:06', '2024-10-19 05:15:06'),
(14, 'HERDADE MOUCHÃO', '2024-10-19 05:15:39', '2024-10-19 05:15:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pdf_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `path_pdf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_catalogos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `files`
--

INSERT INTO `files` (`id`, `pdf_title`, `path_pdf`, `id_catalogos`, `created_at`, `updated_at`) VALUES
(141, 'Ponte Mouchão Tº 2017.pdf', 'pdfs/Ponte Mouchão Tº 2017.pdf', 14, '2024-10-19 06:45:02', '2024-10-19 06:45:02'),
(139, 'Mouchão Tº 2014.pdf', 'pdfs/Mouchão Tº 2014.pdf', 14, '2024-10-19 06:44:49', '2024-10-19 06:44:49'),
(140, 'Mouchão Tonel Aged Sobremesa 2014.pdf', 'pdfs/Mouchão Tonel Aged Sobremesa 2014.pdf', 14, '2024-10-19 06:44:55', '2024-10-19 06:44:55'),
(137, 'Dom Rafael Tº 2019.pdf', 'pdfs/Dom Rafael Tº 2019.pdf', 14, '2024-10-19 06:44:36', '2024-10-19 06:44:36'),
(138, 'Mouchão Bagaceira Alicante Bouschet 2016.pdf', 'pdfs/Mouchão Bagaceira Alicante Bouschet 2016.pdf', 14, '2024-10-19 06:44:42', '2024-10-19 06:44:42'),
(136, 'Dom Rafael Bº 2021.pdf', 'pdfs/Dom Rafael Bº 2021.pdf', 14, '2024-10-19 06:44:30', '2024-10-19 06:44:30'),
(135, 'Catálogo 2024_2025 (PT)_compressed.pdf', 'pdfs/Catálogo 2024_2025 (PT)_compressed.pdf', 13, '2024-10-19 06:44:19', '2024-10-19 06:44:19'),
(133, 'Christmas Gifts 2024 Cial.pdf', 'pdfs/Christmas Gifts 2024 Cial.pdf', 11, '2024-10-19 06:42:48', '2024-10-19 06:42:48'),
(134, 'Catálogo Natal 2024 compressed.pdf', 'pdfs/Catálogo Natal 2024 compressed.pdf', 12, '2024-10-19 06:43:24', '2024-10-19 06:43:24'),
(132, 'Screenshot_2024-10-16-18-02-07-65_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-02-07-65_7352322957d4404136654ef4adb64504.jpg', 10, '2024-10-19 06:42:11', '2024-10-19 06:42:11'),
(130, 'Scala Coeli tinto 2019.pdf', 'pdfs/Scala Coeli tinto 2019.pdf', 10, '2024-10-19 06:41:56', '2024-10-19 06:41:56'),
(131, 'Scala Coeli tinto Reserva 2017.pdf', 'pdfs/Scala Coeli tinto Reserva 2017.pdf', 10, '2024-10-19 06:42:04', '2024-10-19 06:42:04'),
(129, 'Scala Coeli branco 2020.pdf', 'pdfs/Scala Coeli branco 2020.pdf', 10, '2024-10-19 06:41:49', '2024-10-19 06:41:49'),
(128, 'PR_Tapada do Chaves_Vinhas velhas_tinto 2013.pdf', 'pdfs/PR_Tapada do Chaves_Vinhas velhas_tinto 2013.pdf', 10, '2024-10-19 06:41:41', '2024-10-19 06:41:41'),
(127, 'PR_Tapada do Chaves_Vinhas velhas_tinto 2013(1).pdf', 'pdfs/PR_Tapada do Chaves_Vinhas velhas_tinto 2013(1).pdf', 10, '2024-10-19 06:41:33', '2024-10-19 06:41:33'),
(125, 'Pera-Manca tinto 2015 Pro.pdf', 'pdfs/Pera-Manca tinto 2015 Pro.pdf', 10, '2024-10-19 06:41:10', '2024-10-19 06:41:10'),
(126, 'PR_Tapada do Chaves_Vinhas velhas_tinto 2013(1).pdf', 'pdfs/PR_Tapada do Chaves_Vinhas velhas_tinto 2013(1).pdf', 10, '2024-10-19 06:41:20', '2024-10-19 06:41:20'),
(124, 'Pêra-Manca branco 2018.pdf', 'pdfs/Pêra-Manca branco 2018.pdf', 10, '2024-10-19 06:41:02', '2024-10-19 06:41:02'),
(123, 'FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 'pdfs/FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 10, '2024-10-19 06:40:53', '2024-10-19 06:40:53'),
(122, 'FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 'pdfs/FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 10, '2024-10-19 06:40:44', '2024-10-19 06:40:44'),
(121, 'FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 'pdfs/FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 10, '2024-10-19 06:40:37', '2024-10-19 06:40:37'),
(120, 'FT Tapada do Chaves Reserva tinto 2014 DL PB(1).pdf', 'pdfs/FT Tapada do Chaves Reserva tinto 2014 DL PB(1).pdf', 10, '2024-10-19 06:40:29', '2024-10-19 06:40:29'),
(119, 'FT Tapada do Chaves Reserva tinto 2014 DL PB (1).pdf', 'pdfs/FT Tapada do Chaves Reserva tinto 2014 DL PB (1).pdf', 10, '2024-10-19 06:40:21', '2024-10-19 06:40:21'),
(118, 'Espumante Cartuxa Bruto Ros� 2014.pdf', 'pdfs/Espumante Cartuxa Bruto Ros� 2014.pdf', 10, '2024-10-19 06:40:14', '2024-10-19 06:40:14'),
(116, 'Espumante Cartuxa Bruto 2014.pdf', 'pdfs/Espumante Cartuxa Bruto 2014.pdf', 10, '2024-10-19 06:40:00', '2024-10-19 06:40:00'),
(117, 'Espumante Cartuxa Bruto Reserva 2014.pdf', 'pdfs/Espumante Cartuxa Bruto Reserva 2014.pdf', 10, '2024-10-19 06:40:07', '2024-10-19 06:40:07'),
(114, 'EA Tinto 2017 BIO.pdf', 'pdfs/EA Tinto 2017 BIO.pdf', 10, '2024-10-19 06:39:46', '2024-10-19 06:39:46'),
(115, 'EA Tinto 2018.pdf', 'pdfs/EA Tinto 2018.pdf', 10, '2024-10-19 06:39:53', '2024-10-19 06:39:53'),
(111, 'EA Branco 2019.pdf', 'pdfs/EA Branco 2019.pdf', 10, '2024-10-19 06:39:16', '2024-10-19 06:39:16'),
(112, 'EA rosé 2020.pdf', 'pdfs/EA rosé 2020.pdf', 10, '2024-10-19 06:39:26', '2024-10-19 06:39:26'),
(113, 'EA Tinto 2017 BIO.pdf', 'pdfs/EA Tinto 2017 BIO.pdf', 10, '2024-10-19 06:39:37', '2024-10-19 06:39:37'),
(109, 'Cartuxa tinto 2017.pdf', 'pdfs/Cartuxa tinto 2017.pdf', 10, '2024-10-19 06:38:48', '2024-10-19 06:38:48'),
(110, 'Cartuxa tinto Reserva 2015.pdf', 'pdfs/Cartuxa tinto Reserva 2015.pdf', 10, '2024-10-19 06:38:56', '2024-10-19 06:38:56'),
(108, 'Cartuxa branco 2019.pdf', 'pdfs/Cartuxa branco 2019.pdf', 10, '2024-10-19 06:38:42', '2024-10-19 06:38:42'),
(107, 'Screenshot_2024-10-16-18-03-23-89_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-03-23-89_7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:29', '2024-10-19 06:38:29'),
(106, 'Screenshot_2024-10-16-18-03-12-18_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-03-12-18_7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:17', '2024-10-19 06:38:17'),
(105, 'Screenshot_2024-10-16-18-03-00-98_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-03-00-98_7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:11', '2024-10-19 06:38:11'),
(104, 'Screenshot_2024-10-16-18-02-48-27_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-02-48-27_7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:04', '2024-10-19 06:38:04'),
(103, 'Screenshot_2024-10-16-18-00-57-03_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-00-57-03_7352322957d4404136654ef4adb64504.jpg', 8, '2024-10-19 06:37:53', '2024-10-19 06:37:53'),
(101, 'Pé Tinto 2022.pdf', 'pdfs/Pé Tinto 2022.pdf', 7, '2024-10-19 06:37:33', '2024-10-19 06:37:33'),
(102, '1706703648358_Sales Folder - Casal Garcia Fruitzy Maracujá.pdf', 'pdfs/1706703648358_Sales Folder - Casal Garcia Fruitzy Maracujá.pdf', 8, '2024-10-19 06:37:47', '2024-10-19 06:37:47'),
(100, 'Pé Branco 2023.pdf', 'pdfs/Pé Branco 2023.pdf', 7, '2024-10-19 06:37:24', '2024-10-19 06:37:24'),
(98, 'MV Rosé 2022.pdf', 'pdfs/MV Rosé 2022.pdf', 7, '2024-10-19 06:37:07', '2024-10-19 06:37:07'),
(99, 'MV Tinto 2022.pdf', 'pdfs/MV Tinto 2022.pdf', 7, '2024-10-19 06:37:15', '2024-10-19 06:37:15'),
(97, 'MV Branco 2023.pdf', 'pdfs/MV Branco 2023.pdf', 7, '2024-10-19 06:36:59', '2024-10-19 06:36:59'),
(96, 'Ficha-Técnica-Torre-do-Esporão-2017_PT.pdf', 'pdfs/Ficha-Técnica-Torre-do-Esporão-2017_PT.pdf', 7, '2024-10-19 06:36:48', '2024-10-19 06:36:48'),
(95, 'Ficha-Técnica-Torre-do-Esporão-2017_PT.pdf', 'pdfs/Ficha-Técnica-Torre-do-Esporão-2017_PT.pdf', 7, '2024-10-19 06:36:39', '2024-10-19 06:36:39'),
(94, 'Esporao_PrivateSelection_Branco_2020.pdf', 'pdfs/Esporao_PrivateSelection_Branco_2020.pdf', 7, '2024-10-19 06:36:32', '2024-10-19 06:36:32'),
(93, 'Esporao_PrivateSelection_Branco_2020.pdf', 'pdfs/Esporao_PrivateSelection_Branco_2020.pdf', 7, '2024-10-19 06:36:24', '2024-10-19 06:36:24'),
(92, 'Esporao Reserva Tinto 21.pdf', 'pdfs/Esporao Reserva Tinto 21.pdf', 7, '2024-10-19 06:36:17', '2024-10-19 06:36:17'),
(91, 'Esporao Reserva Branco 22.pdf', 'pdfs/Esporao Reserva Branco 22.pdf', 7, '2024-10-19 06:36:10', '2024-10-19 06:36:10'),
(89, 'Defesa Tinto 2021.pdf', 'pdfs/Defesa Tinto 2021.pdf', 7, '2024-10-19 06:35:53', '2024-10-19 06:35:53'),
(90, 'Esporao Reserva Branco 22.pdf', 'pdfs/Esporao Reserva Branco 22.pdf', 7, '2024-10-19 06:36:01', '2024-10-19 06:36:01'),
(87, 'CATÁLOGO PACKS 2023_.pdf', 'pdfs/CATÁLOGO PACKS 2023_.pdf', 7, '2024-10-19 06:35:31', '2024-10-19 06:35:31'),
(88, 'Defesa Branco 2022.pdf', 'pdfs/Defesa Branco 2022.pdf', 7, '2024-10-19 06:35:45', '2024-10-19 06:35:45'),
(86, 'Alandra Tinto 2022.pdf', 'pdfs/Alandra Tinto 2022.pdf', 7, '2024-10-19 06:35:22', '2024-10-19 06:35:22'),
(85, 'Screenshot_2024-10-16-18-01-55-67_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-01-55-67_7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:35:09', '2024-10-19 06:35:09'),
(84, 'Screenshot_2024-10-16-18-01-44-49_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-01-44-49_7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:35:03', '2024-10-19 06:35:03'),
(83, 'Screenshot_2024-10-16-18-01-35-74_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-01-35-74_7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:34:56', '2024-10-19 06:34:56'),
(82, 'Screenshot_2024-10-16-18-01-25-58_7352322957d4404136654ef4adb64504.jpg', 'pdfs/Screenshot_2024-10-16-18-01-25-58_7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:34:49', '2024-10-19 06:34:49'),
(81, '_comenda grande_catalogo2023 s preços.pdf', 'pdfs/_comenda grande_catalogo2023 s preços.pdf', 6, '2024-10-19 06:34:40', '2024-10-19 06:34:40'),
(80, 'Quinta da Côrte - packs-natal-christmas- Noel -2024.pdf', 'pdfs/Quinta da Côrte - packs-natal-christmas- Noel -2024.pdf', 5, '2024-10-19 06:34:27', '2024-10-19 06:34:27'),
(79, '1727367265510_Catálogo de Natal São Luiz 2024.pdf', 'pdfs/1727367265510_Catálogo de Natal São Luiz 2024.pdf', 3, '2024-10-19 06:34:13', '2024-10-19 06:34:13'),
(78, 'Palacio Anadia Wines (Conde de Anadia).pdf', 'pdfs/Palacio Anadia Wines (Conde de Anadia).pdf', 4, '2024-10-19 06:32:36', '2024-10-19 06:32:36'),
(77, 'Conde de Anadia_Specials.pdf', 'pdfs/Conde de Anadia_Specials.pdf', 4, '2024-10-19 06:32:29', '2024-10-19 06:32:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_17_045450_catalogos', 1),
(6, '2024_10_19_003458_files', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp(6) NULL DEFAULT NULL,
  `user_level` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `user_level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Cial', 'cliente', 'cliente@cialsalamanca.com', NULL, 1, '$2y$10$xsAcMEEY/h0s/KQZFA0JrO501IsPZBCMi9ibGP3FNAzLWHVolCKne', NULL, '2024-10-19 05:58:03', '2024-10-19 05:58:03'),
(3, 'Admin', 'admin', 'admin@admin.com', NULL, 3, '$2y$10$G/5uiSIy1Ny6jn4NUl4pxu1sq1410xrDgrtqCcjX/.1NHmyt0vYL.', NULL, '2024-10-19 05:58:30', '2024-10-19 05:58:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
