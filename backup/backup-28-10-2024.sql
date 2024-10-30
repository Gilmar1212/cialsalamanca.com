-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29/10/2024 às 02:28
-- Versão do servidor: 10.11.9-MariaDB
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u355963129_cial`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `catalogos`
--

CREATE TABLE `catalogos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `catalogos`
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
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdf_title` longtext NOT NULL,
  `path_pdf` varchar(255) NOT NULL,
  `id_catalogos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `files`
--

INSERT INTO `files` (`id`, `pdf_title`, `path_pdf`, `id_catalogos`, `created_at`, `updated_at`) VALUES
(141, 'Ponte Mouchão Tº 2017.pdf', 'pdfs/ponte-mouchao-t-2017.pdf', 14, '2024-10-19 06:45:02', '2024-10-19 06:45:02'),
(139, 'Mouchão Tº 2014.pdf', 'pdfs/mouchao-t-2014.pdf', 14, '2024-10-19 06:44:49', '2024-10-19 06:44:49'),
(140, 'Mouchão Tonel Aged Sobremesa 2014.pdf', 'pdfs/mouchao-tonel-aged-sobremesa-2014.pdf', 14, '2024-10-19 06:44:55', '2024-10-19 06:44:55'),
(137, 'Dom Rafael Tº 2019.pdf', 'pdfs/dom-rafael-t-2019.pdf', 14, '2024-10-19 06:44:36', '2024-10-19 06:44:36'),
(138, 'Mouchão Bagaceira Alicante Bouschet 2016.pdf', 'pdfs/mouchao-bagaceira-alicante-bouschet-2016.pdf', 14, '2024-10-19 06:44:42', '2024-10-19 06:44:42'),
(136, 'Dom Rafael Bº 2021.pdf', 'pdfs/dom-rafael-b-2021.pdf', 14, '2024-10-19 06:44:30', '2024-10-19 06:44:30'),
(135, 'Catálogo 2024_2025 (PT)_compressed.pdf', 'pdfs/catalogo-2024-2025-pt-compressed.pdf', 13, '2024-10-19 06:44:19', '2024-10-19 06:44:19'),
(133, 'Christmas Gifts 2024 Cial.pdf', 'pdfs/christmas-gifts-2024-cial.pdf', 11, '2024-10-19 06:42:48', '2024-10-19 06:42:48'),
(134, 'Catálogo Natal 2024 compressed.pdf', 'pdfs/catalogo-natal-2024-compressed.pdf', 12, '2024-10-19 06:43:24', '2024-10-19 06:43:24'),
(132, 'Screenshot_2024-10-16-18-02-07-65_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-02-07-65-7352322957d4404136654ef4adb64504.jpg', 10, '2024-10-19 06:42:11', '2024-10-19 06:42:11'),
(130, 'Scala Coeli tinto 2019.pdf', 'pdfs/scala-coeli-tinto-2019.pdf', 10, '2024-10-19 06:41:56', '2024-10-19 06:41:56'),
(131, 'Scala Coeli tinto Reserva 2017.pdf', 'pdfs/scala-coeli-tinto-reserva-2017.pdf', 10, '2024-10-19 06:42:04', '2024-10-19 06:42:04'),
(129, 'Scala Coeli branco 2020.pdf', 'pdfs/scala-coeli-branco-2020.pdf', 10, '2024-10-19 06:41:49', '2024-10-19 06:41:49'),
(128, 'PR_Tapada do Chaves_Vinhas velhas_tinto 2013.pdf', 'pdfs/pr-tapada-do-chaves-vinhas-velhas-tinto-2013.pdf', 10, '2024-10-19 06:41:41', '2024-10-19 06:41:41'),
(127, 'PR_Tapada do Chaves_Vinhas velhas_tinto 2013(1).pdf', 'pdfs/pr-tapada-do-chaves-vinhas-velhas-tinto-20131.pdf', 10, '2024-10-19 06:41:33', '2024-10-19 06:41:33'),
(125, 'Pera-Manca tinto 2015 Pro.pdf', 'pdfs/pera-manca-tinto-2015-pro.pdf', 10, '2024-10-19 06:41:10', '2024-10-19 06:41:10'),
(126, 'PR_Tapada do Chaves_Vinhas velhas_tinto 2013(1).pdf', 'pdfs/pr-tapada-do-chaves-vinhas-velhas-tinto-20131.pdf', 10, '2024-10-19 06:41:20', '2024-10-19 06:41:20'),
(124, 'Pêra-Manca branco 2018.pdf', 'pdfs/pera-manca-branco-2018.pdf', 10, '2024-10-19 06:41:02', '2024-10-19 06:41:02'),
(123, 'FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 'pdfs/ft-tapada-do-chaves-reserva-tinto-2014-dl-pb.pdf', 10, '2024-10-19 06:40:53', '2024-10-19 06:40:53'),
(122, 'FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 'pdfs/ft-tapada-do-chaves-reserva-tinto-2014-dl-pb.pdf', 10, '2024-10-19 06:40:44', '2024-10-19 06:40:44'),
(121, 'FT Tapada do Chaves Reserva tinto 2014 DL PB.pdf', 'pdfs/ft-tapada-do-chaves-reserva-tinto-2014-dl-pb.pdf', 10, '2024-10-19 06:40:37', '2024-10-19 06:40:37'),
(120, 'FT Tapada do Chaves Reserva tinto 2014 DL PB(1).pdf', 'pdfs/ft-tapada-do-chaves-reserva-tinto-2014-dl-pb1.pdf', 10, '2024-10-19 06:40:29', '2024-10-19 06:40:29'),
(119, 'FT Tapada do Chaves Reserva tinto 2014 DL PB (1).pdf', 'pdfs/ft-tapada-do-chaves-reserva-tinto-2014-dl-pb-1.pdf', 10, '2024-10-19 06:40:21', '2024-10-19 06:40:21'),
(118, 'Espumante Cartuxa Bruto Ros� 2014.pdf', 'pdfs/espumante-cartuxa-bruto-ros-2014.pdf', 10, '2024-10-19 06:40:14', '2024-10-19 06:40:14'),
(116, 'Espumante Cartuxa Bruto 2014.pdf', 'pdfs/espumante-cartuxa-bruto-2014.pdf', 10, '2024-10-19 06:40:00', '2024-10-19 06:40:00'),
(117, 'Espumante Cartuxa Bruto Reserva 2014.pdf', 'pdfs/espumante-cartuxa-bruto-reserva-2014.pdf', 10, '2024-10-19 06:40:07', '2024-10-19 06:40:07'),
(114, 'EA Tinto 2017 BIO.pdf', 'pdfs/ea-tinto-2017-bio.pdf', 10, '2024-10-19 06:39:46', '2024-10-19 06:39:46'),
(115, 'EA Tinto 2018.pdf', 'pdfs/ea-tinto-2018.pdf', 10, '2024-10-19 06:39:53', '2024-10-19 06:39:53'),
(111, 'EA Branco 2019.pdf', 'pdfs/ea-branco-2019.pdf', 10, '2024-10-19 06:39:16', '2024-10-19 06:39:16'),
(112, 'EA rosé 2020.pdf', 'pdfs/ea-rose-2020.pdf', 10, '2024-10-19 06:39:26', '2024-10-19 06:39:26'),
(113, 'EA Tinto 2017 BIO.pdf', 'pdfs/ea-tinto-2017-bio.pdf', 10, '2024-10-19 06:39:37', '2024-10-19 06:39:37'),
(109, 'Cartuxa tinto 2017.pdf', 'pdfs/cartuxa-tinto-2017.pdf', 10, '2024-10-19 06:38:48', '2024-10-19 06:38:48'),
(110, 'Cartuxa tinto Reserva 2015.pdf', 'pdfs/cartuxa-tinto-reserva-2015.pdf', 10, '2024-10-19 06:38:56', '2024-10-19 06:38:56'),
(108, 'Cartuxa branco 2019.pdf', 'pdfs/cartuxa-branco-2019.pdf', 10, '2024-10-19 06:38:42', '2024-10-19 06:38:42'),
(107, 'Screenshot_2024-10-16-18-03-23-89_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-03-23-89-7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:29', '2024-10-19 06:38:29'),
(106, 'Screenshot_2024-10-16-18-03-12-18_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-03-12-18-7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:17', '2024-10-19 06:38:17'),
(105, 'Screenshot_2024-10-16-18-03-00-98_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-03-00-98-7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:11', '2024-10-19 06:38:11'),
(104, 'Screenshot_2024-10-16-18-02-48-27_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-02-48-27-7352322957d4404136654ef4adb64504.jpg', 9, '2024-10-19 06:38:04', '2024-10-19 06:38:04'),
(103, 'Screenshot_2024-10-16-18-00-57-03_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-00-57-03-7352322957d4404136654ef4adb64504.jpg', 8, '2024-10-19 06:37:53', '2024-10-19 06:37:53'),
(101, 'Pé Tinto 2022.pdf', 'pdfs/pe-tinto-2022.pdf', 7, '2024-10-19 06:37:33', '2024-10-19 06:37:33'),
(102, '1706703648358_Sales Folder - Casal Garcia Fruitzy Maracujá.pdf', 'pdfs/1706703648358-sales-folder-casal-garcia-fruitzy-maracuja.pdf', 8, '2024-10-19 06:37:47', '2024-10-19 06:37:47'),
(100, 'Pé Branco 2023.pdf', 'pdfs/pe-branco-2023.pdf', 7, '2024-10-19 06:37:24', '2024-10-19 06:37:24'),
(98, 'MV Rosé 2022.pdf', 'pdfs/mv-rose-2022.pdf', 7, '2024-10-19 06:37:07', '2024-10-19 06:37:07'),
(99, 'MV Tinto 2022.pdf', 'pdfs/mv-tinto-2022.pdf', 7, '2024-10-19 06:37:15', '2024-10-19 06:37:15'),
(97, 'MV Branco 2023.pdf', 'pdfs/mv-branco-2023.pdf', 7, '2024-10-19 06:36:59', '2024-10-19 06:36:59'),
(96, 'Ficha-Técnica-Torre-do-Esporão-2017_PT.pdf', 'pdfs/ficha-tecnica-torre-do-esporao-2017-pt.pdf', 7, '2024-10-19 06:36:48', '2024-10-19 06:36:48'),
(95, 'Ficha-Técnica-Torre-do-Esporão-2017_PT.pdf', 'pdfs/ficha-tecnica-torre-do-esporao-2017-pt.pdf', 7, '2024-10-19 06:36:39', '2024-10-19 06:36:39'),
(94, 'Esporao_PrivateSelection_Branco_2020.pdf', 'pdfs/esporao-privateselection-branco-2020.pdf', 7, '2024-10-19 06:36:32', '2024-10-19 06:36:32'),
(93, 'Esporao_PrivateSelection_Branco_2020.pdf', 'pdfs/esporao-privateselection-branco-2020.pdf', 7, '2024-10-19 06:36:24', '2024-10-19 06:36:24'),
(92, 'Esporao Reserva Tinto 21.pdf', 'pdfs/esporao-reserva-tinto-21.pdf', 7, '2024-10-19 06:36:17', '2024-10-19 06:36:17'),
(91, 'Esporao Reserva Branco 22.pdf', 'pdfs/esporao-reserva-branco-22.pdf', 7, '2024-10-19 06:36:10', '2024-10-19 06:36:10'),
(89, 'Defesa Tinto 2021.pdf', 'pdfs/defesa-tinto-2021.pdf', 7, '2024-10-19 06:35:53', '2024-10-19 06:35:53'),
(90, 'Esporao Reserva Branco 22.pdf', 'pdfs/esporao-reserva-branco-22.pdf', 7, '2024-10-19 06:36:01', '2024-10-19 06:36:01'),
(87, 'CATÁLOGO PACKS 2023_.pdf', 'pdfs/catalogo-packs-2023.pdf', 7, '2024-10-19 06:35:31', '2024-10-19 06:35:31'),
(88, 'Defesa Branco 2022.pdf', 'pdfs/defesa-branco-2022.pdf', 7, '2024-10-19 06:35:45', '2024-10-19 06:35:45'),
(86, 'Alandra Tinto 2022.pdf', 'pdfs/alandra-tinto-2022.pdf', 7, '2024-10-19 06:35:22', '2024-10-19 06:35:22'),
(85, 'Screenshot_2024-10-16-18-01-55-67_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-01-55-67-7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:35:09', '2024-10-19 06:35:09'),
(84, 'Screenshot_2024-10-16-18-01-44-49_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-01-44-49-7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:35:03', '2024-10-19 06:35:03'),
(83, 'Screenshot_2024-10-16-18-01-35-74_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-01-35-74-7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:34:56', '2024-10-19 06:34:56'),
(82, 'Screenshot_2024-10-16-18-01-25-58_7352322957d4404136654ef4adb64504.jpg', 'pdfs/screenshot-2024-10-16-18-01-25-58-7352322957d4404136654ef4adb64504.jpg', 6, '2024-10-19 06:34:49', '2024-10-19 06:34:49'),
(81, '_comenda grande_catalogo2023 s preços.pdf', 'pdfs/comenda-grande-catalogo-2023-s-precos.pdf', 6, '2024-10-19 06:34:40', '2024-10-19 06:34:40'),
(80, 'Quinta da Côrte - packs-natal-christmas- Noel -2024.pdf', 'pdfs/quinta-da-corte-packs-natal-christmas-noel-2024.pdf', 5, '2024-10-19 06:34:27', '2024-10-19 06:34:27'),
(79, '1727367265510_Catálogo de Natal São Luiz 2024.pdf', 'pdfs/1727367265510-catalogo-de-natal-sao-luiz-2024.pdf', 3, '2024-10-19 06:34:13', '2024-10-19 06:34:13'),
(78, 'Palacio Anadia Wines (Conde de Anadia).pdf', 'pdfs/palacio-anadia-wines-conde-de-anadia.pdf', 4, '2024-10-19 06:32:36', '2024-10-19 06:32:36'),
(77, 'Conde de Anadia_Specials.pdf', 'pdfs/conde-de-anadia-specials.pdf', 4, '2024-10-19 06:32:29', '2024-10-19 06:32:29'),
(142, 'catalogo-natal-2024-compressed.pdf', 'pdfs/catalogo-natal-2024-compressed.pdf', 4, '2024-10-28 13:06:20', '2024-10-28 13:06:20'),
(143, 'catalogo-natal-2024-compressed-2.pdf', 'pdfs/catalogo-natal-2024-compressed-2.pdf', 4, '2024-10-28 13:12:35', '2024-10-28 13:12:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
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
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp(6) NULL DEFAULT NULL,
  `user_level` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `user_level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Cial', 'cliente', 'cliente@cialsalamanca.com', NULL, 1, '$2y$10$xsAcMEEY/h0s/KQZFA0JrO501IsPZBCMi9ibGP3FNAzLWHVolCKne', NULL, '2024-10-19 05:58:03', '2024-10-19 05:58:03'),
(3, 'Admin', 'admin', 'admin@admin.com', NULL, 3, '$2y$10$G/5uiSIy1Ny6jn4NUl4pxu1sq1410xrDgrtqCcjX/.1NHmyt0vYL.', NULL, '2024-10-19 05:58:30', '2024-10-19 05:58:30');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
