-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 28, 2025 at 05:38 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u755768035_quick_life_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `map_full_address` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customer_id`, `name`, `phone`, `address_1`, `address_2`, `city`, `state`, `country`, `pincode`, `landmark`, `latitude`, `longitude`, `map_full_address`, `address_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '24', 'Shivam Kumar', '7888488988', 'VR7G+RV8, Flower Enclave Road, Guru Angad Dev Nagar, Urban Estate Dugri', 'Floor test', 'Ludhiana', 'Punjab', 'India', '141013', 'Landmark test', '30.8645108', '75.8273046', 'VR7G+RV8, Flower Enclave Road, Guru Angad Dev Nagar, Urban Estate Dugri, Ludhiana, Punjab 141013, India', 'Hotel', NULL, '2025-07-19 12:10:37', '2025-07-21 08:25:45'),
(2, '24', 'yahoo', '7896325412', 'plot no.54 &55, Bidhannagar, Street Number 18', 'Omnis in id aliquam accusamus', 'Kolkata', 'West Bengal', 'India', '700091', 'frgtrj', '22.5782734', '88.4302546', 'plot no.54 &55, Street Number 18, DN Block, Sector V, Bidhannagar, Kolkata, West Bengal 700091, India', 'Work', NULL, '2025-07-21 08:29:38', '2025-07-24 05:30:25'),
(3, '24', 'GANT', '7896325412', '178, Sector 22A, Sector 22', 'Voluptates velit et placeat reiciendis molestiae enim sequi veniam maxime amet quis ipsum cupid', 'Chandigarh', 'Chandigarh', 'India', '160022', 'efgrutj', '30.735421043325', '76.771997103119', '178, Sector 22A, Sector 22, Chandigarh, 160022, India', 'Hotel', NULL, '2025-07-21 08:30:33', '2025-07-21 11:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `created_by_id`, `title`, `slug`, `description`, `is_featured`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '🏥 Welcome to Quick Life – Your Trusted Partner in Health', 'welcome-to-quick-life-your-trusted-partner-in-health', '<p>At [Your Medical Store Name], we believe that good health is the foundation of a happy life. That&rsquo;s why we are committed to providing you with <strong>high-quality medicines</strong>, <strong>healthcare products</strong>, and <strong>personalized support</strong>, all under one roof.</p>\r\n\r\n<hr />\r\n<h3>💊 What We Offer</h3>\r\n\r\n<p>Whether you&#39;re managing a chronic condition, recovering from illness, or simply stocking up your home medicine cabinet, we have you covered. Our offerings include:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Prescription Medicines</strong> &ndash; Accurate and timely dispensing.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>OTC Products</strong> &ndash; Pain relief, cold &amp; flu, allergy medications, and more.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Health Supplements</strong> &ndash; Multivitamins, minerals, and immunity boosters.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personal Care Items</strong> &ndash; Skin care, hygiene, baby care, and wellness.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Medical Equipment</strong> &ndash; BP monitors, thermometers, oximeters, and diabetic care.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>👨&zwj;⚕️ Why Choose Us?</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>✅ <strong>Licensed Pharmacy</strong>: Operated by certified pharmacists.</p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Genuine Products</strong>: 100% authentic and trusted brands.</p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Affordable Prices</strong>: Competitive rates with regular offers.</p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Home Delivery</strong>: Fast, safe, and reliable delivery service.</p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Customer Support</strong>: Friendly advice and help when you need it.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>🚚 Free Home Delivery Available!</h3>\r\n\r\n<p>Too busy or unwell to visit the store? Just give us a call or order online. We&rsquo;ll deliver your medicines right to your doorstep &mdash; <strong>free of charge</strong> within a certain radius.</p>\r\n\r\n<hr />\r\n<h3>🌿 Health Tips from Our Experts</h3>\r\n\r\n<p>We regularly share easy-to-follow <strong>health tips</strong>, <strong>seasonal precautions</strong>, and <strong>updates about new arrivals</strong> on our blog and social media. Stay tuned to learn more about:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>How to boost your immunity naturally</p>\r\n	</li>\r\n	<li>\r\n	<p>Managing diabetes with lifestyle changes</p>\r\n	</li>\r\n	<li>\r\n	<p>First aid essentials every home should have</p>\r\n	</li>\r\n	<li>\r\n	<p>How to read prescription labels properly</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>🕒 Visit Us Today!</h3>\r\n\r\n<p>📍 Location: [Your Address]<br />\r\n📞 Call us: [Your Phone Number]<br />\r\n🌐 Website: [Your Website URL]<br />\r\n🕘 Open: [Your Store Timings]</p>\r\n\r\n<hr />\r\n<h3>❤️ Your Health, Our Mission</h3>\r\n\r\n<p>At [Your Medical Store Name], we&rsquo;re more than just a pharmacy &mdash; we&rsquo;re your <strong>healthcare companion</strong>. Visit us today and experience the care and trust you deserve.</p>', 1, 1, NULL, '2025-07-23 07:11:24', '2025-07-23 07:11:56'),
(2, '1', '🏥 Your Health, Our Priority – Welcome to Quick Life', 'your-health-our-priority-welcome-to-quick-life', '<p>When it comes to health, trust matters the most. At <strong>[Your Medical Store Name]</strong>, we&rsquo;re not just a pharmacy &mdash; we&rsquo;re your reliable health partner, committed to providing you with <strong>safe, affordable, and genuine medicines</strong> whenever you need them.</p>\r\n\r\n<hr />\r\n<h2>💊 One Stop for All Your Medical Needs</h2>\r\n\r\n<p>We understand that health issues can arise at any time &mdash; that&rsquo;s why we&rsquo;re fully stocked with everything you need:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Prescription Medicines</strong> &ndash; Accurately dispensed and double-checked</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Over-the-Counter (OTC) Drugs</strong> &ndash; Cough, cold, pain relief, and more</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Vitamins &amp; Supplements</strong> &ndash; Boost your immunity and energy</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personal Care Products</strong> &ndash; Hygiene, skincare, mother &amp; baby care</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Medical Devices</strong> &ndash; BP monitors, glucometers, thermometers, masks, etc.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>🧾 Why Choose Us?</h2>\r\n\r\n<p>Here&rsquo;s why thousands trust [Your Medical Store Name]:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>✅ <strong>100% Genuine Products</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Qualified Pharmacists</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Affordable Pricing</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Quick Home Delivery</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>✅ <strong>Friendly Customer Service</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Whether you&rsquo;re picking up a regular prescription or looking for wellness products, we&rsquo;re here to help &mdash; every step of the way.</p>\r\n\r\n<hr />\r\n<h2>🚚 Fast &amp; Free Home Delivery</h2>\r\n\r\n<p>Can&rsquo;t make it to the store? No problem! Just call or WhatsApp us and get your medicines <strong>delivered to your doorstep</strong>. We ensure fast and contactless delivery for your safety and convenience.</p>\r\n\r\n<hr />\r\n<h2>💡 Health Tips You Can Trust</h2>\r\n\r\n<p>We care for your health beyond the counter. Stay tuned to our blog for weekly updates and health tips:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>5 Easy Ways to Strengthen Your Immunity</p>\r\n	</li>\r\n	<li>\r\n	<p>Managing Common Monsoon Illnesses</p>\r\n	</li>\r\n	<li>\r\n	<p>How to Take Your Medicines the Right Way</p>\r\n	</li>\r\n	<li>\r\n	<p>Essentials for Your Home First Aid Kit</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>📍 Visit or Contact Us</h2>\r\n\r\n<p>📍 <strong>Location:</strong> [Your Complete Address]<br />\r\n📞 <strong>Call Us:</strong> [Phone Number]<br />\r\n📱 <strong>WhatsApp Orders:</strong> [WhatsApp Number]<br />\r\n🕘 <strong>Timings:</strong> [Opening &ndash; Closing Time]<br />\r\n🌐 <strong>Website:</strong> [Your URL]</p>\r\n\r\n<hr />\r\n<h2>❤️ Because Your Health Matters</h2>\r\n\r\n<p>At <strong>[Your Medical Store Name]</strong>, we treat every customer like family. Whether it&rsquo;s a quick refill or a detailed consultation, we&rsquo;re here to serve you with honesty, care, and a smile.</p>', 1, 1, NULL, '2025-07-23 07:28:02', '2025-07-23 07:28:19'),
(3, '1', '🧬 Taking Care of Your Family’s Health – The Smart Way', 'taking-care-of-your-familys-health-the-smart-way', '<p>In today&rsquo;s busy world, managing health for yourself and your family can feel overwhelming. That&rsquo;s where <strong>[Your Medical Store Name]</strong> steps in &mdash; to make your healthcare journey <strong>easier, faster, and safer</strong>.</p>\r\n\r\n<p>We believe that <strong>every home should have access to quality medicines, health essentials, and trusted advice</strong> &mdash; all in one place.</p>\r\n\r\n<hr />\r\n<h3>🛒 What You&rsquo;ll Find at Our Store</h3>\r\n\r\n<p>At [Your Medical Store Name], we provide a wide range of medical and wellness products to suit your daily needs:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Life-saving Prescription Medicines</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Everyday OTC Products</strong> &ndash; Headache, fever, acidity, cold, etc.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Wellness Essentials</strong> &ndash; Vitamins, protein powders, herbal supplements</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Women &amp; Baby Care</strong> &ndash; Sanitary products, baby formula, diapers, etc.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Home Healthcare Devices</strong> &ndash; BP machines, glucose meters, masks, oximeters</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>👨&zwj;👩&zwj;👧&zwj;👦 Your Family&rsquo;s Health &ndash; In Safe Hands</h3>\r\n\r\n<p>When it comes to the well-being of your loved ones, nothing should be a compromise.</p>\r\n\r\n<p>That&rsquo;s why we ensure:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>👨&zwj;⚕️ <strong>Certified pharmacists</strong> available for expert guidance</p>\r\n	</li>\r\n	<li>\r\n	<p>📦 <strong>Well-stocked inventory</strong> of genuine and latest medicines</p>\r\n	</li>\r\n	<li>\r\n	<p>💰 <strong>Transparent pricing</strong> &ndash; no hidden charges, no fake discounts</p>\r\n	</li>\r\n	<li>\r\n	<p>🛵 <strong>Reliable doorstep delivery</strong> &ndash; on time, every time</p>\r\n	</li>\r\n	<li>\r\n	<p>💬 <strong>Support in local languages</strong> &ndash; feel free to ask, we&rsquo;re here for you</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>🧠 Did You Know?</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>70% of common illnesses can be treated faster if the right OTC medicine is taken at the right time</p>\r\n	</li>\r\n	<li>\r\n	<p>Keeping basic first-aid, fever reducers, and digestive medicine at home can save unnecessary trips to the doctor</p>\r\n	</li>\r\n	<li>\r\n	<p>Using expired or duplicate medicines can be dangerous &ndash; always buy from <strong>trusted stores</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>📍 Drop By or Order Online</h3>\r\n\r\n<p>We&rsquo;re always nearby &ndash; whether you need a medicine refill, healthcare tips, or urgent delivery:</p>\r\n\r\n<p>📍 Address: [Your Store Location]<br />\r\n📞 Phone: [Phone Number]<br />\r\n📱 WhatsApp Orders: [WhatsApp Number]<br />\r\n🌐 Website: [Your Web URL]<br />\r\n🕒 Store Timings: [Your Timings]</p>\r\n\r\n<hr />\r\n<h2>🌟 Final Thought</h2>\r\n\r\n<p><strong>Good health starts with good choices.</strong><br />\r\nMake [Your Medical Store Name] your go-to place for trusted healthcare products and friendly support.<br />\r\nBecause when you stay healthy, you stay happy. And that&rsquo;s our goal for you.</p>', 1, 1, NULL, '2025-07-23 10:16:13', '2025-07-23 10:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `created_by_id`, `name`, `slug`, `is_featured`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'P&G', 'pg', '1', '1', NULL, '2025-05-15 04:16:16', '2025-06-17 09:28:57'),
(2, '1', 'Zenith', 'zenith', '1', '1', NULL, '2025-05-15 05:19:22', '2025-06-17 09:28:52'),
(3, '1', 'Pfizer', 'pfizer', '1', '1', NULL, '2025-05-15 05:19:26', '2025-06-17 09:28:43'),
(4, '1', 'Cipla', 'cipla', '1', '1', NULL, '2025-05-15 05:19:30', '2025-06-17 09:28:47'),
(5, '1', 'Elder Pharma', 'elder-pharma', '1', '1', NULL, '2025-05-15 05:19:35', '2025-06-17 09:28:34'),
(6, '1', 'Sun Pharma', 'sun-pharma', '1', '1', NULL, '2025-05-15 05:19:42', '2025-06-17 09:28:26'),
(7, '1', 'Meyer Vitabiotics', 'meyer-vitabiotics', '1', '1', NULL, '2025-05-15 05:19:49', '2025-06-17 09:28:22'),
(8, '1', 'Glenmark', 'glenmark', '1', '1', NULL, '2025-05-15 05:19:55', '2025-06-17 09:28:11'),
(9, '1', 'Dabur', 'dabur', '1', '1', NULL, '2025-05-15 05:20:01', '2025-06-17 09:28:04'),
(10, '1', 'Himalaya', 'himalaya', '1', '1', NULL, '2025-05-15 05:20:05', '2025-06-17 09:28:00'),
(11, '1', 'Baidyanath', 'baidyanath', '1', '1', NULL, '2025-05-15 05:20:09', '2025-06-17 09:27:54'),
(12, '1', 'Patanjali', 'patanjali', '1', '1', NULL, '2025-05-15 05:20:13', '2025-06-17 09:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('jaideepkishor166@gmail.com|2401:4900:a062:3081:4cdd:e7ff:fe26:8aa0', 'i:1;', 1753605254),
('jaideepkishor166@gmail.com|2401:4900:a062:3081:4cdd:e7ff:fe26:8aa0:timer', 'i:1753605254;', 1753605254);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `created_by_role` varchar(255) DEFAULT 'Customer',
  `customer_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `sub_category_id` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT '1',
  `price` varchar(255) DEFAULT '1',
  `total_amount` varchar(255) DEFAULT '1',
  `tax_rate` varchar(255) DEFAULT NULL,
  `tax_amount` varchar(255) DEFAULT '0',
  `prescription_required` varchar(255) DEFAULT 'No',
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_by_id`, `created_by_role`, `customer_id`, `product_id`, `category_id`, `sub_category_id`, `brand_id`, `pincode`, `qty`, `price`, `total_amount`, `tax_rate`, `tax_amount`, `prescription_required`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '19', 'Customer', '19', '9', '3', '9', '9', NULL, '3', '190.00', '570', NULL, '0', 'No', '2025-06-16 08:01:29', '2025-06-14 09:54:09', '2025-06-16 08:01:29'),
(2, '19', 'Customer', '19', '12', NULL, NULL, NULL, NULL, '1', '60.00', '60', NULL, '0', 'No', '2025-06-16 08:00:34', '2025-06-14 10:39:33', '2025-06-16 08:00:34'),
(3, '19', 'Customer', '19', '5', NULL, NULL, NULL, NULL, '1', '80.00', '80', NULL, '0', 'No', '2025-06-16 08:00:40', '2025-06-16 04:55:44', '2025-06-16 08:00:40'),
(4, '19', 'Customer', '19', '10', NULL, NULL, NULL, NULL, '1', '140.00', '140', NULL, '0', 'No', '2025-06-16 08:01:15', '2025-06-16 04:56:05', '2025-06-16 08:01:15'),
(5, '19', 'Customer', '19', '11', '3', '11', '11', NULL, '3', '160.00', '480', NULL, '0', 'No', '2025-06-16 08:06:09', '2025-06-16 08:05:35', '2025-06-16 08:06:09'),
(6, '19', 'Customer', '19', '12', '3', '12', '12', NULL, '2', '60.00', '120', NULL, '0', 'No', '2025-06-16 08:07:24', '2025-06-16 08:05:48', '2025-06-16 08:07:24'),
(7, '19', 'Customer', '19', '13', '3', '9', '10', NULL, '2', '140.00', '280', NULL, '0', 'No', '2025-06-16 08:09:26', '2025-06-16 08:05:53', '2025-06-16 08:09:26'),
(8, '19', 'Customer', '19', '23', '3', '10', '4', NULL, '2', '184.00', '368', NULL, '0', 'No', '2025-06-16 08:06:19', '2025-06-16 08:06:03', '2025-06-16 08:06:19'),
(9, '19', 'Customer', '19', '23', '3', '10', '4', NULL, '3', '184.00', '552', '5', '27.6', 'No', '2025-06-16 10:47:56', '2025-06-16 08:09:37', '2025-06-16 10:47:56'),
(10, '19', 'Customer', '19', '12', '3', '12', '12', NULL, '3', '60.00', '180', NULL, '0', 'No', '2025-06-16 08:23:42', '2025-06-16 08:09:47', '2025-06-16 08:23:42'),
(11, '19', 'Customer', '19', '10', '3', '10', '10', NULL, '3', '140.00', '420', NULL, '0', 'No', '2025-06-16 08:20:23', '2025-06-16 08:09:51', '2025-06-16 08:20:23'),
(12, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 10:47:56', '2025-06-16 09:56:24', '2025-06-16 10:47:56'),
(13, '19', 'Customer', '19', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-06-16 10:54:22', '2025-06-16 10:53:03', '2025-06-16 10:54:22'),
(14, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 11:00:31', '2025-06-16 11:00:15', '2025-06-16 11:00:31'),
(15, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 11:08:33', '2025-06-16 11:08:12', '2025-06-16 11:08:33'),
(16, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 11:23:54', '2025-06-16 11:23:44', '2025-06-16 11:23:54'),
(17, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 11:24:53', '2025-06-16 11:24:43', '2025-06-16 11:24:53'),
(18, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 11:28:34', '2025-06-16 11:28:20', '2025-06-16 11:28:34'),
(19, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 11:39:26', '2025-06-16 11:39:15', '2025-06-16 11:39:26'),
(20, '19', 'Customer', '19', '24', '2', '6', '10', NULL, '1', '267.00', '267', '12', '32.04', 'No', '2025-06-16 12:58:36', '2025-06-16 12:58:25', '2025-06-16 12:58:36'),
(21, '3', 'Customer', '3', '4', '1', '4', '4', NULL, '1', '180.00', '180', '5', '9', 'No', '2025-06-17 05:31:05', '2025-06-17 05:27:46', '2025-06-17 05:31:05'),
(22, '3', 'Customer', '3', '24', '2', '6', '10', NULL, '4', '267.00', '1068', '12', '128.16', 'No', '2025-06-17 05:49:12', '2025-06-17 05:48:33', '2025-06-17 05:49:12'),
(23, '3', 'Customer', '3', '23', '3', '10', '4', NULL, '4', '184.00', '736', '5', '36.8', 'No', '2025-06-17 06:08:00', '2025-06-17 06:07:36', '2025-06-17 06:08:00'),
(24, '24', 'Customer', '24', '23', '3', '10', '4', NULL, '1', '184.00', '184', '5', '9.2', 'No', '2025-06-26 10:40:19', '2025-06-26 08:14:32', '2025-06-26 10:40:19'),
(25, '24', 'Customer', '24', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-06-26 11:16:46', '2025-06-26 11:14:53', '2025-06-26 11:16:46'),
(26, '24', 'Customer', '24', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-06-26 11:48:04', '2025-06-26 11:47:49', '2025-06-26 11:48:04'),
(27, '24', 'Customer', '24', '13', '3', '9', '10', NULL, '1', '140.00', '140', '5', '7', 'No', '2025-06-26 11:48:33', '2025-06-26 11:48:22', '2025-06-26 11:48:33'),
(28, '24', 'Customer', '24', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-06-27 10:03:22', '2025-06-27 05:50:10', '2025-06-27 10:03:22'),
(29, '24', 'Customer', '24', '23', '3', '10', '4', NULL, '1', '184.00', '184', '5', '9.2', 'No', '2025-06-27 09:42:58', '2025-06-27 05:50:58', '2025-06-27 09:42:58'),
(30, '24', 'Customer', '24', '25', '1', '2', '1', NULL, '2', '1169.00', '2338', '12', '280.56', 'No', '2025-06-27 09:42:09', '2025-06-27 07:58:55', '2025-06-27 09:42:09'),
(31, '24', 'Customer', '24', '3', '1', '3', '3', NULL, '1', '20.00', '20', '5', '1', 'No', '2025-06-27 09:42:08', '2025-06-27 08:21:02', '2025-06-27 09:42:08'),
(32, '24', 'Customer', '24', '7', '2', '7', '7', NULL, '1', '170.00', '170', '5', '8.5', 'No', '2025-06-27 09:42:11', '2025-06-27 08:26:35', '2025-06-27 09:42:11'),
(33, '24', 'Customer', '24', '13', '3', '9', '10', NULL, '1', '140.00', '140', '5', '7', 'No', '2025-06-27 09:42:13', '2025-06-27 08:26:46', '2025-06-27 09:42:13'),
(34, '24', 'Customer', '24', '2', '1', '2', '2', NULL, '1', '250.00', '250', '5', '12.5', 'Yes', '2025-06-30 10:13:34', '2025-06-27 09:49:18', '2025-06-30 10:13:34'),
(35, '24', 'Customer', '24', '3', '1', '3', '3', NULL, '1', '20.00', '20', '5', '1', 'Yes', '2025-06-30 10:13:34', '2025-06-27 10:01:26', '2025-06-30 10:13:34'),
(36, '24', 'Customer', '24', '12', '3', '12', '9', NULL, '1', '60.00', '60', '5', '3', 'No', '2025-06-27 12:10:41', '2025-06-27 10:03:04', '2025-06-27 12:10:41'),
(37, '24', 'Customer', '24', '13', '3', '9', '10', NULL, '1', '140.00', '140', '5', '7', 'Yes', '2025-06-27 10:05:04', '2025-06-27 10:03:17', '2025-06-27 10:05:04'),
(38, '24', 'Customer', '24', '11', '3', '11', '11', NULL, '1', '160.00', '160', '5', '8', 'No', '2025-06-30 10:13:34', '2025-06-27 10:14:50', '2025-06-30 10:13:34'),
(39, '24', 'Customer', '24', '1', '1', '1', '1', NULL, '1', '120.00', '120', '5', '6', 'No', '2025-06-30 10:13:34', '2025-06-27 11:09:40', '2025-06-30 10:13:34'),
(40, '24', 'Customer', '24', '25', '1', '2', '1', NULL, '1', '1169.00', '1169', '12', '140.28', 'No', '2025-07-01 06:47:12', '2025-07-01 06:46:52', '2025-07-01 06:47:12'),
(41, '24', 'Customer', '24', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-07-07 11:27:00', '2025-07-03 06:06:18', '2025-07-07 11:27:00'),
(42, '24', 'Customer', '24', '13', '3', '9', '10', NULL, '1', '140.00', '140', '5', '7', 'Yes', '2025-07-07 11:27:00', '2025-07-03 09:51:09', '2025-07-07 11:27:00'),
(43, '24', 'Customer', '24', '11', '3', '11', '11', NULL, '1', '160.00', '160', '5', '8', 'No', '2025-07-07 11:27:00', '2025-07-03 09:51:25', '2025-07-07 11:27:00'),
(44, '42', 'Customer', '42', '25', '1', '2', '1', NULL, '1', '1169.00', '1169', '12', '140.28', 'No', '2025-07-04 08:08:46', '2025-07-04 08:07:53', '2025-07-04 08:08:46'),
(45, '24', 'Customer', '24', '23', '3', '10', '4', NULL, '1', '184.00', '184', '5', '9.2', 'No', '2025-07-10 10:14:11', '2025-07-10 10:11:22', '2025-07-10 10:14:11'),
(46, '24', 'Customer', '24', '13', '3', '9', '10', NULL, '1', '140.00', '140', '5', '7', 'Yes', '2025-07-10 10:14:11', '2025-07-10 10:12:25', '2025-07-10 10:14:11'),
(47, '24', 'Customer', '24', '12', '3', '12', '9', NULL, '1', '60.00', '60', '5', '3', 'No', '2025-07-10 10:14:11', '2025-07-10 10:12:32', '2025-07-10 10:14:11'),
(48, '24', 'Customer', '24', '11', '3', '11', '11', NULL, '1', '160.00', '160', '5', '8', 'No', '2025-07-10 10:14:11', '2025-07-10 10:12:39', '2025-07-10 10:14:11'),
(49, '24', 'Customer', '24', '10', '3', '10', '10', NULL, '1', '140.00', '140', '5', '7', 'No', '2025-07-10 10:14:11', '2025-07-10 10:12:45', '2025-07-10 10:14:11'),
(50, '24', 'Customer', '24', '23', '3', '10', '4', NULL, '1', '184.00', '184', '5', '9.2', 'No', '2025-07-10 10:19:52', '2025-07-10 10:19:45', '2025-07-10 10:19:52'),
(51, '24', 'Customer', '24', '11', '3', '11', '11', NULL, '1', '160.00', '160', '5', '8', 'No', '2025-07-21 05:11:05', '2025-07-10 10:20:58', '2025-07-21 05:11:05'),
(52, '43', 'Customer', '43', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-07-11 09:24:38', '2025-07-11 09:23:56', '2025-07-11 09:24:38'),
(53, '43', 'Customer', '43', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-07-11 09:36:43', '2025-07-11 09:36:33', '2025-07-11 09:36:43'),
(54, '43', 'Customer', '43', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', NULL, '2025-07-12 08:10:18', '2025-07-12 08:10:18'),
(55, '43', 'Customer', '43', '12', '3', '12', '9', NULL, '1', '60.00', '60', '5', '3', 'No', NULL, '2025-07-20 11:45:53', '2025-07-20 11:45:53'),
(56, '24', 'Customer', '24', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-07-21 05:11:05', '2025-07-21 05:10:42', '2025-07-21 05:11:05'),
(57, '24', 'Customer', '24', '25', '1', '2', '1', NULL, '1', '1169.00', '1169', '12', '140.28', 'No', '2025-07-21 06:33:33', '2025-07-21 06:33:19', '2025-07-21 06:33:33'),
(58, '24', 'Customer', '24', '9', '3', '9', '9', NULL, '1', '190.00', '190', '5', '9.5', 'No', '2025-07-23 05:22:46', '2025-07-23 05:14:59', '2025-07-23 05:22:46'),
(59, '24', 'Customer', '24', '10', '3', '10', '10', NULL, '1', '140.00', '140', '5', '7', 'No', '2025-07-23 05:22:46', '2025-07-23 05:21:54', '2025-07-23 05:22:46'),
(60, '24', 'Customer', '24', '11', '3', '11', '11', NULL, '1', '160.00', '160', '5', '8', 'No', '2025-07-24 04:59:44', '2025-07-23 05:30:33', '2025-07-24 04:59:44'),
(61, '24', 'Customer', '24', '23', '3', '10', '4', NULL, '1', '184.00', '184', '5', '9.2', 'No', '2025-07-24 04:59:45', '2025-07-23 06:51:05', '2025-07-24 04:59:45'),
(62, '24', 'Customer', '24', '11', '3', '11', '11', '141013', '1', '160.00', '160', '5', '8', 'No', '2025-07-24 07:45:42', '2025-07-24 04:59:50', '2025-07-24 07:45:42'),
(63, '24', 'Customer', '24', '23', '3', '10', '4', '141013', '1', '184.00', '184', '5', '9.2', 'No', '2025-07-24 08:12:17', '2025-07-24 07:45:59', '2025-07-24 08:12:17'),
(64, '24', 'Customer', '24', '11', '3', '11', '11', '141013', '2', '160.00', '320', '5', '16', 'No', NULL, '2025-07-24 07:50:56', '2025-07-28 04:54:21'),
(65, '24', 'Customer', '24', '23', '3', '10', '4', '141013', '1', '184.00', '184', '5', '9.2', 'No', '2025-07-25 06:20:03', '2025-07-24 09:23:35', '2025-07-25 06:20:03'),
(66, '24', 'Customer', '24', '13', '3', '9', '10', '141013', '2', '140.00', '280', '5', '14', 'Yes', NULL, '2025-07-25 06:44:10', '2025-07-25 07:48:21'),
(67, '24', 'Customer', '24', '10', '3', '10', '10', '141013', '2', '140.00', '280', '5', '14', 'No', NULL, '2025-07-25 07:31:39', '2025-07-25 07:48:21'),
(68, '24', 'Customer', '24', '12', '3', '12', '9', '141013', '1', '60.00', '60', '5', '3', 'No', NULL, '2025-07-25 07:32:03', '2025-07-25 07:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_by_id`, `name`, `slug`, `is_featured`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'Women\'s Health', 'womens-health', '1', '1', NULL, '2025-05-15 04:22:38', '2025-06-17 07:04:29'),
(2, '1', 'Senior Care', 'senior-care', '1', '1', NULL, '2025-05-15 04:24:18', '2025-06-17 07:04:26'),
(3, '1', 'Ayurvedic Medicines', 'ayurvedic-medicines', '1', '1', NULL, '2025-05-15 04:28:27', '2025-06-17 07:04:22'),
(4, '1', 'Temp Categories', 'temp-categories', '0', '1', '2025-06-04 05:05:19', '2025-05-30 06:39:42', '2025-06-04 05:05:19'),
(5, '1', 'temp', 'temp', '0', '1', '2025-05-31 04:11:43', '2025-05-31 04:09:32', '2025-05-31 04:11:43'),
(6, '1', 'temps', 'temps', '0', '1', '2025-05-31 04:42:53', '2025-05-31 04:16:57', '2025-05-31 04:42:53'),
(7, '1', 'Hair Care', 'hair-care', '1', '1', NULL, '2025-06-18 09:40:46', '2025-06-18 09:41:02'),
(8, '1', 'Vitamin & Nutrition', 'vitamin-nutrition', '1', '1', NULL, '2025-06-18 09:44:01', '2025-06-19 06:10:17'),
(9, '1', 'Mens Health', 'mens-health', '1', '1', NULL, '2025-06-18 10:03:37', '2025-06-19 05:49:35'),
(10, '1', 'Ayurveda Products', 'ayurveda-products', '0', '1', NULL, '2025-06-19 06:11:59', '2025-07-01 06:36:11'),
(11, '1', 'Homeopathy', 'homeopathy', '1', '1', NULL, '2025-06-19 06:13:10', '2025-07-05 10:32:59'),
(12, '1', 'First Aid', 'first-aid', '1', '1', NULL, '2025-06-19 06:14:48', '2025-07-05 10:33:11'),
(13, '1', 'Fitness & Health', 'fitness-health', '1', '1', NULL, '2025-07-07 05:29:36', '2025-07-07 05:29:54'),
(14, '1', 'Abhishek Kumar,Rajan', 'abhishek-kumarrajan', '0', '1', '2025-07-19 08:21:51', '2025-07-19 08:21:46', '2025-07-19 08:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `email`, `subject`, `message`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nomlanga Moreno', 'zybymixu@mailinator.com', 'Blanditiis excepturi', 'Laboriosam sit vol', 'Pending', NULL, '2025-07-18 11:52:45', '2025-07-18 11:52:45'),
(2, 'Nicholas Cook', 'rerofynah@mailinator.com', 'Ea praesentium sunt', 'Incididunt est conse', 'Pending', NULL, '2025-07-18 11:53:34', '2025-07-18 11:53:34'),
(3, 'Judah Alvarado', 'cytuh@mailinator.com', 'Tempora quia blandit', 'Dicta dolorum qui do', 'Pending', NULL, '2025-07-18 11:54:08', '2025-07-18 11:54:08'),
(4, 'Halee Holloway', 'remel@mailinator.com', 'Hic nihil qui omnis', 'Corporis qui aut fug', 'Pending', NULL, '2025-07-18 12:01:27', '2025-07-18 12:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `status`, `otp`, `otp_expires_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cunstomer 1', 'customer1@gmail.com', '9876543210', 'Active', NULL, NULL, NULL, '2025-06-09 11:40:37', '2025-06-09 11:44:40'),
(2, 'Keegan Williams', 'admin@gmail.com', '7876614408', 'Active', '232180', '2025-06-09 12:07:15', NULL, '2025-06-09 11:57:15', '2025-06-09 11:57:15'),
(3, 'Keegan Williams', 'admin@gmail.com', '7876614408', 'Active', '901073', '2025-06-26 07:31:53', NULL, '2025-06-09 11:57:23', '2025-06-26 07:21:53'),
(4, 'Keegan Williams', 'admin@gmail.com', '7876614408', 'Active', NULL, NULL, NULL, '2025-06-09 12:01:38', '2025-06-09 12:02:02'),
(5, 'Keegan Williams', 'admin@gmail.com', '+1 (888) 147-44', 'Active', NULL, NULL, NULL, '2025-06-09 12:04:19', '2025-06-09 12:04:31'),
(6, 'Keegan Williams', 'sharma21@gmail.com', '+1 (669) 326-11', 'Active', NULL, NULL, NULL, '2025-06-09 12:10:59', '2025-06-09 12:11:06'),
(7, 'Alfonso Fowler', 'sharma21@gmail.com', '+1 (399) 419-70', 'Active', '386563', '2025-06-09 12:26:09', NULL, '2025-06-09 12:16:09', '2025-06-09 12:16:09'),
(8, 'Alfonso Fowler', 'sharma21@gmail.com', '+1 (399) 419-70', 'Active', '149490', '2025-06-09 12:26:12', NULL, '2025-06-09 12:16:12', '2025-06-09 12:16:12'),
(9, 'Keegan Williams', 'admin@gmail.com', '7896325412', 'Active', '226315', '2025-06-09 12:28:33', NULL, '2025-06-09 12:18:33', '2025-06-09 12:18:33'),
(10, 'Keegan Williams', 'admin@gmail.com', '7896325412', 'Inactive', '592693', '2025-06-09 12:28:34', NULL, '2025-06-09 12:18:34', '2025-06-09 12:18:34'),
(11, 'Keegan Williams', 'admin@gmail.com', '7896325412', 'Inactive', '205698', '2025-06-09 12:28:34', NULL, '2025-06-09 12:18:34', '2025-06-09 12:18:34'),
(12, 'Keegan Williams', 'admin@gmail.com', '7896325412', 'Inactive', '324580', '2025-06-09 12:28:35', NULL, '2025-06-09 12:18:35', '2025-06-09 12:18:35'),
(13, 'Keegan Williams', 'vendor@gmail.com', '+1 (302) 826-12', 'Inactive', '689757', '2025-06-09 12:36:12', NULL, '2025-06-09 12:26:12', '2025-06-09 12:26:12'),
(14, 'Alfonso Fowler', 'text@gmail.com', '7894561236', 'Active', NULL, NULL, NULL, '2025-06-09 12:28:42', '2025-06-09 12:32:42'),
(15, 'Keegan Williams', 'sherma@gmail.com', '8259255263', 'Active', NULL, NULL, NULL, '2025-06-10 06:43:02', '2025-06-10 06:43:09'),
(16, 'Heidi Waller', 'kartik4122003@gmail.com', '3216549878', 'Active', NULL, NULL, NULL, '2025-06-10 06:45:05', '2025-06-10 06:45:12'),
(17, 'Keegan Williams', 'kartik4122003@gmail.com', '7896543659', 'Active', NULL, NULL, NULL, '2025-06-10 06:48:03', '2025-06-10 06:48:13'),
(18, 'Drake Glenn', 'bowatevajy@mailinator.com', '829506-8778', 'Active', NULL, NULL, NULL, '2025-06-10 06:50:58', '2025-06-10 06:51:08'),
(19, 'Keegan Williams', 'kartik4122003@gmail.com', '7896541236', 'Active', '123456', NULL, NULL, '2025-06-10 09:54:13', '2025-06-10 09:54:21'),
(20, 'Desiree Hicks', 'kowozavus@mailinator.com', '7894563216', 'Active', NULL, NULL, NULL, '2025-06-14 06:41:18', '2025-06-14 06:41:26'),
(21, 'Madonna Pope', 'tibypa@mailinator.com', '1236549878', 'Active', NULL, NULL, NULL, '2025-06-14 06:44:25', '2025-06-14 06:44:31'),
(22, 'Madonna Pope', 'tibypa@mailinator.com', '3698521477', 'Active', NULL, NULL, NULL, '2025-06-14 06:46:40', '2025-06-14 06:46:48'),
(23, 'Kendall Mayer', 'kajusufet@mailinator.com', '6352986532', 'Active', NULL, NULL, NULL, '2025-06-14 06:50:14', '2025-06-14 06:50:39'),
(24, 'Amela Joyner', 'ziledag@mailinator.com', '1234567890', 'Active', NULL, NULL, NULL, '2025-06-14 06:55:47', '2025-07-25 12:01:46'),
(25, 'Maya Bryant', 'tato@mailinator.com', '1236547896', 'Inactive', '157315', '2025-06-14 07:08:48', NULL, '2025-06-14 06:58:48', '2025-06-14 06:58:48'),
(26, 'Maya Bryant', 'tato@mailinator.com', '2415368597', 'Inactive', '641951', '2025-06-14 07:09:07', NULL, '2025-06-14 06:59:07', '2025-06-14 06:59:07'),
(27, 'Anne Bryant', 'ramazuson@mailinator.com', '4253698542', 'Inactive', '696570', '2025-06-14 07:11:24', NULL, '2025-06-14 07:01:24', '2025-06-14 07:01:24'),
(28, 'Freya Allen', 'dyqic@mailinator.com', '4569872536', 'Active', NULL, NULL, NULL, '2025-06-14 07:01:54', '2025-06-14 07:02:00'),
(29, 'Ulric Singleton', 'jasacusini@mailinator.com', '42536152536', 'Active', NULL, NULL, NULL, '2025-06-14 07:03:34', '2025-06-14 07:03:40'),
(30, 'Aspen Petersen', 'mesevy@mailinator.com', '14257845125', 'Active', NULL, NULL, NULL, '2025-06-14 07:07:05', '2025-06-14 07:07:11'),
(31, 'Colton Cline', 'kasitydip@mailinator.com', '9876543218', 'Active', '623829', '2025-06-26 06:25:02', NULL, '2025-06-14 07:10:28', '2025-06-26 06:15:02'),
(32, 'Jashan', 'jasha@admin.com', '9872989720', 'Inactive', '465808', '2025-06-16 20:11:36', NULL, '2025-06-16 20:01:36', '2025-06-16 20:01:36'),
(33, 'Abhishek Kumar', '7479473104k@gmail.com', '6205679891', 'Inactive', '560907', '2025-06-18 09:40:20', NULL, '2025-06-18 09:30:20', '2025-06-18 09:30:20'),
(34, 'Abhishek Kumar', '7479473104k@gmail.com', '916205679891', 'Inactive', '118860', '2025-06-18 09:42:21', NULL, '2025-06-18 09:32:21', '2025-06-18 09:32:21'),
(35, 'Illo laborum sunt co', 'jivysapu@mailinator.com', '1148608784', 'Inactive', '720447', '2025-07-01 11:13:57', NULL, '2025-07-01 11:03:57', '2025-07-01 11:03:57'),
(36, 'Eligendi repellendus', 'wipelybu@mailinator.com', '1531742396', 'Active', NULL, NULL, NULL, '2025-07-01 11:07:27', '2025-07-01 11:07:45'),
(37, 'Jashandeep Singh', 'digitaldarzee@gmail.com', '07986866160', 'Inactive', '523304', '2025-07-04 07:44:36', NULL, '2025-07-04 07:34:36', '2025-07-04 07:34:36'),
(38, 'Nostrud enim quibusd', 'sygil@mailinator.com', '1145128209', 'Inactive', '998640', '2025-07-04 08:07:05', NULL, '2025-07-04 07:57:05', '2025-07-04 07:57:05'),
(39, 'Nostrud enim quibusd', 'sygil@mailinator.com', '1145128200', 'Inactive', '270475', '2025-07-04 08:07:21', NULL, '2025-07-04 07:57:21', '2025-07-04 07:57:21'),
(40, 'Nostrud enim quibusd', 'sygil@mailinator.com', '1145128208', 'Inactive', '597257', '2025-07-04 08:07:33', NULL, '2025-07-04 07:57:33', '2025-07-04 07:57:33'),
(41, 'Jashandeep Singh', 'digitaldarzee@gmail.com', '7986866160', 'Inactive', '537509', '2025-07-04 08:16:00', NULL, '2025-07-04 08:06:00', '2025-07-04 08:06:00'),
(42, 'Jashandeep Singh', 'test@gmail.com', '1231231231', 'Active', NULL, NULL, NULL, '2025-07-04 08:07:31', '2025-07-04 08:07:44'),
(43, 'Test Mode', 'test2@gmail.com', '6205679892', 'Active', NULL, NULL, NULL, '2025-07-04 08:47:44', '2025-07-19 22:09:39'),
(44, 'Gurdeep Singh', 'jashandeep.singh02@gmail.com', '6478760716', 'Inactive', '806204', '2025-07-11 09:44:39', NULL, '2025-07-11 09:34:39', '2025-07-11 09:34:39'),
(45, 'Jashandeep', 'jashan2403@gmail.com', '8284946585', 'Inactive', '986813', '2025-07-17 08:46:06', NULL, '2025-07-17 08:36:06', '2025-07-17 08:36:06'),
(46, 'efew', 'testing@gmail.com', '7888488988', 'Inactive', '834136', '2025-07-18 09:43:55', NULL, '2025-07-18 09:33:55', '2025-07-18 09:33:55'),
(47, 'Shivam', 'asdasdas@gmail.com', '9821231231', 'Active', '584205', '2025-07-18 14:30:50', NULL, '2025-07-18 14:20:50', '2025-07-18 14:20:50'),
(48, '7888488988', 'test@gmail.com', '7888488987', 'Active', NULL, NULL, NULL, '2025-07-19 08:10:39', '2025-07-19 08:11:05');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"a458d40f-4e36-4074-a2a9-9f742182e68c\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747312084, 1747312084),
(2, 'default', '{\"uuid\":\"53199f74-15f8-4c64-ba69-450918c08962\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747382332, 1747382332),
(3, 'default', '{\"uuid\":\"b780b8de-29cf-4b54-8ded-9e70b203c334\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747383538, 1747383538),
(4, 'default', '{\"uuid\":\"7555eef8-1b2f-42d3-a201-b18a15b60473\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747383764, 1747383764),
(5, 'default', '{\"uuid\":\"5bfbb2f0-d722-4c0c-bfed-13774a90825e\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747383764, 1747383764),
(6, 'default', '{\"uuid\":\"a1d8a14b-b295-41fc-892a-5d2079ed2553\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747384108, 1747384108),
(7, 'default', '{\"uuid\":\"1f2207ae-3cd5-4c94-9dec-921be037d7ff\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747384108, 1747384108),
(8, 'default', '{\"uuid\":\"5f34659a-7572-4df6-b635-a7786e9fd989\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747384108, 1747384108),
(9, 'default', '{\"uuid\":\"ea5c977b-6fac-4573-b78b-657a41e28d2c\",\"displayName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\",\"command\":\"O:58:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Jobs\\\\PerformConversionsJob\\\":6:{s:14:\\\"\\u0000*\\u0000conversions\\\";O:52:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\ConversionCollection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:42:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Conversion\\\":11:{s:12:\\\"\\u0000*\\u0000fileNamer\\\";O:54:\\\"Spatie\\\\MediaLibrary\\\\Support\\\\FileNamer\\\\DefaultFileNamer\\\":0:{}s:28:\\\"\\u0000*\\u0000extractVideoFrameAtSecond\\\";d:0;s:16:\\\"\\u0000*\\u0000manipulations\\\";O:45:\\\"Spatie\\\\MediaLibrary\\\\Conversions\\\\Manipulations\\\":1:{s:16:\\\"\\u0000*\\u0000manipulations\\\";a:5:{s:8:\\\"optimize\\\";a:1:{i:0;O:36:\\\"Spatie\\\\ImageOptimizer\\\\OptimizerChain\\\":3:{s:13:\\\"\\u0000*\\u0000optimizers\\\";a:7:{i:0;O:42:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Jpegoptim\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m85\\\";i:1;s:7:\\\"--force\\\";i:2;s:11:\\\"--strip-all\\\";i:3;s:17:\\\"--all-progressive\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:9:\\\"jpegoptim\\\";}i:1;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Pngquant\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:7:\\\"--force\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"pngquant\\\";}i:2;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Optipng\\\":5:{s:7:\\\"options\\\";a:3:{i:0;s:3:\\\"-i0\\\";i:1;s:3:\\\"-o2\\\";i:2;s:6:\\\"-quiet\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"optipng\\\";}i:3;O:37:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Svgo\\\":5:{s:7:\\\"options\\\";a:1:{i:0;s:20:\\\"--disable=cleanupIDs\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:4:\\\"svgo\\\";}i:4;O:41:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Gifsicle\\\":5:{s:7:\\\"options\\\";a:2:{i:0;s:2:\\\"-b\\\";i:1;s:3:\\\"-O3\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:8:\\\"gifsicle\\\";}i:5;O:38:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Cwebp\\\":5:{s:7:\\\"options\\\";a:4:{i:0;s:4:\\\"-m 6\\\";i:1;s:8:\\\"-pass 10\\\";i:2;s:3:\\\"-mt\\\";i:3;s:5:\\\"-q 90\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:5:\\\"cwebp\\\";}i:6;O:40:\\\"Spatie\\\\ImageOptimizer\\\\Optimizers\\\\Avifenc\\\":6:{s:7:\\\"options\\\";a:8:{i:0;s:14:\\\"-a cq-level=23\\\";i:1;s:6:\\\"-j all\\\";i:2;s:7:\\\"--min 0\\\";i:3;s:8:\\\"--max 63\\\";i:4;s:12:\\\"--minalpha 0\\\";i:5;s:13:\\\"--maxalpha 63\\\";i:6;s:14:\\\"-a end-usage=q\\\";i:7;s:12:\\\"-a tune=ssim\\\";}s:9:\\\"imagePath\\\";s:0:\\\"\\\";s:10:\\\"binaryPath\\\";s:0:\\\"\\\";s:7:\\\"tmpPath\\\";N;s:10:\\\"binaryName\\\";s:7:\\\"avifenc\\\";s:16:\\\"decodeBinaryName\\\";s:7:\\\"avifdec\\\";}}s:9:\\\"\\u0000*\\u0000logger\\\";O:33:\\\"Spatie\\\\ImageOptimizer\\\\DummyLogger\\\":0:{}s:10:\\\"\\u0000*\\u0000timeout\\\";i:60;}}s:6:\\\"format\\\";a:1:{i:0;s:3:\\\"jpg\\\";}s:5:\\\"width\\\";a:1:{i:0;i:368;}s:6:\\\"height\\\";a:1:{i:0;i:232;}s:7:\\\"sharpen\\\";a:1:{i:0;i:10;}}}s:23:\\\"\\u0000*\\u0000performOnCollections\\\";a:0:{}s:17:\\\"\\u0000*\\u0000performOnQueue\\\";b:1;s:26:\\\"\\u0000*\\u0000keepOriginalImageFormat\\\";b:0;s:27:\\\"\\u0000*\\u0000generateResponsiveImages\\\";b:0;s:18:\\\"\\u0000*\\u0000widthCalculator\\\";N;s:24:\\\"\\u0000*\\u0000loadingAttributeValue\\\";N;s:16:\\\"\\u0000*\\u0000pdfPageNumber\\\";i:1;s:7:\\\"\\u0000*\\u0000name\\\";s:5:\\\"thumb\\\";}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:8:\\\"\\u0000*\\u0000media\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:49:\\\"Spatie\\\\MediaLibrary\\\\MediaCollections\\\\Models\\\\Media\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"\\u0000*\\u0000onlyMissing\\\";b:0;s:10:\\\"connection\\\";s:8:\\\"database\\\";s:5:\\\"queue\\\";s:0:\\\"\\\";s:11:\\\"afterCommit\\\";b:1;}\"}}', 0, NULL, 1747384109, 1747384109);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(29, 'App\\Models\\Brand', 13, 'e28da1f0-918c-4d73-99b7-4c5f5af3b563', 'main_img', 'Pre Engineered Catalogue ver 1.1-1', 'Pre-Engineered-Catalogue-ver-1.1-1.jpg', 'image/jpeg', 'media', 'media', 196606, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 00:07:49', '2025-05-23 00:07:49'),
(30, 'App\\Models\\SubCategory', 12, '040ca1c6-f924-42f7-89e2-68d327414cd6', 'main_img', 'Rinox-opportunity', 'Rinox-opportunity.jpg', 'image/jpeg', 'media', 'media', 104990, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 00:11:01', '2025-06-06 08:14:10'),
(31, 'App\\Models\\Product', 1, '349935b4-5177-4ccd-a406-4da05ad8bb41', 'main_img', '295813_15-whisper-choice-ultra-sanitary-pads-with-fresh-flower-scent-protects-from-stains-xl', '295813_15-whisper-choice-ultra-sanitary-pads-with-fresh-flower-scent-protects-from-stains-xl.webp', 'image/webp', 'media', 'media', 45246, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:04:02', '2025-06-06 08:14:10'),
(32, 'App\\Models\\Product', 2, 'f8a9a8c2-d0b9-45d9-adcb-35c2d1010bc2', 'main_img', '19b786e239944f20b46c167d0032703', '19b786e239944f20b46c167d0032703.png', 'image/avif', 'media', 'media', 65023, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:06:01', '2025-06-06 08:14:12'),
(33, 'App\\Models\\Product', 3, '1b8a06d1-6ec7-40f0-9ae4-2f626e1d82d2', 'main_img', 'Folvite-5mg-Tablet', 'Folvite-5mg-Tablet.webp', 'image/webp', 'media', 'media', 24330, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:09:12', '2025-06-06 08:14:12'),
(34, 'App\\Models\\Product', 4, 'b2a9ad0b-1518-41bd-86b9-f12779ecdf4c', 'main_img', 'Cystopurin-6- web-pillpharm', 'Cystopurin-6--web-pillpharm.webp', 'image/webp', 'media', 'media', 54318, '[]', '[]', '{\"thumb\":true}', '[]', 5, '2025-05-23 06:10:53', '2025-06-06 08:14:12'),
(35, 'App\\Models\\Product', 5, '8190d8ec-6687-4b56-8290-b3471c972d6c', 'main_img', '8ea3b9_5f8196d110e24841b4137e5c3898ef09~mv2', '8ea3b9_5f8196d110e24841b4137e5c3898ef09~mv2.png', 'image/avif', 'media', 'media', 28690, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:13:36', '2025-06-06 08:14:12'),
(36, 'App\\Models\\Product', 5, 'a0882964-9985-4338-824d-c38b63152640', 'gallery_imgs', '40323912-6_1-shelcal-500-tablets-calcium-vitamin-d3-for-bone-muscle-health', '40323912-6_1-shelcal-500-tablets-calcium-vitamin-d3-for-bone-muscle-health.webp', 'image/webp', 'media', 'media', 257216, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-05-23 06:13:37', '2025-06-06 08:14:13'),
(37, 'App\\Models\\Product', 5, '1fc2af09-c39d-4d49-a860-b5e4bedf63d8', 'gallery_imgs', '40330895_1-shelcal-shelcal-500-calciumvitamin-d3-tablet-for-bones-joints-muscles-care-supports-immunity-daily-mineral-blend', '40330895_1-shelcal-shelcal-500-calciumvitamin-d3-tablet-for-bones-joints-muscles-care-supports-immunity-daily-mineral-blend.webp', 'image/webp', 'media', 'media', 62882, '[]', '[]', '{\"thumb\":true}', '[]', 3, '2025-05-23 06:13:45', '2025-06-06 08:14:13'),
(38, 'App\\Models\\Product', 6, '62c5c9d6-4053-48f7-9abb-27852afff3e1', 'main_img', 'ce92ce6d809779d321c878da86d612ac1346446b', 'ce92ce6d809779d321c878da86d612ac1346446b.webp', 'image/webp', 'media', 'media', 82058, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:20:28', '2025-06-06 08:14:14'),
(39, 'App\\Models\\Product', 6, '5c59b0f9-8404-4d3b-bf2f-b6ff1f6bafa1', 'gallery_imgs', 'cognix-plus-tablet-15_cognix-plus-tablet-15--TM-TACR1-070460_6', 'cognix-plus-tablet-15_cognix-plus-tablet-15--TM-TACR1-070460_6.webp', 'image/webp', 'media', 'media', 432432, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-05-23 06:20:28', '2025-06-06 08:14:15'),
(40, 'App\\Models\\Product', 7, 'dd60ca7c-618c-4fc5-90b4-5b57583fb63f', 'main_img', 'Jointace-DN-tabs-Front-View_8e1142d0-f17a-4997-8fed-7ff8bcf22d14', 'Jointace-DN-tabs-Front-View_8e1142d0-f17a-4997-8fed-7ff8bcf22d14.webp', 'image/webp', 'media', 'media', 69674, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:30:01', '2025-06-06 08:14:15'),
(41, 'App\\Models\\Product', 8, 'ddebbcee-8122-4a89-817c-902dd0c86714', 'main_img', 'telma_40_mg_with_telmisartan', 'telma_40_mg_with_telmisartan.webp', 'image/webp', 'media', 'media', 16112, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:38:07', '2025-06-06 08:14:15'),
(42, 'App\\Models\\Product', 9, 'b64e1c83-8414-4828-afff-ce4a8be99d77', 'main_img', '265114_15-dabur-chyawanprash-2x-immunity', '265114_15-dabur-chyawanprash-2x-immunity.webp', 'image/webp', 'media', 'media', 170240, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:49:10', '2025-06-06 08:14:16'),
(43, 'App\\Models\\Product', 10, 'a636879f-ab8c-465c-9293-fcbe7686b4dc', 'main_img', 'Liv_52_DS_-_2000x2000_3cf40f9a-986f-41d4-babf-18059bdff19d', 'Liv_52_DS_-_2000x2000_3cf40f9a-986f-41d4-babf-18059bdff19d.webp', 'image/webp', 'media', 'media', 185418, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:54:36', '2025-06-06 08:14:16'),
(44, 'App\\Models\\Product', 11, 'ccb7a25d-99d1-4d12-9c8e-33e548407cab', 'main_img', '40205304_2-maharishi-ayurveda-organic-ashwagandha', '40205304_2-maharishi-ayurveda-organic-ashwagandha.webp', 'image/webp', 'media', 'media', 28802, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-23 06:59:29', '2025-06-06 08:14:17'),
(46, 'App\\Models\\Category', 5, '8df9b3f5-f29e-49e7-899f-75f8d514f998', 'main_img', 'image25', 'image25.avif', 'image/avif', 'media', 'media', 33383, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-31 04:09:32', '2025-05-31 04:09:33'),
(47, 'App\\Models\\SubCategory', 13, 'b4412886-c7f2-4f28-afb0-6cff6d57cfe3', 'main_img', 'image24', 'image24.avif', 'image/avif', 'media', 'media', 24428, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-31 04:10:13', '2025-05-31 04:10:13'),
(48, 'App\\Models\\Category', 6, '8c229eda-3ff6-45bf-8d5f-63aa8d8dc010', 'main_img', 'image25', 'image25.avif', 'image/avif', 'media', 'media', 33383, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-05-31 04:16:57', '2025-05-31 04:16:57'),
(50, 'App\\Models\\Category', 3, '63dc18bc-49a2-4cff-ae68-ae3c1b61816f', 'main_img', 'ayurveda', 'ayurveda.png', 'image/png', 'media', 'media', 30965, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-04 05:26:14', '2025-06-06 08:14:17'),
(54, 'App\\Models\\Product', 9, '70d971b6-e558-4278-9abe-b16199d24908', 'gallery_imgs', 'download (1)', 'download-(1).jpeg', 'image/jpeg', 'media', 'media', 15635, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-06-04 06:15:02', '2025-06-06 08:14:17'),
(55, 'App\\Models\\Product', 9, '22be4c3f-202e-4a15-9d06-df33934deb94', 'gallery_imgs', 'images', 'images.jpeg', 'image/jpeg', 'media', 'media', 15490, '[]', '[]', '{\"thumb\":true}', '[]', 3, '2025-06-04 06:15:02', '2025-06-06 08:14:17'),
(56, 'App\\Models\\Product', 9, '90cd6502-bdb9-4b0e-85bc-148f826751a3', 'gallery_imgs', 'images', 'images.png', 'image/png', 'media', 'media', 10076, '[]', '[]', '{\"thumb\":true}', '[]', 4, '2025-06-04 06:15:03', '2025-06-06 08:14:17'),
(59, 'App\\Models\\Product', 13, 'edc15b59-13cf-4e45-9995-74b282ae6252', 'main_img', 'images (1)', 'images-(1).png', 'image/png', 'media', 'media', 31820, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 09:28:30', '2025-06-06 08:14:17'),
(60, 'App\\Models\\Brand', 10, 'fececf47-13c4-4418-9a84-c113486c6f1d', 'main_img', 'logo-5', 'logo-5.png', 'image/png', 'media', 'media', 156452, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 09:50:58', '2025-06-06 08:14:18'),
(61, 'App\\Models\\Brand', 9, '2568c7b5-0f63-40ca-9683-de7c87713ba5', 'main_img', 'Dabur_Logo', 'Dabur_Logo.png', 'image/png', 'media', 'media', 187378, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 09:53:18', '2025-06-06 08:14:18'),
(62, 'App\\Models\\Brand', 8, 'a93a89eb-9528-4d99-aa2c-f0e11804b74d', 'main_img', 'Glenmark_Pharmaceuticals_logo', 'Glenmark_Pharmaceuticals_logo.png', 'image/png', 'media', 'media', 226057, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:08:38', '2025-06-06 08:14:19'),
(63, 'App\\Models\\Brand', 7, 'feadfc22-8e54-4bda-8103-e6db2e1c77a2', 'main_img', 'meyer', 'meyer.png', 'image/png', 'media', 'media', 9603, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:09:38', '2025-06-06 08:14:19'),
(65, 'App\\Models\\Brand', 5, 'adad2097-4df9-410b-be4c-738dcaf07b7d', 'main_img', 'LOGO-ELDER-NEW', 'LOGO-ELDER-NEW.png', 'image/png', 'media', 'media', 882905, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:15:54', '2025-06-06 08:14:23'),
(66, 'App\\Models\\Brand', 6, 'd5877237-9df9-4324-b422-b6ef51d8d6df', 'main_img', 'Sun-Pharma', 'Sun-Pharma.png', 'image/png', 'media', 'media', 36079, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:18:28', '2025-06-06 08:14:23'),
(67, 'App\\Models\\Brand', 4, 'a41bea61-e111-4926-bd94-5b7533a581f2', 'main_img', 'Cipla_logo', 'Cipla_logo.png', 'image/png', 'media', 'media', 19953, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:19:00', '2025-06-06 08:14:23'),
(68, 'App\\Models\\Brand', 3, '1178feaa-dffc-4c49-940d-13ffa07a8e66', 'main_img', 'Pfizer_(2021)', 'Pfizer_(2021).png', 'image/png', 'media', 'media', 43109, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:19:32', '2025-06-06 08:14:23'),
(69, 'App\\Models\\Brand', 2, '6d21f79f-ee77-46f2-a54d-e120da8aa06d', 'main_img', 'Zenith_S._A._logo', 'Zenith_S._A._logo.png', 'image/png', 'media', 'media', 42826, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:21:23', '2025-06-06 08:14:23'),
(70, 'App\\Models\\Brand', 1, '43d8feac-bf7f-4df9-a459-afa96a403f8c', 'main_img', 'P&G_logo', 'P&G_logo.png', 'image/png', 'media', 'media', 85295, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:21:55', '2025-06-06 08:14:23'),
(71, 'App\\Models\\Brand', 12, '691e46aa-9d50-41de-af7f-b630fcfc6b1f', 'main_img', 'Patanjali_Logo', 'Patanjali_Logo.png', 'image/png', 'media', 'media', 37337, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:22:39', '2025-06-06 08:14:24'),
(72, 'App\\Models\\Brand', 11, 'e93502e7-8cda-4662-aa9c-ab4d7273b585', 'main_img', 'New-Baidyanath-Logo-01_62b6ef19-a28d-4ab6-a52d-4551d04b4376-ezgif.com-webp-to-png-converter', 'New-Baidyanath-Logo-01_62b6ef19-a28d-4ab6-a52d-4551d04b4376-ezgif.com-webp-to-png-converter.png', 'image/png', 'media', 'media', 14955, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-05 10:26:32', '2025-06-06 08:14:24'),
(77, 'App\\Models\\Product', 12, '25d891fd-9ed1-4984-b5ad-b4edf996f2c1', 'main_img', '1_fc1d4e67-7ac0-4215-906e-51fca577a99d', '1_fc1d4e67-7ac0-4215-906e-51fca577a99d.webp', 'image/webp', 'media', 'media', 78506, '[]', '[]', '{\"thumb\":true}', '[]', 5, '2025-06-06 07:51:01', '2025-06-06 08:14:28'),
(78, 'App\\Models\\Product', 12, '7aec25a8-098d-4f32-8545-9678bc384f49', 'gallery_imgs', 'download-(1)', 'download-(1).webp', 'image/webp', 'media', 'media', 10070, '[]', '[]', '{\"thumb\":true}', '[]', 6, '2025-06-06 07:51:02', '2025-06-06 08:14:28'),
(79, 'App\\Models\\Product', 12, 'd74bce90-1e1d-4fe0-9f9a-d1fe9b1d94be', 'gallery_imgs', 'download-(3)', 'download-(3).webp', 'image/webp', 'media', 'media', 9308, '[]', '[]', '{\"thumb\":true}', '[]', 7, '2025-06-06 07:51:02', '2025-06-06 08:14:28'),
(80, 'App\\Models\\Product', 12, '914af438-c69d-435d-bdf1-b130eb70a346', 'gallery_imgs', 'download-(2)', 'download-(2).webp', 'image/webp', 'media', 'media', 7646, '[]', '[]', '{\"thumb\":true}', '[]', 8, '2025-06-06 07:51:02', '2025-06-06 08:14:28'),
(81, 'App\\Models\\Product', 14, 'fa911d1a-51be-4f9a-a522-7b30dffbd46c', 'main_img', '29c1a1c948694a00a4cac835234c52bb-(1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-06 08:23:30', '2025-06-06 08:23:32'),
(82, 'App\\Models\\Product', 14, 'fa9b2ada-d48a-4291-811c-0f0a7529fac0', 'gallery_imgs', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-06-06 08:23:33', '2025-06-06 08:23:34'),
(83, 'App\\Models\\Product', 14, '24e1fe87-0667-4dad-aca4-3cbf0a999a41', 'gallery_imgs', '1ff99c9665cb433aa4a8f2e12bdc9ed4', '1ff99c9665cb433aa4a8f2e12bdc9ed4.png', 'image/png', 'media', 'media', 215705, '[]', '[]', '{\"thumb\":true}', '[]', 3, '2025-06-06 08:23:34', '2025-06-06 08:23:35'),
(84, 'App\\Models\\Product', 14, 'b9896004-c1fe-42cb-9dbd-8318003bf1c5', 'gallery_imgs', '43bd6290a3c54268956caa5b4aabac9a', '43bd6290a3c54268956caa5b4aabac9a.png', 'image/png', 'media', 'media', 473908, '[]', '[]', '{\"thumb\":true}', '[]', 4, '2025-06-06 08:23:35', '2025-06-06 08:23:37'),
(85, 'App\\Models\\Product', 28, '5924b413-0d58-463f-886f-4a73081e7a6f', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'application/x-empty', 'media', 'media', 0, '[]', '[]', '[]', '[]', 1, '2025-06-06 11:49:49', '2025-06-06 11:49:49'),
(87, 'App\\Models\\Category', 1, '61079714-9b01-419b-b7e2-9ad1dd76dde9', 'main_img', 'healthcare', 'healthcare.png', 'image/png', 'media', 'media', 17034, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-07 05:34:29', '2025-06-07 05:34:29'),
(88, 'App\\Models\\Product', 30, '6fd076d8-842d-4e8a-ad37-71a31576a7e5', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'application/x-empty', 'media', 'media', 0, '[]', '[]', '[]', '[]', 1, '2025-06-07 05:35:26', '2025-06-07 05:35:26'),
(90, 'App\\Models\\Category', 2, 'fac2cc93-f1bf-4623-bfec-561df83777f1', 'main_img', 'elderly', 'elderly.png', 'image/png', 'media', 'media', 19100, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-07 05:41:03', '2025-06-07 05:41:03'),
(91, 'App\\Models\\Product', 36, '9cb185b9-102d-4b2e-879c-7f8f83c0a0fe', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'application/x-empty', 'media', 'media', 0, '[]', '[]', '[]', '[]', 1, '2025-06-07 05:55:51', '2025-06-07 05:55:51'),
(93, 'App\\Models\\Product', 43, '9b9b27ee-b35a-4993-bdb7-07e96f1d6ce2', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-07 06:27:26', '2025-06-07 06:27:26'),
(94, 'App\\Models\\Product', 14, 'ce83f4a7-91d9-484f-94e6-1802531f32e3', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'application/x-empty', 'media', 'media', 0, '[]', '[]', '[]', '[]', 1, '2025-06-07 07:36:15', '2025-06-07 07:36:15'),
(95, 'App\\Models\\Product', 15, 'df48943c-b168-4ffa-9840-541fc9eaa7e2', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'application/x-empty', 'public', 'public', 0, '[]', '[]', '[]', '[]', 1, '2025-06-07 07:39:53', '2025-06-07 07:39:53'),
(96, 'App\\Models\\Product', 16, '9f7f4065-f154-406f-9c4d-20bba1ba32eb', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'application/x-empty', 'public', 'public', 0, '[]', '[]', '[]', '[]', 1, '2025-06-07 07:40:19', '2025-06-07 07:40:19'),
(97, 'App\\Models\\Product', 17, 'a6ec5d7c-cec8-4f5a-8e44-978525a8226c', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'application/x-empty', 'media', 'media', 0, '[]', '[]', '[]', '[]', 1, '2025-06-07 07:41:48', '2025-06-07 07:41:48'),
(98, 'App\\Models\\ProductRequest', 1, '8bd3a677-2e52-4833-ad7a-4bbb04b24961', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 5, '2025-06-07 07:52:59', '2025-06-07 07:53:01'),
(99, 'App\\Models\\ProductRequest', 1, '7709b0b5-b32c-4e28-b7fe-7905a8c010a4', 'gallery_imgs', '43bd6290a3c54268956caa5b4aabac9a', '43bd6290a3c54268956caa5b4aabac9a.png', 'image/png', 'media', 'media', 473908, '[]', '[]', '{\"thumb\":true}', '[]', 6, '2025-06-07 07:53:17', '2025-06-07 07:53:19'),
(100, 'App\\Models\\ProductRequest', 1, '93bebcb9-53d3-4ea7-b701-270f7a64fa19', 'gallery_imgs', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 7, '2025-06-07 07:53:19', '2025-06-07 07:53:20'),
(101, 'App\\Models\\ProductRequest', 1, '08e57ea5-f3bb-4478-bc8c-ec2cc0bf0d5a', 'gallery_imgs', '1ff99c9665cb433aa4a8f2e12bdc9ed4', '1ff99c9665cb433aa4a8f2e12bdc9ed4.png', 'image/png', 'media', 'media', 215705, '[]', '[]', '{\"thumb\":true}', '[]', 8, '2025-06-07 07:53:20', '2025-06-07 07:53:21'),
(102, 'App\\Models\\Product', 21, '23054582-13dc-4c3f-a6a3-ae13f5993075', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 5, '2025-06-07 07:53:31', '2025-06-07 07:53:32'),
(103, 'App\\Models\\Product', 21, '2be73ef3-5834-440b-9d47-9f8c9e2ca651', 'gallery_imgs', '43bd6290a3c54268956caa5b4aabac9a', '43bd6290a3c54268956caa5b4aabac9a.png', 'image/png', 'media', 'media', 473908, '[]', '[]', '{\"thumb\":true}', '[]', 6, '2025-06-07 07:53:33', '2025-06-07 07:53:34'),
(104, 'App\\Models\\Product', 21, 'fb31c981-8fab-4656-83ae-2a3cdef23f8b', 'gallery_imgs', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 7, '2025-06-07 07:53:34', '2025-06-07 07:53:36'),
(105, 'App\\Models\\Product', 21, 'b906969a-34b2-4504-aec9-210864cb048e', 'gallery_imgs', '1ff99c9665cb433aa4a8f2e12bdc9ed4', '1ff99c9665cb433aa4a8f2e12bdc9ed4.png', 'image/png', 'media', 'media', 215705, '[]', '[]', '{\"thumb\":true}', '[]', 8, '2025-06-07 07:53:36', '2025-06-07 07:53:37'),
(106, 'App\\Models\\Product', 22, '3edb607a-e865-422a-b46b-213c4a17e5b6', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 5, '2025-06-07 07:53:56', '2025-06-07 07:53:57'),
(107, 'App\\Models\\Product', 22, '7ffda495-ef4f-4377-b6fc-79c438c9d4e0', 'gallery_imgs', '43bd6290a3c54268956caa5b4aabac9a', '43bd6290a3c54268956caa5b4aabac9a.png', 'image/png', 'media', 'media', 473908, '[]', '[]', '{\"thumb\":true}', '[]', 6, '2025-06-07 07:53:57', '2025-06-07 07:53:59'),
(108, 'App\\Models\\Product', 22, '403ea551-b6ab-4f94-ba61-309ee38f09af', 'gallery_imgs', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 7, '2025-06-07 07:53:59', '2025-06-07 07:54:01'),
(109, 'App\\Models\\Product', 22, '14fd90f1-40b0-4820-8d99-5d3d75e41af2', 'gallery_imgs', '1ff99c9665cb433aa4a8f2e12bdc9ed4', '1ff99c9665cb433aa4a8f2e12bdc9ed4.png', 'image/png', 'media', 'media', 215705, '[]', '[]', '{\"thumb\":true}', '[]', 8, '2025-06-07 07:54:01', '2025-06-07 07:54:01'),
(149, 'App\\Models\\SubCategory', 11, 'c226c9b0-fab5-40d2-8d00-7c42724c37c5', 'main_img', 'Untitled design (7)', 'Untitled-design-(7).png', 'image/png', 'media', 'media', 87003, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-09 07:43:54', '2025-06-09 07:43:54'),
(150, 'App\\Models\\ProductRequest', 2, '3a7ab69a-97bd-4a0b-a044-d568a99b42f8', 'main_img', 'k2c1ulhqynq313ghwypa (1) (1)', 'k2c1ulhqynq313ghwypa-(1)-(1).png', 'image/png', 'media', 'media', 329138, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-09 07:47:53', '2025-06-09 07:47:53'),
(151, 'App\\Models\\Product', 23, 'bd68c1db-cbf2-4965-9483-07719608e6e5', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 5, '2025-06-09 07:53:59', '2025-06-09 07:54:01'),
(152, 'App\\Models\\Product', 23, '386a51c1-405e-4233-b17d-45657a13d425', 'gallery_imgs', '43bd6290a3c54268956caa5b4aabac9a', '43bd6290a3c54268956caa5b4aabac9a.png', 'image/png', 'media', 'media', 473908, '[]', '[]', '{\"thumb\":true}', '[]', 6, '2025-06-09 07:54:01', '2025-06-09 07:54:03'),
(153, 'App\\Models\\Product', 23, '4d1e0961-0300-4c96-b260-7cdd6d452bee', 'gallery_imgs', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 7, '2025-06-09 07:54:04', '2025-06-09 07:54:05'),
(154, 'App\\Models\\Product', 23, 'f2e9ac13-9ddf-42af-8bdd-e59c3b660006', 'gallery_imgs', '1ff99c9665cb433aa4a8f2e12bdc9ed4', '1ff99c9665cb433aa4a8f2e12bdc9ed4.png', 'image/png', 'media', 'media', 215705, '[]', '[]', '{\"thumb\":true}', '[]', 8, '2025-06-09 07:54:06', '2025-06-09 07:54:06'),
(156, 'App\\Models\\Product', 25, 'da108d8b-fd8b-4781-871e-12a7d0df8542', 'main_img', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-17 05:54:21', '2025-06-17 05:54:23'),
(157, 'App\\Models\\Product', 25, '2c12584d-ed15-45a1-b8df-0b10823d3f7c', 'gallery_imgs', '1ff99c9665cb433aa4a8f2e12bdc9ed4', '1ff99c9665cb433aa4a8f2e12bdc9ed4.png', 'image/png', 'media', 'media', 215705, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-06-17 05:54:23', '2025-06-17 05:54:24'),
(158, 'App\\Models\\Product', 25, 'b55158d4-6d84-484d-961b-710d134efd13', 'gallery_imgs', '43bd6290a3c54268956caa5b4aabac9a', '43bd6290a3c54268956caa5b4aabac9a.png', 'image/png', 'media', 'media', 473908, '[]', '[]', '{\"thumb\":true}', '[]', 3, '2025-06-17 05:54:24', '2025-06-17 05:54:26'),
(159, 'App\\Models\\Product', 25, '661c37fe-08d3-4eb4-a2d8-b22f7c83c611', 'gallery_imgs', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 4, '2025-06-17 05:54:26', '2025-06-17 05:54:27'),
(162, 'App\\Models\\Product', 24, '09829269-23f2-4fb2-8852-ccf65ef6677d', 'main_img', 'k2c1ulhqynq313ghwypa (1) (1)', 'k2c1ulhqynq313ghwypa-(1)-(1).png', 'image/png', 'media', 'media', 329138, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-18 10:06:53', '2025-06-18 10:06:55'),
(163, 'App\\Models\\Category', 8, '5958cba3-78e7-4365-992b-d6e136c06aa5', 'main_img', 'dumbbell', 'dumbbell.png', 'image/png', 'media', 'media', 16350, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-19 05:47:23', '2025-06-19 05:47:25'),
(164, 'App\\Models\\Category', 7, 'b10b97a2-d04c-499a-81b4-213c5897a60f', 'main_img', 'hair-care', 'hair-care.png', 'image/png', 'media', 'media', 20375, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-19 05:48:45', '2025-06-19 05:48:45'),
(165, 'App\\Models\\Category', 9, 'c4031835-92c3-459d-912b-304abcc8bcbf', 'main_img', 'medical-team', 'medical-team.png', 'image/png', 'media', 'media', 25654, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-19 05:49:35', '2025-06-19 05:49:35'),
(166, 'App\\Models\\Category', 10, 'e4aa694a-33d4-4902-8876-a30702a280d6', 'main_img', 'ayurveda', 'ayurveda.png', 'image/png', 'media', 'media', 13832, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-19 06:11:59', '2025-06-19 06:12:00'),
(167, 'App\\Models\\Category', 11, 'fc0e957a-6d42-46bb-a9f0-490b3d256ef2', 'main_img', 'homeopathy', 'homeopathy.png', 'image/png', 'media', 'media', 22449, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-19 06:13:10', '2025-06-19 06:13:10'),
(168, 'App\\Models\\Category', 12, '27469e3b-f836-4c7f-b985-61d5ec3edd9d', 'main_img', 'first-aid-kit', 'first-aid-kit.png', 'image/png', 'media', 'media', 19320, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-19 06:14:48', '2025-06-19 06:14:48'),
(169, 'App\\Models\\SubCategory', 14, '04fcbf2b-e69d-4a2c-8409-3a5f2250c498', 'main_img', 'Screenshot 2025-06-23 115637', 'Screenshot-2025-06-23-115637.png', 'image/png', 'media', 'media', 44302, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-06-23 06:23:48', '2025-06-23 06:23:49'),
(170, 'App\\Models\\Warehouse', 4, '7d0315cb-d4f9-4d70-bc3d-7fdf69ccc66d', 'drug_license', 'k2c1ulhqynq313ghwypa (1) (1)', 'k2c1ulhqynq313ghwypa-(1)-(1).png', 'image/png', 'media', 'media', 329138, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-05 11:54:51', '2025-07-05 11:54:53'),
(171, 'App\\Models\\Warehouse', 4, '3d1f6f1b-002e-4cd4-b4aa-8a5f1c35af7b', 'gst_certificate', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-07-05 11:54:53', '2025-07-05 11:54:54'),
(172, 'App\\Models\\Warehouse', 5, '4a49e516-c209-40f9-ba1b-bac7099bc084', 'drug_license', 'k2c1ulhqynq313ghwypa (1) (1)', 'k2c1ulhqynq313ghwypa-(1)-(1).png', 'image/png', 'media', 'media', 329138, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-05 12:01:55', '2025-07-05 12:01:56'),
(173, 'App\\Models\\Warehouse', 5, 'ed8a7e46-23fa-4fbd-8919-a16b64c16010', 'gst_certificate', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-07-05 12:01:56', '2025-07-05 12:01:58'),
(174, 'App\\Models\\Warehouse', 6, '3fea0b75-e8a8-4ab4-8f0f-33539a265489', 'drug_license', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-05 12:03:39', '2025-07-05 12:03:40'),
(175, 'App\\Models\\Warehouse', 6, 'c2fe1ed9-d6f9-43e5-a200-682eab503d65', 'gst_certificate', 'Pfizer_(2021)', 'Pfizer_(2021).png', 'image/png', 'media', 'media', 43109, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-07-05 12:03:40', '2025-07-05 12:03:40'),
(176, 'App\\Models\\Warehouse', 7, '376a0e3f-a5fb-4981-a964-d048dde5b551', 'drug_license', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-05 12:05:40', '2025-07-05 12:05:41'),
(177, 'App\\Models\\Warehouse', 7, 'fbc2676a-41e3-4dd3-aca9-0811b145e90b', 'gst_certificate', 'bdlogo-500x500 (1)', 'bdlogo-500x500-(1).png', 'image/png', 'media', 'media', 60358, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-07-05 12:05:41', '2025-07-05 12:05:41'),
(178, 'App\\Models\\Warehouse', 8, '66509973-a81a-48c2-9d3e-fd9ba6d3ad02', 'drug_license', 'Dabur_Logo', 'Dabur_Logo.png', 'image/png', 'media', 'media', 187378, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-05 12:17:08', '2025-07-05 12:17:08'),
(179, 'App\\Models\\Warehouse', 8, '25f34b9e-c6e6-405b-9e02-ac5099dee1bf', 'gst_certificate', 'k2c1ulhqynq313ghwypa (1) (1)', 'k2c1ulhqynq313ghwypa-(1)-(1).png', 'image/png', 'media', 'media', 329138, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-07-05 12:17:08', '2025-07-05 12:17:09'),
(180, 'App\\Models\\Warehouse', 9, 'd7144c98-81ff-4b38-b2fb-74eb87b43aa1', 'drug_license', 'Glenmark_Pharmaceuticals_logo', 'Glenmark_Pharmaceuticals_logo.png', 'image/png', 'media', 'media', 226057, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-05 12:19:35', '2025-07-05 12:19:35'),
(181, 'App\\Models\\Warehouse', 9, 'ea58e98c-b500-4e1d-90bd-2b7415b86d10', 'gst_certificate', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-07-05 12:19:35', '2025-07-05 12:19:37'),
(182, 'App\\Models\\Warehouse', 1, 'd4d5cb77-21d1-45a6-bd16-d2482bb143ed', 'drug_license', '29c1a1c948694a00a4cac835234c52bb (1)', '29c1a1c948694a00a4cac835234c52bb-(1).png', 'image/png', 'media', 'media', 429873, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-07 05:28:26', '2025-07-07 05:28:30'),
(183, 'App\\Models\\Warehouse', 1, 'af134213-d9bf-4579-b55c-1c2d27e32785', 'gst_certificate', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '{\"thumb\":true}', '[]', 2, '2025-07-07 05:28:30', '2025-07-07 05:28:32'),
(184, 'App\\Models\\Category', 13, '39a0e117-96c9-4ea6-9c44-73379bb90c1b', 'main_img', 'dumbbell', 'dumbbell.png', 'image/png', 'media', 'media', 16350, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-07 05:29:36', '2025-07-07 05:29:36'),
(186, 'App\\Models\\User', 5, '2a648270-5329-44ff-8168-4a1aacc36e28', 'gst_certificate', 'be792a006376496c925f77d361e170a5', 'be792a006376496c925f77d361e170a5.png', 'image/png', 'media', 'media', 507362, '[]', '[]', '[]', '[]', 2, '2025-07-07 06:27:32', '2025-07-07 06:27:32'),
(187, 'App\\Models\\User', 5, '50845dcf-bc78-4d62-afd0-f73d911e02e4', 'drug_license', 'download-(1)', 'download-(1).webp', 'image/webp', 'media', 'media', 10070, '[]', '[]', '[]', '[]', 3, '2025-07-07 06:59:13', '2025-07-07 06:59:13'),
(188, 'App\\Models\\User', 6, '93d65c4c-82b4-40b4-b93c-beb518e209f7', 'drug_license', 'Primary', 'Primary.png', 'image/png', 'media', 'media', 147004, '[]', '[]', '[]', '[]', 1, '2025-07-07 09:13:15', '2025-07-07 09:13:15'),
(189, 'App\\Models\\User', 6, '8cc368a8-d78c-45eb-a358-4b1689b168fa', 'gst_certificate', 'secondary', 'secondary.png', 'image/png', 'media', 'media', 109017, '[]', '[]', '[]', '[]', 2, '2025-07-07 09:13:15', '2025-07-07 09:13:15'),
(190, 'App\\Models\\User', 7, '0e962f33-f941-4eeb-aa67-0fa16eb40d47', 'drug_license', 'secondary', 'secondary.png', 'image/png', 'media', 'media', 109017, '[]', '[]', '[]', '[]', 1, '2025-07-07 09:18:44', '2025-07-07 09:18:44'),
(191, 'App\\Models\\User', 7, 'a9581f52-4062-4388-9f95-a73ba953ae58', 'gst_certificate', 'Primary', 'Primary.png', 'image/png', 'media', 'media', 147004, '[]', '[]', '[]', '[]', 2, '2025-07-07 09:18:44', '2025-07-07 09:18:44'),
(192, 'App\\Models\\User', 4, '4b210bbb-2b97-444b-ae0a-016dbf773c45', 'drug_license', 'Primary', 'Primary.png', 'image/png', 'media', 'media', 147004, '[]', '[]', '[]', '[]', 1, '2025-07-07 09:30:18', '2025-07-07 09:30:18'),
(193, 'App\\Models\\User', 4, '079b6583-afac-44d2-868d-b0e91b88a47f', 'gst_certificate', 'secondary', 'secondary.png', 'image/png', 'media', 'media', 109017, '[]', '[]', '[]', '[]', 2, '2025-07-07 09:30:19', '2025-07-07 09:30:19'),
(194, 'App\\Models\\User', 3, '659fb169-34d7-446b-ba72-ce04585f0d6a', 'drug_license', 'Primary', 'Primary.png', 'image/png', 'media', 'media', 147004, '[]', '[]', '[]', '[]', 1, '2025-07-07 09:31:03', '2025-07-07 09:31:03'),
(195, 'App\\Models\\User', 3, 'aca0bbc3-f958-41ad-9282-e9eafd22a55d', 'gst_certificate', 'secondary', 'secondary.png', 'image/png', 'media', 'media', 109017, '[]', '[]', '[]', '[]', 2, '2025-07-07 09:31:03', '2025-07-07 09:31:03'),
(196, 'App\\Models\\User', 2, 'd98cc9c5-c0df-4d5f-9e51-41c0299f444c', 'drug_license', 'Primary', 'Primary.png', 'image/png', 'media', 'media', 147004, '[]', '[]', '[]', '[]', 1, '2025-07-07 09:32:03', '2025-07-07 09:32:03'),
(197, 'App\\Models\\User', 2, 'eb00a571-3eef-4b4c-8fe3-c683519b07df', 'gst_certificate', 'secondary', 'secondary.png', 'image/png', 'media', 'media', 109017, '[]', '[]', '[]', '[]', 2, '2025-07-07 09:32:03', '2025-07-07 09:32:03'),
(198, 'App\\Models\\User', 6, '802f1e95-620b-4769-b40e-0935324bc462', 'drug_license', 'Screenshot 2025-06-04 123931', 'Screenshot-2025-06-04-123931.png', 'image/png', 'media', 'media', 168874, '[]', '[]', '[]', '[]', 3, '2025-07-07 11:34:44', '2025-07-07 11:34:44'),
(199, 'App\\Models\\User', 6, '6b7f86a5-a2f3-4c12-a073-75a90feb8f00', 'gst_certificate', 'Screenshot 2025-05-31 115742', 'Screenshot-2025-05-31-115742.png', 'image/png', 'media', 'media', 79430, '[]', '[]', '[]', '[]', 4, '2025-07-07 11:34:44', '2025-07-07 11:34:44'),
(200, 'App\\Models\\User', 7, 'a21642a3-49ba-4b53-8ead-f90456a1cbcd', 'drug_license', '02', '02.jpg', 'image/jpeg', 'media', 'media', 43598, '[]', '[]', '[]', '[]', 3, '2025-07-18 07:12:27', '2025-07-18 07:12:27'),
(201, 'App\\Models\\User', 7, '6eea612d-0b43-4edf-bd8d-78202d553b34', 'gst_certificate', 'blog-1', 'blog-1.jpg', 'image/jpeg', 'media', 'media', 47408, '[]', '[]', '[]', '[]', 4, '2025-07-18 07:12:28', '2025-07-18 07:12:28'),
(202, 'App\\Models\\Blog', 1, '27fe20eb-05ea-48bc-81ea-b8bb6f0a9133', 'main_img', '02', '02.jpg', 'image/jpeg', 'media', 'media', 43598, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-23 07:11:26', '2025-07-23 07:11:32'),
(203, 'App\\Models\\Blog', 2, '4e0258c2-7b93-4db3-90f5-13c1327f2f14', 'main_img', '03', '03.jpg', 'image/jpeg', 'media', 'media', 43747, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-23 07:28:04', '2025-07-23 07:28:07'),
(204, 'App\\Models\\Blog', 3, 'e80bc4d8-57ed-43f6-978b-5dcb52dde417', 'main_img', 'blog-1', 'blog-1.jpg', 'image/jpeg', 'media', 'media', 47408, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2025-07-23 10:16:13', '2025-07-23 10:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(8, '2025_05_15_075554_create_categories_table', 2),
(9, '2025_05_15_080247_create_brands_table', 2),
(10, '2025_05_15_080936_create_sub_categories_table', 2),
(11, '2025_05_15_104354_create_products_table', 3),
(12, '2025_05_15_120906_create_media_table', 4),
(15, '2025_05_23_065039_create_stock_details_table', 5),
(16, '2025_05_24_075138_create_personal_access_tokens_table', 6),
(17, '2025_06_06_062844_create_product_requests_table', 7),
(18, '2025_10_01_000001_update_sale_price_in_products_table', 8),
(19, '2025_10_01_000002_update_sale_price_in_product_requests_table', 8),
(24, '2025_06_09_070749_create_customers_table', 9),
(25, '2025_06_14_060451_create_carts_table', 10),
(30, '2025_06_14_060459_create_orders_table', 11),
(31, '2025_06_14_060505_create_order_details_table', 11),
(32, '2025_06_18_060057_create_order_histories_table', 12),
(33, '2025_06_21_134234_create_addresses_table', 13),
(36, '2025_07_05_053756_create_warehouses_table', 14),
(38, '2025_07_18_100640_create_subscribe_forms_table', 15),
(39, '2025_07_18_114719_create_contact_forms_table', 16),
(40, '2025_07_23_055503_create_blogs_table', 17),
(41, '2025_07_23_102052_create_policies_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `created_by_role` varchar(255) DEFAULT NULL,
  `warehouse_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT 'Pending',
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT 'Pending',
  `sub_total` varchar(255) DEFAULT '0',
  `shipping_cost` varchar(255) DEFAULT '0',
  `total_tax_amount` varchar(255) DEFAULT '0',
  `discount` varchar(255) DEFAULT '0',
  `grand_total` varchar(255) DEFAULT '0',
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_by_id`, `created_by_role`, `warehouse_id`, `customer_id`, `address_id`, `order_no`, `name`, `email`, `phone`, `country`, `state`, `city`, `address_1`, `address_2`, `pincode`, `note`, `order_status`, `payment_method`, `payment_status`, `sub_total`, `shipping_cost`, `total_tax_amount`, `discount`, `grand_total`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '19', 'Customer', NULL, '19', NULL, 'ORD-001', 'TaShya Benson', 'fybexyzow@mailinator.com', '69', 'United States', 'Chandigarh', 'Omnis distinctio Si', '396 Hague Lane', 'Sint voluptatem si', '88', 'Voluptates tenetur e', 'Pending', 'Cash on Delivery', 'Pending', '819', '0', '59.64', '0', '0', NULL, '2025-06-16 10:47:56', '2025-06-16 10:47:56'),
(2, '19', 'Customer', NULL, '19', NULL, 'ORD-002', 'Dawn Faulkner', 'lominuten@mailinator.com', '16', 'India', 'Haryana', 'Repellendus Dolor e', '50 Hague Drive', 'Tempor veniam magna', '55', 'Voluptatibus ullamco', 'Pending', 'Cash on Delivery', 'Pending', '190', '0', '9.5', '0', '0', NULL, '2025-06-16 10:54:22', '2025-06-16 10:54:22'),
(3, '19', 'Customer', NULL, '19', NULL, 'ORD-003', 'Lila Jefferson', 'kunybigyvy@mailinator.com', '69', 'India', 'Nagaland', 'Facere et sint earu', '550 West Rocky Milton Parkway', 'Quaerat provident e', '58', 'Esse porro dolorem', 'Pending', 'paypal', 'Pending', '267', '0', '32.04', '0', '267', NULL, '2025-06-16 11:00:31', '2025-06-16 11:00:31'),
(4, '19', 'Customer', NULL, '19', NULL, 'ORD-004', 'Quinn Singleton', 'sirydixu@mailinator.com', '81', 'India', 'Uttar Pradesh', 'Ad sunt dolores illu', '577 Cowley Street', 'Culpa fuga Ipsam q', '2', 'Quod quod non nulla', 'Pending', 'Cash On Delivery', 'Pending', '267', '0', '32.04', '0', '267', NULL, '2025-06-16 11:08:33', '2025-06-16 11:08:33'),
(5, '19', 'Customer', NULL, '19', NULL, 'ORD-005', 'Cade Odom', 'jilygaw@mailinator.com', '22', 'India', 'Gujarat', 'Ipsum nihil autem ut', '31 New Freeway', 'Ipsam quis officia u', '89', 'Neque aute quis in n', 'Pending', 'paypal', 'Pending', '267', '0', '32.04', '0', '267', NULL, '2025-06-16 11:23:54', '2025-06-16 11:23:54'),
(6, '19', 'Customer', NULL, '19', NULL, 'ORD-006', 'Hollee Holcomb', 'temujiciz@mailinator.com', '62', 'India', 'West Bengal', 'Maiores ipsum tenet', '359 South Fabien Freeway', 'Est aliquid sed qua', '25', 'Est amet minim Nam', 'Pending', 'Cash On Delivery', 'Pending', '267', '0', '32.04', '0', '267', NULL, '2025-06-16 11:24:53', '2025-06-16 11:24:53'),
(7, '19', 'Customer', NULL, '19', NULL, 'ORD-007', 'Maite Welch', 'sikihujez@mailinator.com', '75', 'India', 'Goa', 'Dolorum nisi distinc', '383 White Cowley Parkway', 'Voluptas aut tempori', '61', 'Ex proident numquam', 'Pending', 'paypal', 'Pending', '267', '0', '32.04', '0', '267', NULL, '2025-06-16 11:28:34', '2025-06-16 11:28:34'),
(8, '19', 'Customer', NULL, '19', NULL, 'ORD-008', 'Montana Nieves', 'haqogigoq@mailinator.com', '68', 'India', 'Tamil Nadu', 'Illum perspiciatis', '823 East Rocky Cowley Road', 'Optio ut voluptatem', '66', 'Eiusmod sunt dolorib', 'Pending', 'Cash On Delivery', 'Pending', '267', '0', '32.04', '0', '267', NULL, '2025-06-16 11:39:26', '2025-06-16 11:39:26'),
(9, '19', 'Customer', NULL, '19', NULL, 'ORD-009', 'Denton Warren', 'lifypymyqy@mailinator.com', '75', 'India', 'Madhya Pradesh', 'Nisi beatae quod fug', '14 North Rocky Nobel Street', 'Eligendi recusandae', '62', 'Nostrum maxime offic', 'Pending', 'Cash On Delivery', 'Pending', '267', '0', '32.04', '0', '267', NULL, '2025-06-16 12:58:36', '2025-06-16 12:58:36'),
(10, '3', 'Customer', NULL, '3', NULL, 'ORD-010', 'Rhonda Rocha', 'junakiwavo@mailinator.com', '78', 'India', 'Goa', 'In animi maiores qu', '87 Hague Court', 'Odit assumenda labor', '99', 'Ex voluptas culpa te', 'Pending', 'paypal', 'Pending', '180', '0', '9', '0', '180', NULL, '2025-06-17 05:31:05', '2025-06-17 05:31:05'),
(11, '3', 'Customer', NULL, '3', NULL, 'ORD-011', 'Quynn Leon', 'xitigy@mailinator.com', '63', 'India', 'Himachal Pradesh', 'Itaque maxime volupt', '968 North Rocky Old Road', 'Est consectetur vel', '67', 'Aut cupiditate dolor', 'Pending', 'Cash On Delivery', 'Pending', '1068', '0', '128.16', '0', '1068', NULL, '2025-06-17 05:49:12', '2025-06-17 05:49:12'),
(12, '3', 'Customer', NULL, '3', NULL, 'ORD-012', 'Alden Lee', 'byfagyd@mailinator.com', '15', 'India', 'Andaman and Nicobar Islands', 'Tenetur velit aut t', '12 Cowley Street', 'Officia sunt officia', '33', 'Et vero explicabo Q', 'Delivered', 'paypal', 'Pending', '736', '0', '36.8', '0', '736', NULL, '2025-06-17 06:08:00', '2025-06-18 08:00:47'),
(13, '24', 'Customer', NULL, '24', NULL, 'ORD-013', NULL, NULL, NULL, 'India', NULL, NULL, NULL, NULL, NULL, 'bdfvsxazbfvds', 'Pending', 'Cash on Delivery', 'Pending', '184', '0', '9.2', '0', '184', NULL, '2025-06-26 10:40:19', '2025-06-26 10:40:19'),
(14, '24', 'Customer', NULL, '24', NULL, 'ORD-014', NULL, NULL, '7894561236', 'India', 'Punjab', 'Lalbagh, Ludhiana', 'VQHG+9JX, Ferozepur Rd, Aman Park', NULL, '141012', NULL, 'Pending', 'Cash on Delivery', 'Pending', '190', '0', '9.5', '0', '190', NULL, '2025-06-26 11:16:46', '2025-06-26 11:16:46'),
(15, '24', 'Customer', NULL, '24', '1', 'ORD-015', NULL, NULL, '1236549874', 'India', 'Punjab', 'Ludhiana', '1-D Aman park, New Rajguru Nagar', NULL, '141012', 'esdrftgyhj', 'Pending', 'Cash on Delivery', 'Pending', '190', '0', '9.5', '0', '190', NULL, '2025-06-26 11:48:04', '2025-06-26 11:48:04'),
(16, '24', 'Customer', NULL, '24', '1', 'ORD-016', NULL, NULL, '1236549874', 'India', 'Punjab', 'Ludhiana', '1-D Aman park, New Rajguru Nagar', NULL, '141012', NULL, 'Pending', 'Cash on Delivery', 'Pending', '140', '0', '7', '0', '140', NULL, '2025-06-26 11:48:33', '2025-06-26 11:48:33'),
(17, '24', 'Customer', NULL, '24', '1', 'ORD-017', NULL, NULL, '1236549874', 'India', 'Punjab', 'Ludhiana', '1-D Aman park, New Rajguru Nagar', NULL, '141012', NULL, 'Pending', 'Cash on Delivery', 'Pending', '550', '0', '27.5', '0', '550', NULL, '2025-06-30 10:13:34', '2025-06-30 10:13:34'),
(18, '24', 'Customer', NULL, '24', '1', 'ORD-018', NULL, NULL, '1236549874', 'India', 'Punjab', 'Ludhiana', '1-D Aman park, New Rajguru Nagar', NULL, '141012', NULL, 'Pending', 'Cash on Delivery', 'Pending', '1169', '0', '140.28', '0', '1169', NULL, '2025-07-01 06:47:12', '2025-07-01 06:47:12'),
(19, '42', 'Customer', NULL, '42', '3', 'ORD-019', 'Jashandeep Singh', NULL, '7986866160', 'India', 'Punjab', 'Ludhiana', '1222', 'asdasd', '141001', NULL, 'Pending', 'Cash On Delivery', 'Pending', '1169', '0', '140.28', '0', '1169', NULL, '2025-07-04 08:08:46', '2025-07-04 08:08:46'),
(20, '24', 'Customer', NULL, '24', '1', 'ORD-020', 'Lalit', NULL, '1236549874', 'India', 'Punjab', 'Ludhiana', '1-D Aman park, New Rajguru Nagar', NULL, '141012', 'trvefdcsa', 'Pending', 'Cash on Delivery', 'Pending', '490', '0', '24.5', '0', '490', NULL, '2025-07-07 11:27:00', '2025-07-07 11:27:00'),
(21, '24', 'Customer', NULL, '24', '1', 'ORD-021', 'Lalit', NULL, '1236549874', 'India', 'Punjab', 'Ludhiana', '1-D Aman park, New Rajguru Nagar', NULL, '141012', NULL, 'Pending', 'Cash on Delivery', 'Pending', '684', '0', '34.2', '0', '684', NULL, '2025-07-10 10:14:11', '2025-07-10 10:14:11'),
(22, '24', 'Customer', NULL, '24', '1', 'ORD-022', 'Lalit', NULL, '1236549874', 'India', 'Punjab', 'Ludhiana', '1-D Aman park, New Rajguru Nagar', NULL, '141012', NULL, 'Pending', 'Cash on Delivery', 'Pending', '184', '0', '9.2', '0', '184', NULL, '2025-07-10 10:19:52', '2025-07-10 10:19:52'),
(23, '43', 'Customer', NULL, '43', '4', 'ORD-023', 'ASDDS ASDADSS', NULL, '7428730894', 'India', 'KA', 'Mumbai', '1222', 'asdasd', '123231', 'sdadsadsads', 'Pending', 'Cash on Delivery', 'Pending', '190', '0', '9.5', '0', '190', NULL, '2025-07-11 09:24:38', '2025-07-11 09:24:38'),
(24, '24', 'Customer', NULL, '24', '1', 'ORD-024', 'Shivam Kumar', NULL, '7888488988', 'India', 'Chandigarh', 'Chandigarh', '2357/2, verka booth, Buterla, Sector 40C, Sector 41', 'Floor test', '160036', NULL, 'Pending', 'Cash on Delivery', 'Pending', '350', '0', '17.5', '0', '350', NULL, '2025-07-21 05:11:05', '2025-07-21 05:11:05'),
(25, '24', 'Customer', NULL, '24', '1', 'ORD-025', 'Shivam Kumar', NULL, '7888488988', 'India', 'Punjab', 'Ludhiana', 'VR7G+RV8, Flower Enclave Road, Guru Angad Dev Nagar, Urban Estate Dugri', 'Floor test', '141013', NULL, 'Pending', 'Cash on Delivery', 'Pending', '1169', '0', '140.28', '0', '1169', NULL, '2025-07-21 06:33:33', '2025-07-21 06:33:33'),
(26, '24', 'Customer', NULL, '24', '1', 'ORD-026', 'Shivam Kumar', NULL, '7888488988', 'India', 'Punjab', 'Ludhiana', 'VR7G+RV8, Flower Enclave Road, Guru Angad Dev Nagar, Urban Estate Dugri', 'Floor test', '141013', 'mnbvcx', 'Pending', 'Cash on Delivery', 'Pending', '330', '0', '16.5', '0', '330', NULL, '2025-07-23 05:22:46', '2025-07-23 05:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `created_by_role` varchar(255) DEFAULT NULL,
  `warehouse_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `sub_category_id` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT '0',
  `qty` varchar(255) DEFAULT '1',
  `total_amount` varchar(255) DEFAULT '0',
  `tax_rate` varchar(255) DEFAULT '0',
  `tax_amount` varchar(255) DEFAULT '0',
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `created_by_id`, `created_by_role`, `warehouse_id`, `customer_id`, `order_id`, `product_id`, `category_id`, `sub_category_id`, `brand_id`, `price`, `qty`, `total_amount`, `tax_rate`, `tax_amount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '19', 'Customer', NULL, '19', '1', '23', '3', '10', '4', '184.00', '3', '552', '5', '27.6', NULL, '2025-06-16 10:47:56', '2025-06-16 10:47:56'),
(2, '19', 'Customer', NULL, '19', '1', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 10:47:56', '2025-06-16 10:47:56'),
(3, '19', 'Customer', NULL, '19', '2', '9', '3', '9', '9', '190.00', '1', '190', '5', '9.5', NULL, '2025-06-16 10:54:22', '2025-06-16 10:54:22'),
(4, '19', 'Customer', NULL, '19', '3', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 11:00:31', '2025-06-16 11:00:31'),
(5, '19', 'Customer', NULL, '19', '4', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 11:08:33', '2025-06-16 11:08:33'),
(6, '19', 'Customer', NULL, '19', '5', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 11:23:54', '2025-06-16 11:23:54'),
(7, '19', 'Customer', NULL, '19', '6', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 11:24:53', '2025-06-16 11:24:53'),
(8, '19', 'Customer', NULL, '19', '7', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 11:28:34', '2025-06-16 11:28:34'),
(9, '19', 'Customer', NULL, '19', '8', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 11:39:26', '2025-06-16 11:39:26'),
(10, '19', 'Customer', NULL, '19', '9', '24', '2', '6', '10', '267.00', '1', '267', '12', '32.04', NULL, '2025-06-16 12:58:36', '2025-06-16 12:58:36'),
(11, '3', 'Customer', NULL, '3', '10', '4', '1', '4', '4', '180.00', '1', '180', '5', '9', NULL, '2025-06-17 05:31:05', '2025-06-17 05:31:05'),
(12, '3', 'Customer', NULL, '3', '11', '24', '2', '6', '10', '267.00', '4', '1068', '12', '128.16', NULL, '2025-06-17 05:49:12', '2025-06-17 05:49:12'),
(13, '3', 'Customer', NULL, '3', '12', '23', '3', '10', '4', '184.00', '4', '736', '5', '36.8', NULL, '2025-06-17 06:08:00', '2025-06-17 06:08:00'),
(14, '24', 'Customer', NULL, '24', '13', '23', '3', '10', '4', '184.00', '1', '184', '5', '9.2', NULL, '2025-06-26 10:40:19', '2025-06-26 10:40:19'),
(15, '24', 'Customer', NULL, '24', '14', '9', '3', '9', '9', '190.00', '1', '190', '5', '9.5', NULL, '2025-06-26 11:16:46', '2025-06-26 11:16:46'),
(16, '24', 'Customer', NULL, '24', '15', '9', '3', '9', '9', '190.00', '1', '190', '5', '9.5', NULL, '2025-06-26 11:48:04', '2025-06-26 11:48:04'),
(17, '24', 'Customer', NULL, '24', '16', '13', '3', '9', '10', '140.00', '1', '140', '5', '7', NULL, '2025-06-26 11:48:33', '2025-06-26 11:48:33'),
(18, '24', 'Customer', NULL, '24', '17', '2', '1', '2', '2', '250.00', '1', '250', '5', '12.5', NULL, '2025-06-30 10:13:34', '2025-06-30 10:13:34'),
(19, '24', 'Customer', NULL, '24', '17', '3', '1', '3', '3', '20.00', '1', '20', '5', '1', NULL, '2025-06-30 10:13:34', '2025-06-30 10:13:34'),
(20, '24', 'Customer', NULL, '24', '17', '11', '3', '11', '11', '160.00', '1', '160', '5', '8', NULL, '2025-06-30 10:13:34', '2025-06-30 10:13:34'),
(21, '24', 'Customer', NULL, '24', '17', '1', '1', '1', '1', '120.00', '1', '120', '5', '6', NULL, '2025-06-30 10:13:34', '2025-06-30 10:13:34'),
(22, '24', 'Customer', NULL, '24', '18', '25', '1', '2', '1', '1169.00', '1', '1169', '12', '140.28', NULL, '2025-07-01 06:47:12', '2025-07-01 06:47:12'),
(23, '42', 'Customer', NULL, '42', '19', '25', '1', '2', '1', '1169.00', '1', '1169', '12', '140.28', NULL, '2025-07-04 08:08:46', '2025-07-04 08:08:46'),
(24, '24', 'Customer', NULL, '24', '20', '9', '3', '9', '9', '190.00', '1', '190', '5', '9.5', NULL, '2025-07-07 11:27:00', '2025-07-07 11:27:00'),
(25, '24', 'Customer', NULL, '24', '20', '13', '3', '9', '10', '140.00', '1', '140', '5', '7', NULL, '2025-07-07 11:27:00', '2025-07-07 11:27:00'),
(26, '24', 'Customer', NULL, '24', '20', '11', '3', '11', '11', '160.00', '1', '160', '5', '8', NULL, '2025-07-07 11:27:00', '2025-07-07 11:27:00'),
(27, '24', 'Customer', NULL, '24', '21', '23', '3', '10', '4', '184.00', '1', '184', '5', '9.2', NULL, '2025-07-10 10:14:11', '2025-07-10 10:14:11'),
(28, '24', 'Customer', NULL, '24', '21', '13', '3', '9', '10', '140.00', '1', '140', '5', '7', NULL, '2025-07-10 10:14:11', '2025-07-10 10:14:11'),
(29, '24', 'Customer', NULL, '24', '21', '12', '3', '12', '9', '60.00', '1', '60', '5', '3', NULL, '2025-07-10 10:14:11', '2025-07-10 10:14:11'),
(30, '24', 'Customer', NULL, '24', '21', '11', '3', '11', '11', '160.00', '1', '160', '5', '8', NULL, '2025-07-10 10:14:11', '2025-07-10 10:14:11'),
(31, '24', 'Customer', NULL, '24', '21', '10', '3', '10', '10', '140.00', '1', '140', '5', '7', NULL, '2025-07-10 10:14:11', '2025-07-10 10:14:11'),
(32, '24', 'Customer', NULL, '24', '22', '23', '3', '10', '4', '184.00', '1', '184', '5', '9.2', NULL, '2025-07-10 10:19:52', '2025-07-10 10:19:52'),
(33, '43', 'Customer', NULL, '43', '23', '9', '3', '9', '9', '190.00', '1', '190', '5', '9.5', NULL, '2025-07-11 09:24:38', '2025-07-11 09:24:38'),
(34, '24', 'Customer', NULL, '24', '24', '11', '3', '11', '11', '160.00', '1', '160', '5', '8', NULL, '2025-07-21 05:11:05', '2025-07-21 05:11:05'),
(35, '24', 'Customer', NULL, '24', '24', '9', '3', '9', '9', '190.00', '1', '190', '5', '9.5', NULL, '2025-07-21 05:11:05', '2025-07-21 05:11:05'),
(36, '24', 'Customer', NULL, '24', '25', '25', '1', '2', '1', '1169.00', '1', '1169', '12', '140.28', NULL, '2025-07-21 06:33:33', '2025-07-21 06:33:33'),
(37, '24', 'Customer', NULL, '24', '26', '9', '3', '9', '9', '190.00', '1', '190', '5', '9.5', NULL, '2025-07-23 05:22:46', '2025-07-23 05:22:46'),
(38, '24', 'Customer', NULL, '24', '26', '10', '3', '10', '10', '140.00', '1', '140', '5', '7', NULL, '2025-07-23 05:22:46', '2025-07-23 05:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `warehouse_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_histories`
--

INSERT INTO `order_histories` (`id`, `created_by_id`, `warehouse_id`, `order_id`, `order_status`, `date`, `remarks`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '12', 'Processing', '2025-06-18 08:00:11', 'ruygcrhcfk', NULL, '2025-06-18 08:00:11', '2025-06-18 08:00:11'),
(2, '1', NULL, '12', 'Shipped', '2025-06-18 08:00:35', 'rsyfey', NULL, '2025-06-18 08:00:35', '2025-06-18 08:00:35'),
(3, '1', NULL, '12', 'Delivered', '2025-06-18 08:00:47', 'efk4 r', NULL, '2025-06-18 08:00:47', '2025-06-18 08:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token', 'da3324487bef1c4068cda6535b7e71ff02ef2c7c3be257b75158e012380b3a4e', '[\"*\"]', NULL, NULL, '2025-06-07 11:27:31', '2025-06-07 11:27:31'),
(2, 'App\\Models\\User', 1, 'API Token', '97e254be7422acb6e0072d49388b37ba97beb20f53d91555b1649e9a29293925', '[\"*\"]', NULL, NULL, '2025-06-07 11:35:31', '2025-06-07 11:35:31'),
(3, 'App\\Models\\User', 1, 'API Token', '57d6f28ab4d78010c29aaddd4a723a3e4e45f40a10a6f032fb4eb5c4672ac40f', '[\"*\"]', NULL, NULL, '2025-06-07 11:36:15', '2025-06-07 11:36:15'),
(4, 'App\\Models\\User', 1, 'API Token', '315e4b13742da44d6351b5f865bd5b09cd32d1e0686d947f2b226766f3e1e411', '[\"*\"]', NULL, NULL, '2025-06-07 11:40:39', '2025-06-07 11:40:39'),
(5, 'App\\Models\\User', 1, 'API Token', '20554059779cc97906efb3f581ac6ce5138d6beefdbf2269fd1fb1c6c9a8d7b8', '[\"*\"]', NULL, NULL, '2025-06-07 11:48:20', '2025-06-07 11:48:20'),
(6, 'App\\Models\\User', 1, 'API Token', '8e88a703e54c21eb897f6e4ecf4d9328d780d2be8613457c9d6e6d06739c7baa', '[\"*\"]', NULL, NULL, '2025-06-07 11:52:12', '2025-06-07 11:52:12'),
(7, 'App\\Models\\User', 1, 'API Token', '26e0bdc1832260a3479275c3eb8d4d7f36701377d62da295a5ce5c5ff9447b3d', '[\"*\"]', NULL, NULL, '2025-06-07 12:13:36', '2025-06-07 12:13:36'),
(8, 'App\\Models\\User', 1, 'API Token', '2b8c9e77a6206651bc8d09cb888e41ac37010c1595e332556985471213033e95', '[\"*\"]', NULL, NULL, '2025-06-07 12:13:36', '2025-06-07 12:13:36'),
(9, 'App\\Models\\Customer', 1, 'Quicl Life', '4f414dfcd8c5657352ec1b7b99fcac245f5f395685d37f5ef0f291480c97f6da', '[\"*\"]', NULL, NULL, '2025-06-09 11:42:18', '2025-06-09 11:42:18'),
(10, 'App\\Models\\Customer', 1, 'Quicl Life', 'e397826bb2979b96ba95c16993c3041bb6270754bf833190860139b7ce7feefe', '[\"*\"]', NULL, NULL, '2025-06-09 11:44:40', '2025-06-09 11:44:40'),
(11, 'App\\Models\\Customer', 4, 'Quicl Life', 'a288b3cfbe94a5d9c162f606390ac42b73deab783ecdd0a16c4de05044f3ce35', '[\"*\"]', NULL, NULL, '2025-06-09 12:02:02', '2025-06-09 12:02:02'),
(12, 'App\\Models\\Customer', 3, 'Quicl Life', '6ea8e373e4306fdcde0c97c20085576d11fd21b40e05aee5edbe936bdb59a6ef', '[\"*\"]', NULL, NULL, '2025-06-09 12:02:34', '2025-06-09 12:02:34'),
(13, 'App\\Models\\Customer', 5, 'Quicl Life', '82faa696c58f1a372b732df832fe07bac54f985b90e70df683b1e6db6b3a587b', '[\"*\"]', NULL, NULL, '2025-06-09 12:04:31', '2025-06-09 12:04:31'),
(14, 'App\\Models\\Customer', 6, 'Quicl Life', '0e815aa2b1ab01cd5b9e407df8cacf2a697f4025075e3bfbdc3d4e16f6ee3ca3', '[\"*\"]', NULL, NULL, '2025-06-09 12:11:06', '2025-06-09 12:11:06'),
(15, 'App\\Models\\Customer', 14, 'Quicl Life', 'ac5ef79e0f74526399cda722795d3b1ec562de29dd034e537bbfd68c28f9e8cc', '[\"*\"]', NULL, NULL, '2025-06-09 12:28:48', '2025-06-09 12:28:48'),
(16, 'App\\Models\\Customer', 14, 'Quicl Life', '6f195dc240545bf4e10e320dd1851d865552077a5584744e02d2ddbebb7f9355', '[\"*\"]', NULL, NULL, '2025-06-09 12:32:42', '2025-06-09 12:32:42'),
(17, 'App\\Models\\Customer', 15, 'Quicl Life', '38c03100ac633dc00be08a92f4efc4a018938845cbb283d2ce5fa5396837c7cd', '[\"*\"]', NULL, NULL, '2025-06-10 06:43:09', '2025-06-10 06:43:09'),
(18, 'App\\Models\\Customer', 16, 'Quicl Life', '0f58017a996c59ceaf0c1645b815442aa2bea33064d4d9bec4a28f7e850b2ed3', '[\"*\"]', NULL, NULL, '2025-06-10 06:45:12', '2025-06-10 06:45:12'),
(19, 'App\\Models\\Customer', 17, 'Quicl Life', '3d8d90f48985f1f69de138874f9c70c02bda8200b7f5aa2ce0866a25c5d81b1d', '[\"*\"]', NULL, NULL, '2025-06-10 06:48:13', '2025-06-10 06:48:13'),
(20, 'App\\Models\\Customer', 18, 'Quicl Life', 'c4a1157a2cef80c1a14fec247fb8c6b36075c71c578fe3f163cfa8f90fc22e63', '[\"*\"]', NULL, NULL, '2025-06-10 06:51:08', '2025-06-10 06:51:08'),
(21, 'App\\Models\\Customer', 19, 'Quicl Life', 'bd9feb9856b61ad6a41fd98e432d7803a79fce055d432a2d79dabba3f5d104ff', '[\"*\"]', NULL, NULL, '2025-06-10 09:54:21', '2025-06-10 09:54:21'),
(22, 'App\\Models\\Customer', 1, 'Quicl Life', '5ca006e2572fb3cb2811996ccf3e88b3ebbb79502199952a44724d8769f0fcf6', '[\"*\"]', '2025-06-14 07:05:02', NULL, '2025-06-14 05:19:16', '2025-06-14 07:05:02'),
(23, 'App\\Models\\Customer', 20, 'Quicl Life', '56e37a4c0585b339f179a74dc95f8961c6145ba0266b81eae4d0d35dce7c3fcd', '[\"*\"]', NULL, NULL, '2025-06-14 06:41:26', '2025-06-14 06:41:26'),
(24, 'App\\Models\\Customer', 21, 'Quicl Life', '065b6c58ee095ff331211a6fb46a1a1b3c360fab11604a1c85d17388287a4ff3', '[\"*\"]', NULL, NULL, '2025-06-14 06:44:31', '2025-06-14 06:44:31'),
(25, 'App\\Models\\Customer', 22, 'Quicl Life', '077c443695a35dbb98bebffc9e13c715d11a7d54cda3d3e6e1082c3e79f12c61', '[\"*\"]', NULL, NULL, '2025-06-14 06:46:48', '2025-06-14 06:46:48'),
(26, 'App\\Models\\Customer', 23, 'Quicl Life', '7eee45c1ec2bafcadc7ec2e6bf83afb411266bd83634f3238b94a261ba03ee6c', '[\"*\"]', NULL, NULL, '2025-06-14 06:50:39', '2025-06-14 06:50:39'),
(27, 'App\\Models\\Customer', 24, 'Quicl Life', 'f628f5638a575a7b3de3f55863257dc4b3dc23938435d6fc8395b4aec813bf47', '[\"*\"]', NULL, NULL, '2025-06-14 06:55:53', '2025-06-14 06:55:53'),
(28, 'App\\Models\\Customer', 28, 'Quicl Life', 'bbe2c9cad1b496dc7a3939b6ed8b3f5c1847cb7cec156c7333fb023d30736883', '[\"*\"]', NULL, NULL, '2025-06-14 07:02:00', '2025-06-14 07:02:00'),
(29, 'App\\Models\\Customer', 29, 'Quicl Life', '468f1b9027ed58ed6797a0a6352d0393f9ce0f51a663337286cf8a8a7c284e2f', '[\"*\"]', NULL, NULL, '2025-06-14 07:03:40', '2025-06-14 07:03:40'),
(30, 'App\\Models\\Customer', 30, 'Quicl Life', '903430bbbf248b6b165495c6043c04aae3ff79d7f3c70ab21a57f935fd2a4224', '[\"*\"]', NULL, NULL, '2025-06-14 07:07:11', '2025-06-14 07:07:11'),
(31, 'App\\Models\\Customer', 31, 'Quicl Life', 'b7ca6d5ca652f1a877ca995a32614957f864ab638f97ead51df253d4a89c51e0', '[\"*\"]', NULL, NULL, '2025-06-14 07:12:29', '2025-06-14 07:12:29'),
(32, 'App\\Models\\Customer', 1, 'Quicl Life', '7d46298ecc3de04d309dffc8ef89389e66895d35e5bb7a570518a7927e51d95b', '[\"*\"]', NULL, NULL, '2025-06-14 07:41:35', '2025-06-14 07:41:35'),
(33, 'App\\Models\\Customer', 2, 'Quicl Life', '7677ea7de83674c67332429ca37bd56668a023bd3e2a5c1df893db1e6fa03066', '[\"*\"]', NULL, NULL, '2025-06-14 07:50:19', '2025-06-14 07:50:19'),
(34, 'App\\Models\\Customer', 2, 'Quicl Life', 'c77f947e7f3cd7e9808ad215c329d0c68931efbfba347d7f9bcad3cc267ba5cc', '[\"*\"]', NULL, NULL, '2025-06-14 07:51:35', '2025-06-14 07:51:35'),
(35, 'App\\Models\\Customer', 2, 'Quicl Life', 'b5383876b97b2980f5799a839fcda0c8af9fea023c4baf06d0db30514bd34d60', '[\"*\"]', NULL, NULL, '2025-06-14 07:52:35', '2025-06-14 07:52:35'),
(36, 'App\\Models\\Customer', 2, 'Quicl Life', 'cad454e55a4cb93ad40e02ef525c56cfba3d1ce727b339c6da530d59b458c6cb', '[\"*\"]', NULL, NULL, '2025-06-14 07:54:29', '2025-06-14 07:54:29'),
(37, 'App\\Models\\Customer', 19, 'Quicl Life', 'ba700c35ef7db4ecf06a4ba50f7186b0f7c63af0e14b5163eee2e9c067168109', '[\"*\"]', NULL, NULL, '2025-06-14 07:57:13', '2025-06-14 07:57:13'),
(38, 'App\\Models\\Customer', 19, 'Quicl Life', '0751ee41cf8450d9aa0c9ec41a88542c47c4f14f7519e5d61d2fce85f0543240', '[\"*\"]', NULL, NULL, '2025-06-14 07:58:05', '2025-06-14 07:58:05'),
(39, 'App\\Models\\Customer', 19, 'Quicl Life', '691ae7e173d0e11228d5aa314a51fea53b1abce8d6ce56ee28e6d614f2afa4f1', '[\"*\"]', NULL, NULL, '2025-06-14 07:59:13', '2025-06-14 07:59:13'),
(40, 'App\\Models\\Customer', 19, 'Quicl Life', '323e1b53aff67853fe1c85d4a6d830c4f1735d5b47f7cfbb13e005fc2e7fedc3', '[\"*\"]', '2025-06-16 13:00:42', NULL, '2025-06-14 08:00:16', '2025-06-16 13:00:42'),
(41, 'App\\Models\\Customer', 3, 'Quick Life', '3e91508d3eda65c714711c5bb2364d3528720e50c619ff07fd8b5f10da861630', '[\"*\"]', '2025-06-17 06:34:11', NULL, '2025-06-16 13:01:22', '2025-06-17 06:34:11'),
(42, 'App\\Models\\Customer', 3, 'Quick Life', '2b6ce48421d0d847713b21a50c0d4c77236b3f0c9984b037d92d5c3076ba012c', '[\"*\"]', '2025-06-17 07:07:55', NULL, '2025-06-17 06:13:19', '2025-06-17 07:07:55'),
(43, 'App\\Models\\Customer', 3, 'Quick Life', '59ea659a71dc37be3ddc99fad10a991f9e9852a1aff03a28834cf888d0f291e7', '[\"*\"]', '2025-06-17 06:59:07', NULL, '2025-06-17 06:58:38', '2025-06-17 06:59:07'),
(44, 'App\\Models\\Customer', 3, 'Quick Life', '0ce8da8f1b7286df75fac594527c4fec43ba24808097ad5ae161a6fccde95c0e', '[\"*\"]', NULL, NULL, '2025-06-18 09:28:15', '2025-06-18 09:28:15'),
(45, 'App\\Models\\Customer', 3, 'Quick Life', 'abe82104b43f4ce0e29a729f6e5044bc38a0defb40e486a61585c0590c627e98', '[\"*\"]', NULL, NULL, '2025-06-18 09:57:17', '2025-06-18 09:57:17'),
(46, 'App\\Models\\Customer', 3, 'Quick Life', '4c43028ad7415fdd357f38a4075b9e00c9a441dbd7ba9aeba55977e2a767ddce', '[\"*\"]', NULL, NULL, '2025-06-18 09:58:41', '2025-06-18 09:58:41'),
(47, 'App\\Models\\Customer', 3, 'Quick Life', 'c235a7dfb8514ade5944d2be586af8ca263be95ca0644c45b87054fb944a97ed', '[\"*\"]', NULL, NULL, '2025-06-18 10:01:56', '2025-06-18 10:01:56'),
(48, 'App\\Models\\Customer', 3, 'Quick Life', '574c77b38ed40e794fb05a962f462b9e60870b29dfeec7daa4e526242c1861e1', '[\"*\"]', NULL, NULL, '2025-06-18 10:02:36', '2025-06-18 10:02:36'),
(49, 'App\\Models\\Customer', 3, 'Quick Life', '83fd99b602cd81ffc2c5514308b200dba07afbde24bdbf7118eef96765d414c6', '[\"*\"]', NULL, NULL, '2025-06-18 10:03:27', '2025-06-18 10:03:27'),
(50, 'App\\Models\\Customer', 3, 'Quick Life', '6ecd0424f725e51d711d2e2f5c539b8bd77ad925f3c5af3898d91531b18df45c', '[\"*\"]', NULL, NULL, '2025-06-18 11:32:48', '2025-06-18 11:32:48'),
(51, 'App\\Models\\Customer', 3, 'Quick Life', '5eaa147a2d350ec62a94fee764db6052a848aa973a85db7d06ad4712883d39f2', '[\"*\"]', NULL, NULL, '2025-06-18 11:35:28', '2025-06-18 11:35:28'),
(52, 'App\\Models\\Customer', 3, 'Quick Life', 'ea969c3bce7ac74f9e8b60094ed491b8002bebab011d6172d9971683d9f6c328', '[\"*\"]', NULL, NULL, '2025-06-18 11:35:42', '2025-06-18 11:35:42'),
(53, 'App\\Models\\Customer', 3, 'Quick Life', '4ee498376dc15d23585acf5f198a220f8547548026731fc6f977d2d96ebb3608', '[\"*\"]', NULL, NULL, '2025-06-18 11:35:59', '2025-06-18 11:35:59'),
(54, 'App\\Models\\Customer', 3, 'Quick Life', 'fbb7db455ca69a1cbf802251ec51a6660b209dea7f2e21b9b50d932563369267', '[\"*\"]', NULL, NULL, '2025-06-18 11:38:04', '2025-06-18 11:38:04'),
(55, 'App\\Models\\Customer', 3, 'Quick Life', 'cdaa406ca52c987b37e9c7b47568291490030c526d30ed23d03980fadae16642', '[\"*\"]', NULL, NULL, '2025-06-19 06:26:58', '2025-06-19 06:26:58'),
(56, 'App\\Models\\Customer', 3, 'Quick Life', '7ab9f42475193daea1b22dcce303aeb586ab89cc11f53902dfd3999aade51111', '[\"*\"]', NULL, NULL, '2025-06-19 06:41:47', '2025-06-19 06:41:47'),
(57, 'App\\Models\\Customer', 3, 'Quick Life', '019cc72d7e3462fbaae5b9c63db242f8e2443b97d851ae4d49bf994493b7b899', '[\"*\"]', NULL, NULL, '2025-06-19 06:42:37', '2025-06-19 06:42:37'),
(58, 'App\\Models\\Customer', 3, 'Quick Life', '59d0f15e64fe334618456f73fa93070fee27f5701ff6e3e40c9956a952295cb2', '[\"*\"]', NULL, NULL, '2025-06-19 06:46:47', '2025-06-19 06:46:47'),
(59, 'App\\Models\\Customer', 3, 'Quick Life', 'f7e80f516ae5f1664bfdd429ef945270f5c4fe879702c6783a3741de5ed1d2a1', '[\"*\"]', NULL, NULL, '2025-06-23 05:34:53', '2025-06-23 05:34:53'),
(60, 'App\\Models\\Customer', 3, 'Quick Life', '3aeafb1438e90d4bb218dfd05d7a87046320d51d007b363e7c5962ddc628e6e4', '[\"*\"]', NULL, NULL, '2025-06-23 05:35:12', '2025-06-23 05:35:12'),
(61, 'App\\Models\\Customer', 24, 'Quick Life', '8e708a74af39ce3c9d87705047dd307a41331970c59c486e258fcc35b896decd', '[\"*\"]', NULL, NULL, '2025-06-26 06:00:42', '2025-06-26 06:00:42'),
(62, 'App\\Models\\Customer', 24, 'Quick Life', 'b8e9a610b1d97dca7ee2aab34b9c682a1b7241b008d20d183eae89722773305d', '[\"*\"]', NULL, NULL, '2025-06-26 06:13:04', '2025-06-26 06:13:04'),
(63, 'App\\Models\\Customer', 24, 'Quick Life', '2aad83fe02862c3224a496bdf14bc7975366ed3c2c5d24f12cac5fb29c570a59', '[\"*\"]', NULL, NULL, '2025-06-26 06:22:14', '2025-06-26 06:22:14'),
(64, 'App\\Models\\Customer', 24, 'Quick Life', '8450fef04b28e1f7e09d7353fa6b6d8ca2fafd5e5a2df7d160bcac37430b359c', '[\"*\"]', NULL, NULL, '2025-06-26 06:56:41', '2025-06-26 06:56:41'),
(65, 'App\\Models\\Customer', 24, 'Quick Life', '8987507f73534b4f9b7076d0213cea0d007fe4953ad37353b5c14068ef0e5f11', '[\"*\"]', NULL, NULL, '2025-06-26 06:58:54', '2025-06-26 06:58:54'),
(66, 'App\\Models\\Customer', 24, 'Quick Life', '1aea99d951efe78a15c0c3c2ac5be101f5d1f19a1b9d62a6f0fd31d9afe8ac50', '[\"*\"]', NULL, NULL, '2025-06-26 07:45:29', '2025-06-26 07:45:29'),
(67, 'App\\Models\\Customer', 24, 'Quick Life', '71384b1f88cb70da57f596b70440a4b0c4bd82c75b70467201c0b57bbf0f3985', '[\"*\"]', NULL, NULL, '2025-06-26 07:46:48', '2025-06-26 07:46:48'),
(68, 'App\\Models\\Customer', 24, 'Quick Life', '4549f875a434e2ded90918f077c7ee1a51c8b770d2109f560fdc73bc97db48a7', '[\"*\"]', NULL, NULL, '2025-06-26 07:50:09', '2025-06-26 07:50:09'),
(69, 'App\\Models\\Customer', 24, 'Quick Life', 'c2ea30eea795a6ba45bac1ae6177e251336be544e598e899f79650dc20614156', '[\"*\"]', NULL, NULL, '2025-06-26 07:52:52', '2025-06-26 07:52:52'),
(70, 'App\\Models\\Customer', 24, 'Quick Life', 'fc7e0401340195046adc6562ae842ab71b8e1815f3cb4ccec4a044a1d08a4b4b', '[\"*\"]', '2025-06-26 08:06:18', NULL, '2025-06-26 07:57:39', '2025-06-26 08:06:18'),
(71, 'App\\Models\\Customer', 24, 'Quick Life', '64b1608633fd4b205ea35681ffb4e285af1dd333fa77bfa7fffe5a3ad35fb4a7', '[\"*\"]', '2025-06-26 08:14:32', NULL, '2025-06-26 08:06:31', '2025-06-26 08:14:32'),
(72, 'App\\Models\\Customer', 24, 'Quick Life', 'c462c7c34373864bde17e6a7abaf4431d7cdb4038e949dfc117ac10fed675833', '[\"*\"]', '2025-06-26 11:36:10', NULL, '2025-06-26 08:15:04', '2025-06-26 11:36:10'),
(73, 'App\\Models\\Customer', 24, 'Quick Life', '834ae883a76e4e5f2c75fbb5aeed2c7a48ad20c61529582a3a0b515d1761ec58', '[\"*\"]', '2025-06-26 11:48:41', NULL, '2025-06-26 11:47:28', '2025-06-26 11:48:41'),
(74, 'App\\Models\\Customer', 24, 'Quick Life', '6ca6e73fe72f8eac365d8fe5fa15f6c529dc19b415e617e7559b0fd51b8d8234', '[\"*\"]', NULL, NULL, '2025-06-26 11:50:56', '2025-06-26 11:50:56'),
(75, 'App\\Models\\Customer', 24, 'Quick Life', '2b34df8ec38c2d1df92ae86f7e60f03d5e410b86e5390fa18481fe6af46e9db1', '[\"*\"]', '2025-06-27 05:37:19', NULL, '2025-06-26 11:56:26', '2025-06-27 05:37:19'),
(76, 'App\\Models\\Customer', 24, 'Quick Life', 'a81eb6b2110a42f37886d6ae9c46dcb6cd5e5553d166af455d04c2f167da8bf4', '[\"*\"]', '2025-06-27 05:50:10', NULL, '2025-06-27 05:50:06', '2025-06-27 05:50:10'),
(77, 'App\\Models\\Customer', 24, 'Quick Life', '71656ea3c67da92b521124f599feb0d4e3af6571d3cf60beb2a98817a7050579', '[\"*\"]', '2025-06-27 07:04:11', NULL, '2025-06-27 05:50:54', '2025-06-27 07:04:11'),
(78, 'App\\Models\\Customer', 24, 'Quick Life', 'd3bceab6b03c619f5a8e36deca6b4fc64167bc57dc1992e77ac1bc445ee7297e', '[\"*\"]', '2025-06-30 05:23:23', NULL, '2025-06-27 07:08:06', '2025-06-30 05:23:23'),
(79, 'App\\Models\\Customer', 24, 'Quick Life', '02974d95bfe244ac9109b380841d8a09457ab5a44dac851ae2a68bad7ed23d25', '[\"*\"]', NULL, NULL, '2025-06-27 07:18:03', '2025-06-27 07:18:03'),
(80, 'App\\Models\\Customer', 24, 'Quick Life', 'ad51d85ed5605ba2a6fa4b17d1f2b2fe0249402ccb216422b9bc22bd0a0140fb', '[\"*\"]', '2025-06-27 07:19:04', NULL, '2025-06-27 07:18:54', '2025-06-27 07:19:04'),
(81, 'App\\Models\\Customer', 24, 'Quick Life', '7ff6c468c8f3348489f765a5a27ad2167100615bb41ff5b8781c09b49998da0b', '[\"*\"]', '2025-06-28 15:28:42', NULL, '2025-06-27 07:58:53', '2025-06-28 15:28:42'),
(82, 'App\\Models\\Customer', 24, 'Quick Life', '60a6adb91f79a05f2298d225855a4af989942968ad545681c6b1590f8dbe7d19', '[\"*\"]', '2025-06-27 08:26:35', NULL, '2025-06-27 08:24:37', '2025-06-27 08:26:35'),
(83, 'App\\Models\\Customer', 24, 'Quick Life', '84dc693212f6e8f1f92938b65db84d6ba0b2c0dd73e9d2d0e9d639d4f94a377b', '[\"*\"]', '2025-06-27 10:05:40', NULL, '2025-06-27 10:01:16', '2025-06-27 10:05:40'),
(84, 'App\\Models\\Customer', 24, 'Quick Life', 'e8fa0daa9bdcbc0241d9302b5451d00d848d9b6ccbb7b67f80d65cc04b413175', '[\"*\"]', '2025-06-30 10:15:30', NULL, '2025-06-30 05:49:36', '2025-06-30 10:15:30'),
(85, 'App\\Models\\Customer', 24, 'Quick Life', 'c4a338d557f494ca5ba7e423f87920579595460038b331444a6221a83d9c537e', '[\"*\"]', '2025-06-30 06:59:15', NULL, '2025-06-30 06:58:51', '2025-06-30 06:59:15'),
(86, 'App\\Models\\Customer', 24, 'Quick Life', '88a662fc29e11d69bcd9911dd6932b651c96d26e65cb05f13dc566615f91ec3d', '[\"*\"]', '2025-07-01 08:33:55', NULL, '2025-06-30 07:04:32', '2025-07-01 08:33:55'),
(87, 'App\\Models\\Customer', 24, 'Quick Life', 'dcf94c7ed037707b2cc23cf196cb95842b0920c18c5c39c2957d81310e9cc8c4', '[\"*\"]', '2025-06-30 10:18:25', NULL, '2025-06-30 10:16:11', '2025-06-30 10:18:25'),
(88, 'App\\Models\\Customer', 24, 'Quick Life', '8211edb19e205e296097536b62a789a985b6d7bd98ab5f49c16b8efd60953e1d', '[\"*\"]', '2025-06-30 10:19:44', NULL, '2025-06-30 10:19:44', '2025-06-30 10:19:44'),
(89, 'App\\Models\\Customer', 24, 'Quick Life', '31576acda361628087f5f91ba3177d562d8738479b02c7fd8935d5c0113bd7ed', '[\"*\"]', '2025-07-01 10:57:47', NULL, '2025-06-30 10:20:00', '2025-07-01 10:57:47'),
(90, 'App\\Models\\Customer', 24, 'Quick Life', 'ef14a911b1592e3b9f37165a27b859c7c611a1214d6ea0fbb4b9965667f9944f', '[\"*\"]', '2025-07-24 04:43:28', NULL, '2025-07-01 06:35:23', '2025-07-24 04:43:28'),
(91, 'App\\Models\\Customer', 24, 'Quick Life', '7fd5ca3570e98d9472da99b1d7bf53cc2f7291bdc9267f07d1c8ffe24587df3a', '[\"*\"]', '2025-07-04 09:43:37', NULL, '2025-07-01 08:34:14', '2025-07-04 09:43:37'),
(92, 'App\\Models\\Customer', 36, 'Quick Life', 'aef0c19c2a3e3c87c10b1f44f7bd9832d9614dc08f145f802734bafb0b7f33dd', '[\"*\"]', '2025-07-01 11:08:12', NULL, '2025-07-01 11:07:45', '2025-07-01 11:08:12'),
(93, 'App\\Models\\Customer', 24, 'Quick Life', '45eab7961f30ec0aed6ae798bd7f97242867509ecbb5406e3280172b242a3425', '[\"*\"]', NULL, NULL, '2025-07-03 06:15:48', '2025-07-03 06:15:48'),
(94, 'App\\Models\\Customer', 24, 'Quick Life', '708d732d2b60159cdc457a259435c2cb0f753520b6a2ee977feafab20c8f3781', '[\"*\"]', NULL, NULL, '2025-07-03 06:29:47', '2025-07-03 06:29:47'),
(95, 'App\\Models\\Customer', 24, 'Quick Life', '5a31065dd23c106555aad09779a3e34145d10b23f08934a7eb6bf848b298574c', '[\"*\"]', '2025-07-16 09:56:19', NULL, '2025-07-03 06:55:46', '2025-07-16 09:56:19'),
(96, 'App\\Models\\Customer', 24, 'Quick Life', '29fd8a5eb2f06080d224bf4f059f615b0830d91412891765215db68514b3a7e7', '[\"*\"]', '2025-07-24 05:30:31', NULL, '2025-07-04 04:55:46', '2025-07-24 05:30:31'),
(97, 'App\\Models\\Customer', 42, 'Quick Life', '439830b32d77d62f2eda88b783dd164a0ee056a619076e6bbfaae91912984ea7', '[\"*\"]', '2025-07-04 08:46:34', NULL, '2025-07-04 08:07:44', '2025-07-04 08:46:34'),
(98, 'App\\Models\\Customer', 43, 'Quick Life', 'a9a9a11876958b5ebc52a52006205b71aae7869820892e4ce9b1ed38180c028a', '[\"*\"]', NULL, NULL, '2025-07-04 08:47:51', '2025-07-04 08:47:51'),
(99, 'App\\Models\\Customer', 43, 'Quick Life', '3ab83240b0211b53b996d2e2249d51b2499ff64b8743130f8f0daba7bdca50f4', '[\"*\"]', '2025-07-04 09:46:52', NULL, '2025-07-04 09:43:57', '2025-07-04 09:46:52'),
(100, 'App\\Models\\Customer', 43, 'Quick Life', '069a1db9f312bf47f192c9805e01bae24cca2c29612770495b3d4c04b9564c79', '[\"*\"]', '2025-07-04 12:21:23', NULL, '2025-07-04 11:17:05', '2025-07-04 12:21:23'),
(101, 'App\\Models\\Customer', 43, 'Quick Life', '6eaa4d07dc3f5ca36e563337a0ddd445a4c2a5edd5846adcbc6cc26a38d21fca', '[\"*\"]', '2025-07-28 04:37:49', NULL, '2025-07-05 05:33:03', '2025-07-28 04:37:49'),
(102, 'App\\Models\\Customer', 43, 'Quick Life', '08c8248d1ded8fcc13d081d58ba73a5b4f62ceda7a3a8e0158d8cd915fa54940', '[\"*\"]', '2025-07-11 09:34:21', NULL, '2025-07-11 09:23:51', '2025-07-11 09:34:21'),
(103, 'App\\Models\\Customer', 43, 'Quick Life', '853ca6a2f8cc08b90f53dcec0468dd1b3d7f0f6fc1430b7c47bc4435333ab43b', '[\"*\"]', '2025-07-11 10:40:35', NULL, '2025-07-11 09:36:18', '2025-07-11 10:40:35'),
(104, 'App\\Models\\Customer', 43, 'Quick Life', '0f4e989ed2b6bf5de39ae0c62f1dce15d0893b184f454100e9c1cf2bd09fec92', '[\"*\"]', NULL, NULL, '2025-07-11 10:51:54', '2025-07-11 10:51:54'),
(105, 'App\\Models\\Customer', 43, 'Quick Life', 'e847602336ede50f4461d2168d6b63f16c19292ad21a820ea109b22453a790db', '[\"*\"]', '2025-07-20 11:47:06', NULL, '2025-07-11 10:55:30', '2025-07-20 11:47:06'),
(106, 'App\\Models\\Customer', 24, 'Quick Life', 'c0864067b3893fd671a6ef70a6cb333ce3d3bd504dbd763ccedc4a5e6e0095e3', '[\"*\"]', '2025-07-19 08:06:52', NULL, '2025-07-18 08:08:37', '2025-07-19 08:06:52'),
(107, 'App\\Models\\Customer', 48, 'Quick Life', '59e04392da47675d85ab12cd26f5c1634198c19421ae74c378a5ac16b2140854', '[\"*\"]', '2025-07-19 08:11:45', NULL, '2025-07-19 08:11:05', '2025-07-19 08:11:45'),
(108, 'App\\Models\\Customer', 24, 'Quick Life', 'b73eed77fbf7795f4c5b9704b491af9a9c7bd5646212faf637d36a13215697ef', '[\"*\"]', '2025-07-21 05:41:44', NULL, '2025-07-19 08:13:07', '2025-07-21 05:41:44'),
(109, 'App\\Models\\Customer', 24, 'Quick Life', '0cf9e1979ab8f6156d4c1cecc35638e9508e7b97d71b7e6a33be649b4efcd546', '[\"*\"]', '2025-07-19 11:39:33', NULL, '2025-07-19 11:39:28', '2025-07-19 11:39:33'),
(110, 'App\\Models\\Customer', 43, 'Quick Life', '9af9deb0e6541770355cde8b2fa7d7f3fac489ddc5603af7f9fa2c77f25be2a0', '[\"*\"]', NULL, NULL, '2025-07-19 22:09:39', '2025-07-19 22:09:39'),
(111, 'App\\Models\\Customer', 24, 'Quick Life', 'f02f2f2796c43d03a5b015966a1d891247a26df8d9ce0353ff98a78dc9582f95', '[\"*\"]', '2025-07-25 10:34:36', NULL, '2025-07-24 05:33:03', '2025-07-25 10:34:36'),
(112, 'App\\Models\\Customer', 24, 'Quick Life', 'e384baf904307a1e4c76182ccc8ad8d454142c0f35b1f6c7ea822e7f1e59a5b5', '[\"*\"]', NULL, NULL, '2025-07-25 12:01:10', '2025-07-25 12:01:10'),
(113, 'App\\Models\\Customer', 24, 'Quick Life', 'b781656ae81ac500daf2010c5aa021e67d93b3c7aff1bf9a00c6e5a84261d62d', '[\"*\"]', '2025-07-28 05:38:14', NULL, '2025-07-25 12:01:46', '2025-07-28 05:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `created_by_id`, `title`, `slug`, `description`, `is_featured`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'Privacy Policy', 'privacy-policy', '<h2>🔒 Privacy Policy</h2>\r\n\r\n<p>Effective Date: [Insert Date]<br />\r\nWelcome to <strong>[Your Medical Store Name]</strong>. We are committed to protecting your privacy and ensuring that your personal information is handled in a safe and responsible manner.</p>\r\n\r\n<hr />\r\n<h3>1. <strong>Information We Collect</strong></h3>\r\n\r\n<p>We may collect the following types of personal information when you use our website, app, or services:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Full name</p>\r\n	</li>\r\n	<li>\r\n	<p>Contact information (mobile number, email address, address)</p>\r\n	</li>\r\n	<li>\r\n	<p>Prescription details (if applicable)</p>\r\n	</li>\r\n	<li>\r\n	<p>Medical history (only when provided voluntarily)</p>\r\n	</li>\r\n	<li>\r\n	<p>Payment information (securely processed through third-party gateways)</p>\r\n	</li>\r\n	<li>\r\n	<p>Browsing and device data (for analytics and service improvement)</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>2. <strong>How We Use Your Information</strong></h3>\r\n\r\n<p>We use your information to:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Process your medicine orders and prescriptions</p>\r\n	</li>\r\n	<li>\r\n	<p>Deliver products to your doorstep</p>\r\n	</li>\r\n	<li>\r\n	<p>Send order confirmations, updates, and support</p>\r\n	</li>\r\n	<li>\r\n	<p>Improve user experience and website performance</p>\r\n	</li>\r\n	<li>\r\n	<p>Comply with legal and medical regulations</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We <strong>do not sell or rent</strong> your personal information to any third party.</p>\r\n\r\n<hr />\r\n<h3>3. <strong>Data Security</strong></h3>\r\n\r\n<p>Your data is stored securely and protected against unauthorized access, misuse, or disclosure. We use:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>SSL encryption</p>\r\n	</li>\r\n	<li>\r\n	<p>Secure payment gateways</p>\r\n	</li>\r\n	<li>\r\n	<p>Limited access controls for sensitive information</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>4. <strong>Cookies and Tracking</strong></h3>\r\n\r\n<p>We may use cookies or similar technologies to:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Improve your browsing experience</p>\r\n	</li>\r\n	<li>\r\n	<p>Remember your preferences</p>\r\n	</li>\r\n	<li>\r\n	<p>Analyze website traffic and usage patterns</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>You can manage cookie preferences through your browser settings.</p>\r\n\r\n<hr />\r\n<h3>5. <strong>Third-Party Services</strong></h3>\r\n\r\n<p>We may use trusted third-party services (like payment processors or delivery partners) to fulfill our services. These partners are only given the minimum data necessary and are expected to protect your information as per legal requirements.</p>\r\n\r\n<hr />\r\n<h3>6. <strong>Your Rights</strong></h3>\r\n\r\n<p>You have the right to:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Access your personal data</p>\r\n	</li>\r\n	<li>\r\n	<p>Correct inaccurate details</p>\r\n	</li>\r\n	<li>\r\n	<p>Request deletion of your information</p>\r\n	</li>\r\n	<li>\r\n	<p>Withdraw consent for marketing communication</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>To do so, please contact us at <strong>[Your Email or Phone]</strong>.</p>\r\n\r\n<hr />\r\n<h3>7. <strong>Children&rsquo;s Privacy</strong></h3>\r\n\r\n<p>Our services are intended for users above 18 years of age. We do not knowingly collect data from children under 18 without parental consent.</p>\r\n\r\n<hr />\r\n<h3>8. <strong>Changes to This Policy</strong></h3>\r\n\r\n<p>We may update this Privacy Policy from time to time. Any changes will be posted on this page with an updated date. Please review it periodically.</p>\r\n\r\n<hr />\r\n<h3>9. <strong>Contact Us</strong></h3>\r\n\r\n<p>If you have any questions or concerns about our Privacy Policy or your data, please contact us:</p>\r\n\r\n<p>📧 Email: [your-email@example.com]<br />\r\n📞 Phone: [your phone number]<br />\r\n📍 Address: [your physical store address]</p>\r\n\r\n<hr />\r\n<p><strong>By using our website or placing an order, you agree to this Privacy Policy.</strong></p>', 0, 1, NULL, '2025-07-23 11:44:38', '2025-07-23 11:44:38'),
(2, '1', 'Terms & Conditions', 'terms-conditions', '<p><strong>Effective Date:</strong> [Insert Date]<br />\r\nWelcome to <strong>[Your Medical Store Name]</strong>. By accessing our website, mobile app, or placing an order, you agree to comply with and be bound by the following terms and conditions. Please read them carefully.</p>\r\n\r\n<hr />\r\n<h3>1. <strong>General Terms</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>These terms apply to all users of our services including website visitors, customers, and delivery users.</p>\r\n	</li>\r\n	<li>\r\n	<p>We reserve the right to modify these terms at any time. Updated terms will be posted on this page.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>2. <strong>Eligibility</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>You must be at least 18 years old to use our services.</p>\r\n	</li>\r\n	<li>\r\n	<p>If you are ordering prescription medicines, you must provide a valid prescription issued by a licensed doctor.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>3. <strong>Product Information</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>We make every effort to display accurate information, prices, and availability of products.</p>\r\n	</li>\r\n	<li>\r\n	<p>Product images may vary slightly from actual items.</p>\r\n	</li>\r\n	<li>\r\n	<p>All medicines are sourced from <strong>verified suppliers and licensed distributors</strong>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>4. <strong>Prescription Medicines</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Prescription drugs will only be dispensed against a valid prescription.</p>\r\n	</li>\r\n	<li>\r\n	<p>We may refuse or cancel your order if a valid prescription is not uploaded or verified.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>5. <strong>Pricing &amp; Payment</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>All prices are listed in INR (₹) and inclusive of applicable taxes unless otherwise mentioned.</p>\r\n	</li>\r\n	<li>\r\n	<p>We accept online payments via secure gateways (Credit/Debit Card, UPI, Wallets, Net Banking).</p>\r\n	</li>\r\n	<li>\r\n	<p>Cash on Delivery (COD) may be available in select locations.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>6. <strong>Order &amp; Delivery</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Orders will be confirmed via SMS/Email/WhatsApp after successful placement.</p>\r\n	</li>\r\n	<li>\r\n	<p>Delivery time may vary based on location and product availability.</p>\r\n	</li>\r\n	<li>\r\n	<p>We are not responsible for delays caused by courier services or events beyond our control.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>7. <strong>Returns &amp; Refunds</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Non-returnable items:</strong> Opened medicine strips, temperature-sensitive items, and medical devices unless damaged.</p>\r\n	</li>\r\n	<li>\r\n	<p>If you receive a wrong or damaged item, please report within <strong>48 hours</strong> of delivery.</p>\r\n	</li>\r\n	<li>\r\n	<p>Refunds (if applicable) will be processed within <strong>5-7 business days</strong> after verification.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>8. <strong>User Responsibilities</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Do not misuse the website/app or provide false information.</p>\r\n	</li>\r\n	<li>\r\n	<p>You agree not to copy, modify, or distribute our content or services without permission.</p>\r\n	</li>\r\n	<li>\r\n	<p>You are responsible for maintaining the confidentiality of your account and password.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>9. <strong>Limitation of Liability</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>We are not liable for any direct or indirect damages arising from the use of our platform or products.</p>\r\n	</li>\r\n	<li>\r\n	<p>Always consult a licensed medical professional before using any medicine.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>10. <strong>Governing Law</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>These Terms are governed by the laws of <strong>India</strong>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Any disputes shall be subject to the jurisdiction of courts located in <strong>[Your City/State]</strong>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>11. <strong>Contact Us</strong></h3>\r\n\r\n<p>For questions or clarifications regarding our Terms &amp; Conditions, feel free to reach out:</p>\r\n\r\n<p>📧 Email: [your-email@example.com]<br />\r\n📞 Phone: [your phone number]<br />\r\n📍 Address: [your store address]</p>\r\n\r\n<hr />\r\n<p>By using our services, you acknowledge that you have read, understood, and agreed to these Terms &amp; Conditions.</p>', 0, 1, NULL, '2025-07-23 11:47:07', '2025-07-23 11:47:07'),
(3, '1', 'Refund Policy', 'refund-policy', '<h2>💸 Refund Policy</h2>\r\n\r\n<p><strong>Effective Date:</strong> [Insert Date]<br />\r\nAt <strong>[Your Medical Store Name]</strong>, we are committed to ensuring your satisfaction. If your order is incorrect, damaged, or incomplete, you may be eligible for a refund as per the policy below.</p>\r\n\r\n<hr />\r\n<h3>✅ Refund Eligibility</h3>\r\n\r\n<p>Refunds will be issued only in the following cases:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>You received a <strong>wrong product</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>The product was <strong>damaged or expired</strong> at the time of delivery</p>\r\n	</li>\r\n	<li>\r\n	<p>Items are <strong>missing</strong> from your order</p>\r\n	</li>\r\n	<li>\r\n	<p>Order was <strong>cancelled before dispatch</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>📅 Refund requests must be made within <strong>48 hours</strong> of receiving the order. Requests made after this period may not be accepted.</p>\r\n\r\n<hr />\r\n<h3>🚫 Non-Refundable Conditions</h3>\r\n\r\n<p>Refunds will <strong>not be provided</strong> for:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Opened or partially used medicines</p>\r\n	</li>\r\n	<li>\r\n	<p>Items returned without original packaging or invoice</p>\r\n	</li>\r\n	<li>\r\n	<p>Temperature-sensitive or refrigerated medicines</p>\r\n	</li>\r\n	<li>\r\n	<p>Personal hygiene and medical equipment (unless damaged on arrival)</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>💳 Refund Method &amp; Timeline</h3>\r\n\r\n<p>If your refund request is approved:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>For <strong>online payments (UPI, Net Banking, Credit/Debit Card)</strong>: Refunds will be processed within <strong>5&ndash;7 business days</strong>.</p>\r\n	</li>\r\n	<li>\r\n	<p>For <strong>Cash on Delivery (COD)</strong> orders: Refunds will be issued via <strong>UPI or bank transfer</strong>, as per your preference, after confirmation.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Note: Refund timelines depend on your bank/payment provider.</p>\r\n\r\n<hr />\r\n<h3>📞 How to Request a Refund</h3>\r\n\r\n<p>To initiate a refund, please contact us with:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Your <strong>Order ID</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>Reason for refund</p>\r\n	</li>\r\n	<li>\r\n	<p>Supporting details (such as photos, if applicable)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>📧 Email: [your-email@example.com]<br />\r\n📞 Phone: [your phone number]<br />\r\n📱 WhatsApp: [your WhatsApp number (if any)]</p>\r\n\r\n<hr />\r\n<h3>ℹ️ Important</h3>\r\n\r\n<p>All refunds are subject to verification and approval. We reserve the right to decline a refund if the claim is invalid or the product is found to be tampered with.</p>', 0, 1, NULL, '2025-07-23 11:55:24', '2025-07-23 11:55:24'),
(4, '1', 'Shipping Policy', 'shipping-policy', '<h2>🚚 Shipping Policy</h2>\r\n\r\n<p><strong>Effective Date:</strong> [Insert Date]</p>\r\n\r\n<p>At <strong>[Your Medical Store Name]</strong>, we are committed to delivering your medicines and healthcare products quickly, safely, and reliably. Please read our shipping policy carefully to understand how your order will be processed and delivered.</p>\r\n\r\n<hr />\r\n<h3>📦 Order Processing Time</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>All confirmed orders are processed <strong>within 24 hours</strong> (excluding Sundays and public holidays).</p>\r\n	</li>\r\n	<li>\r\n	<p>Orders placed after [e.g., 6:00 PM] will be processed the next working day.</p>\r\n	</li>\r\n	<li>\r\n	<p>Prescription orders are processed only after <strong>valid prescription verification</strong>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>🚛 Delivery Time</h3>\r\n\r\n<p>We offer delivery in [insert your service areas &mdash; e.g., &quot;selected locations in India&quot; or &quot;within [City Name] only&quot;].</p>\r\n\r\n<p>Estimated delivery time:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Same-day or next-day delivery</strong> within local areas</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>2&ndash;5 business days</strong> for outstation deliveries (if applicable)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>Note: Delivery time may vary due to product availability, order volume, or unforeseen delays.</em></p>\r\n\r\n<hr />\r\n<h3>📍 Delivery Areas</h3>\r\n\r\n<p>We currently deliver to:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>[City/Area 1]</p>\r\n	</li>\r\n	<li>\r\n	<p>[City/Area 2]</p>\r\n	</li>\r\n	<li>\r\n	<p>[Add more if needed]</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Please check with our team to confirm if we deliver to your location.</p>\r\n\r\n<hr />\r\n<h3>💰 Shipping Charges</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Free delivery</strong> on orders above ₹[amount]</p>\r\n	</li>\r\n	<li>\r\n	<p>For orders below ₹[amount], a nominal delivery fee of ₹[amount] may apply</p>\r\n	</li>\r\n	<li>\r\n	<p>Urgent deliveries (express shipping) may incur additional charges (if available)</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>📜 Prescription-Based Medicines</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Orders containing prescription medicines will only be processed <strong>after prescription verification</strong>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Please upload a valid doctor&rsquo;s prescription while placing your order.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>📦 Order Tracking &amp; Support</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>You will receive order confirmation via SMS/WhatsApp/Email after placing the order.</p>\r\n	</li>\r\n	<li>\r\n	<p>For delivery updates or questions, contact us at:</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>📞 Phone: [Your Phone Number]<br />\r\n📧 Email: [Your Email]<br />\r\n📱 WhatsApp: [Your WhatsApp (if any)]</p>\r\n\r\n<hr />\r\n<h3>❗ Delays &amp; Exceptions</h3>\r\n\r\n<p>While we strive for timely delivery, we are not responsible for delays caused by:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Natural disasters, strikes, or lockdowns</p>\r\n	</li>\r\n	<li>\r\n	<p>Courier partner delays</p>\r\n	</li>\r\n	<li>\r\n	<p>Incomplete address or incorrect contact details</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Please ensure your delivery address and phone number are accurate at the time of ordering.</p>\r\n\r\n<hr />\r\n<h3>🤝 Need Help?</h3>\r\n\r\n<p>For any queries related to shipping or delivery, feel free to reach out to our customer support team.</p>\r\n\r\n<hr />\r\n<p><strong>Your health, delivered with care.</strong><br />\r\nWe appreciate your trust in <strong>[Your Medical Store Name]</strong>.</p>', 0, 1, NULL, '2025-07-23 11:56:07', '2025-07-23 11:56:07'),
(5, '1', 'Return Policy', 'return-policy', '<h2>🔄 Return Policy</h2>\r\n\r\n<p><strong>Effective Date:</strong> [Insert Date]<br />\r\nAt <strong>[Your Medical Store Name]</strong>, we aim to deliver quality healthcare products. However, if you&#39;re not completely satisfied with your purchase, we offer returns under specific conditions mentioned below.</p>\r\n\r\n<hr />\r\n<h3>✅ Return Eligibility</h3>\r\n\r\n<p>You can request a return only in the following cases:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Wrong item delivered</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Damaged or defective product</strong> received</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Expired product</strong> received</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Missing item(s)</strong> in the order</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>⏳ <strong>Return Window:</strong> Return requests must be made within <strong>48 hours</strong> of receiving the product. Requests beyond this period may not be accepted.</p>\r\n\r\n<hr />\r\n<h3>🚫 Non-Returnable Items</h3>\r\n\r\n<p>The following items <strong>cannot be returned</strong> due to safety and hygiene reasons:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Opened or used medicine strips/bottles</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Temperature-sensitive</strong> items (e.g., insulin, vaccines)</p>\r\n	</li>\r\n	<li>\r\n	<p>Personal hygiene products (e.g., razors, diapers, sanitary items)</p>\r\n	</li>\r\n	<li>\r\n	<p>Medical devices or equipment once the seal is broken</p>\r\n	</li>\r\n	<li>\r\n	<p>Products without original packaging and invoice</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>🔁 Return Process</h3>\r\n\r\n<p>To request a return, contact us via:</p>\r\n\r\n<p>📧 Email: [your-email@example.com]<br />\r\n📞 Phone: [your phone number]<br />\r\n📱 WhatsApp: [your WhatsApp number, if any]</p>\r\n\r\n<p>Please provide:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Order ID</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>Reason for return</p>\r\n	</li>\r\n	<li>\r\n	<p>Photo(s) of the product (if applicable)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Our team will review the request and confirm the return eligibility.</p>\r\n\r\n<hr />\r\n<h3>📦 Product Pickup / Return</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>If eligible, we may arrange a pickup from your location (if available).</p>\r\n	</li>\r\n	<li>\r\n	<p>In other cases, you may be required to return the product to our store address.</p>\r\n	</li>\r\n	<li>\r\n	<p>The product must be in <strong>unused, original condition with all packaging intact</strong>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>💰 Refund or Replacement</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>After inspection, if your return is approved, we&rsquo;ll offer a <strong>replacement</strong> or <strong>refund</strong> as per your preference.</p>\r\n	</li>\r\n	<li>\r\n	<p>Refunds will be processed within <strong>5&ndash;7 business days</strong> to the original payment method or via UPI/bank transfer for COD orders.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>❗ Important Notes</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Return approval is at the sole discretion of our quality team.</p>\r\n	</li>\r\n	<li>\r\n	<p>We reserve the right to refuse returns that do not meet the conditions above.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>🤝 Need Help?</h3>\r\n\r\n<p>For any questions or support, feel free to reach out:</p>\r\n\r\n<p>📞 Phone: [your number]<br />\r\n📧 Email: [your email]<br />\r\n📍 Store Address: [your location]</p>\r\n\r\n<hr />\r\n<p><strong>Your health and satisfaction are our priority.</strong><br />\r\nThank you for choosing <strong>[Your Medical Store Name]</strong>.</p>', 0, 1, NULL, '2025-07-23 11:56:51', '2025-07-23 11:56:51'),
(6, '1', 'Cancellation Policy', 'cancellation-policy', '<h2>❌ Cancellation Policy</h2>\r\n\r\n<p><strong>Effective Date:</strong> [Insert Date]<br />\r\nAt <strong>[Your Medical Store Name]</strong>, we understand that sometimes plans change. That&rsquo;s why we offer an easy cancellation process under specific conditions.</p>\r\n\r\n<hr />\r\n<h3>🕒 Order Cancellation &ndash; Before Dispatch</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>You can cancel your order <strong>before it is dispatched</strong> from our store/warehouse.</p>\r\n	</li>\r\n	<li>\r\n	<p>To cancel, please contact us immediately via phone, WhatsApp, or email with your <strong>Order ID</strong>.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the order has not been packed or shipped yet, it will be cancelled and a <strong>full refund</strong> will be initiated.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>📦 Cancellation &ndash; After Dispatch</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>If your order has already been dispatched or is out for delivery, it <strong>cannot be cancelled</strong>.</p>\r\n	</li>\r\n	<li>\r\n	<p>In such cases, you may choose to reject the delivery upon arrival. Refund (if eligible) will be processed after the product is returned and verified.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>🚫 Non-Cancellable Products</h3>\r\n\r\n<p>Certain items <strong>cannot be cancelled</strong> once the order is placed:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Prescription-based medicines</strong> (once verified and packed)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cold chain products</strong> (e.g., insulin, vaccines)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personal hygiene or medical devices</strong> with broken seal</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>💰 Refund After Cancellation</h3>\r\n\r\n<p>If payment was made online:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Refund will be processed within <strong>5&ndash;7 business days</strong> to the original payment method.</p>\r\n	</li>\r\n	<li>\r\n	<p>For COD orders, no charges will be applied if the order is cancelled before dispatch.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>📞 How to Cancel</h3>\r\n\r\n<p>To cancel your order, contact our customer support with:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Order ID</p>\r\n	</li>\r\n	<li>\r\n	<p>Reason for cancellation</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>📞 Phone: [Your Phone Number]<br />\r\n📧 Email: [Your Email Address]<br />\r\n📱 WhatsApp: [If applicable]</p>\r\n\r\n<hr />\r\n<h3>ℹ️ Important Notes</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Orders can only be cancelled during working hours: [Insert working hours, e.g., 9 AM to 7 PM]</p>\r\n	</li>\r\n	<li>\r\n	<p>We reserve the right to cancel any order due to stock issues, invalid prescriptions, or delivery limitations. Customers will be notified in such cases and refunded in full.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><strong>We value your time and trust.</strong><br />\r\nThank you for choosing <strong>[Your Medical Store Name]</strong>. For any questions, feel free to reach out to our support team.</p>', 0, 1, NULL, '2025-07-23 11:58:06', '2025-07-23 11:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `sub_category_id` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `prescription_required` varchar(255) DEFAULT 'No',
  `mrp_price` varchar(255) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `tax_rate` varchar(255) DEFAULT '5',
  `use_case` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_by_id`, `brand_id`, `category_id`, `sub_category_id`, `code`, `name`, `slug`, `unit`, `qty`, `prescription_required`, `mrp_price`, `sale_price`, `tax_rate`, `use_case`, `description`, `is_featured`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '1', 'P-001', 'Whisper Ultra XL', 'whisper-ultra-xl', 'Pack', '15 pads', 'No', '150', 120.00, '5', 'Period protection', '<p>Sanitary napkins with gel lock technology.</p>', '1', '1', NULL, '2025-05-15 06:57:00', '2025-06-17 10:55:20'),
(2, '1', '2', '1', '2', 'P-002', 'Myo-Inositol Tablets', 'myo-inositol-tablets', 'Strip', '10 tabs', 'Yes', '300', 250.00, '5', 'Helps manage PCOS symptoms and hormonal balance.', '<p>Helps manage PCOS symptoms and hormonal balance.</p>', '1', '1', NULL, '2025-05-15 06:57:42', '2025-06-17 10:55:15'),
(3, '1', '3', '1', '3', 'P-003', 'Folvite Tablets', 'folvite-tablets', 'Strip', '10 tabs', 'Yes', '30', 20.00, '5', 'PCOS, Hormonal balance', '<p>Folic acid supplement essential during early pregnancy.</p>', '1', '1', NULL, '2025-05-15 06:58:04', '2025-06-17 10:55:10'),
(4, '1', '4', '1', '4', 'P-004', 'Cystopurin Sachets', 'cystopurin-sachets', 'Box', '10 pcs', 'No', '200', 180.00, '5', 'UTI relief', '<p>Cranberry and potassium citrate combo for UTI symptoms.<br />\r\n&nbsp;</p>', '1', '1', NULL, '2025-05-15 07:01:10', '2025-06-17 10:55:05'),
(5, '1', '5', '2', '5', 'P-005', 'Shelcal 500', 'shelcal-500', 'Strip', '15 tabs', 'No', '100', 80.00, '5', 'Bone health, Osteoporosis', '<p>Calcium + Vitamin D3 for stronger bones.</p>', '1', '1', NULL, '2025-05-15 07:01:54', '2025-06-17 10:54:55'),
(6, '1', '6', '2', '6', 'P-006', 'Cognix Plus', 'cognix-plus', 'Strip', '10 tabs', 'Yes', '250', 240.00, '5', 'Cognitive support', '<p>Improves memory and brain function in elderly.</p>', '1', '1', NULL, '2025-05-15 07:02:21', '2025-06-17 10:54:42'),
(7, '1', '7', '2', '7', 'P-007', 'Jointace DN', 'jointace-dn', 'Strip', '15 tabs', 'No', '180', 170.00, '5', 'Joint health', '<p>Glucosamine + Omega 3 combo for joint mobility.<br />\r\n&nbsp;</p>', '1', '1', NULL, '2025-05-23 06:30:01', '2025-06-17 10:54:17'),
(8, '1', '8', '2', '8', 'P-008', 'Telma 40', 'telma-40', 'Strip', '15 tabs', 'Yes', '145', 120.00, '5', 'Hypertension', '<p>Telmisartan for blood pressure control.<br />\r\n&nbsp;</p>', '1', '1', NULL, '2025-05-23 06:38:07', '2025-06-17 10:53:50'),
(9, '1', '9', '3', '9', 'P-009', 'Dabur Chyawanprash', 'dabur-chyawanprash', 'Jar', '500g', 'No', '200', 190.00, '5', 'General wellness, Immunity', '<p>Amla-based herbal paste to strengthen immunity.<br />\r\n&nbsp;</p>', '1', '1', NULL, '2025-05-23 06:49:10', '2025-06-17 10:53:43'),
(10, '1', '10', '3', '10', 'P-010', 'Liv 52', 'liv-52', 'Bottle', '100 tabs', 'No', '150', 140.00, '5', 'Liver health', '<p>Herbal supplement for liver function and digestion.<br />\r\n&nbsp;</p>', '1', '1', NULL, '2025-05-23 06:54:36', '2025-06-17 10:53:37'),
(11, '1', '11', '3', '11', 'P-011', 'Ashwagandha Tablets', 'ashwagandha-tablets', 'Bottle', '60 tabs', 'No', '180', 160.00, '5', 'Stress relief, Immunity boost', '<p>Ayurvedic adaptogen for stress, anxiety, and stamina.</p>', '1', '1', NULL, '2025-05-23 06:59:29', '2025-06-17 10:53:31'),
(12, '1', '9', '3', '12', 'P-012', 'Triphala Churna', 'triphala-churna', 'Pouch', '100g', 'No', '75', 60.00, '5', 'Constipation, Detox', '<p>Herbal powder for digestion and detoxification.</p>', '1', '1', NULL, '2025-05-23 07:03:23', '2025-06-18 06:45:49'),
(13, '1', '10', '3', '9', 'P-013', 'Shilajit Capsules', 'shilajit-capsules', '2', '10', 'Yes', '160.00', 140.00, '5', 'Inclusive of all taxes. Shipping calculated at checkout.', '<p>ADDITIONAL INFORMATION</p>\r\n\r\n<p>- Natural phytomineral complex<br />\r\n- Contains &ge;60% Fulvic Acid<br />\r\n- 100% Pure Himalayan Shilajit<br />\r\n- Green Extraction Technology<br />\r\n- Purified through the traditional Agnitapi method<br />\r\n<br />\r\nDirections for Use:<br />\r\n<br />\r\nTake 1&ndash;2 capsules twice daily with milk or water, or as directed by your doctor.</p>', '1', '1', NULL, '2025-06-05 09:28:30', '2025-06-17 07:17:36'),
(23, '1', '4', '3', '10', 'P-023', 'Cipla Kids Nutramide Syrup Mixed Fruit', 'cipla-kids-nutramide-syrup-mixed-fruit', 'Syrup', '200ml', 'No', '220', 184.00, '5', 'Has anti-inflammatory, anti-bacterial, and immunomodulatory effects\r\nProvides key nutrients to the body\r\nStrengthens immunity', '<h2>Information about Cipla Kids Nutramide Syrup Mixed Fruit</h2>\r\n\r\n<p><strong>Cipla Kids Nutramide Syrup Mixed Fruit</strong>&nbsp;is a combination of key nutrients that help strengthen the immune system. It helps with several immune deficiency disorders.<br />\r\n<br />\r\n<strong>Key Ingredients:</strong></p>\r\n\r\n<ul>\r\n	<li>Ascorbic acid</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Colocalciferol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dexpanthenol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Inositol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lysine hydrochloride</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Manganese sulfate</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Nicotinamide</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Retinol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Vitamin E acetate</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Zinc sulfate</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Key Benefits:</strong></p>\r\n\r\n<ul>\r\n	<li>Has anti-inflammatory, anti-bacterial, and immunomodulatory effects</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Provides key nutrients to the body</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Strengthens immunity</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Directions For Use:</strong><br />\r\nTake 5 ml for children between 7-9 years of age.<br />\r\n<br />\r\n<strong>Safety Instructions:</strong></p>\r\n\r\n<ul>\r\n	<li>Read the label carefully before use</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Store in a cool dry place away from direct sunlight</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Keep out of reach of the children</li>\r\n</ul>', '1', '1', NULL, '2025-06-07 08:16:36', '2025-06-17 07:17:30'),
(24, '3', '10', '2', '6', 'P-024', 'Himalaya Wellness Pure Herbs Vasaka Respiratory Wellness Tablet', 'himalaya-wellness-pure-herbs-vasaka-respiratory-wellness-tablet', 'Bottle', '60 tablets', 'No', '275', 267.00, '12', 'Supports respiratory wellness\r\nEases congestion and coughing\r\nMay be beneficial for a wide range of respiratory conditions', '<h2>Information about Himalaya Wellness Pure Herbs Vasaka Respiratory Wellness Tablet</h2>\r\n\r\n<p><strong>Himalaya Wellness Pure Herbs Vasaka Respiratory Wellness Tablet</strong>&nbsp;is made from pure herb extract of Vasaka, also known as Malabar Nut or Adhatoda zeylanica. This herbal formulation is beneficial in managing respiratory ailments and works particularly as an expectorant. The leaves, flowers, fruits, and roots of Vasaka may provide relief from cold, cough, and whooping cough. With anti-inflammatory, antitussive, and bronchodilatory actions, these capsules may ease congestion and coughing by helping loosen and thin mucus in the airways.<br />\r\n<br />\r\n<strong>Key Ingredients:</strong></p>\r\n\r\n<ul>\r\n	<li>Vasaka (Adhatoda zeylanica)</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Key Benefits:</strong></p>\r\n\r\n<ul>\r\n	<li>May relief from cold, cough, and whooping cough</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>May help with loosening and thinning mucus for those with bronchitis</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Contains anti-inflammatory and antitussive properties</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>May ease congestion and coughing</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>May support overall respiratory function and improve lung health</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Indications:</strong><br />\r\nRespiratory health<br />\r\n<br />\r\n<strong>Product Form:</strong><br />\r\nTablet<br />\r\n<br />\r\n<strong>Directions for Use:</strong><br />\r\nTake one Vasaka Tablet twice a day or as directed by a healthcare provider.<br />\r\n<br />\r\n<strong>Safety Information:</strong></p>\r\n\r\n<ul>\r\n	<li>Store in a cool, dry place, away from direct sunlight</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Keep out of reach of children</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Use under medical supervision</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Do not exceed the recommended dosage</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>If pregnant or nursing, consult a healthcare provider before use</li>\r\n</ul>', '1', '1', NULL, '2025-06-09 07:54:16', '2025-06-18 10:06:53'),
(25, '1', '1', '1', '2', 'P-025', 'Dr. Morepen Marine Skin Protein with Hyaluronic Acid, Vitamin C & Biotin | Chocolate', 'dr-morepen-marine-skin-protein-with-hyaluronic-acid-vitamin-c-biotin-chocolate', 'Powder', '250 gm', 'No', '1799', 1169.00, '12', 'Dr. Morepen Limited', '<p>Product highlights</p>\r\n\r\n<ul>\r\n	<li>This offers 1.5x faster absorption than other collagen builders</li>\r\n	<li>Supports hair, nail, and skin health in women</li>\r\n	<li>Improves lean muscle mass&nbsp; &nbsp;</li>\r\n	<li>Light on the gut and easily digestible</li>\r\n</ul>', '1', '1', NULL, '2025-06-17 05:54:21', '2025-06-17 07:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_requests`
--

CREATE TABLE `product_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `warehouse_id` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `sub_category_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `prescription_required` varchar(255) DEFAULT 'No',
  `mrp_price` varchar(255) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `use_case` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_remarks` text DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_requests`
--

INSERT INTO `product_requests` (`id`, `created_by_id`, `warehouse_id`, `brand_id`, `category_id`, `sub_category_id`, `product_id`, `code`, `name`, `slug`, `unit`, `qty`, `prescription_required`, `mrp_price`, `sale_price`, `use_case`, `description`, `status`, `status_remarks`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '4', '3', '10', '23', 'PR-001', 'Cipla Kids Nutramide Syrup Mixed Fruit', 'cipla-kids-nutramide-syrup-mixed-fruit', 'Syrup', '200ml', 'No', '220', 184.00, 'Has anti-inflammatory, anti-bacterial, and immunomodulatory effects\r\nProvides key nutrients to the body\r\nStrengthens immunity', '<h2>Information about Cipla Kids Nutramide Syrup Mixed Fruit</h2>\r\n\r\n<p><strong>Cipla Kids Nutramide Syrup Mixed Fruit</strong>&nbsp;is a combination of key nutrients that help strengthen the immune system. It helps with several immune deficiency disorders.<br />\r\n<br />\r\n<strong>Key Ingredients:</strong></p>\r\n\r\n<ul>\r\n	<li>Ascorbic acid</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Colocalciferol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dexpanthenol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Inositol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lysine hydrochloride</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Manganese sulfate</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Nicotinamide</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Retinol</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Vitamin E acetate</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Zinc sulfate</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Key Benefits:</strong></p>\r\n\r\n<ul>\r\n	<li>Has anti-inflammatory, anti-bacterial, and immunomodulatory effects</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Provides key nutrients to the body</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Strengthens immunity</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Directions For Use:</strong><br />\r\nTake 5 ml for children between 7-9 years of age.<br />\r\n<br />\r\n<strong>Safety Instructions:</strong></p>\r\n\r\n<ul>\r\n	<li>Read the label carefully before use</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Store in a cool dry place away from direct sunlight</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Keep out of reach of the children</li>\r\n</ul>', 'Approved', 'xcvds', NULL, '2025-06-06 07:15:17', '2025-06-09 07:49:19'),
(2, '3', '3', '10', '2', '6', '24', 'PR-002', 'Himalaya Wellness Pure Herbs Vasaka Respiratory Wellness Tablet', 'himalaya-wellness-pure-herbs-vasaka-respiratory-wellness-tablet', 'Bottle', '60 tablets', 'No', '275', 267.00, 'Supports respiratory wellness\r\nEases congestion and coughing\r\nMay be beneficial for a wide range of respiratory conditions', '<h2>Information about Himalaya Wellness Pure Herbs Vasaka Respiratory Wellness Tablet</h2>\r\n\r\n<p><strong>Himalaya Wellness Pure Herbs Vasaka Respiratory Wellness Tablet</strong>&nbsp;is made from pure herb extract of Vasaka, also known as Malabar Nut or Adhatoda zeylanica. This herbal formulation is beneficial in managing respiratory ailments and works particularly as an expectorant. The leaves, flowers, fruits, and roots of Vasaka may provide relief from cold, cough, and whooping cough. With anti-inflammatory, antitussive, and bronchodilatory actions, these capsules may ease congestion and coughing by helping loosen and thin mucus in the airways.<br />\r\n<br />\r\n<strong>Key Ingredients:</strong></p>\r\n\r\n<ul>\r\n	<li>Vasaka (Adhatoda zeylanica)</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Key Benefits:</strong></p>\r\n\r\n<ul>\r\n	<li>May relief from cold, cough, and whooping cough</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>May help with loosening and thinning mucus for those with bronchitis</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Contains anti-inflammatory and antitussive properties</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>May ease congestion and coughing</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>May support overall respiratory function and improve lung health</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Indications:</strong><br />\r\nRespiratory health<br />\r\n<br />\r\n<strong>Product Form:</strong><br />\r\nTablet<br />\r\n<br />\r\n<strong>Directions for Use:</strong><br />\r\nTake one Vasaka Tablet twice a day or as directed by a healthcare provider.<br />\r\n<br />\r\n<strong>Safety Information:</strong></p>\r\n\r\n<ul>\r\n	<li>Store in a cool, dry place, away from direct sunlight</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Keep out of reach of children</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Use under medical supervision</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Do not exceed the recommended dosage</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>If pregnant or nursing, consult a healthcare provider before use</li>\r\n</ul>', 'Approved', NULL, NULL, '2025-06-09 07:47:53', '2025-06-09 07:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ddeadfGLvki9a3Aw295acop4PnB1uNe0mD13aTvS', NULL, '20.171.207.3', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2VlZHlGN0VXRHI1RG5aYlQzTm9zWXdjNlF2UDV4cVNZWFBNYzVrayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vcXVpY2stbGlmZS1sYXJhdmVsLnNvZnR3YXJlZGFyemVlLmNvbS9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6NTU6Imh0dHBzOi8vcXVpY2stbGlmZS1sYXJhdmVsLnNvZnR3YXJlZGFyemVlLmNvbS9kYXNoYm9hcmQiO319', 1753669004),
('E5a7AMahyaQPhB6TP4kW0Iz55gaqH9cLCPEnck8P', NULL, '101.0.50.181', '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXBFa2RaamVPSWVTR0lOeldyOXpYRmZCSHFFY0JCcEtmUmxJYTlSUCI7czo1OiJlcnJvciI7TjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MTp7aTowO3M6NToiZXJyb3IiO319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vcXVpY2stbGlmZS1sYXJhdmVsLnNvZnR3YXJlZGFyemVlLmNvbSI7fX0=', 1753618173),
('HDUVTQvAfKraRaimB14B9YzK6fYnAA4kOWBAGVIP', 1, '2401:4900:81fe:1f23:5c5d:dfff:fe25:8cd1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXJ2TVpHMlhLUXBsT2lTV0pLQW5UaW8yaGgxSDRoa2piVkE5NVRrWSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1MToiaHR0cHM6Ly9xdWljay1saWZlLWxhcmF2ZWwuc29mdHdhcmVkYXJ6ZWUuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753633117),
('ixE7I2RpAUQ14sab8Didb4oUQEToVDof9YgLoFe6', NULL, '2a02:4780:11:c0de::e', 'Go-http-client/2.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY09PbVJQWnMxajZhMm14Y2I4SXZxbDZTcjdUVXhKWGpNYW1nazdybCI7czo1OiJlcnJvciI7TjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MTp7aTowO3M6NToiZXJyb3IiO319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vcXVpY2stbGlmZS1sYXJhdmVsLnNvZnR3YXJlZGFyemVlLmNvbSI7fX0=', 1753607673),
('vGVHVbugewDqzZyAj3W66L2WxmFjDewcWcRV2HTS', 1, '2401:4900:a062:3081:4cdd:e7ff:fe26:8aa0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMVNUR3dpRWExOEt5VDV0R2czcUoxNVA1YWRHZWFaOTlWN2U3WUI1RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vcXVpY2stbGlmZS1sYXJhdmVsLnNvZnR3YXJlZGFyemVlLmNvbS9hZG1pbi9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NTM2MDUyMjE7fX0=', 1753605328),
('xB4s54N74H60AXcC56l9dltzy0E51ikiezfMVsFi', NULL, '122.173.27.82', '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaElKZnRWOXlJMVhuUmI4dEFaY2Jtb3V2dlVZeHNmWkdGS1pJNVNLNyI7czo1OiJlcnJvciI7TjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MTp7aTowO3M6NToiZXJyb3IiO319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vcXVpY2stbGlmZS1sYXJhdmVsLnNvZnR3YXJlZGFyemVlLmNvbSI7fX0=', 1753676452);

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE `stock_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `warehouse_id` varchar(255) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `sub_category_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `in_out` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`id`, `created_by_id`, `warehouse_id`, `brand_id`, `category_id`, `sub_category_id`, `product_id`, `qty`, `in_out`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '12', '2', '5', '4', '2', 'In', NULL, '2025-05-23 02:13:15', '2025-05-23 05:10:02'),
(2, '2', '2', '9', '3', '9', '2', '5', 'In', NULL, '2025-05-23 02:20:13', '2025-05-23 05:10:00'),
(3, '2', '2', '9', '3', '9', '2', '2', 'Out', NULL, '2025-05-23 02:26:51', '2025-05-23 05:09:58'),
(4, '2', '2', '12', '2', '5', '4', '10', 'In', NULL, '2025-05-23 05:14:32', '2025-05-23 05:14:32'),
(5, '2', '2', '12', '2', '5', '4', '2', 'Out', NULL, '2025-05-23 05:16:31', '2025-05-23 05:16:31'),
(6, '1', '3', '9', '3', '9', '1', '10', 'In', NULL, '2025-05-23 05:21:59', '2025-05-23 05:21:59'),
(7, '1', '2', '1', '1', '1', '1', '10', 'In', NULL, '2025-05-30 06:51:41', '2025-05-30 06:51:41'),
(8, '1', '2', '10', '2', '6', '24', '10', 'Out', NULL, '2025-06-14 09:47:29', '2025-06-14 09:47:29'),
(9, '7', '7', '1', '1', '1', '1', '20', 'In', '2025-07-18 09:20:26', '2025-07-18 07:39:41', '2025-07-18 09:20:26'),
(10, '7', '7', '2', '1', '2', '2', '20', 'In', NULL, '2025-07-18 07:39:58', '2025-07-18 07:39:58'),
(11, '7', '7', '3', '1', '3', '3', '20', 'In', NULL, '2025-07-18 07:40:02', '2025-07-18 07:40:02'),
(12, '7', '7', '4', '1', '4', '4', '20', 'In', NULL, '2025-07-18 07:40:06', '2025-07-18 07:40:06'),
(13, '7', '7', '5', '2', '5', '5', '20', 'In', NULL, '2025-07-18 07:40:10', '2025-07-18 07:40:10'),
(14, '7', '7', '6', '2', '6', '6', '20', 'In', NULL, '2025-07-18 07:40:14', '2025-07-18 07:40:14'),
(15, '7', '7', '7', '2', '7', '7', '30', 'In', NULL, '2025-07-18 07:40:19', '2025-07-18 07:40:19'),
(16, '7', '7', '8', '2', '8', '8', '50', 'In', NULL, '2025-07-18 07:40:23', '2025-07-18 07:40:23'),
(17, '7', '7', '11', '3', '11', '11', '30', 'In', NULL, '2025-07-18 07:40:27', '2025-07-18 07:40:27'),
(18, '7', '7', '10', '3', '10', '10', '30', 'In', NULL, '2025-07-18 07:40:31', '2025-07-18 07:40:31'),
(19, '7', '7', '11', '3', '11', '11', '30', 'In', NULL, '2025-07-18 07:40:36', '2025-07-18 07:40:36'),
(20, '7', '7', '9', '3', '12', '12', '50', 'In', NULL, '2025-07-18 07:40:39', '2025-07-18 07:40:39'),
(21, '7', '7', '10', '3', '9', '13', '50', 'In', NULL, '2025-07-18 07:40:44', '2025-07-18 07:40:44'),
(22, '7', '7', '4', '3', '10', '23', '50', 'In', NULL, '2025-07-18 07:40:48', '2025-07-18 07:40:48'),
(23, '7', '7', '10', '2', '6', '24', '50', 'In', '2025-07-23 05:19:36', '2025-07-18 07:40:51', '2025-07-23 05:19:36'),
(24, '7', '7', '1', '1', '2', '25', '70', 'In', '2025-07-23 05:19:12', '2025-07-18 07:40:55', '2025-07-23 05:19:12'),
(25, '7', '7', '5', '2', '5', '5', '70', 'In', NULL, '2025-07-18 07:41:08', '2025-07-18 07:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_forms`
--

CREATE TABLE `subscribe_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_forms`
--

INSERT INTO `subscribe_forms` (`id`, `email`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'abc@gmail.com', '1', NULL, '2025-07-18 10:32:37', '2025-07-18 10:32:37'),
(2, 'testing@gmail.com', '1', NULL, '2025-07-18 10:46:09', '2025-07-18 10:46:09'),
(3, 'tona@mailinator.com', '1', NULL, '2025-07-18 12:04:21', '2025-07-18 12:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `created_by_id`, `category_id`, `name`, `slug`, `is_featured`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Menstrual Care', 'menstrual-care', '0', '1', NULL, '2025-05-15 04:22:57', '2025-05-15 04:22:57'),
(2, '1', '1', 'PCOS Management', 'pcos-management', '0', '1', NULL, '2025-05-15 04:23:54', '2025-05-15 04:23:54'),
(3, '1', '1', 'Prenatal Vitamins', 'prenatal-vitamins', '1', '1', NULL, '2025-05-15 04:24:01', '2025-06-17 07:17:16'),
(4, '1', '1', 'UTI Treatment', 'uti-treatment', '1', '1', NULL, '2025-05-15 04:24:08', '2025-06-17 07:17:13'),
(5, '1', '2', 'Bone Health', 'bone-health', '0', '1', NULL, '2025-05-15 04:28:38', '2025-05-15 04:28:38'),
(6, '1', '2', 'Memory Support', 'memory-support', '0', '1', NULL, '2025-05-15 04:28:42', '2025-05-15 04:28:42'),
(7, '1', '2', 'Joint Care', 'joint-care', '1', '1', NULL, '2025-05-15 04:28:46', '2025-06-17 07:17:09'),
(8, '1', '2', 'Blood Pressure', 'blood-pressure', '1', '1', NULL, '2025-05-15 04:28:52', '2025-06-17 07:17:05'),
(9, '1', '3', 'Immunity Booster', 'immunity-booster', '1', '1', NULL, '2025-05-15 04:29:00', '2025-06-23 06:15:21'),
(10, '1', '3', 'Liver Support', 'liver-support', '1', '1', NULL, '2025-05-15 04:29:05', '2025-06-17 07:16:56'),
(11, '1', '3', 'Stress Relief', 'stress-relief', '1', '1', NULL, '2025-05-15 04:29:09', '2025-06-17 07:04:40'),
(12, '1', '3', 'Digestive Health', 'digestive-health', '1', '1', NULL, '2025-05-15 04:29:14', '2025-06-17 07:04:36'),
(13, '1', '5', 'comp comp', 'comp-comp', '0', '1', '2025-05-31 04:11:52', '2025-05-31 04:10:13', '2025-05-31 04:11:52'),
(14, '1', '1', 'Minimalist 18% Hair Growth Actives Hair Serum | Boosts Hair Growth and Improves Hair Thickness | Hair Care', 'minimalist-18-hair-growth-actives-hair-serum-boosts-hair-growth-and-improves-hair-thickness-hair-care', '1', '1', '2025-06-23 06:42:08', '2025-06-23 06:23:47', '2025-06-23 06:42:08'),
(15, '1', '9', 'Test', 'test', '1', '1', NULL, '2025-07-04 07:50:48', '2025-07-04 07:55:53'),
(16, '1', '13', 'Top Picks - Fitness Supplements', 'top-picks-fitness-supplements', '0', '1', NULL, '2025-07-07 05:34:02', '2025-07-07 05:34:02'),
(17, '1', '13', 'Knee Support', 'knee-support', '0', '1', NULL, '2025-07-07 05:34:19', '2025-07-07 05:34:19'),
(18, '1', '13', 'Whey Protein', 'whey-protein', '0', '1', NULL, '2025-07-07 05:34:26', '2025-07-07 05:34:26'),
(19, '1', '13', 'Smart Watches & Rings', 'smart-watches-rings', '0', '1', NULL, '2025-07-07 05:34:43', '2025-07-07 05:34:43'),
(20, '1', '13', 'MuscleBlaze', 'muscleblaze', '0', '1', NULL, '2025-07-07 05:35:03', '2025-07-07 05:35:03'),
(21, '1', '13', 'Arm & Elbow , Support Weighing , Scales Fat Burners', 'arm-elbow-support-weighing-scales-fat-burners', '0', '1', '2025-07-07 05:42:14', '2025-07-07 05:42:09', '2025-07-07 05:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `show_password` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `role_as` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `status_remarks` text DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_by_id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `show_password`, `owner_name`, `address`, `city`, `state`, `pincode`, `license_number`, `gst_number`, `role_as`, `status`, `status_remarks`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '0', 'Admin', '1234567890', 'admin@gmail.com', '2025-05-15 02:05:39', '$2y$12$pkWWvkYZFKly.K.TL57yW.jyORbbQ7wJQOlguslMfpev8geicboZa', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin', '1', NULL, NULL, 'PVuuE8NMHfJcQwn9FLxMMLs7TE9leXjZVW8vdQfpmYGs62ka0EymstfNy5aq', '2025-05-15 02:05:39', '2025-05-15 02:05:39'),
(2, '1', 'Warehouse 1', '9876543210', 'warehouse1@gmail.com', '2025-05-23 00:34:48', '$2y$12$y3OUTBfqjSUktdpinPUnneCI99/KHapW4iYPg5aRFTdmxSLas8YqG', 'warehouse1@gmail.com', 'warehouse1', 'Temp Address', 'Temp City', 'Temp State', 'Temp Pincode', 'Temp Drug License Number', 'Temp GST Number', 'Warehouse', '1', NULL, NULL, NULL, '2025-05-23 00:34:47', '2025-07-07 09:32:03'),
(3, '1', 'Warehouse 2', '9876543210', 'warehouse2@gmail.com', '2025-05-23 00:49:24', '$2y$12$eW1dL.33U59JYrpfwRgzoeHtqknyEqaumZAb8ojDySLpIAtnI0RsS', 'warehouse2@gmail.com', 'warehouse2', 'Temp Address', 'Temp City', 'Temp State', 'Temp Pincode', 'Drug License Number', 'GST Number', 'Warehouse', '1', NULL, NULL, NULL, '2025-05-23 00:49:24', '2025-07-07 09:31:03'),
(4, '1', 'Warehouse 3', '9876543210', 'warehouse3@gmail.com', '2025-05-23 00:50:38', '$2y$12$aR6ZfuMFRfO7trPeggWCAuc3DnOQNcRftHr7crrlUnM8bKG0G38Yy', 'warehouse3@gmail.com', 'warehouse3', 'Temp Address', 'Temp Address', 'Temp Address', '876541', 'Temp Drug License Number', 'Temp GST Number', 'Warehouse', '1', NULL, NULL, NULL, '2025-05-23 00:50:38', '2025-07-07 09:30:18'),
(5, '1', 'Mannix Soto', '+1 (259) 713-3204', 'siwibe3129@dxirl.com', '2025-05-23 00:50:38', '$2y$12$KlO3T47TV4qLr69Bq1r5mOWM28/CAbQv/wNOLkP66cG7sBHvsIAX6', '+1 (259) 713-3204', 'Dai Weber', 'Adipisicing delenitidfd fgf', 'Sit et nisi aut dese', 'Ea consectetur magn', 'Aut quia aliquid atq', '89', '483', 'Warehouse', '-1', 'Any Reason', NULL, NULL, '2025-07-07 06:27:30', '2025-07-07 08:28:02'),
(6, '0', 'Street Number 4, Opp Saluja Karyana Store, Indrapuri, Tajpur Road', '+919914382227', 'info@kgrsconsultants.com', '2025-07-07 11:34:40', '$2y$12$h27MPAFwMCtIcDb0U8xQ4e/z8dv7VkLjDrmLhqG29U1ah2Vt5eeqm', '+919914382227', 'Abhishek Kumar', NULL, 'Ludhiana', 'Punjab', '141008', '6205679891', '03AGAFS7726G1Z7', 'Warehouse', '-1', NULL, NULL, NULL, '2025-07-07 11:34:40', '2025-07-07 11:35:42'),
(7, '0', 'Simran Medical Hall', '98756541232', 'demostore@gmail.com', '2025-07-18 07:12:23', '$2y$12$uPvI.5dTl6pxF9S0.eWRve9yLxc4Q4Zt/mRpCUzHz8XJim98GqDRK', '98756541232', 'Demo Store', 'Flower Enclave Road, Guru Angad Dev Nagar, Phullanwal, Ludhiana, Punjab 141013, India', 'Ludhiana', 'Punjab', '141013', '1234567890', '123456789', 'Warehouse', '1', NULL, NULL, NULL, '2025-07-18 07:12:23', '2025-07-18 07:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `warehouse_name` varchar(255) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `created_by_id`, `user_id`, `name`, `email`, `phone`, `warehouse_name`, `license_number`, `gst_number`, `address`, `city`, `state`, `pincode`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Owner 1', 'warehouse1@gmail.com', '9876543210', 'Goyal Hospital', '610', '81', 'B-1, Flower Enclave Road, Duggri, Phullanwal, Ludhiana, Punjab 141013, India', 'Ludhiana', 'Punjab', '141013', 'Inactive', NULL, '2025-07-07 05:28:25', '2025-07-07 05:28:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_requests`
--
ALTER TABLE `product_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_details`
--
ALTER TABLE `stock_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe_forms`
--
ALTER TABLE `subscribe_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_requests`
--
ALTER TABLE `product_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_details`
--
ALTER TABLE `stock_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subscribe_forms`
--
ALTER TABLE `subscribe_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
