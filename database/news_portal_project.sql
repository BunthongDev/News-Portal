-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2024 at 10:48 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Bunthong Rorn', 'titicode1010@gmail.com', '$2y$10$fIzn2uK2FxkNo8VQ9uTzKutAwMvlN3eumUmfYP96mCFrPwqa3tMMq', 'admin.png', '', NULL, '2024-23-01 21:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Hak Virak', 'virak@gmail.com', '$2y$10$U2EqnIuGYOmzY9fNjCSXv.pg4zeLBrxvmxyXcgMEu15UdnpK/nCmS', 'author_photo_1648556379.jpg', '', '2024-09-20 07:27:04', '2024-09-20 19:57:26'),
(2, 'Sothak', 'thak@gmail.com', '$2y$10$I4Q9ESJjfboWBaKqp65zmOIpx1ZY8i6ufihMCdPnpoHgjavrV29bW', 'author_photo_1648474343.jpg', '', '2024-09-20 07:32:23', '2024-09-20 19:17:34'),
(3, 'Visa', 'visa@gmail.com', '$2y$10$JaP6CNq1e1FKRqmpr3NjuuZqGmdEQuypEThNxDl/D09f7H9G47Bya', 'author_photo_1648515769.jpg', '', '2024-09-20 19:02:50', '2024-09-20 19:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `show_on_menu`, `category_order`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'Show', '2', 1, '2022-03-03 12:17:28', '2022-03-23 19:34:06'),
(2, 'National', 'Show', '1', 1, '2022-03-03 12:17:55', '2022-03-23 19:34:12'),
(3, 'Lifestyles', 'Show', '3', 1, '2022-03-03 12:18:03', '2022-03-03 12:18:03'),
(5, 'Technology', 'Show', '4', 1, '2022-03-20 20:41:38', '2022-03-20 20:41:38'),
(6, 'Job List', 'Hide', '5', 1, '2022-03-20 20:42:43', '2022-03-23 19:33:37'),
(7, 'Health', 'Show', '6', 1, '2022-03-20 20:44:13', '2022-03-20 20:44:13'),
(8, 'Travel', 'Show', '7', 1, '2022-03-20 20:45:40', '2022-03-20 20:45:40'),
(9, 'স্পোর্টস', 'Show', '1', 7, '2022-04-01 18:44:38', '2022-04-01 18:44:38'),
(10, 'জীবনযাপন', 'Show', '2', 7, '2022-04-01 18:45:09', '2022-04-01 18:45:09'),
(11, 'টেকনোলজী', 'Show', '3', 7, '2022-04-01 18:45:30', '2022-04-01 18:45:30'),
(12, 'স্বাস্থ্য', 'Show', '4', 7, '2022-04-01 18:45:51', '2022-04-01 18:45:51'),
(13, 'ভ্রমণ', 'Show', '5', 7, '2022-04-01 18:46:09', '2022-04-01 18:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `faq_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_title`, `faq_detail`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Doming aliquid te pro. Mei et quodsi ornatus praesent', '<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p>', 1, '2022-03-24 20:34:14', '2022-03-24 20:52:09'),
(2, 'Consetetur definitionem cu mea, usu legere minimum ne', '<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p>', 1, '2022-03-24 20:34:36', '2022-03-24 20:34:36'),
(3, 'Ei usu malis aeque efficiantur. Mazim dolor denique duo ad', '<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p>', 1, '2022-03-24 20:34:51', '2022-03-24 20:34:51'),
(4, 'In vim natum soleat nostro, pri in eloquentiam contentiones', '<p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p><p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.<br></p>', 1, '2022-03-24 20:35:06', '2022-03-24 20:35:06'),


-- --------------------------------------------------------

--
-- Table structure for table `home_advertisements`
--

CREATE TABLE `home_advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `above_search_ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_search_ad_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_search_ad_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_footer_ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_footer_ad_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_footer_ad_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_advertisements`
--

INSERT INTO `home_advertisements` (`id`, `above_search_ad`, `above_search_ad_url`, `above_search_ad_status`, `above_footer_ad`, `above_footer_ad_url`, `above_footer_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'above_search_ad.png', NULL, 'Show', 'above_footer_ad.png', NULL, 'Show', NULL, '2022-03-01 22:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'Yes', NULL, '2022-03-31 19:59:20'),
(7, 'Bengali', 'bn', 'No', '2022-04-01 04:09:39', '2022-04-01 04:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `live_channels`
--

CREATE TABLE `live_channels` (
  `id` bigint UNSIGNED NOT NULL,
  `heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_channels`
--

INSERT INTO `live_channels` (`id`, `heading`, `video_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'World Cup 2022 Finals', '3RODsXw3frw', 1, '2022-03-25 21:12:54', '2022-04-02 04:18:26'),
(3, 'Top Amazing Rainbow Cake', 'v8KxrV2nv68', 1, '2022-03-25 23:03:48', '2022-03-25 23:07:03');


-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_08_28_000000_create_users_table', 1),
(2, '2024_08_28_100000_create_password_resets_table', 1),
(3, '2024_08_28_000000_create_failed_jobs_table', 1),
(4, '2024_08_28_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_28_035205_create_admins_table', 1),
(6, '2024_08_28_101937_create_home_advertisements_table', 2),
(7, '2024_08_28_065939_create_top_advertisements_table', 3),
(8, '2024_08_28_170635_create_sidebar_advertisements_table', 4),
(9, '2024_08_28_172805_create_categories_table', 5),
(10, '2024_08_28_004630_create_sub_categories_table', 6),
(11, '2024_08_28_143328_create_posts_table', 7),
(12, '2024_08_28_003749_create_tags_table', 8),
(13, '2024_08_28_003034_create_settings_table', 9),
(14, '2024_08_28_022500_create_photos_table', 10),
(15, '2024_08_28_152119_create_videos_table', 11),
(16, '2024_08_28_064358_create_pages_table', 12),
(17, '2024_08_28_022716_create_faqs_table', 13),
(18, '2024_08_28_003328_create_subscribers_table', 14),
(19, '2024_08_28_030340_create_live_channels_table', 15),
(20, '2024_08_28_113348_create_online_polls_table', 16),
(21, '2024_08_28_010922_create_social_items_table', 17),
(22, '2024_08_28_113727_create_authors_table', 18),
(23, '2024_08_28_013719_create_languages_table', 19);


-- --------------------------------------------------------

--
-- Table structure for table `online_polls`
--

CREATE TABLE `online_polls` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes_vote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_vote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_polls`
--

INSERT INTO `online_polls` (`id`, `question`, `yes_vote`, `no_vote`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Will Messi be able to get the championship trophy this year?', '230', '45', 1, '2022-03-26 05:44:16', '2022-03-26 05:44:16'),
(2, 'Will Ronaldo be able to get the championship trophy this year?', '40', '35', 1, '2022-03-26 05:44:41', '2022-03-26 07:14:09'),
(4, 'Who will win the war between Ukraine and Russia?', '1', '0', 1, '2022-03-26 07:20:07', '2022-03-26 11:44:22'),
(5, 'মেসি কি পারবে এবারের চ্যাম্পিয়নশিপ ট্রফি?', '0', '0', 7, '2022-04-02 04:45:41', '2022-04-02 04:45:41'),
(6, 'রোনালদো কি পারবে এবারের চ্যাম্পিয়নশিপ ট্রফি?', '0', '0', 7, '2022-04-02 04:45:59', '2022-04-02 04:45:59'),
(7, 'ইউক্রেন ও রাশিয়ার যুদ্ধে কে জিতবে?', '1', '0', 7, '2022-04-02 04:46:18', '2022-04-02 04:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `about_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about_title`, `about_detail`, `about_status`, `faq_title`, `faq_detail`, `faq_status`, `contact_title`, `contact_detail`, `contact_map`, `contact_status`, `terms_title`, `terms_detail`, `terms_status`, `privacy_title`, `privacy_detail`, `privacy_status`, `disclaimer_title`, `disclaimer_detail`, `disclaimer_status`, `login_title`, `login_status`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'About', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'Show', 'FAQ', '<p><br></p>', 'Show', 'Contact Us', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d76781.18424780735!2d-74.01425081274816!3d40.73849556392767!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1648138678202!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Show', 'Terms and Conditions', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p>', 'Show', 'Privacy Policy', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 'Show', 'Disclaimer', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 'Show', 'Login', 'Show', 1, NULL, '2022-04-02 07:42:42'),
(2, 'সম্পর্কে', '<div>লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট। নানসি আল্ট্রিচিস ভ্যারিয়াস আউগিউ ইউ ফ্যাউসিবাস। ইন প্যালেনটেস্কিউ আউগিউ নন নিকিউ টেম্পর ট্রিস্টিক। নিউলা এ পিউরাস অরনারে, ম্যাটুস এনিম স্যাড, ম্যাক্সিমাস মি। ডোনেক পোর্টা রিউট্রাম ডিগনিসসিম। ডোনেক ভাইটা ইরস এলিকুয়াম, রিউট্রাম রাইসাস এট, পরতিটর লরেম। আয়েনান স্যাড এনিম লুকাস। সেড ইয়াকিউলাস এরাট আইডি ম্যাক্সিমাস হেন্ড্রেরিট। নিউলাম এ এফিকিটার ইরস। স্যাড ইউ টিনসিডান্ট ফেলিস, এ অ্যাকিউমসান এক্স। নাম ট্রিস্টিক ভলুটপাত নিসি এট অরনারে। ফিউস্ক ইন টার্পিস কুয়াম। মরবি সাগিটিস ল্যাকটাস ইএস্টি, ভিটায়ে উলামকর্পার নিউলা আলিকেট ভেল। ইন হ্যাক হ্যাবিটাসসে প্ল্যাটিয়া ডিস্কটামস্ট</div><div><br></div><div>প্রোইন এ ভেস্টিবিউলাম এনিম। ফিউস্ক কুইস কঞ্জিউ আন্তে। নানসি ফাউসিবাস এক্স ইউট প্রিটিয়াম ইউসমড। ইন ইউ অ্যালিকুয়াম লরেম, ইগেট রিউট্রাম ইপ্সাম। ইন নন উক্ট্রিচেস লিগুলা। ইন্টিজার লাওরিট ফ্রিঞ্জিলা টরটর, ইগেট সাগিটিস উর্না। উট ভিভের্রা ডিগ্নিসসিম এলিট কুইজ কনসেকাট। ভিভামাস এসি ম্যাক্সিমাস ডুয়ি, কুইজ ভেনেনাতিস পিউরাস। আএনিয়ান ভিটায়ি ল্যাকিউস নন নিকিউ লাওরিট ফারেটা ভাইটা এট মাসসা। ক্রাস ডিক্টাম ইরাট আইডি ল্যাকিউস ভলিউপাট, নিক পেলেন্টেস্কিউ সেম মালেসিউডা। ক্রাস ফাউচিনাস মলিস ভেলিট ইগেট সলিসিউশুডিন।</div><div><br></div><div>প্রেজেন্ট ব্লান্ডিট স্যাড ফিউগাট কনসেক্টেচুর। ইন সিট আমেত সাসচিপিট নিসল। নিউলাম কারসাস, নিকিউ নন ইউসমড সডালেস, ওদিও এলিট ইয়াকিউলিস এক্স। এগেত ইমপেরডিয়েট নিউলা ভেলিট ইগেট দুই। প্রেসেন্ট ইউকালিস, এনিম ইগেট প্লেসেটার টিনচিডান্ট, মেটাস জাস্টুম আইডি ফিনিবাস আরকিউ কনসেকাট এট। প্রোইন ডাপিবাস প্লেসেরাট পিউরাস এট কারসাস। মাউরি ভিটায়ি লাউরিট নানসি, ইউ ইউয়াকিউলিস টারপিস। নানসি ইউ রিউট্রাম রাইসাস। স্যাড সাগিটিস ভিভেররা লরেম স্যাড ডিগ্নিসসিম। প্রেসেন্ট ভলাটপাট ইউলাম কর্পার এক্স এট ডিকটাম। ইন ভেল এস্ট ডিয়াম। লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট।</div>', 'Show', 'ফ্যাক', '<p><br></p>', 'Show', 'যোগাযোগ', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d76781.18424780735!2d-74.01425081274816!3d40.73849556392767!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1648138678202!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Show', 'টার্মস', '<p>লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট। নানসি আল্ট্রিচিস ভ্যারিয়াস আউগিউ ইউ ফ্যাউসিবাস। ইন প্যালেনটেস্কিউ আউগিউ নন নিকিউ টেম্পর ট্রিস্টিক। নিউলা এ পিউরাস অরনারে, ম্যাটুস এনিম স্যাড, ম্যাক্সিমাস মি। ডোনেক পোর্টা রিউট্রাম ডিগনিসসিম। ডোনেক ভাইটা ইরস এলিকুয়াম, রিউট্রাম রাইসাস এট, পরতিটর লরেম। আয়েনান স্যাড এনিম লুকাস। সেড ইয়াকিউলাস এরাট আইডি ম্যাক্সিমাস হেন্ড্রেরিট। নিউলাম এ এফিকিটার ইরস। স্যাড ইউ টিনসিডান্ট ফেলিস, এ অ্যাকিউমসান এক্স। নাম ট্রিস্টিক ভলুটপাত নিসি এট অরনারে। ফিউস্ক ইন টার্পিস কুয়াম। মরবি সাগিটিস ল্যাকটাস ইএস্টি, ভিটায়ে উলামকর্পার নিউলা আলিকেট ভেল। ইন হ্যাক হ্যাবিটাসসে প্ল্যাটিয়া ডিস্কটামস্ট</p><p>প্রোইন এ ভেস্টিবিউলাম এনিম। ফিউস্ক কুইস কঞ্জিউ আন্তে। নানসি ফাউসিবাস এক্স ইউট প্রিটিয়াম ইউসমড। ইন ইউ অ্যালিকুয়াম লরেম, ইগেট রিউট্রাম ইপ্সাম। ইন নন উক্ট্রিচেস লিগুলা। ইন্টিজার লাওরিট ফ্রিঞ্জিলা টরটর, ইগেট সাগিটিস উর্না। উট ভিভের্রা ডিগ্নিসসিম এলিট কুইজ কনসেকাট। ভিভামাস এসি ম্যাক্সিমাস ডুয়ি, কুইজ ভেনেনাতিস পিউরাস। আএনিয়ান ভিটায়ি ল্যাকিউস নন নিকিউ লাওরিট ফারেটা ভাইটা এট মাসসা। ক্রাস ডিক্টাম ইরাট আইডি ল্যাকিউস ভলিউপাট, নিক পেলেন্টেস্কিউ সেম মালেসিউডা। ক্রাস ফাউচিনাস মলিস ভেলিট ইগেট সলিসিউশুডিন।<br></p><p>প্রেজেন্ট ব্লান্ডিট স্যাড ফিউগাট কনসেক্টেচুর। ইন সিট আমেত সাসচিপিট নিসল। নিউলাম কারসাস, নিকিউ নন ইউসমড সডালেস, ওদিও এলিট ইয়াকিউলিস এক্স। এগেত ইমপেরডিয়েট নিউলা ভেলিট ইগেট দুই। প্রেসেন্ট ইউকালিস, এনিম ইগেট প্লেসেটার টিনচিডান্ট, মেটাস জাস্টুম আইডি ফিনিবাস আরকিউ কনসেকাট এট। প্রোইন ডাপিবাস প্লেসেরাট পিউরাস এট কারসাস। মাউরি ভিটায়ি লাউরিট নানসি, ইউ ইউয়াকিউলিস টারপিস। নানসি ইউ রিউট্রাম রাইসাস। স্যাড সাগিটিস ভিভেররা লরেম স্যাড ডিগ্নিসসিম। প্রেসেন্ট ভলাটপাট ইউলাম কর্পার এক্স এট ডিকটাম। ইন ভেল এস্ট ডিয়াম। লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট।<br></p><p>নিউলাম মালিসুয়াডা কুয়াম ফ্রিঞ্জিলা, কনভালিস লিগুলা এট, কমান্ডো উরনা। সিড মালেসুয়াডা লেক্টাস ইউ লিবেরো রিউট্রাম আল্ট্রিচিস। প্রৈন লাওরিট টরটর ভিটায়ি সেলেরিস্কিউ লাচিনিয়া। মর্বি ডিকটাম এসি এক্স এ অক্টর। আলিকুয়াম প্লেসারাট নিউলা আইডি ইএস্টি এফিকিউটার অক্টর। মাউরিস নন আলিকুয়েট দুই। নিউলা ন্যাক লাকুস ফেলিস। প্যালেন্টেস্কিউ স্যাড পিউরাস ইন আনতে ইয়াকুলিস আল্ট্রিসেস। আয়েনিয়ান ভারিউস, আন্ত্রে এ ভেহিকিউলা ডাপিবাস, ফেলিস লিগুলা ফেরমেন্টাম নিকিউ, ইন লাকটাস টেলাস মারিউস ইউট কুয়াম। মায়েসেনাস সেম্পের কনগিউ ইন্টেরদাম। মায়েচেনাস কমোডো, রিউয়াস সিট আমেট আলিকেট সাসসিপিট, জাস্টো লেক্টাস মোলিস কুয়াম, ইগেট কনসেকাট টেলাস জাস্টু কনডিমেন্টম। ডুইস এ লিবেরো ইউট লিবেরো মাটিস রিউট্রাম এড এসি নিকিউ। আএনিয়ান এট ইরোস টেলাস।<br></p>', 'Show', 'প্রাইভেসি', '<p>লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট। নানসি আল্ট্রিচিস ভ্যারিয়াস আউগিউ ইউ ফ্যাউসিবাস। ইন প্যালেনটেস্কিউ আউগিউ নন নিকিউ টেম্পর ট্রিস্টিক। নিউলা এ পিউরাস অরনারে, ম্যাটুস এনিম স্যাড, ম্যাক্সিমাস মি। ডোনেক পোর্টা রিউট্রাম ডিগনিসসিম। ডোনেক ভাইটা ইরস এলিকুয়াম, রিউট্রাম রাইসাস এট, পরতিটর লরেম। আয়েনান স্যাড এনিম লুকাস। সেড ইয়াকিউলাস এরাট আইডি ম্যাক্সিমাস হেন্ড্রেরিট। নিউলাম এ এফিকিটার ইরস। স্যাড ইউ টিনসিডান্ট ফেলিস, এ অ্যাকিউমসান এক্স। নাম ট্রিস্টিক ভলুটপাত নিসি এট অরনারে। ফিউস্ক ইন টার্পিস কুয়াম। মরবি সাগিটিস ল্যাকটাস ইএস্টি, ভিটায়ে উলামকর্পার নিউলা আলিকেট ভেল। ইন হ্যাক হ্যাবিটাসসে প্ল্যাটিয়া ডিস্কটামস্ট</p><p>প্রোইন এ ভেস্টিবিউলাম এনিম। ফিউস্ক কুইস কঞ্জিউ আন্তে। নানসি ফাউসিবাস এক্স ইউট প্রিটিয়াম ইউসমড। ইন ইউ অ্যালিকুয়াম লরেম, ইগেট রিউট্রাম ইপ্সাম। ইন নন উক্ট্রিচেস লিগুলা। ইন্টিজার লাওরিট ফ্রিঞ্জিলা টরটর, ইগেট সাগিটিস উর্না। উট ভিভের্রা ডিগ্নিসসিম এলিট কুইজ কনসেকাট। ভিভামাস এসি ম্যাক্সিমাস ডুয়ি, কুইজ ভেনেনাতিস পিউরাস। আএনিয়ান ভিটায়ি ল্যাকিউস নন নিকিউ লাওরিট ফারেটা ভাইটা এট মাসসা। ক্রাস ডিক্টাম ইরাট আইডি ল্যাকিউস ভলিউপাট, নিক পেলেন্টেস্কিউ সেম মালেসিউডা। ক্রাস ফাউচিনাস মলিস ভেলিট ইগেট সলিসিউশুডিন।<br></p><p>প্রেজেন্ট ব্লান্ডিট স্যাড ফিউগাট কনসেক্টেচুর। ইন সিট আমেত সাসচিপিট নিসল। নিউলাম কারসাস, নিকিউ নন ইউসমড সডালেস, ওদিও এলিট ইয়াকিউলিস এক্স। এগেত ইমপেরডিয়েট নিউলা ভেলিট ইগেট দুই। প্রেসেন্ট ইউকালিস, এনিম ইগেট প্লেসেটার টিনচিডান্ট, মেটাস জাস্টুম আইডি ফিনিবাস আরকিউ কনসেকাট এট। প্রোইন ডাপিবাস প্লেসেরাট পিউরাস এট কারসাস। মাউরি ভিটায়ি লাউরিট নানসি, ইউ ইউয়াকিউলিস টারপিস। নানসি ইউ রিউট্রাম রাইসাস। স্যাড সাগিটিস ভিভেররা লরেম স্যাড ডিগ্নিসসিম। প্রেসেন্ট ভলাটপাট ইউলাম কর্পার এক্স এট ডিকটাম। ইন ভেল এস্ট ডিয়াম। লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট।<br></p><p>নিউলাম মালিসুয়াডা কুয়াম ফ্রিঞ্জিলা, কনভালিস লিগুলা এট, কমান্ডো উরনা। সিড মালেসুয়াডা লেক্টাস ইউ লিবেরো রিউট্রাম আল্ট্রিচিস। প্রৈন লাওরিট টরটর ভিটায়ি সেলেরিস্কিউ লাচিনিয়া। মর্বি ডিকটাম এসি এক্স এ অক্টর। আলিকুয়াম প্লেসারাট নিউলা আইডি ইএস্টি এফিকিউটার অক্টর। মাউরিস নন আলিকুয়েট দুই। নিউলা ন্যাক লাকুস ফেলিস। প্যালেন্টেস্কিউ স্যাড পিউরাস ইন আনতে ইয়াকুলিস আল্ট্রিসেস। আয়েনিয়ান ভারিউস, আন্ত্রে এ ভেহিকিউলা ডাপিবাস, ফেলিস লিগুলা ফেরমেন্টাম নিকিউ, ইন লাকটাস টেলাস মারিউস ইউট কুয়াম। মায়েসেনাস সেম্পের কনগিউ ইন্টেরদাম। মায়েচেনাস কমোডো, রিউয়াস সিট আমেট আলিকেট সাসসিপিট, জাস্টো লেক্টাস মোলিস কুয়াম, ইগেট কনসেকাট টেলাস জাস্টু কনডিমেন্টম। ডুইস এ লিবেরো ইউট লিবেরো মাটিস রিউট্রাম এড এসি নিকিউ। আএনিয়ান এট ইরোস টেলাস।<br></p>', 'Show', 'ডিসক্লেইমার', '<p>লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট। নানসি আল্ট্রিচিস ভ্যারিয়াস আউগিউ ইউ ফ্যাউসিবাস। ইন প্যালেনটেস্কিউ আউগিউ নন নিকিউ টেম্পর ট্রিস্টিক। নিউলা এ পিউরাস অরনারে, ম্যাটুস এনিম স্যাড, ম্যাক্সিমাস মি। ডোনেক পোর্টা রিউট্রাম ডিগনিসসিম। ডোনেক ভাইটা ইরস এলিকুয়াম, রিউট্রাম রাইসাস এট, পরতিটর লরেম। আয়েনান স্যাড এনিম লুকাস। সেড ইয়াকিউলাস এরাট আইডি ম্যাক্সিমাস হেন্ড্রেরিট। নিউলাম এ এফিকিটার ইরস। স্যাড ইউ টিনসিডান্ট ফেলিস, এ অ্যাকিউমসান এক্স। নাম ট্রিস্টিক ভলুটপাত নিসি এট অরনারে। ফিউস্ক ইন টার্পিস কুয়াম। মরবি সাগিটিস ল্যাকটাস ইএস্টি, ভিটায়ে উলামকর্পার নিউলা আলিকেট ভেল। ইন হ্যাক হ্যাবিটাসসে প্ল্যাটিয়া ডিস্কটামস্ট</p><p>প্রোইন এ ভেস্টিবিউলাম এনিম। ফিউস্ক কুইস কঞ্জিউ আন্তে। নানসি ফাউসিবাস এক্স ইউট প্রিটিয়াম ইউসমড। ইন ইউ অ্যালিকুয়াম লরেম, ইগেট রিউট্রাম ইপ্সাম। ইন নন উক্ট্রিচেস লিগুলা। ইন্টিজার লাওরিট ফ্রিঞ্জিলা টরটর, ইগেট সাগিটিস উর্না। উট ভিভের্রা ডিগ্নিসসিম এলিট কুইজ কনসেকাট। ভিভামাস এসি ম্যাক্সিমাস ডুয়ি, কুইজ ভেনেনাতিস পিউরাস। আএনিয়ান ভিটায়ি ল্যাকিউস নন নিকিউ লাওরিট ফারেটা ভাইটা এট মাসসা। ক্রাস ডিক্টাম ইরাট আইডি ল্যাকিউস ভলিউপাট, নিক পেলেন্টেস্কিউ সেম মালেসিউডা। ক্রাস ফাউচিনাস মলিস ভেলিট ইগেট সলিসিউশুডিন।<br></p><p>প্রেজেন্ট ব্লান্ডিট স্যাড ফিউগাট কনসেক্টেচুর। ইন সিট আমেত সাসচিপিট নিসল। নিউলাম কারসাস, নিকিউ নন ইউসমড সডালেস, ওদিও এলিট ইয়াকিউলিস এক্স। এগেত ইমপেরডিয়েট নিউলা ভেলিট ইগেট দুই। প্রেসেন্ট ইউকালিস, এনিম ইগেট প্লেসেটার টিনচিডান্ট, মেটাস জাস্টুম আইডি ফিনিবাস আরকিউ কনসেকাট এট। প্রোইন ডাপিবাস প্লেসেরাট পিউরাস এট কারসাস। মাউরি ভিটায়ি লাউরিট নানসি, ইউ ইউয়াকিউলিস টারপিস। নানসি ইউ রিউট্রাম রাইসাস। স্যাড সাগিটিস ভিভেররা লরেম স্যাড ডিগ্নিসসিম। প্রেসেন্ট ভলাটপাট ইউলাম কর্পার এক্স এট ডিকটাম। ইন ভেল এস্ট ডিয়াম। লরেম ইপ্সাম ডলর সিট আমেত, কনসেক্টেচুর অ্যাডিপিস্কিং এলিট।<br></p><p>নিউলাম মালিসুয়াডা কুয়াম ফ্রিঞ্জিলা, কনভালিস লিগুলা এট, কমান্ডো উরনা। সিড মালেসুয়াডা লেক্টাস ইউ লিবেরো রিউট্রাম আল্ট্রিচিস। প্রৈন লাওরিট টরটর ভিটায়ি সেলেরিস্কিউ লাচিনিয়া। মর্বি ডিকটাম এসি এক্স এ অক্টর। আলিকুয়াম প্লেসারাট নিউলা আইডি ইএস্টি এফিকিউটার অক্টর। মাউরিস নন আলিকুয়েট দুই। নিউলা ন্যাক লাকুস ফেলিস। প্যালেন্টেস্কিউ স্যাড পিউরাস ইন আনতে ইয়াকুলিস আল্ট্রিসেস। আয়েনিয়ান ভারিউস, আন্ত্রে এ ভেহিকিউলা ডাপিবাস, ফেলিস লিগুলা ফেরমেন্টাম নিকিউ, ইন লাকটাস টেলাস মারিউস ইউট কুয়াম। মায়েসেনাস সেম্পের কনগিউ ইন্টেরদাম। মায়েচেনাস কমোডো, রিউয়াস সিট আমেট আলিকেট সাসসিপিট, জাস্টো লেক্টাস মোলিস কুয়াম, ইগেট কনসেকাট টেলাস জাস্টু কনডিমেন্টম। ডুইস এ লিবেরো ইউট লিবেরো মাটিস রিউট্রাম এড এসি নিকিউ। আএনিয়ান এট ইরোস টেলাস।</p>', 'Show', 'লগিন', 'Show', 7, NULL, '2022-04-02 22:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'photo_1648003895.jpg', 'Computer Photo', 1, '2024-08-25 20:51:35', '2024-08-25 20:51:35'),
(3, 'photo_1648003922.jpg', 'Football Photo', 1, '2024-08-25 20:52:02', '2024-08-25 20:52:02'),
(4, 'photo_1648005299.jpg', 'Adventure Photo', 1, '2024-08-25 21:14:59', '2024-08-25 21:14:59'),
(5, 'photo_1648005311.jpg', 'Adventure Photo', 1, '2024-08-25 21:15:11', '2024-08-25 21:15:11'),
(6, 'photo_1648005327.jpg', 'Computer Photo', 1, '2024-08-25 21:15:27', '2024-08-25 21:15:27'),
(7, 'photo_1648005344.jpg', 'Football Photo', 1, '2024-08-25 21:15:44', '2024-08-25 21:15:44'),
(8, 'photo_1648005360.jpg', 'Computer Photo', 1, '2024-08-25 21:16:00', '2024-08-25 21:16:00'),
(9, 'photo_1648035386.jpg', 'Football Photo', 1, '2024-08-25 05:36:13', '2024-08-25 05:36:26'),
(10, 'photo_1648035401.jpg', 'Football Photo', 1, '2024-08-25 05:36:41', '2024-08-25 05:36:41');



-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `sub_category_id` int NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitors` int NOT NULL,
  `author_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `is_share` int NOT NULL,
  `is_comment` int NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `sub_category_id`, `post_title`, `post_detail`, `post_photo`, `visitors`, `author_id`, `admin_id`, `is_share`, `is_comment`, `language_id`, `created_at`, `updated_at`) VALUES
(7, 1, 'Three Best Matches to Watch on TV This Weekend', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'post_photo_1647831282.jpg', 4, 0, 1, 1, 1, 1, '2021-08-20 20:54:42', '2022-03-28 05:11:25'),
(8, 1, 'Premier League Matchday 25: Saturday Preview & Predictions', '<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.<br></p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p>', 'post_photo_1647831340.jpg', 1, 0, 1, 1, 1, 1, '2021-09-20 20:55:40', '2021-09-20 20:55:40'),
(9, 1, 'Premier League Matchday 23: Top-Four Race Matches to Watch & Predictions', '<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p>', 'post_photo_1647831392.jpg', 1, 0, 1, 1, 1, 1, '2021-09-20 20:56:32', '2021-09-20 20:56:32'),
(10, 1, 'Five players who are desperate to move in the 2022 January transfer window', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p>', 'post_photo_1647831441.jpg', 1, 0, 1, 1, 1, 1, '2021-11-20 20:57:21', '2021-11-20 20:57:21'),
(11, 1, 'Chelsea star Romelu Lukaku set for showdown talks with Thomas Tuchel', '<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p>', 'post_photo_1647831519.jpg', 9, 0, 1, 1, 1, 1, '2021-12-20 20:58:39', '2022-04-01 09:21:30'),
(12, 1, 'November International Break – Preview', '<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p>', 'post_photo_1647833618.jpg', 7, 0, 1, 1, 1, 1, '2022-01-20 21:33:38', '2022-01-22 19:38:00'),
(13, 1, 'Wolverhampton Wanderers vs Everton: Premier League Preview & Predicted Line-ups', '<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p>', 'post_photo_1647833668.jpg', 19, 0, 1, 1, 1, 1, '2022-01-20 21:34:28', '2022-04-01 00:09:21'),
(14, 5, 'Insurance Policies All Working Adults Need to Have', '<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p><p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.<br></p>', 'post_photo_1647833724.jpg', 4, 0, 1, 1, 1, 1, '2022-01-20 21:35:24', '2022-03-27 00:43:57'),
(15, 5, 'Coping with Cancer and Staying Financially Ready to Treat It', '<p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p><p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.<br></p><p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.<br></p>', 'post_photo_1647833762.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:36:02', '2022-03-20 21:36:02'),
(16, 5, 'Does insurance cover windshield replacement?', '<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p><p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.<br></p><p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.<br></p>', 'post_photo_1647833797.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:36:37', '2022-03-22 11:08:58'),
(17, 5, 'Navigating your Root insurance quote', '<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p><p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.<br></p><p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.<br></p>', 'post_photo_1647833830.jpg', 2, 0, 1, 1, 1, 1, '2022-03-20 21:37:10', '2022-03-22 11:40:38'),
(18, 5, '5 Ways Disability Insurance Kept Life Normal for This Athlete', '<p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.</p><p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.<br></p><p>Per ex vero nonumy. Ius eu doming nominavi mediocrem, aliquid efficiantur no vim, sanctus admodum mnesarchum ad pro. No sea invidunt partiendo. No postea numquam ocurreret duo, unum abhorreant cu nam, fugit fastidii percipitur nam id.<br></p>', 'post_photo_1647833878.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:37:58', '2022-03-20 21:37:58'),
(19, 5, '16 Commonly Misunderstood Insurance Words', '<p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.</p><p>Per ex vero nonumy. Ius eu doming nominavi mediocrem, aliquid efficiantur no vim, sanctus admodum mnesarchum ad pro. No sea invidunt partiendo. No postea numquam ocurreret duo, unum abhorreant cu nam, fugit fastidii percipitur nam id.<br></p><p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.<br></p>', 'post_photo_1647833917.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:38:37', '2022-03-20 21:38:37'),
(20, 24, 'The 2022 Winter Climbing Season Brings Little Success for Alpinists', '<p>Per ex vero nonumy. Ius eu doming nominavi mediocrem, aliquid efficiantur no vim, sanctus admodum mnesarchum ad pro. No sea invidunt partiendo. No postea numquam ocurreret duo, unum abhorreant cu nam, fugit fastidii percipitur nam id.</p><p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.<br></p><p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.<br></p>', 'post_photo_1647833961.jpg', 2, 0, 1, 1, 1, 1, '2022-03-20 21:39:21', '2022-10-03 04:47:28'),
(21, 24, 'Win a Scholarship for an Andrew Skurka Backpacking Trip', '<p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.</p><p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.<br></p><p>Te soleat legendos molestiae cum. Tale sanctus invidunt cu per, quo at modo recteque elaboraret. Ex mazim homero per. Eu nec exerci doctus, cu mei oblique copiosae. Consul diceret usu ne.<br></p>', 'post_photo_1647833998.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:39:58', '2022-03-20 21:39:58'),
(22, 24, 'New Route on Everest Looks to Avoid the Dreaded Khumbu Icefall', '<p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.</p><p>Te soleat legendos molestiae cum. Tale sanctus invidunt cu per, quo at modo recteque elaboraret. Ex mazim homero per. Eu nec exerci doctus, cu mei oblique copiosae. Consul diceret usu ne.<br></p><p>Usu ad solet diceret, usu at appetere percipit appellantur, te est primis audire gloriatur. Scripta noluisse no mel, vis ne decore ridens labitur. Stet erant saepe eu mea. An mel dolore salutandi abhorreant. An quo aliquip maluisset, mea quaeque indoctum in, pro augue veritus praesent te.<br></p>', 'post_photo_1647834038.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:40:38', '2022-03-22 11:08:31'),
(23, 24, 'Winter Camping: How to Survive and Even Thrive in the Cold', '<p>Te soleat legendos molestiae cum. Tale sanctus invidunt cu per, quo at modo recteque elaboraret. Ex mazim homero per. Eu nec exerci doctus, cu mei oblique copiosae. Consul diceret usu ne.</p><p>Usu ad solet diceret, usu at appetere percipit appellantur, te est primis audire gloriatur. Scripta noluisse no mel, vis ne decore ridens labitur. Stet erant saepe eu mea. An mel dolore salutandi abhorreant. An quo aliquip maluisset, mea quaeque indoctum in, pro augue veritus praesent te.<br></p><p>Vim exerci sadipscing in, est simul recteque ei, dictas repudiandae comprehensam cu usu. Te melius veritus tibique pri. Sea nonumy euismod deserunt te. Ad ius nullam malorum assueverit.<br></p>', 'post_photo_1647834079.jpg', 3, 0, 1, 1, 1, 1, '2022-03-20 21:41:19', '2022-03-31 19:22:23'),
(24, 24, 'Blue Origin Announces Orbital Reef—a Luxury Space Hotel', '<p>Usu ad solet diceret, usu at appetere percipit appellantur, te est primis audire gloriatur. Scripta noluisse no mel, vis ne decore ridens labitur. Stet erant saepe eu mea. An mel dolore salutandi abhorreant. An quo aliquip maluisset, mea quaeque indoctum in, pro augue veritus praesent te.</p><p>Vim exerci sadipscing in, est simul recteque ei, dictas repudiandae comprehensam cu usu. Te melius veritus tibique pri. Sea nonumy euismod deserunt te. Ad ius nullam malorum assueverit.<br></p><p>Vim et alterum ornatus vivendum, ut mea solum repudiare. His etiam delenit tibique no, ad harum omnes scribentur qui, ne wisi detracto his. Ei movet accusam pri. Ex vel diam quas urbanitas, ne has velit affert habemus. At quis nonumy disputando nec, falli scaevola vel ea. Omittantur concludaturque nam eu, ex est vocent virtute.<br></p>', 'post_photo_1647834121.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:42:01', '2022-03-22 11:08:00'),
(25, 12, 'Hardware or Software? How to Tell What’s Wrong with Your Device', '<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.<br></p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p>', 'post_photo_1647834177.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:42:57', '2022-03-20 21:42:57'),
(26, 12, 'Computer Boot Problem. The steps to solve this issue.', '<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p><p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.<br></p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p>', 'post_photo_1647834214.jpg', 2, 0, 1, 1, 1, 1, '2022-03-20 21:43:34', '2022-03-26 00:54:35'),
(27, 12, 'Working from Home for the Foreseeable Future?', '<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p><p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.<br></p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p>', 'post_photo_1647834263.jpg', 1, 0, 1, 1, 1, 1, '2022-03-20 21:44:10', '2022-03-20 21:44:23'),
(28, 12, 'Computer Vision is Driving Huge ROI for Businesses', '<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p><p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.<br></p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p>', 'post_photo_1647834309.jpg', 4, 0, 1, 1, 1, 1, '2022-03-20 21:45:09', '2022-03-26 00:54:26'),
(29, 12, 'Evolectric Selects alwaysAI to Help Commercial Fleet Owners', '<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p><p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.<br></p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p>', 'post_photo_1647834361.jpg', 17, 0, 1, 1, 1, 1, '2022-03-20 21:46:01', '2022-03-27 19:04:26'),
(30, 12, 'Just How Secure IS Cloud PDM?', '<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p><p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.<br></p><p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.<br></p>', 'post_photo_1647834406.jpg', 19, 0, 1, 1, 1, 1, '2022-03-20 21:46:46', '2022-03-30 07:41:02'),
(33, 1, 'Top 20 players who might play their last WC in 2024', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'post_photo_1649040618.jpg', 3, 1, 0, 1, 1, 1, '2022-03-29 07:36:26', '2022-04-03 20:50:18'),
(36, 1, 'The Spanish youngster continues to dazzle under Xavi', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p><p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.<br></p><p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'post_photo_1649040653.jpg', 3, 1, 0, 1, 1, 1, '2022-03-29 18:38:50', '2022-04-03 20:50:53');





-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `news_ticker_total` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_ticker_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_total` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_date_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_email_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `analytic_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `analytic_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disqus_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `news_ticker_total`, `news_ticker_status`, `video_total`, `video_status`, `logo`, `favicon`, `top_bar_date_status`, `top_bar_email`, `top_bar_email_status`, `theme_color_1`, `theme_color_2`, `analytic_id`, `analytic_status`, `disqus_code`, `created_at`, `updated_at`) VALUES
(1, '5', 'Show', '6', 'Show', 'logo.png', 'favicon.png', 'Show', 'contact@arefindev.com', 'Show', '5374D3', '1DC175', 'UA-84213520-6', 'Show', '<script>\r\n                        (function() { // DON\'T EDIT BELOW THIS LINE\r\n                        var d = document, s = d.createElement(\'script\');\r\n                        s.src = \'https://arefindev-com.disqus.com/embed.js\';\r\n                        s.setAttribute(\'data-timestamp\', +new Date());\r\n                        (d.head || d.body).appendChild(s);\r\n                        })();\r\n                    </script>', NULL, '2022-04-01 09:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_advertisements`
--

CREATE TABLE `sidebar_advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `sidebar_ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_ad_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_ad_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_advertisements`
--

INSERT INTO `sidebar_advertisements` (`id`, `sidebar_ad`, `sidebar_ad_url`, `sidebar_ad_location`, `created_at`, `updated_at`) VALUES
(1, 'sidebar_ad_1646300780.png', NULL, 'Top', '2022-03-02 19:22:26', '2022-03-03 03:46:20'),
(3, 'sidebar_ad_1646300789.png', NULL, 'Bottom', '2022-03-02 19:59:34', '2022-03-03 03:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `social_items`
--

CREATE TABLE `social_items` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_items`
--

INSERT INTO `social_items` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-f', 'https://www.facebook.com/', '2022-03-27 19:36:26', '2022-03-27 19:36:26'),
(2, 'fab fa-twitter', 'https://www.twitter.com', '2022-03-27 19:41:01', '2022-03-27 19:41:01'),
(3, 'fab fa-linkedin-in', 'https://www.linkedin.com', '2022-03-27 19:41:22', '2022-03-27 19:42:02'),
(4, 'fab fa-pinterest-p', 'https://www.pinterest.com', '2022-03-27 19:41:46', '2022-03-27 19:41:54'),
(6, 'fab fa-instagram', 'https://www.instagram.com', '2022-03-27 20:54:55', '2022-03-27 20:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(2, 'aa@gmail.com', '', 'Active', '2024-09-25 18:57:02', '2024-09-25 19:02:35'),
(3, 'bb@gmail.com', '', 'Active', '2024-09-25 19:03:59', '2024-09-25 19:04:26'),
(4, 'cc@gmail.com', '3a3296c76a5ffd3bf04f3b7ff0aae5e89a1bf46d5fc6a2765eb7f187719f2fc0', 'Pending', '2024-09-25 23:18:38', '2024-09-25 23:18:38'),
(5, 'dd@gmail.com', '57bd36afc13ffc3985690476d29220153881045721509e03083e09a805095bd6', 'Pending', '2024-09-25 23:19:07', '2024-09-25 23:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_home` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `show_on_menu`, `show_on_home`, `sub_category_order`, `category_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Football', 'Show', 'Show', '1', 1, 1, '2024-08-25 19:45:53', '2024-08-25 04:27:17'),
(2, 'Cricket', 'Show', 'Hide', '2', 1, 1, '2024-08-25 19:46:21', '2024-08-25 04:31:58'),
(3, 'Khulna', 'Show', 'Show', '1', 2, 1, '2024-08-25 19:46:44', '2024-08-25 18:19:17'),
(4, 'Dhaka', 'Show', 'Hide', '2', 2, 1, '2024-08-25 19:47:00', '2024-08-25 04:32:02'),
(5, 'Insurance', 'Show', 'Show', '1', 3, 1, '2024-08-25 19:47:43', '2024-08-25 19:47:43'),
(6, 'Habit', 'Show', 'Hide', '2', 3, 1, '2024-08-25 19:47:52', '2024-08-25 04:32:08'),
(8, 'Baseball', 'Show', 'Hide', '3', 1, 1, '2024-08-25 20:39:52', '2024-08-25 19:30:21'),
(9, 'Sylhet', 'Hide', 'Hide', '3', 2, 1, '2024-08-25 20:40:15', '2024-08-25 20:42:29'),
(10, 'Work from Home', 'Show', 'Hide', '3', 3, 1, '2024-08-25 20:40:46', '2024-08-25 04:33:03'),
(11, 'Entrepreneur', 'Show', 'Hide', '4', 3, 1, '2024-08-25 20:41:15', '2024-08-25 04:33:26'),
(12, 'Computer', 'Show', 'Show', '1', 5, 1, '2024-08-25 20:41:51', '2024-08-25 20:41:51'),
(13, 'Mobile', 'Show', 'Hide', '2', 5, 1, '2024-08-25 20:42:00', '2024-08-25 04:34:08'),
(14, 'Programming', 'Show', 'Hide', '3', 5, 1, '2024-08-25 20:42:12', '2024-08-25 04:33:09'),
(15, 'Freelancing', 'Show', 'Hide', '4', 5, 1, '2024-08-25 20:42:23', '2024-08-25 04:33:31'),
(16, 'Government', 'Show', 'Hide', '1', 6, 1, '2024-08-25 20:43:02', '2024-08-25 04:31:43'),
(17, 'Non Government', 'Show', 'Hide', '2', 6, 1, '2024-08-25 20:43:13', '2024-08-25 04:32:40'),
(18, 'Corporate', 'Show', 'Hide', '3', 6, 1, '2024-08-25 20:43:26', '2024-08-25 04:33:13'),
(19, 'Accounting', 'Show', 'Hide', '4', 6, 1, '2024-08-25 20:43:36', '2024-08-25 04:33:35'),
(20, 'Parenting', 'Show', 'Hide', '1', 7, 1, '2024-08-25 20:44:30', '2024-08-25 04:31:48'),
(21, 'Diseases', 'Show', 'Hide', '2', 7, 1, '2024-08-25 20:44:44', '2024-08-25 04:32:44'),
(22, 'Diet', 'Show', 'Hide', '3', 7, 1, '2024-08-25 20:44:53', '2024-08-25 04:33:18'),
(23, 'Weight Loss', 'Show', 'Hide', '4', 7, 1, '2024-08-25 20:45:14', '2024-08-25 04:33:38'),
(24, 'Adventures', 'Show', 'Show', '1', 8, 1, '2024-08-25 20:45:54', '2024-08-25 19:30:32'),
(25, 'Explore', 'Show', 'Hide', '2', 8, 1, '2024-08-25 20:46:10', '2024-08-25 04:32:49'),
(26, 'Postcards', 'Show', 'Hide', '3', 8, 1, '2024-08-25 20:46:22', '2024-08-25 04:33:22'),
(27, 'Taste', 'Show', 'Hide', '4', 8, 1, '2024-08-25 20:46:31', '2024-08-25 04:33:42');


-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag_name`, `created_at`, `updated_at`) VALUES
(27, 7, 'football', '2024-08-25 20:54:42', '2024-08-25 20:54:42'),
(28, 7, 'usa', '2024-08-25 20:54:42', '2024-08-25 20:54:42'),
(29, 7, 'sports', '2024-08-25 20:54:42', '2024-08-25 20:54:42'),
(30, 7, 'weekend', '2024-08-25 20:54:42', '2024-08-25 20:54:42'),
(31, 7, 'tv', '2024-08-25 20:54:42', '2024-08-25 20:54:42'),
(32, 8, 'football', '2024-08-25 20:55:40', '2024-08-25 20:55:40'),
(33, 8, 'premier', '2024-08-25 20:55:40', '2024-08-25 20:55:40'),
(34, 8, 'prediction', '2024-08-25 20:55:40', '2024-08-25 20:55:40'),
(35, 9, 'matchday', '2024-08-25 20:56:32', '2024-08-25 20:56:32'),
(36, 9, 'football', '2024-08-25 20:56:32', '2024-08-25 20:56:32'),
(37, 9, 'premier', '2024-08-25 20:56:32', '2024-08-25 20:56:32'),
(38, 10, 'transfer', '2024-08-25 20:57:21', '2024-08-25 20:57:21'),
(39, 10, 'football', '2024-08-25 20:57:21', '2024-08-25 20:57:21'),
(40, 10, 'january', '2024-08-25 20:57:21', '2024-08-25 20:57:21'),
(41, 11, 'chelsea', '2024-08-25 20:58:39', '2024-08-25 20:58:39'),
(42, 11, 'romelu', '2024-08-25 20:58:39', '2024-08-25 20:58:39'),
(43, 11, 'thomas', '2024-08-25 20:58:39', '2024-08-25 20:58:39'),
(44, 11, 'football', '2024-08-25 20:58:39', '2024-08-25 20:58:39'),
(45, 12, 'football', '2024-08-25 21:33:38', '2024-08-25 21:33:38'),
(46, 12, 'break', '2024-08-25 21:33:38', '2024-08-25 21:33:38'),
(47, 13, 'football', '2024-08-25 21:34:28', '2024-08-25 21:34:28'),
(48, 13, 'wolverhampton', '2024-08-25 21:34:28', '2024-08-25 21:34:28'),
(49, 13, 'everton', '2024-08-25 21:34:28', '2024-08-25 21:34:28'),
(50, 14, 'policy', '2024-08-25 21:35:24', '2024-08-25 21:35:24'),
(51, 14, 'adult', '2024-08-25 21:35:24', '2024-08-25 21:35:24'),
(52, 14, 'insurance', '2024-08-25 21:35:24', '2024-08-25 21:35:24'),
(53, 15, 'insurance', '2024-08-25 21:36:02', '2024-08-25 21:36:02'),
(54, 15, 'cancer', '2024-08-25 21:36:02', '2024-08-25 21:36:02'),
(55, 16, 'windshield', '2024-08-25 21:36:37', '2024-08-25 21:36:37'),
(56, 16, 'insurance', '2024-08-25 21:36:37', '2024-08-25 21:36:37'),
(57, 17, 'insurance', '2024-08-25 21:37:10', '2024-08-25 21:37:10'),
(58, 17, 'quote', '2024-08-25 21:37:10', '2024-08-25 21:37:10'),
(59, 18, 'disability', '2024-08-25 21:37:58', '2024-08-25 21:37:58'),
(60, 18, 'athlete', '2024-08-25 21:37:58', '2024-08-25 21:37:58'),
(61, 19, 'misunderstanding', '2024-08-25 21:38:37', '2024-08-25 21:38:37'),
(62, 19, 'insurance', '2024-08-25 21:38:37', '2024-08-25 21:38:37'),
(63, 20, 'climb', '2024-08-25 21:39:21', '2024-08-25 21:39:21'),
(64, 20, 'alpinist', '2024-08-25 21:39:21', '2024-08-25 21:39:21'),
(65, 21, 'backpack', '2024-08-25 21:39:58', '2024-08-25 21:39:58'),
(66, 21, 'trip', '2024-08-25 21:39:58', '2024-08-25 21:39:58'),
(67, 22, 'icefall', '2024-08-25 21:40:38', '2024-08-25 21:40:38'),
(68, 22, 'everest', '2024-08-25 21:40:38', '2024-08-25 21:40:38'),
(69, 23, 'camping', '2024-08-25 21:41:19', '2024-08-25 21:41:19'),
(70, 23, 'survive', '2024-08-25 21:41:19', '2024-08-25 21:41:19'),
(71, 23, 'winter', '2024-08-25 21:41:19', '2024-08-25 21:41:19'),
(72, 24, 'reef', '2024-08-25 21:42:01', '2024-08-25 21:42:01'),
(73, 24, 'hotel', '2024-08-25 21:42:01', '2024-08-25 21:42:01'),
(74, 25, 'hardware', '2024-08-25 21:42:57', '2024-08-25 21:42:57'),
(75, 25, 'software', '2024-08-25 21:42:57', '2024-08-25 21:42:57'),
(76, 26, 'boot', '2024-08-25 21:43:35', '2024-08-25 21:43:35'),
(77, 26, 'problem', '2024-08-25 21:43:35', '2024-08-25 21:43:35'),
(78, 26, 'hardware', '2024-08-25 21:43:35', '2024-08-25 21:43:35'),
(79, 27, 'work', '2024-08-25 21:44:10', '2024-08-25 21:44:10'),
(80, 27, 'home', '2024-08-25 21:44:10', '2024-08-25 21:44:10');


-- --------------------------------------------------------

--
-- Table structure for table `top_advertisements`
--

CREATE TABLE `top_advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `top_ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_ad_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_ad_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_advertisements`
--

INSERT INTO `top_advertisements` (`id`, `top_ad`, `top_ad_url`, `top_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'top_ad.png', NULL, 'Show', NULL, '2024-09-29 10:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `video_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `language_id`, `created_at`, `updated_at`) VALUES
(2, 'AkjQWq-Xn28', 'Neymar vs Argentina HD 1080i | English Commentary', 1, '2022-03-23 17:58:17', '2022-03-23 17:58:17'),
(3, '7moQT1FVSn8', 'Lionel Messi - Top 15 Magical Dribbles', 1, '2022-03-23 17:58:47', '2022-03-23 17:58:47'),
(4, 'pTNkIrPpjcs', 'Penalty ShootOut That Made The World Happy', 1, '2022-03-23 17:59:09', '2022-03-23 17:59:09'),
(5, 'JUfybRQc_1o', 'Top 25 Places To Visit In The USA', 1, '2022-03-23 17:59:46', '2022-03-23 17:59:46'),
(6, 'lCBdcccceiM', 'Top 10 Places To Visit In Slovakia', 1, '2022-03-23 18:00:39', '2022-03-23 18:00:39'),
(7, '7SDF0ZzDHzk', 'Top 30 Places In The Alps', 1, '2022-03-23 18:01:02', '2022-03-23 18:01:02'),
(8, '_ysd-zHamjk', 'Corporate Video Production Marketing Videos', 1, '2022-03-23 18:02:01', '2022-03-23 18:02:01'),
(9, 'DyyElf12Ql0', '12 Business Ideas That Will Make You Money in 2021', 1, '2022-03-23 18:02:37', '2022-03-23 18:02:37'),
(10, 'Co3dPKNMcRs', '25 Small Business Ideas for New York in 2022', 1, '2022-03-23 18:02:56', '2022-03-23 18:02:56'),
(11, 'AkjQWq-Xn28', 'নেইমার বনাম আর্জেন্টিনা | ইংরেজি ভাষ্য', 7, '2022-04-02 05:48:58', '2022-04-02 05:48:58'),
(12, '7moQT1FVSn8', 'লিওনেল মেসি - শীর্ষ ১৫ ম্যাজিকাল ড্রিবল', 7, '2022-04-02 05:49:36', '2022-04-02 05:49:36'),
(13, 'pTNkIrPpjcs', 'পেনাল্টি শুটআউট যা বিশ্বকে খুশি করেছে', 7, '2022-04-02 05:50:02', '2022-04-02 05:50:02'),
(14, 'JUfybRQc_1o', 'মার্কিন যুক্তরাষ্ট্রে দেখার জন্য শীর্ষ ২৫টি স্থান', 7, '2022-04-02 05:50:35', '2022-04-02 05:50:35'),
(15, '_ysd-zHamjk', 'কর্পোরেট ভিডিও প্রোডাকশন মার্কেটিং ভিডিও', 7, '2022-04-02 05:51:24', '2022-04-02 05:51:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_advertisements`
--
ALTER TABLE `home_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_channels`
--
ALTER TABLE `live_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_polls`
--
ALTER TABLE `online_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_items`
--
ALTER TABLE `social_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_advertisements`
--
ALTER TABLE `top_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `home_advertisements`
--
ALTER TABLE `home_advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `live_channels`
--
ALTER TABLE `live_channels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `online_polls`
--
ALTER TABLE `online_polls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sidebar_advertisements`
--
ALTER TABLE `sidebar_advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_items`
--
ALTER TABLE `social_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `top_advertisements`
--
ALTER TABLE `top_advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
