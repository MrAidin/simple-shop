-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 10:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `company`, `province_id`, `city_id`, `post_code`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'کرج -جاده ملارد -خیابان اهری', NULL, 5, 283, '03100000000', 1, NULL, NULL),
(5, 'test', NULL, 5, 283, '031000000000', 10, '2021-06-29 01:58:36', '2021-06-29 01:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `attributegroup_category`
--

CREATE TABLE `attributegroup_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `attributeGroup_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributegroup_category`
--

INSERT INTO `attributegroup_category` (`id`, `category_id`, `attributeGroup_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 1, 6, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 2, 4, NULL, NULL),
(9, 2, 5, NULL, NULL),
(10, 2, 6, NULL, NULL),
(11, 3, 1, NULL, NULL),
(12, 3, 3, NULL, NULL),
(13, 3, 4, NULL, NULL),
(14, 3, 5, NULL, NULL),
(15, 3, 6, NULL, NULL),
(16, 4, 1, NULL, NULL),
(17, 4, 3, NULL, NULL),
(18, 4, 4, NULL, NULL),
(19, 4, 5, NULL, NULL),
(20, 4, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributesgroup`
--

CREATE TABLE `attributesgroup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributesgroup`
--

INSERT INTO `attributesgroup` (`id`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, 'جنس', 'select', '2021-06-04 03:23:08', '2021-06-04 03:23:08'),
(3, 'کشور سازنده', 'select', '2021-06-04 03:23:39', '2021-06-04 03:23:39'),
(4, 'طرح', 'select', '2021-06-04 03:23:49', '2021-06-04 03:23:49'),
(5, 'آستین', 'select', '2021-06-04 03:24:39', '2021-06-04 03:24:39'),
(6, 'مورد استفاده', 'select', '2021-06-04 03:25:24', '2021-06-04 03:25:24'),
(8, 'تست', 'select', '2021-06-29 08:09:16', '2021-06-29 08:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `attributesvalue`
--

CREATE TABLE `attributesvalue` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `attributeGroup_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributesvalue`
--

INSERT INTO `attributesvalue` (`id`, `title`, `attributeGroup_id`, `created_at`, `updated_at`) VALUES
(1, 'نخ', 1, '2021-06-04 03:26:09', '2021-06-04 03:26:09'),
(2, 'پنبه', 1, '2021-06-04 03:26:17', '2021-06-04 03:26:17'),
(3, 'پلاستیک', 1, '2021-06-04 03:26:25', '2021-06-04 03:26:25'),
(4, 'کشی', 1, '2021-06-04 03:26:45', '2021-06-04 03:26:45'),
(5, 'ساتن', 1, '2021-06-04 03:27:01', '2021-06-04 03:27:01'),
(6, 'آمریکا', 3, '2021-06-04 03:27:12', '2021-06-04 03:27:12'),
(7, 'ایران', 3, '2021-06-04 03:27:22', '2021-06-04 03:27:22'),
(8, 'فرانسه', 3, '2021-06-04 03:27:36', '2021-06-04 03:27:36'),
(9, 'آلمان', 3, '2021-06-04 03:27:47', '2021-06-04 03:27:47'),
(10, 'ایتالیا', 3, '2021-06-04 03:27:57', '2021-06-04 03:27:57'),
(11, 'ساده', 4, '2021-06-04 03:28:19', '2021-06-04 03:28:19'),
(12, 'چهارخونه', 4, '2021-06-04 03:28:40', '2021-06-04 03:28:40'),
(13, 'گل گلی', 4, '2021-06-04 03:29:01', '2021-06-04 03:29:01'),
(14, 'بلند', 5, '2021-06-04 03:29:18', '2021-06-04 03:29:18'),
(15, 'کوتاه', 5, '2021-06-04 03:29:27', '2021-06-04 03:29:27'),
(16, 'روزمره', 6, '2021-06-04 03:29:38', '2021-06-04 03:29:38'),
(17, 'فصل بهار', 6, '2021-06-04 03:29:51', '2021-06-04 03:30:36'),
(18, 'فصل تابستان', 6, '2021-06-04 03:30:01', '2021-06-04 03:30:01'),
(19, 'فصل پاییز', 6, '2021-06-04 03:30:14', '2021-06-04 03:30:45'),
(20, 'فصل زمستان', 6, '2021-06-04 03:31:01', '2021-06-04 03:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `attributevalue_product`
--

CREATE TABLE `attributevalue_product` (
  `attributeValue_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributevalue_product`
--

INSERT INTO `attributevalue_product` (`attributeValue_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(10, 1, NULL, NULL),
(11, 1, NULL, NULL),
(15, 1, NULL, NULL),
(16, 1, NULL, NULL),
(2, 3, NULL, NULL),
(9, 3, NULL, NULL),
(11, 3, NULL, NULL),
(15, 3, NULL, NULL),
(18, 3, NULL, NULL),
(1, 4, NULL, NULL),
(8, 4, NULL, NULL),
(13, 4, NULL, NULL),
(14, 4, NULL, NULL),
(3, 5, NULL, NULL),
(9, 5, NULL, NULL),
(11, 5, NULL, NULL),
(15, 5, NULL, NULL),
(16, 5, NULL, NULL),
(1, 6, NULL, NULL),
(10, 6, NULL, NULL),
(11, 6, NULL, NULL),
(18, 6, NULL, NULL),
(2, 7, NULL, NULL),
(6, 7, NULL, NULL),
(11, 7, NULL, NULL),
(16, 7, NULL, NULL),
(1, 8, NULL, NULL),
(6, 8, NULL, NULL),
(11, 8, NULL, NULL),
(18, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `description`, `photo_id`, `created_at`, `updated_at`) VALUES
(1, 'ورساچ (VERSACE)', 'شرکت پوشاک و خانه مد ایتالیایی است که در سال ۱۹۷۸ توسط جیانی ورساچه تأسیس شد.\r\nاولین بوتیک ورساچه در سال ۲۰۰۰ در شهر رجیو کالابریا راه‌اندازی گردید. امروزه برند ورساچه یکی از بزرگترین خانه‌های مد در جهان به‌شمار می‌رود.', 32, '2021-06-04 03:08:20', '2021-06-29 02:36:15'),
(2, 'گوچی (GUCCI)', 'نشان تجاری ایتالیایی در صنعت مد و کالاهای چرمی است، که متعلق به گروه گوچی می‌باشد، که خود زیرمجموعه‌ای از شرکت فرانسوی کرینگ به‌شمار می‌آید.\r\nشرکت گوچی در سال ۱۹۲۱ توسط گوچیو گوچی، تأسیس شد. امروزه دفتر مرکزی این شرکت، در شهر فلورانس، ایتالیا قرار دارد.', 4, '2021-06-04 03:09:09', '2021-06-04 03:11:39'),
(3, 'پوما (PUMA)', 'که یک شرکت آلمانی چندملیتی است که در زمینه تولید و فروش محصولات ورزشی فعالیت می‌کند و امروزه به عنوان یکی از بزرگ‌ترین شرکت‌های سازنده کفش و پوشاک ورزشی و تجهیزات مختلف دیگر است.', 5, '2021-06-04 03:10:47', '2021-06-04 03:10:47'),
(4, 'نایکی (NIKE)', 'یک شرکت آمریکایی چند ملیتی است که در زمینه طراحی، تولید، توسعه و عرضه محصولاتی نظیر کفش، پوشاک، لوازم و ابزار ورزشی به بازار جهانی فعالیت می‌کند. دفتر مرکزی این شرکت در شهر بیورتون ایالت اورگان واقع در شمال باختری ایالت اسپرت پیندو متحده آمریکا است', 6, '2021-06-04 03:12:50', '2021-06-04 03:12:50'),
(5, 'آدیداس (adidas)', 'یک شرکت پوشاک آلمانی است، که مقر اصلی آن، در شهر هرتسوگن‌آوراخ در ایالت بایرن قرار دارد. شرکت آدیداس در زمینه طراحی، تولید و توزیع انواع لباس، کفش، پاافزار و کفش ورزشی، تجهیزات ورزشی، ساعت، عینک آفتابی، محصولات مراقبت‌های شخصی و لوازم لوکس فعالیت می‌کند.', 7, '2021-06-04 03:14:31', '2021-06-04 03:14:31'),
(6, 'شَنل', 'شرکت سهامی خاص کالای لوکس و خانه مد فرانسوی است که دو دفتر مرکزی آن یکی در نوی-سور-سن، فرانسه و دیگری در لندن، انگلستان واقع است. این شرکت که در سال ۱۹۰۹ (میلادی) توسط دوزنده‌ای به نام کوکو شانل تأسیس شد. این شرکت امروزه به‌عنوان یکی از مهم‌ترین موسسه‌های طراحی مد و پوشاک زنانه شناخته می‌شود', 9, '2021-06-04 03:17:06', '2021-06-16 03:27:05'),
(7, 'کلوین کلاین (Calvin Klain)', 'که بنام سی‌کی (CK) نیز شناخته می‌شود، خانه مد آمریکایی می‌باشد، که توسط طراح مد، کلوین کلاین، تأسیس شده‌است شعبه مرکزی این شرکت در میدتاون منهتن شهر نیویورک قرار دارد.در حال حاضر برند کلوین کلاین، متعلق به شرکت پی‌وی‌اچ می‌باشد', 10, '2021-06-04 03:18:19', '2021-06-04 03:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `meta_desc`, `meta_title`, `meta_keywords`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'پوشاک', NULL, 'پوشاک', NULL, NULL, '2021-06-04 03:19:42', '2021-06-04 03:19:42'),
(2, 'زنانه', 'پوشاک زنانه است', 'پوشاک زنانه', NULL, 1, '2021-06-04 03:20:11', '2021-06-04 03:20:11'),
(3, 'مردانه', 'بچه گانه', 'پوشاک مردانه توضیحات تست دارد', NULL, 1, '2021-06-04 03:20:53', '2021-06-04 03:20:53'),
(4, 'بچه گانه', NULL, 'پوشاک بچه گانه توضیحات تست دارد', NULL, 1, '2021-06-04 03:21:24', '2021-06-04 03:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(1, 3),
(3, 3),
(2, 4),
(1, 5),
(3, 5),
(2, 6),
(1, 1),
(3, 1),
(4, 7),
(2, 4),
(1, 6),
(1, 4),
(1, 8),
(3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `name`) VALUES
(1, 1, 'تبريز'),
(2, 1, 'كندوان'),
(3, 1, 'بندر شرفخانه'),
(4, 1, 'مراغه'),
(5, 1, 'ميانه'),
(6, 1, 'شبستر'),
(7, 1, 'مرند'),
(8, 1, 'جلفا'),
(9, 1, 'سراب'),
(10, 1, 'هاديشهر'),
(11, 1, 'بناب'),
(12, 1, 'كليبر'),
(13, 1, 'تسوج'),
(14, 1, 'اهر'),
(15, 1, 'هريس'),
(16, 1, 'عجبشير'),
(17, 1, 'هشترود'),
(18, 1, 'ملكان'),
(19, 1, 'بستان آباد'),
(20, 1, 'ورزقان'),
(21, 1, 'اسكو'),
(22, 1, 'آذر شهر'),
(23, 1, 'قره آغاج'),
(24, 1, 'ممقان'),
(25, 1, 'صوفیان'),
(26, 1, 'ایلخچی'),
(27, 1, 'خسروشهر'),
(28, 1, 'باسمنج'),
(29, 1, 'سهند'),
(30, 2, 'اروميه'),
(31, 2, 'نقده'),
(32, 2, 'ماكو'),
(33, 2, 'تكاب'),
(34, 2, 'خوي'),
(35, 2, 'مهاباد'),
(36, 2, 'سر دشت'),
(37, 2, 'چالدران'),
(38, 2, 'بوكان'),
(39, 2, 'مياندوآب'),
(40, 2, 'سلماس'),
(41, 2, 'شاهين دژ'),
(42, 2, 'پيرانشهر'),
(43, 2, 'سيه چشمه'),
(44, 2, 'اشنويه'),
(45, 2, 'چایپاره'),
(46, 2, 'پلدشت'),
(47, 2, 'شوط'),
(48, 3, 'اردبيل'),
(49, 3, 'سرعين'),
(50, 3, 'بيله سوار'),
(51, 3, 'پارس آباد'),
(52, 3, 'خلخال'),
(53, 3, 'مشگين شهر'),
(54, 3, 'مغان'),
(55, 3, 'نمين'),
(56, 3, 'نير'),
(57, 3, 'كوثر'),
(58, 3, 'كيوي'),
(59, 3, 'گرمي'),
(60, 4, 'اصفهان'),
(61, 4, 'فريدن'),
(62, 4, 'فريدون شهر'),
(63, 4, 'فلاورجان'),
(64, 4, 'گلپايگان'),
(65, 4, 'دهاقان'),
(66, 4, 'نطنز'),
(67, 4, 'نايين'),
(68, 4, 'تيران'),
(69, 4, 'كاشان'),
(70, 4, 'فولاد شهر'),
(71, 4, 'اردستان'),
(72, 4, 'سميرم'),
(73, 4, 'درچه'),
(74, 4, 'کوهپایه'),
(75, 4, 'مباركه'),
(76, 4, 'شهرضا'),
(77, 4, 'خميني شهر'),
(78, 4, 'شاهين شهر'),
(79, 4, 'نجف آباد'),
(80, 4, 'دولت آباد'),
(81, 4, 'زرين شهر'),
(82, 4, 'آران و بيدگل'),
(83, 4, 'باغ بهادران'),
(84, 4, 'خوانسار'),
(85, 4, 'مهردشت'),
(86, 4, 'علويجه'),
(87, 4, 'عسگران'),
(88, 4, 'نهضت آباد'),
(89, 4, 'حاجي آباد'),
(90, 4, 'تودشک'),
(91, 4, 'ورزنه'),
(92, 6, 'ايلام'),
(93, 6, 'مهران'),
(94, 6, 'دهلران'),
(95, 6, 'آبدانان'),
(96, 6, 'شيروان چرداول'),
(97, 6, 'دره شهر'),
(98, 6, 'ايوان'),
(99, 6, 'سرابله'),
(100, 7, 'بوشهر'),
(101, 7, 'تنگستان'),
(102, 7, 'دشتستان'),
(103, 7, 'دير'),
(104, 7, 'ديلم'),
(105, 7, 'كنگان'),
(106, 7, 'گناوه'),
(107, 7, 'ريشهر'),
(108, 7, 'دشتي'),
(109, 7, 'خورموج'),
(110, 7, 'اهرم'),
(111, 7, 'برازجان'),
(112, 7, 'خارك'),
(113, 7, 'جم'),
(114, 7, 'کاکی'),
(115, 7, 'عسلویه'),
(116, 7, 'بردخون'),
(117, 8, 'تهران'),
(118, 8, 'ورامين'),
(119, 8, 'فيروزكوه'),
(120, 8, 'ري'),
(121, 8, 'دماوند'),
(122, 8, 'اسلامشهر'),
(123, 8, 'رودهن'),
(124, 8, 'لواسان'),
(125, 8, 'بومهن'),
(126, 8, 'تجريش'),
(127, 8, 'فشم'),
(128, 8, 'كهريزك'),
(129, 8, 'پاكدشت'),
(130, 8, 'چهاردانگه'),
(131, 8, 'شريف آباد'),
(132, 8, 'قرچك'),
(133, 8, 'باقرشهر'),
(134, 8, 'شهريار'),
(135, 8, 'رباط كريم'),
(136, 8, 'قدس'),
(137, 8, 'ملارد'),
(138, 9, 'شهركرد'),
(139, 9, 'فارسان'),
(140, 9, 'بروجن'),
(141, 9, 'چلگرد'),
(142, 9, 'اردل'),
(143, 9, 'لردگان'),
(144, 9, 'سامان'),
(145, 10, 'قائن'),
(146, 10, 'فردوس'),
(147, 10, 'بيرجند'),
(148, 10, 'نهبندان'),
(149, 10, 'سربيشه'),
(150, 10, 'طبس مسینا'),
(151, 10, 'قهستان'),
(152, 10, 'درمیان'),
(153, 11, 'مشهد'),
(154, 11, 'نيشابور'),
(155, 11, 'سبزوار'),
(156, 11, 'كاشمر'),
(157, 11, 'گناباد'),
(158, 11, 'طبس'),
(159, 11, 'تربت حيدريه'),
(160, 11, 'خواف'),
(161, 11, 'تربت جام'),
(162, 11, 'تايباد'),
(163, 11, 'قوچان'),
(164, 11, 'سرخس'),
(165, 11, 'بردسكن'),
(166, 11, 'فريمان'),
(167, 11, 'چناران'),
(168, 11, 'درگز'),
(169, 11, 'كلات'),
(170, 11, 'طرقبه'),
(171, 11, 'سر ولایت'),
(172, 12, 'بجنورد'),
(173, 12, 'اسفراين'),
(174, 12, 'جاجرم'),
(175, 12, 'شيروان'),
(176, 12, 'آشخانه'),
(177, 12, 'گرمه'),
(178, 12, 'ساروج'),
(179, 13, 'اهواز'),
(180, 13, 'ايرانشهر'),
(181, 13, 'شوش'),
(182, 13, 'آبادان'),
(183, 13, 'خرمشهر'),
(184, 13, 'مسجد سليمان'),
(185, 13, 'ايذه'),
(186, 13, 'شوشتر'),
(187, 13, 'انديمشك'),
(188, 13, 'سوسنگرد'),
(189, 13, 'هويزه'),
(190, 13, 'دزفول'),
(191, 13, 'شادگان'),
(192, 13, 'بندر ماهشهر'),
(193, 13, 'بندر امام خميني'),
(194, 13, 'اميديه'),
(195, 13, 'بهبهان'),
(196, 13, 'رامهرمز'),
(197, 13, 'باغ ملك'),
(198, 13, 'هنديجان'),
(199, 13, 'لالي'),
(200, 13, 'رامشیر'),
(201, 13, 'حمیدیه'),
(202, 13, 'دغاغله'),
(203, 13, 'ملاثانی'),
(204, 13, 'شادگان'),
(205, 13, 'ویسی'),
(206, 14, 'زنجان'),
(207, 14, 'ابهر'),
(208, 14, 'خدابنده'),
(209, 14, 'كارم'),
(210, 14, 'ماهنشان'),
(211, 14, 'خرمدره'),
(212, 14, 'ايجرود'),
(213, 14, 'زرين آباد'),
(214, 14, 'آب بر'),
(215, 14, 'قيدار'),
(216, 15, 'سمنان'),
(217, 15, 'شاهرود'),
(218, 15, 'گرمسار'),
(219, 15, 'ايوانكي'),
(220, 15, 'دامغان'),
(221, 15, 'بسطام'),
(222, 16, 'زاهدان'),
(223, 16, 'چابهار'),
(224, 16, 'خاش'),
(225, 16, 'سراوان'),
(226, 16, 'زابل'),
(227, 16, 'سرباز'),
(228, 16, 'نيكشهر'),
(229, 16, 'ايرانشهر'),
(230, 16, 'راسك'),
(231, 16, 'ميرجاوه'),
(232, 17, 'شيراز'),
(233, 17, 'اقليد'),
(234, 17, 'داراب'),
(235, 17, 'فسا'),
(236, 17, 'مرودشت'),
(237, 17, 'خرم بيد'),
(238, 17, 'آباده'),
(239, 17, 'كازرون'),
(240, 17, 'ممسني'),
(241, 17, 'سپيدان'),
(242, 17, 'لار'),
(243, 17, 'فيروز آباد'),
(244, 17, 'جهرم'),
(245, 17, 'ني ريز'),
(246, 17, 'استهبان'),
(247, 17, 'لامرد'),
(248, 17, 'مهر'),
(249, 17, 'حاجي آباد'),
(250, 17, 'نورآباد'),
(251, 17, 'اردكان'),
(252, 17, 'صفاشهر'),
(253, 17, 'ارسنجان'),
(254, 17, 'قيروكارزين'),
(255, 17, 'سوريان'),
(256, 17, 'فراشبند'),
(257, 17, 'سروستان'),
(258, 17, 'ارژن'),
(259, 17, 'گويم'),
(260, 17, 'داريون'),
(261, 17, 'زرقان'),
(262, 17, 'خان زنیان'),
(263, 17, 'کوار'),
(264, 17, 'ده بید'),
(265, 17, 'باب انار/خفر'),
(266, 17, 'بوانات'),
(267, 17, 'خرامه'),
(268, 17, 'خنج'),
(269, 17, 'سیاخ دارنگون'),
(270, 18, 'قزوين'),
(271, 18, 'تاكستان'),
(272, 18, 'آبيك'),
(273, 18, 'بوئين زهرا'),
(274, 19, 'قم'),
(275, 5, 'طالقان'),
(276, 5, 'نظرآباد'),
(277, 5, 'اشتهارد'),
(278, 5, 'هشتگرد'),
(279, 5, 'كن'),
(280, 5, 'آسارا'),
(281, 5, 'شهرک گلستان'),
(282, 5, 'اندیشه'),
(283, 5, 'كرج'),
(284, 5, 'نظر آباد'),
(285, 5, 'گوهردشت'),
(286, 5, 'ماهدشت'),
(287, 5, 'مشکین دشت'),
(288, 20, 'سنندج'),
(289, 20, 'ديواندره'),
(290, 20, 'بانه'),
(291, 20, 'بيجار'),
(292, 20, 'سقز'),
(293, 20, 'كامياران'),
(294, 20, 'قروه'),
(295, 20, 'مريوان'),
(296, 20, 'صلوات آباد'),
(297, 20, 'حسن آباد'),
(298, 21, 'كرمان'),
(299, 21, 'راور'),
(300, 21, 'بابك'),
(301, 21, 'انار'),
(302, 21, 'کوهبنان'),
(303, 21, 'رفسنجان'),
(304, 21, 'بافت'),
(305, 21, 'سيرجان'),
(306, 21, 'كهنوج'),
(307, 21, 'زرند'),
(308, 21, 'بم'),
(309, 21, 'جيرفت'),
(310, 21, 'بردسير'),
(311, 22, 'كرمانشاه'),
(312, 22, 'اسلام آباد غرب'),
(313, 22, 'سر پل ذهاب'),
(314, 22, 'كنگاور'),
(315, 22, 'سنقر'),
(316, 22, 'قصر شيرين'),
(317, 22, 'گيلان غرب'),
(318, 22, 'هرسين'),
(319, 22, 'صحنه'),
(320, 22, 'پاوه'),
(321, 22, 'جوانرود'),
(322, 22, 'شاهو'),
(323, 23, 'ياسوج'),
(324, 23, 'گچساران'),
(325, 23, 'دنا'),
(326, 23, 'دوگنبدان'),
(327, 23, 'سي سخت'),
(328, 23, 'دهدشت'),
(329, 23, 'ليكك'),
(330, 24, 'گرگان'),
(331, 24, 'آق قلا'),
(332, 24, 'گنبد كاووس'),
(333, 24, 'علي آباد كتول'),
(334, 24, 'مينو دشت'),
(335, 24, 'تركمن'),
(336, 24, 'كردكوي'),
(337, 24, 'بندر گز'),
(338, 24, 'كلاله'),
(339, 24, 'آزاد شهر'),
(340, 24, 'راميان'),
(341, 25, 'رشت'),
(342, 25, 'منجيل'),
(343, 25, 'لنگرود'),
(344, 25, 'رود سر'),
(345, 25, 'تالش'),
(346, 25, 'آستارا'),
(347, 25, 'ماسوله'),
(348, 25, 'آستانه اشرفيه'),
(349, 25, 'رودبار'),
(350, 25, 'فومن'),
(351, 25, 'صومعه سرا'),
(352, 25, 'بندرانزلي'),
(353, 25, 'كلاچاي'),
(354, 25, 'هشتپر'),
(355, 25, 'رضوان شهر'),
(356, 25, 'ماسال'),
(357, 25, 'شفت'),
(358, 25, 'سياهكل'),
(359, 25, 'املش'),
(360, 25, 'لاهیجان'),
(361, 25, 'خشک بيجار'),
(362, 25, 'خمام'),
(363, 25, 'لشت نشا'),
(364, 25, 'بندر کياشهر'),
(365, 26, 'خرم آباد'),
(366, 26, 'ماهشهر'),
(367, 26, 'دزفول'),
(368, 26, 'بروجرد'),
(369, 26, 'دورود'),
(370, 26, 'اليگودرز'),
(371, 26, 'ازنا'),
(372, 26, 'نور آباد'),
(373, 26, 'كوهدشت'),
(374, 26, 'الشتر'),
(375, 26, 'پلدختر'),
(376, 27, 'ساري'),
(377, 27, 'آمل'),
(378, 27, 'بابل'),
(379, 27, 'بابلسر'),
(380, 27, 'بهشهر'),
(381, 27, 'تنكابن'),
(382, 27, 'جويبار'),
(383, 27, 'چالوس'),
(384, 27, 'رامسر'),
(385, 27, 'سواد كوه'),
(386, 27, 'قائم شهر'),
(387, 27, 'نكا'),
(388, 27, 'نور'),
(389, 27, 'بلده'),
(390, 27, 'نوشهر'),
(391, 27, 'پل سفيد'),
(392, 27, 'محمود آباد'),
(393, 27, 'فريدون كنار'),
(394, 28, 'اراك'),
(395, 28, 'آشتيان'),
(396, 28, 'تفرش'),
(397, 28, 'خمين'),
(398, 28, 'دليجان'),
(399, 28, 'ساوه'),
(400, 28, 'سربند'),
(401, 28, 'محلات'),
(402, 28, 'شازند'),
(403, 29, 'بندرعباس'),
(404, 29, 'قشم'),
(405, 29, 'كيش'),
(406, 29, 'بندر لنگه'),
(407, 29, 'بستك'),
(408, 29, 'حاجي آباد'),
(409, 29, 'دهبارز'),
(410, 29, 'انگهران'),
(411, 29, 'ميناب'),
(412, 29, 'ابوموسي'),
(413, 29, 'بندر جاسك'),
(414, 29, 'تنب بزرگ'),
(415, 29, 'بندر خمیر'),
(416, 29, 'پارسیان'),
(417, 29, 'قشم'),
(418, 30, 'همدان'),
(419, 30, 'ملاير'),
(420, 30, 'تويسركان'),
(421, 30, 'نهاوند'),
(422, 30, 'كبودر اهنگ'),
(423, 30, 'رزن'),
(424, 30, 'اسدآباد'),
(425, 30, 'بهار'),
(426, 31, 'يزد'),
(427, 31, 'تفت'),
(428, 31, 'اردكان'),
(429, 31, 'ابركوه'),
(430, 31, 'ميبد'),
(431, 31, 'طبس'),
(432, 31, 'بافق'),
(433, 31, 'مهريز'),
(434, 31, 'اشكذر'),
(435, 31, 'هرات'),
(436, 31, 'خضرآباد'),
(437, 31, 'شاهديه'),
(438, 31, 'حمیدیه شهر'),
(439, 31, 'سید میرزا'),
(440, 31, 'زارچ');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `price`, `status`, `created_at`, `updated_at`) VALUES
(2, 'کد تخفیف 10000 تومانی', 'nuy۱۲۳۴', 100000, 1, '2021-06-29 02:49:22', '2021-06-29 02:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_user`
--

CREATE TABLE `coupon_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_20_155003_create_categories_table', 1),
(5, '2021_01_23_095449_create_attributes_group_table', 1),
(6, '2021_01_24_112348_create_attributes_value_table', 1),
(7, '2021_01_25_194217_create_photos_table', 1),
(8, '2021_01_26_191831_create_brands_table', 1),
(9, '2021_01_31_111149_create_products_table', 1),
(10, '2021_02_01_105243_add_foriegn_to_category', 1),
(11, '2021_02_22_094334_create_attribute_product_table', 1),
(12, '2021_02_22_095332_modify_products_table', 1),
(13, '2021_02_22_095917_add_category_product_table', 1),
(14, '2021_02_22_100228_add_photo_product_table', 1),
(15, '2021_02_23_113834_add_seo_to_products_table', 1),
(16, '2021_03_01_091950_create_addresses_table', 2),
(17, '2021_03_11_092130_create_coupons_table', 2),
(18, '2021_03_11_092157_create_coupons_user', 2),
(21, '2021_06_15_075547_create_orders_table', 3),
(22, '2021_06_15_080010_create_order_product', 3),
(24, '2021_06_16_054327_create_payment_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `amount`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2650000, 1, 1, '2021-06-15 04:19:43', '2021-06-15 04:19:43'),
(2, 2650000, 1, 1, '2021-06-15 04:27:01', '2021-06-15 04:27:01'),
(3, 2650000, 1, 1, '2021-06-15 04:27:20', '2021-06-15 04:27:20'),
(4, 950000, 1, 0, '2021-06-16 01:31:32', '2021-06-16 01:31:32'),
(5, 950000, 1, 0, '2021-06-16 01:33:46', '2021-06-16 01:33:46'),
(6, 950000, 1, 1, '2021-06-16 01:35:46', '2021-06-16 01:35:54'),
(7, 950000, 1, 0, '2021-06-16 01:36:19', '2021-06-16 01:36:19'),
(8, 950000, 1, 1, '2021-06-16 01:38:52', '2021-06-16 01:38:58'),
(9, 700000, 1, 0, '2021-06-16 02:31:21', '2021-06-16 02:31:21'),
(10, 700000, 1, 0, '2021-06-16 02:32:26', '2021-06-16 02:32:26'),
(11, 700000, 1, 1, '2021-06-16 02:32:52', '2021-06-16 02:33:01'),
(12, 750000, 1, 0, '2021-06-29 01:16:41', '2021-06-29 01:16:41'),
(13, 100000, 1, 1, '2021-06-29 01:56:14', '2021-06-29 01:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(1, 5, 3, NULL, NULL),
(2, 3, 1, NULL, NULL),
(2, 5, 3, NULL, NULL),
(3, 3, 1, NULL, NULL),
(3, 5, 3, NULL, NULL),
(4, 3, 1, NULL, NULL),
(4, 5, 1, NULL, NULL),
(5, 3, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 3, 1, NULL, NULL),
(6, 5, 1, NULL, NULL),
(7, 3, 1, NULL, NULL),
(7, 5, 1, NULL, NULL),
(8, 3, 1, NULL, NULL),
(8, 5, 1, NULL, NULL),
(9, 6, 1, NULL, NULL),
(9, 4, 2, NULL, NULL),
(10, 6, 1, NULL, NULL),
(10, 4, 2, NULL, NULL),
(11, 6, 1, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authority` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `RefID` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `authority`, `status`, `RefID`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '000000000000000000000000000000521456', 'OK', '12345678', 6, '2021-06-16 01:35:55', '2021-06-16 01:35:55'),
(2, '000000000000000000000000000000521465', 'OK', '12345678', 8, '2021-06-16 01:38:59', '2021-06-16 01:38:59'),
(3, '000000000000000000000000000000521537', 'OK', '12345678', 11, '2021-06-16 02:33:01', '2021-06-16 02:33:01'),
(4, '000000000000000000000000000000533167', 'OK', '12345678', 13, '2021-06-29 01:56:31', '2021-06-29 01:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `path`, `original_name`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '1622792297vesace.png', 'vesace.png', 1, '2021-06-04 03:08:17', '2021-06-04 03:08:17'),
(4, '1622792319gucci 2.png', 'gucci 2.png', 1, '2021-06-04 03:08:39', '2021-06-04 03:08:39'),
(5, '1622792445puma.png', 'puma.png', 1, '2021-06-04 03:10:45', '2021-06-04 03:10:45'),
(6, '1622792567nike.png', 'nike.png', 1, '2021-06-04 03:12:47', '2021-06-04 03:12:47'),
(7, '1622792599adidas.png', 'adidas.png', 1, '2021-06-04 03:13:19', '2021-06-04 03:13:19'),
(8, '1622792684channel.png', 'channel.png', 1, '2021-06-04 03:14:44', '2021-06-04 03:14:44'),
(9, '1622792824channel.png', 'channel.png', 1, '2021-06-04 03:17:04', '2021-06-04 03:17:04'),
(10, '1622792882calvin klein.png', 'calvin klein.png', 1, '2021-06-04 03:18:02', '2021-06-04 03:18:02'),
(11, '1622793932FinePix-Long-Zoom-Camera-220x330.jpg', 'FinePix-Long-Zoom-Camera-220x330.jpg', 1, '2021-06-04 03:35:32', '2021-06-04 03:35:32'),
(12, '1622793932apple_cinema_30-220x330.jpg', 'apple_cinema_30-220x330.jpg', 1, '2021-06-04 03:35:32', '2021-06-04 03:35:32'),
(13, '1622794168macbook_air_1-220x330.jpg', 'macbook_air_1-220x330.jpg', 1, '2021-06-04 03:39:28', '2021-06-04 03:39:28'),
(14, '1622794183macbook_air_2-350x525.jpg', 'macbook_air_2-350x525.jpg', 1, '2021-06-04 03:39:43', '2021-06-04 03:39:43'),
(15, '1622794233macbook_air_1-220x330.jpg', 'macbook_air_1-220x330.jpg', 1, '2021-06-04 03:40:33', '2021-06-04 03:40:33'),
(16, '1622794233macbook_air_2-350x525.jpg', 'macbook_air_2-350x525.jpg', 1, '2021-06-04 03:40:33', '2021-06-04 03:40:33'),
(17, '1622794845macbook_1-220x330.jpg', 'macbook_1-220x330.jpg', 1, '2021-06-04 03:50:45', '2021-06-04 03:50:45'),
(18, '1622794845macbook_3-220x330.jpg', 'macbook_3-220x330.jpg', 1, '2021-06-04 03:50:45', '2021-06-04 03:50:45'),
(19, '1622795018nikon_d300_1-50x75.jpg', 'nikon_d300_1-50x75.jpg', 1, '2021-06-04 03:53:38', '2021-06-04 03:53:38'),
(20, '1622795018macbook_pro_1-220x330.jpg', 'macbook_pro_1-220x330.jpg', 1, '2021-06-04 03:53:38', '2021-06-04 03:53:38'),
(21, '1622795154nikon_d300_1-220x330.jpg', 'nikon_d300_1-220x330.jpg', 1, '2021-06-04 03:55:54', '2021-06-04 03:55:54'),
(22, '1622795453nikon_d300_4-220x330.jpg', 'nikon_d300_4-220x330.jpg', 1, '2021-06-04 04:00:53', '2021-06-04 04:00:53'),
(23, '1622795502palm_treo_pro_1-220x330.jpg', 'palm_treo_pro_1-220x330.jpg', 1, '2021-06-04 04:01:42', '2021-06-04 04:01:42'),
(24, '1622795540palm_treo_pro_1-220x330.jpg', 'palm_treo_pro_1-220x330.jpg', 1, '2021-06-04 04:02:20', '2021-06-04 04:02:20'),
(25, '1622795984baby.jpg', 'baby.jpg', 1, '2021-06-04 04:09:44', '2021-06-04 04:09:44'),
(26, '1622796282baby.jpg', 'baby.jpg', 1, '2021-06-04 04:14:42', '2021-06-04 04:14:42'),
(27, '1622796331baby.jpg', 'baby.jpg', 1, '2021-06-04 04:15:31', '2021-06-04 04:15:31'),
(28, '1622796383baby.jpg', 'baby.jpg', 1, '2021-06-04 04:16:23', '2021-06-04 04:16:23'),
(29, '1622796428baby.jpg', 'baby.jpg', 1, '2021-06-04 04:17:08', '2021-06-04 04:17:08'),
(30, '1622796457baby.jpg', 'baby.jpg', 1, '2021-06-04 04:17:37', '2021-06-04 04:17:37'),
(31, '1622796488baby.jpg', 'baby.jpg', 1, '2021-06-04 04:18:08', '2021-06-04 04:18:08'),
(32, '1624950369apple_logo-60x60.jpg', 'apple_logo-60x60.jpg', 1, '2021-06-29 02:36:09', '2021-06-29 02:36:09'),
(33, '1624950451apple_cinema_30-200x200.jpg', 'apple_cinema_30-200x200.jpg', 1, '2021-06-29 02:37:31', '2021-06-29 02:37:31'),
(34, '1624950465canon_logo-60x60.jpg', 'canon_logo-60x60.jpg', 1, '2021-06-29 02:37:45', '2021-06-29 02:37:45'),
(35, '1624950740apple_cinema_30-220x330.jpg', 'apple_cinema_30-220x330.jpg', 1, '2021-06-29 02:42:20', '2021-06-29 02:42:20'),
(36, '1624950740canon_eos_5d_1-200x200.jpg', 'canon_eos_5d_1-200x200.jpg', 1, '2021-06-29 02:42:20', '2021-06-29 02:42:20'),
(37, '1624950741canon_eos_5d_1-220x330.jpg', 'canon_eos_5d_1-220x330.jpg', 1, '2021-06-29 02:42:21', '2021-06-29 02:42:21'),
(38, '1624953448apple_logo-100x100.jpg', 'apple_logo-100x100.jpg', 1, '2021-06-29 03:27:28', '2021-06-29 03:27:28'),
(39, '1624953479apple_logo-100x100.jpg', 'apple_logo-100x100.jpg', 1, '2021-06-29 03:27:59', '2021-06-29 03:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `photo_product`
--

CREATE TABLE `photo_product` (
  `photo_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_product`
--

INSERT INTO `photo_product` (`photo_id`, `product_id`) VALUES
(11, 1),
(12, 1),
(15, 3),
(16, 3),
(17, 4),
(18, 4),
(20, 5),
(21, 5),
(24, 6),
(31, 7),
(35, 8),
(36, 8),
(37, 8);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount_price` double(8,2) DEFAULT NULL,
  `description` text NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `sku`, `slug`, `status`, `price`, `discount_price`, `description`, `brand_id`, `user_id`, `created_at`, `updated_at`, `meta_desc`, `meta_title`, `meta_keywords`) VALUES
(1, 'پیراهن مردانه مدل pr-10', '651508', 'پیراهن-مردانه-مدل-pr-10', 1, 100000.00, NULL, '<p>توضیحات پیراهن مردامه زیبا</p>\r\n\r\n<ul>\r\n	<li>زیبایه منی تو</li>\r\n	<li>یعنی منه بی تو که میمیره</li>\r\n</ul>', 2, 1, '2021-06-04 03:37:55', '2021-06-05 02:38:20', NULL, NULL, NULL),
(3, 'سویشرت مردانه مدل 2021', '850003', 'سویشرت-مردانه-مدل-2021', 1, 520000.00, 100000.00, '<p>توضیحاتی در مورد این لباس</p>', 3, 1, '2021-06-04 03:43:09', '2021-06-04 03:50:04', NULL, NULL, NULL),
(4, 'بلوز زنانه طرح گلدار مدل 1236', '841257', 'بلوز-زنانه-طرح-گلدار-مدل-1236', 1, 250000.00, NULL, '<p>بلوز زنانه گلدار</p>', 6, 1, '2021-06-04 03:52:30', '2021-06-05 05:03:24', NULL, NULL, NULL),
(5, 'تیشرت مردانه راه راه مدل 12589', '577773', 'تیشرت-مردانه-راه-راه-مدل-12589', 1, 950000.00, 850000.00, '<p>تیشرت مردانه راه&nbsp; راه است</p>', 5, 1, '2021-06-04 03:55:13', '2021-06-04 03:55:58', NULL, NULL, NULL),
(6, 'کلاه زنانه', '445390', 'کلاه-زنانه', 1, 300000.00, 200000.00, '<p>کلاه زنانه زیبا</p>', 2, 1, '2021-06-04 04:03:12', '2021-06-05 04:10:23', NULL, NULL, NULL),
(7, 'لباس سرهمی بچه گانه مدل myBaby', '308588', 'لباس-سرهمی-بچه-گانه-مدل-myBaby', 1, 100000.00, NULL, '<p>لباس بچه گانه</p>', 7, 1, '2021-06-04 04:09:48', '2021-06-05 03:42:13', NULL, NULL, NULL),
(8, 'پیراهن مردانه مدل 6589', '612301', 'پیراهن-مردانه-مدل-6589', 1, 120000.00, 100000.00, '<p>توضیحات مربوط به محصول</p>', 2, 1, '2021-06-29 02:42:58', '2021-06-29 02:45:16', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'آذربايجان شرقي'),
(2, 'آذربايجان غربي'),
(3, 'اردبيل'),
(4, 'اصفهان'),
(5, 'البرز'),
(6, 'ايلام'),
(7, 'بوشهر'),
(8, 'تهران'),
(9, 'چهارمحال بختياري'),
(10, 'خراسان جنوبي'),
(11, 'خراسان رضوي'),
(12, 'خراسان شمالي'),
(13, 'خوزستان'),
(14, 'زنجان'),
(15, 'سمنان'),
(16, 'سيستان و بلوچستان'),
(17, 'فارس'),
(18, 'قزوين'),
(19, 'قم'),
(20, 'كردستان'),
(21, 'كرمان'),
(22, 'كرمانشاه'),
(23, 'كهكيلويه و بويراحمد'),
(24, 'گلستان'),
(25, 'گيلان'),
(26, 'لرستان'),
(27, 'مازندران'),
(28, 'مركزي'),
(29, 'هرمزگان'),
(30, 'همدان'),
(31, 'يزد');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `national_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `bank_number` varchar(255) DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `national_code`, `phone`, `birthday`, `gender`, `bank_number`, `province_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'امیر محمد', '  ستوده ', '0312263254', '09357664802', '1379/10/25', 1, '000', 1, 'aidin@gmail.com', NULL, '$2y$10$0YgKvU8J7Sjv.iC37GxHqeb9g.Lzsu4X1OLGA1M2lBmxkLrfDeg8C', 'qkIUWJ4Ax3tYc6eqk6sWTcloIucMtg8dU2rUWHbMK3IAkh6ISQsp5PcEvMLV', '2021-06-04 07:36:02', NULL),
(10, 'علی', 'کریمی', '0312222222', '09121111111', NULL, NULL, NULL, NULL, 'ali@gmail.com', NULL, '$2y$10$DboYTt.70hfml0g0zLvoreuMkNYU1eH0f2jTxivXoe05A3C.lOzhO', NULL, '2021-06-29 01:58:36', '2021-06-29 01:58:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_province_id_foreign` (`province_id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `attributegroup_category`
--
ALTER TABLE `attributegroup_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributegroup_category_category_id_foreign` (`category_id`),
  ADD KEY `attributegroup_category_attributegroup_id_foreign` (`attributeGroup_id`);

--
-- Indexes for table `attributesgroup`
--
ALTER TABLE `attributesgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributesvalue`
--
ALTER TABLE `attributesvalue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributesvalue_attributegroup_id_foreign` (`attributeGroup_id`);

--
-- Indexes for table `attributevalue_product`
--
ALTER TABLE `attributevalue_product`
  ADD KEY `attributevalue_product_attributevalue_id_foreign` (`attributeValue_id`),
  ADD KEY `attributevalue_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_title_unique` (`title`),
  ADD KEY `brands_photo_id_foreign` (`photo_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_user_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_user_id_foreign` (`user_id`);

--
-- Indexes for table `photo_product`
--
ALTER TABLE `photo_product`
  ADD KEY `photo_product_photo_id_foreign` (`photo_id`),
  ADD KEY `photo_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributegroup_category`
--
ALTER TABLE `attributegroup_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `attributesgroup`
--
ALTER TABLE `attributesgroup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attributesvalue`
--
ALTER TABLE `attributesvalue`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_user`
--
ALTER TABLE `coupon_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `addresses_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributegroup_category`
--
ALTER TABLE `attributegroup_category`
  ADD CONSTRAINT `attributegroup_category_attributegroup_id_foreign` FOREIGN KEY (`attributeGroup_id`) REFERENCES `attributesgroup` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attributegroup_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributesvalue`
--
ALTER TABLE `attributesvalue`
  ADD CONSTRAINT `attributesvalue_attributegroup_id_foreign` FOREIGN KEY (`attributeGroup_id`) REFERENCES `attributesgroup` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributevalue_product`
--
ALTER TABLE `attributevalue_product`
  ADD CONSTRAINT `attributevalue_product_attributevalue_id_foreign` FOREIGN KEY (`attributeValue_id`) REFERENCES `attributesvalue` (`id`),
  ADD CONSTRAINT `attributevalue_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD CONSTRAINT `coupon_user_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `coupon_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photo_product`
--
ALTER TABLE `photo_product`
  ADD CONSTRAINT `photo_product_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`),
  ADD CONSTRAINT `photo_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
