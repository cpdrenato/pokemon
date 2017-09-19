-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Jul-2017 às 00:37
-- Versão do servidor: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `poder_a` varchar(45) DEFAULT NULL,
  `poder_d` varchar(45) DEFAULT NULL,
  `agilidade` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pokemon`
--

INSERT INTO `pokemon` (`id`, `nome`, `tipo`, `poder_a`, `poder_d`, `agilidade`) VALUES
(2, 'bulbasaur', 'Grama', 'folha', 'galho', 'statico'),
(3, 'chamander', 'Fogo', 'fogo', 'asas', 'voar'),
(4, 'charmeleon', 'fire', 'fogo', 'asas', 'voar'),
(5, 'charizard', 'fire', 'fogo', 'asas', 'voar'),
(6, 'dragalge', 'fogo', 'fogo', 'asas', 'voar'),
(7, 'raichu', 'eletrico', 'raichu', 'correr', 'rapido'),
(8, 'pikachu', 'eletricos', 'choque de trovao', 'correr', 'rapido'),
(9, 'Blastoise', 'agua', 'folha', 'galho', 'statico'),
(10, 'Growlithe	', 'fire', 'cipos', 'folhas', 'statico'),
(11, 'Beedrill', 'inseto', 'ttt', 'ttt', 'nadar'),
(12, 'Abra', 'Psiquico', 'mente', 'mente', 'rapido'),
(13, 'Mewtwo', 'Psiquico', 'mente', 'mente', 'rapido'),
(14, 'Mew', 'Psiquico', 'mente', 'mente', 'rapido'),
(15, 'Zapdos', 'Voador', 'Eletrico', 'raio', 'voar'),
(16, 'Lapras', 'agua', 'Gelo', 'gelo', 'nadar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'renato', 'cpdrenato@gmail.com', '$2y$10$DhARHfkMPtxnoX1IZuMjeO60rJwaE71ruLfzdAHdbLhr2a7mthfvi', 'j80icSp9q5igqPYA9STYedpV60Sx8FQfir7i16loqIJ2cpyLHjrXXoMqcYes', '2017-07-05 06:41:11', '2017-07-05 06:41:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
