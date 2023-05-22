-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 02:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duroxz`
--

-- --------------------------------------------------------

--
-- Table structure for table `dz_admin`
--

CREATE TABLE `dz_admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `passcode` varchar(255) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_admin`
--

INSERT INTO `dz_admin` (`id`, `admin_name`, `username`, `password`, `passcode`, `mobile_no`, `email_id`, `role_id`, `status`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'admin', 'duroxz', 'e10adc3949ba59abbe56e057f20f883e', '123456', '9999999999', 'admin@duroxz.com', 1, 0, 0, '2021-04-26 00:18:27', 1, '2022-05-06 20:48:27', 0),
(2, '1234', 'Ashok', 'e10adc3949ba59abbe56e057f20f883e', '', '9876543210', 'Ashok@Gmail.com', 2, 0, 1, '2022-07-25 18:16:31', 1, '2022-07-26 10:45:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dz_admin_access`
--

CREATE TABLE `dz_admin_access` (
  `a_id` int(11) NOT NULL,
  `nav_id` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_dt` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_admin_access`
--

INSERT INTO `dz_admin_access` (`a_id`, `nav_id`, `role_id`, `created_by`, `created_dt`, `updated_by`, `updated_dt`) VALUES
(1, '1,2,3,4,5,6,7,8,9,10,11,12', 1, 1, '2022-05-06 20:53:31', 0, '2022-05-06 20:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `dz_admin_logs`
--

CREATE TABLE `dz_admin_logs` (
  `log_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `hash_value` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_admin_logs`
--

INSERT INTO `dz_admin_logs` (`log_id`, `admin_id`, `hash_value`, `ip_address`, `login_dt`) VALUES
(1, 1, 'f33ba1560cb50201c76a94bdd088ab39', '::1', '2022-05-07 01:12:30'),
(2, 1, '5b9ae965186930cb0510fe046d804d31', '::1', '2022-05-08 01:31:10'),
(3, 1, '23910d07456846540fa15c4727908a56', '::1', '2022-05-09 22:16:41'),
(4, 1, 'a4cbfe33a945fb6541ce8784ca203d31', '::1', '2022-05-10 23:06:02'),
(5, 1, '9690ffbcc2702b682b8b7c44a877583e', '::1', '2022-05-12 22:47:37'),
(6, 1, '8a3279f1f4b5224b3f946768b55f5d2a', '::1', '2022-05-13 22:53:39'),
(7, 1, '12b567fef82d514a049230185bd0899b', '::1', '2022-05-14 23:57:59'),
(8, 1, '69b692753e6fc48edee95135cbd35beb', '::1', '2022-05-24 16:50:23'),
(9, 1, 'a1769ffa985dcfb77381cf081e4d1416', '::1', '2022-06-01 14:30:50'),
(10, 1, '89ed17bea321a27f8263fff1c4c783a0', '::1', '2022-06-02 11:17:58'),
(11, 1, '990aebbcf1d79f057fffac31571901a1', '::1', '2022-06-03 12:33:35'),
(12, 1, '5819ec7fb2bb5e6367ea5cb95cdb3743', '::1', '2022-06-07 12:14:07'),
(13, 1, '00c8dcec6f24de798dc7dd6e422316f0', '::1', '2022-06-08 18:23:47'),
(14, 1, '60204308095b06fa5cfda0997f0f88b3', '::1', '2022-06-09 11:36:50'),
(15, 1, '24e874cad4f21c7ed429232d5796850b', '::1', '2022-06-18 01:36:14'),
(16, 1, 'ae7bbbd540fba2a34f6a0c7d192848e7', '::1', '2022-06-20 22:32:31'),
(17, 1, '4a94c7bb9bee538f248e387922b0375f', '27.4.14.173', '2022-07-25 18:11:06'),
(18, 1, 'eea72e93c9dfbd7f4b6605ed5cb459f8', '27.4.14.173', '2022-07-26 14:55:46'),
(19, 1, '8aea065fbccab55609563f46a85c82a0', '27.4.14.173', '2022-07-27 10:06:06'),
(20, 1, 'a265b44c32d27dc17a32a2cd2987c2fc', '27.4.33.186', '2022-09-02 11:54:25'),
(21, 1, '583951f6382dd45406cb996bb43514b7', '27.5.225.70', '2022-09-21 15:55:12'),
(22, 1, '2c5cf00a1a95c48e9e7eb40bc17622d9', '27.5.225.70', '2022-09-22 10:41:07'),
(23, 1, '4ecfbcc629b8bd17c938dd62869caf95', '27.5.231.117', '2022-10-03 16:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `dz_attributes`
--

CREATE TABLE `dz_attributes` (
  `attr_id` int(11) NOT NULL,
  `attribute_name` varchar(255) NOT NULL,
  `attribute_short_name` varchar(255) NOT NULL,
  `attr_status` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_attributes`
--

INSERT INTO `dz_attributes` (`attr_id`, `attribute_name`, `attribute_short_name`, `attr_status`, `is_deleted`) VALUES
(1, 'Kilograms', 'kg', 0, 0),
(2, 'Grams', 'gm', 0, 0),
(3, 'Litres', 'l', 0, 0),
(4, 'Millilitre', 'ml', 0, 0),
(5, 'Millimetre', 'mm', 0, 0),
(6, 'Colors', 'colors', 0, 0),
(7, 'Quantity', 'Qny', 0, 1),
(8, 'Quantity', 'Qty', 0, 1),
(9, 'Quantity', 'Qty', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dz_category`
--

CREATE TABLE `dz_category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` text DEFAULT NULL,
  `cat_url` varchar(255) DEFAULT NULL,
  `document` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `parent_type` int(11) NOT NULL,
  `c_status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_category`
--

INSERT INTO `dz_category` (`cat_id`, `category_name`, `category_description`, `cat_url`, `document`, `parent`, `parent_type`, `c_status`, `is_deleted`, `created_by`, `created_dt`, `updated_by`, `updated_dt`) VALUES
(1, 'Per Area', 'Per Area', 'per-area', '[]', 0, 1, 0, 0, 1, '2022-05-07 01:14:20', NULL, NULL),
(2, 'Per Activities', 'Per Activities', 'per-activities', '[]', 0, 2, 0, 0, 1, '2022-05-07 01:14:34', NULL, NULL),
(3, 'Bathroom', 'As one of the most important wet areas in the House, the bathroom must be free from leaking and soaking. Choose quality materials will help make the bathroom more healthy.\r\n\r\n* There may be project-specific details during the renovation process. In this process it is recommended to consult with experts.', 'bathroom', '[{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"dzadmin/uploads/category/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 1, 0, 0, 0, 1, '2022-05-07 01:15:40', 1, '2022-05-11 01:38:06'),
(4, 'Swimming Pool', 'Whether building or renovating a pool, we support you in your project step by step. Explore tips, technically prepare your site and anticipate the specific constraints and difficulties of these structures. Finally, follow our step-by-step solutions to complete your work.\r\n\r\n* There may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'swimming-pool', '[{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"dzadmin/uploads/category/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 1, 0, 0, 0, 1, '2022-05-07 01:16:22', NULL, NULL),
(5, 'Exterior', 'The exterior of the house is the part that greets us upon entering the house. Therefore, use quality materials when building and routine maintenance to keep it beautiful.\r\n\r\n* There may be project-specific details during the renovation process. In this process it is recommended to consult with experts.', 'exterior', '[{\"filename\":\"Weber_Shine_Armor_Datasheet_For_Mail\",\"image\":\"dzadmin/uploads/category/Weber_Shine_Armor_Datasheet_For_Mail.pdf\",\"type\":\"application/pdf\",\"doc_id\":1},{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"dzadmin/uploads/category/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":2}]', 1, 0, 0, 0, 1, '2022-05-07 01:17:27', NULL, NULL),
(6, 'Interior', 'The atmosphere in the home can affect the mood of family members. So, plan the construction as carefully as possible and the room layout as beautiful and as comfortable as possible.\r\n\r\n* There may be project-specific details during the renovation process. In this process it is recommended to consult with experts.', 'interior', '[{\"filename\":\"Weber_Shine_Armor_Datasheet_For_Mail\",\"image\":\"dzadmin/uploads/category/Weber_Shine_Armor_Datasheet_For_Mail.pdf\",\"type\":\"application/pdf\",\"doc_id\":1},{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"dzadmin/uploads/category/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":2}]', 1, 0, 0, 0, 1, '2022-05-07 01:18:05', NULL, NULL),
(7, 'Kitchen', 'As the centre of a family home, the kitchen is in use on a daily basis and is often the focal point during a party. \r\n\r\nCreating a designer-look kitchen can be as simple as replacing cabinet doors and handles, and installing a new splashback and benchtop.\r\n\r\nMixing elements of different traditional styles can give a unique custom look to suit your space. Improving the kitchen is also a practical investment, as it will help raise the value of your property.\r\n\r\n* There may be project-specific details during the renovation process. In this process it is recommended to consult with experts.', 'kitchen', '[{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"dzadmin/uploads/category/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 1, 0, 0, 0, 1, '2022-05-07 01:18:44', NULL, NULL),
(8, 'Parking Lots', 'Parking lot, department store and industry are considered to be the heavy-duty area. Tile adhesive with high flexibility is necessary to be used for fixing tiles on these areas.\r\n\r\n* There may be project-specific details during the renovation process. In this process it is recommended to consult with experts.', 'parking-lots', '[{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"dzadmin/uploads/category/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 1, 0, 0, 0, 1, '2022-05-07 01:19:38', NULL, NULL),
(9, 'Wall', 'The perfect wall is an environmental separator—it has to keep the outside out and the inside in.  In order to do this the wall assembly has to control rain, air, vapor and heat. Explore how to keep your wall smooth or fix the crack issue or even build a waterproofing system for long lasting usage.\r\n\r\n* There may be project-specific details during the renovation process. In this process it is recommended to consult with experts.', 'wall', '[]', 1, 0, 0, 0, 1, '2022-05-07 01:20:09', NULL, NULL),
(10, 'How to do the job successfully?', 'How to do the job successfully?', 'how-to-do-the-job-successfully', '[]', 7, 0, 0, 0, 1, '2022-05-07 01:20:43', NULL, NULL),
(11, 'How to plan a Swimming pool work', 'How to plan a Swimming pool work', 'how-to-plan-a-swimming-pool-work', '[]', 4, 0, 0, 0, 1, '2022-05-07 01:21:17', NULL, NULL),
(12, 'How to Plan Bathroom', '', 'how-to-plan-a-bathroom-work', '[]', 3, 0, 0, 0, 1, '2022-05-07 01:21:44', 1, '2022-09-02 11:54:01'),
(13, 'Tile and Stone fixing', 'Easy-to-use, high-performance tile adhesives for the professional tile fixer.\r\n\r\nThere may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'tile-and-stone-fixing', '[]', 2, 0, 0, 0, 1, '2022-05-07 01:22:50', NULL, NULL),
(14, 'Standard Tile and Stone Adhesive', '', 'standard-tile-and-stone-adhesive', '[]', 13, 0, 0, 0, 1, '2022-05-07 01:23:10', NULL, NULL),
(15, 'Improved Tile & Stone Adhesive', '', 'improved-tile--stone-adhesive', '[]', 13, 0, 0, 0, 1, '2022-05-07 01:23:20', NULL, NULL),
(16, 'High Performance Tile & Stone Adhesive', '', 'high-performance-tile--stone-adhesive', '[]', 13, 0, 0, 0, 1, '2022-05-07 01:23:35', NULL, NULL),
(17, 'Waterproofing Solution', 'Weber has a wide product portfolio and different detail solutions for waterproofing applications that affect the building\'s life and durability.\r\n\r\nThere may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'waterproofing-solution', '[]', 2, 0, 0, 0, 1, '2022-05-07 01:24:26', NULL, NULL),
(18, 'Integral Waterproofing', '', 'integral-waterproofing', '[]', 17, 0, 0, 0, 1, '2022-05-07 01:24:39', NULL, NULL),
(19, 'Cementitious Waterproofing', '', 'cementitious-waterproofing', '[]', 17, 0, 0, 0, 1, '2022-05-07 01:24:50', NULL, NULL),
(20, 'Waterproofing Primer', '', 'waterproofing-primer', '[]', 17, 0, 0, 0, 1, '2022-05-07 01:25:01', NULL, NULL),
(21, 'Acrylic Waterproofing', '', 'acrylic-waterproofing', '[]', 17, 0, 0, 0, 1, '2022-05-07 01:25:15', NULL, NULL),
(22, 'Polyurethane Waterproofing', '', 'polyurethane-waterproofing', '[]', 17, 0, 0, 0, 1, '2022-05-07 01:25:25', NULL, NULL),
(23, 'Bituminous Waterproofing', '', 'bituminous-waterproofing', '[]', 17, 0, 0, 0, 1, '2022-05-07 01:25:36', NULL, NULL),
(24, 'Waterproofing accessories', '', 'waterproofing-accessories', '[]', 17, 0, 0, 0, 1, '2022-05-07 01:25:48', NULL, NULL),
(25, 'Wall Construction', 'The perfect wall is an environmental separator—it has to keep the outside out and the inside in.  In order to do this, the wall assembly has to control rain, air, vapour and heat. Explore how to keep your wall smooth or fix the crack issue or even build a system for long-lasting usage.\r\n\r\nThere may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'wall-construction', '[]', 2, 0, 0, 0, 1, '2022-05-07 01:26:22', NULL, NULL),
(26, 'Wall Solutions', '', 'wall-solutions', '[]', 25, 0, 0, 0, 1, '2022-05-07 01:26:34', NULL, NULL),
(27, 'Tile and Stone grouting', 'Innovative, easy-to-use, high performance cementitious and epoxy grouts for the professional tile fixer. \r\n\r\nThere may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'tile-and-stone-grouting', '[]', 2, 0, 0, 0, 1, '2022-05-07 01:27:12', NULL, NULL),
(28, 'Cementitious Tile & Stone Joint filler', '', 'cementitious-tile--stone-joint-filler', '[]', 27, 0, 0, 0, 1, '2022-05-07 01:27:24', NULL, NULL),
(29, 'Epoxy Tile & Stone Joint filler', '', 'epoxy-tile--stone-joint-filler', '[]', 27, 0, 0, 0, 1, '2022-05-07 01:27:34', NULL, NULL),
(30, 'Decorative Epoxy Tile & Stone Joint Filler', '', 'decorative-epoxy-tile--stone-joint-filler', '[]', 27, 0, 0, 0, 1, '2022-05-07 01:27:46', NULL, NULL),
(31, 'Flooring Solutions', 'Weber Flooring solutions products.\r\n\r\nThere may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'flooring-solutions', '[{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"http://localhost/teckzy/duroxz/uploads/category/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 2, 0, 0, 0, 1, '2022-05-07 01:28:31', NULL, NULL),
(32, 'Only for Floor Tiling', '', 'only-for-floor-tiling', '[]', 31, 0, 0, 0, 1, '2022-05-07 01:28:46', NULL, NULL),
(33, 'Tile and Stone care', 'There may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'tile-and-stone-care', '[]', 2, 0, 0, 0, 1, '2022-05-07 01:29:17', NULL, NULL),
(34, 'Sealers and Impregnators', '', 'sealers-and-impregnators', '[]', 33, 0, 0, 0, 1, '2022-05-07 01:29:30', NULL, NULL),
(35, 'Tile Cleaner', '', 'tile-cleaner', '[]', 33, 0, 0, 0, 1, '2022-05-07 01:29:40', NULL, NULL),
(36, 'Application tools', 'Backed with huge industry experience and market understanding, we are involved in providing various innovative application tools for our valued patrons.\r\n\r\nThere may be project-specific details during the renovation process. In this process, it is recommended to consult with experts.', 'application-tools', '[]', 2, 0, 0, 0, 1, '2022-05-07 01:30:33', NULL, NULL),
(37, 'Place', 'Place1', 'place', '[]', 0, 0, 0, 1, 1, '2022-07-26 11:41:07', 1, '2022-07-26 12:24:27'),
(38, 'Place', 'Place', 'place', '[]', 0, 0, 0, 1, 1, '2022-07-26 12:44:32', 1, '2022-07-27 10:07:29'),
(39, 'b', 'ii', 'b', '[]', 0, 0, 0, 1, 1, '2022-07-26 14:13:22', 1, '2022-07-26 14:13:41'),
(40, 'Parking', 'Parking', 'parking', '[]', 38, 0, 0, 0, 1, '2022-07-26 14:20:19', NULL, NULL),
(41, 'Car,Bike Parking', 'Car,Bike ', 'carbike-parking', '[{\"filename\":\"pexels-carl-newton-2280148\",\"image\":\"dzadmin/uploads/category/pexels-carl-newton-2280148.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 40, 0, 0, 1, 1, '2022-07-26 14:39:23', 1, '2022-07-26 14:40:10'),
(42, 'Place', '', 'place', '[]', 0, 0, 0, 1, 1, '2022-07-27 10:26:31', 1, '2022-07-27 10:26:37'),
(43, 'how', 'retre', 'how', '[]', 5, 0, 0, 1, 1, '2022-07-27 12:21:49', 1, '2022-07-27 12:38:04'),
(44, 'how', '', 'how', '[]', 6, 0, 0, 1, 1, '2022-07-27 12:32:32', 1, '2022-07-27 12:38:11'),
(45, 'how', '', 'how', '[]', 8, 0, 0, 1, 1, '2022-07-27 12:33:26', 1, '2022-07-27 12:38:25'),
(46, 'how', '', 'how', '[]', 9, 0, 0, 1, 1, '2022-07-27 12:33:42', 1, '2022-07-27 12:38:33'),
(47, 'how', '', 'how', '[]', 36, 0, 0, 0, 1, '2022-07-27 14:01:44', NULL, NULL),
(48, 'Bathroom products', '', 'bathroom-products', '[]', 3, 0, 0, 0, 1, '2022-09-02 11:54:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dz_cms_banner`
--

CREATE TABLE `dz_cms_banner` (
  `banner_id` int(11) NOT NULL,
  `banner_page` varchar(50) NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_description` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_cms_banner`
--

INSERT INTO `dz_cms_banner` (`banner_id`, `banner_page`, `banner_title`, `banner_description`, `banner_image`, `banner_status`, `is_deleted`, `created_by`, `created_dt`, `updated_by`, `updated_dt`) VALUES
(1, '', 'Test', 'Test', 'dzadmin/uploads/banner/d1jM3lvf.png', 0, 1, 1, '2022-05-15 00:40:28', 1, '2022-05-15 01:25:28'),
(6, '', '', '', 'dzadmin/uploads/banner/OS4rlR6g.jpg', 0, 1, 1, '2022-05-15 01:18:31', 1, '2022-05-15 01:29:14'),
(7, 'home', 'Duroxz', 'Surface preparation for polymerized white cement based putty', 'dzadmin/uploads/banner/WEnhr3H7.jpg', 0, 0, 1, '2022-06-01 14:54:40', NULL, NULL),
(8, 'home', 'Duroxz', 'Conventional Sand Cement Plaster v/s  Ready Mix Plaster', 'dzadmin/uploads/banner/TDBNK1QS.jpg', 0, 0, 1, '2022-06-01 14:55:57', NULL, NULL),
(9, 'home', 'Duroxz', 'Waterproofing for every space', 'dzadmin/uploads/banner/E8Kt7suh.png', 0, 0, 1, '2022-06-01 14:56:42', NULL, NULL),
(10, 'about-us', 'About us', '', 'dzadmin/uploads/banner/lvr7NGHi.jpg', 0, 0, 1, '2022-06-01 15:29:33', NULL, NULL),
(11, '', 'Durox', '122', '', 0, 1, 1, '2022-07-26 17:18:04', NULL, NULL),
(12, '', 'Durox', '111', '', 0, 1, 1, '2022-07-26 17:19:44', NULL, NULL),
(13, '', 'Durox', 'Banner', 'dzadmin/uploads/banner/hfS7jKGx.jpg', 0, 1, 1, '2022-07-26 17:22:34', NULL, NULL),
(14, '', 'Durox', 'Banner', 'dzadmin/uploads/banner/Nk6Pjzb4.jpg', 0, 1, 1, '2022-07-26 17:22:36', NULL, NULL),
(15, '', 'Kitchen Durox', 'Stylish Kitchen ', 'dzadmin/uploads/banner/h85UinJK.jpg', 0, 1, 1, '2022-07-26 17:24:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dz_cms_content`
--

CREATE TABLE `dz_cms_content` (
  `cms_id` int(11) NOT NULL,
  `pagename` varchar(45) DEFAULT NULL,
  `pageurl` varchar(45) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `page_status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_cms_content`
--

INSERT INTO `dz_cms_content` (`cms_id`, `pagename`, `pageurl`, `title`, `description`, `images`, `meta_title`, `meta_keyword`, `meta_description`, `page_status`, `is_deleted`, `created_by`, `created_dt`, `updated_by`, `updated_dt`) VALUES
(1, 'Home', 'home', 'Why US?', '<p>Duroxz, the most dedicated brand and the one best known in south India, has been helping its partners to achieve success, thanks to intelligent solutions and high quality building systems: Adhesives, Mortars, Water Proofing Systems and Decorative putty coats, we make innovative technologies that conform to the principles of sustainable development and meet the requirements of increasingly discerning consumers mindful of the environment they live in and new lifestyle choices.</p>', 'null', 'Duroxz | Home', 'home page', 'home page', 0, 0, 1, '2022-05-13 02:40:36', 1, '2022-07-26 17:12:09'),
(2, 'Test', 'test', 'test', 'test', '[]', 'test', 'test', 'test', 0, 1, 1, '2022-05-14 01:03:00', NULL, NULL),
(3, 'About us', 'about-us', 'Our Profile', '<p>We,DUROXZ ITAL CHEMTECH PRIVATE LIMITED is one of the leading brand known as DUROXZ in over south india. Since last decay we earned a lot of trust from all our customers, clients, builders, architechs, engineers and technicians by supplying our large range of products, with high quality\nstandards and committed services.&nbsp;</p><p>Duroxz listed as expert in manufacturing tile and stone ADHESIVES, GROUTS, WATERPROOFING,\nWALL PUTTY, BONDING MATERIALS AND HYGIENIC COMPONDS. Duroxz earned a greatrapo by\ncreating new innovative ideas in TILE AND STONE INSTALLATION TECHNOLOGY. However DUROXZ is continuously developing new ideas and technics by its most experienced and dedicated R &amp; D team.Duroxz,is committed to providing Continuing Professional Development(CPD) seminars in various\ntowns that allow customers to improve and broaden their knowledge and skills to connect the innovation and technology.</p>', '[]', 'Duroxz | About us', 'Duroxz | About us', 'Duroxz | About us', 0, 0, 1, '2022-06-01 15:52:40', 1, '2022-06-01 19:06:34'),
(4, 'Contact Us', 'contact-us', 'Contact Us', '<h2><strong>Get in touch with us &amp;</strong><br><strong>send us message today!</strong></h2><p>Survey No. 174/2, Simhadripuram Road, Jagapathinagaram (V), E.G. Dist., Kirlampudi (M) Andhra Pradesh, India Pin code - 533431.</p><h4>EMAIL: info@duroxz.com<br>PHONE: +91 8868226778</h4>', '[]', 'Duroxz | Contact', 'Duroxz | Contact', 'Duroxz | Contact', 0, 0, 1, '2022-06-01 15:53:56', 1, '2022-06-01 19:15:40'),
(5, 'Content', 'content', 'Content', '<p>asdfafsffdsdddddsdfzdcvgdfdvf</p>', '[{\"filename\":\"9QCXHGU4\",\"image\":\"dzadmin/uploads/cms/9QCXHGU4.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', 'fdddd', 'dffdfddffd', 'fdfdf', 0, 1, 1, '2022-07-26 16:43:30', 1, '2022-07-26 16:44:32'),
(6, 'Why Us?', 'why-us', 'Why Us?', '<p>Duroxz, the most dedicated brand and the one best known in south India, has been helping its partners to achieve success for over 1 year, thanks to intelligent solutions and high quality building systems: Adhesives, Mortars, Water Proofing Systems and Decorative putty coats, we make innovative technologies that conform to the principles of sustainable development and meet the requirements of increasingly discerning consumers mindful of the environment they live in and new lifestyle choices.</p>', '[]', 'Duroxz | Home', 'home page', 'home page', 0, 1, 1, '2022-07-26 16:48:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dz_contact`
--

CREATE TABLE `dz_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `contact_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_contact`
--

INSERT INTO `dz_contact` (`id`, `name`, `email`, `message`, `contact_dt`) VALUES
(1, 'Nazeer', 'nazeer@teckzy.com', 'Test', '2022-06-08 14:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `dz_enquiry`
--

CREATE TABLE `dz_enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_mobile` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `enquiry_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_enquiry`
--

INSERT INTO `dz_enquiry` (`enquiry_id`, `customer_name`, `customer_email`, `customer_mobile`, `product_name`, `comments`, `enquiry_dt`) VALUES
(1, 'Nazeer', 'nazeer@teckzy.com', '9094590173', 'Duromix', 'Test', '2022-06-08 14:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `dz_navigation_menu`
--

CREATE TABLE `dz_navigation_menu` (
  `nav_id` int(11) NOT NULL,
  `nav_pagename` varchar(100) DEFAULT NULL,
  `nav_url` varchar(100) DEFAULT NULL,
  `nav_title` varchar(100) DEFAULT NULL,
  `nav_icon` varchar(45) DEFAULT NULL,
  `nav_parent_id` tinyint(2) DEFAULT 0,
  `nav_status` tinyint(1) DEFAULT 0,
  `nav_div_id` varchar(100) DEFAULT NULL,
  `nav_submenu` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_navigation_menu`
--

INSERT INTO `dz_navigation_menu` (`nav_id`, `nav_pagename`, `nav_url`, `nav_title`, `nav_icon`, `nav_parent_id`, `nav_status`, `nav_div_id`, `nav_submenu`) VALUES
(1, 'dashboard', 'dashboard.php', 'Dashboard', 'home', 0, 0, NULL, 0),
(2, 'adminuser', 'adminuser.php', 'Admin Users', 'user', 0, 0, 'admin_user', 1),
(3, 'userslist', 'adminuser.php', 'Users List', 'users', 2, 0, NULL, 0),
(4, 'useraccess', 'user_access.php', 'User Access', 'user-check', 2, 0, NULL, 0),
(5, 'atrributes', 'attributes.php', 'Manage Attributes', 'more-vertical', 0, 0, NULL, 0),
(6, 'category', 'category.php', 'Category', 'bookmark', 0, 0, NULL, 0),
(7, 'products', 'products.php', 'Products', 'clipboard', 0, 0, NULL, 0),
(8, 'cms', 'cms.php', 'CMS', 'globe', 0, 0, NULL, 0),
(9, 'banner', 'banner.php', 'Banner', 'image', 0, 0, NULL, 0),
(10, 'enquiry', 'enquiry.php', 'Enquiry', 'user-check', 0, 0, NULL, 0),
(11, 'contact', 'contact.php', 'Contact Us', 'message-square', 0, 0, NULL, 0),
(12, 'testimonial', 'testimonial.php', 'Testimonials', 'user', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz_products`
--

CREATE TABLE `dz_products` (
  `product_id` int(11) NOT NULL,
  `category_ids` varchar(45) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `mrp_price` decimal(16,2) DEFAULT NULL,
  `selling_price` decimal(16,2) DEFAULT NULL,
  `discount_price` decimal(16,2) DEFAULT NULL,
  `product_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `product_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `product_document` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `product_status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `is_attributes_available` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_products`
--

INSERT INTO `dz_products` (`product_id`, `category_ids`, `product_name`, `product_code`, `product_description`, `product_url`, `mrp_price`, `selling_price`, `discount_price`, `product_image`, `product_details`, `product_document`, `product_status`, `is_deleted`, `is_attributes_available`, `created_by`, `created_dt`, `updated_by`, `updated_dt`) VALUES
(1, '1,3,12', 'Testing', '', '<p>testing</p>', 'testing', 0.00, 0.00, 0.00, '[{\"filename\":\"59xKq6VA\",\"image\":\"dzadmin/uploads/product/59xKq6VA.jpg\",\"type\":\"image/jpeg\",\"img_id\":1},{\"filename\":\"9uOxzvX1\",\"image\":\"dzadmin/uploads/product/9uOxzvX1.jpg\",\"type\":\"image/jpeg\",\"img_id\":2}]', '[{\"title\":\"test\",\"description\":\"test\"}]', '[]', 1, 1, 0, 1, '2022-05-10 00:49:31', 1, '2022-06-02 11:28:30'),
(2, '1,3,12', 'Test', '', '<p>test</p>', 'test', 0.00, 0.00, 0.00, '[{\"filename\":\"groMzb4X\",\"image\":\"dzadmin/uploads/product/groMzb4X.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[{\"title\":\"Tets\",\"description\":\"test\"}]', '[{\"filename\":\"Tiling_Brochure_Low\",\"image\":\"http://localhost/teckzy/duroxz/uploads/product/Tiling_Brochure_Low.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 1, 1, 0, 1, '2022-05-10 00:57:15', 1, '2022-06-02 11:28:27'),
(3, '1,4,11', 'Test', '', '', 'test', 0.00, 0.00, 0.00, '[{\"filename\":\"yCBUm6YJ\",\"image\":\"dzadmin/uploads/product/yCBUm6YJ.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[{\"title\":\"testt\",\"description\":\"tses\"}]', '[]', 1, 1, 0, 1, '2022-05-10 01:02:02', 1, '2022-06-02 11:28:25'),
(4, '1,3,12', 'Planning', '', '<p>This step is crucial so that you can estimate the cost and time of your work. It is always ideal to include the planning phase so that you can go through this experience in a quiet and organized way. Kindly download Weber consumption calculator app for planning the exact quantity of required products.</p>', 'planning', 0.00, 0.00, 0.00, '[{\"filename\":\"yo5EdIH1\",\"image\":\"dzadmin/uploads/product/yo5EdIH1.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-06-02 11:25:13', 1, '2022-06-02 11:49:05'),
(5, '1,3,12', 'Demolition', '', '<p>Once you know what will be removed, maintained and built, start by removing what will be discarded. This will produce much of your rubble. Please ensure that you have buckets and bags for debris disposal.</p>', 'demolition', 0.00, 0.00, 0.00, '[{\"filename\":\"t7g6x3SP\",\"image\":\"dzadmin/uploads/product/t7g6x3SP.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-06-02 11:28:12', 1, '2022-06-02 11:37:21'),
(6, '1,3,12', 'Save Time, Money AND Effort', '', '<p>You can apply the new flooring over existing flooring by using our tile-on-tile specific tile adhesives. Just ensure that existing flooring is in good condition, clean and level so that you can use tile on tile technique and reduce time and debris, and consequently save money. You can use the weber tile-on-tile solution products for easy tile fixing .</p>', 'save-time-money-and-effort', 0.00, 0.00, 0.00, '[{\"filename\":\"IXHVqhrg\",\"image\":\"dzadmin/uploads/product/IXHVqhrg.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-06-02 11:29:30', 1, '2022-06-02 11:40:05'),
(7, '1,3,12', 'Wall outlets', '', '<p>After the demolition, you need to start working on the facilities that are inside the walls, floors and slab-like wires and pipes which are your points of water, sewage, electric and lighting. If this step is not needed in your planning, proceed to the next step.</p>', 'wall-outlets', 0.00, 0.00, 0.00, '[{\"filename\":\"OwWzYiGf\",\"image\":\"dzadmin/uploads/product/OwWzYiGf.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-06-02 11:49:44', NULL, NULL),
(8, '1,3,12', 'Water tested bathroom', '', '<p>Once you have fixed all wall outlets; the first thing you need to plan is waterproofing, apply the recommended weber waterproofing solutions to make your bathroom resistant to direct contact with water and moisture produced daily.</p>', 'water-tested-bathroom', 0.00, 0.00, 0.00, '[{\"filename\":\"FpVdNOtT\",\"image\":\"dzadmin/uploads/product/FpVdNOtT.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-06-02 11:50:25', NULL, NULL),
(9, '1,3,12', 'Tile fixing and grouting', '', '<p>Use tile adhesives as per substrate and requirement so that your bathroom is kept in good condition for much longer., such as weber tile adhesive for bathrooms.</p>', 'tile-fixing-and-grouting', 0.00, 0.00, 0.00, '[{\"filename\":\"JvTxXgkc\",\"image\":\"dzadmin/uploads/product/JvTxXgkc.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-06-02 11:51:23', NULL, NULL),
(10, '1,3,12', 'Ready for use', '', '<p>Now it\'s time to do the post-work cleaning, and finally fill the empty space with furniture, sanitary ware, metal, boxes, lighting ... And start using your bathroom.</p>', 'ready-for-use', 0.00, 0.00, 0.00, '[{\"filename\":\"My0cRm7D\",\"image\":\"dzadmin/uploads/product/My0cRm7D.jpeg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-06-02 12:03:16', NULL, NULL),
(11, '2,13,14', 'Duromix', '', '<p>Duromix for Floor and Wall is a colorfast, chemical resistant, 100% solid epoxy grout for ceramic tile, vitrified tile, marble and stone. Duropoxy - 15K Epoxy is ideally suited for residential and commercial installations where materials must resist physical abuse, shock and chemical attach.</p>', 'duromix', 0.00, 0.00, 0.00, '[{\"filename\":\"zeCBwmxD\",\"image\":\"dzadmin/uploads/product/zeCBwmxD.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[{\"title\":\"About this product\",\"description\":\"<ol><li><strong>In a concrete mixer add cement, aggregates and sand as per the mix design and mix the content for 2- 3 min.</strong></li><li><strong>Add water about 80 -85 % to the running mixer and mix it for 1- 3 min.</strong></li><li><strong>Stir webertec mixIL before use; add to gauging water as per the recommended dosage.</strong></li><li><strong>Add this mixture to the concrete /mortar mixer and mix the content for 2- 4 min.</strong></li></ol>\"},{\"title\":\"Feature & Benefits\",\"description\":\"<ol><li><strong>Permeability of water gets reduced in concrete & mortar, resulting in more durable concrete.</strong></li><li><strong>It does not significantly modify the characteristics of the fresh concrete and mortar, nor the compressive strength.</strong></li><li><strong>Workability of concrete and mortar is improved. It is in liquid form, gets easily dispersed in concrete and mortar.</strong></li><li><strong>Economical in use.</strong></li><li><strong>It does not require any protection screed since it does not form any membrane and becomes an integral part of concrete.</strong></li><li><strong>Shrinkage cracks are minimized in concrete and mortar.</strong></li><li><strong>Improves cohesion and hence reduces the segregation.</strong></li></ol>\"}]', '[{\"filename\":\"dummy\",\"image\":\"dzadmin/uploads/product/dummy.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 0, 0, 1, 1, '2022-06-02 12:39:15', 1, '2022-06-02 18:08:35'),
(12, '38,40', 'Car,Biike', '', '', 'carbiike', 0.00, 0.00, 0.00, '[]', '[]', '[{\"filename\":\"pexels-carl-newton-2280148\",\"image\":\"dzadmin/uploads/product/pexels-carl-newton-2280148.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 0, 1, 1, 1, '2022-07-26 14:41:11', 1, '2022-07-26 15:43:08'),
(13, '38,40', 'Car,Biike', '', '<p>Car,Bike are Parking Here</p>', 'carbiike', 0.00, 0.00, 0.00, '[{\"filename\":\"Gte5g1dB\",\"image\":\"dzadmin/uploads/product/Gte5g1dB.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[{\"filename\":\"pexels-carl-newton-2280148\",\"image\":\"dzadmin/uploads/product/pexels-carl-newton-2280148.pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 0, 1, 1, 1, '2022-07-26 14:42:34', 1, '2022-07-26 15:43:00'),
(14, '1,7,10', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"8lDdunU5\",\"image\":\"dzadmin/uploads/product/8lDdunU5.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-26 14:50:34', 1, '2022-07-26 15:42:56'),
(15, '1,7,10', 'Kitchen Room', '', '', 'kitchen-room', 0.00, 0.00, 0.00, '[{\"filename\":\"mayOlpIN\",\"image\":\"dzadmin/uploads/product/mayOlpIN.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-26 15:06:55', 1, '2022-07-26 15:43:02'),
(16, '1,7,10', 'Kitchen', '', '<p>Kitchen Products</p>', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"6M9ku4be\",\"image\":\"dzadmin/uploads/product/6M9ku4be.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-26 15:45:15', 1, '2022-07-26 16:14:38'),
(17, '1,7,10', 'Kitchen', '', '<p>Kitchen Products</p>', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"K8jMG3cF\",\"image\":\"dzadmin/uploads/product/K8jMG3cF.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-26 15:45:17', 1, '2022-07-26 15:45:33'),
(18, '1,7,10', '1223', '', '<p>Kitchen Products</p>', '1223', 0.00, 0.00, 0.00, '[{\"filename\":\"qAF1zDHe\",\"image\":\"dzadmin/uploads/product/qAF1zDHe.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-26 15:45:38', 1, '2022-07-26 16:14:43'),
(19, '1,4,11', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"97C8x1cP\",\"image\":\"dzadmin/uploads/product/97C8x1cP.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:07:20', 1, '2022-07-27 12:10:29'),
(20, '1,5', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"0SwXtYbm\",\"image\":\"dzadmin/uploads/product/0SwXtYbm.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:09:33', 1, '2022-07-27 12:10:26'),
(21, '1,5', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"f6FyADg5\",\"image\":\"dzadmin/uploads/product/f6FyADg5.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:13:48', 1, '2022-07-27 12:18:40'),
(22, '1,5,43', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"Qch9XOY2\",\"image\":\"dzadmin/uploads/product/Qch9XOY2.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:19:13', 1, '2022-07-27 12:23:24'),
(23, '1,6,44', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"y5mwrqRS\",\"image\":\"dzadmin/uploads/product/y5mwrqRS.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:34:28', 1, '2022-07-27 12:37:28'),
(24, '1,7,10', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"1VC9Fg0s\",\"image\":\"dzadmin/uploads/product/1VC9Fg0s.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:34:57', 1, '2022-07-27 12:37:31'),
(25, '1,8,45', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"dEeDb4g9\",\"image\":\"dzadmin/uploads/product/dEeDb4g9.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:35:37', 1, '2022-07-27 12:37:33'),
(26, '1,9,46', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"oVNGk8zd\",\"image\":\"dzadmin/uploads/product/oVNGk8zd.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 12:36:09', 1, '2022-07-27 12:37:36'),
(27, '2,13,14', 'Floor', '', '<p>Duromix for Floor and Wall is a colorfast, chemical resistant, 100% solid epoxy grout for ceramic tile, vitrified tile, marble and stone. Duropoxy - 15K Epoxy is ideally suited for residential and commercial installations where materials must resist physical abuse, shock and chemical attach.</p>', 'floor', 0.00, 0.00, 0.00, '{\"1\":{\"filename\":\"vhLjQxso\",\"image\":\"dzadmin/uploads/product/vhLjQxso.jpg\",\"type\":\"image/jpeg\",\"img_id\":2},\"2\":{\"filename\":\"vLJUmYwx\",\"image\":\"dzadmin/uploads/product/vLJUmYwx.jpg\",\"type\":\"image/jpeg\",\"img_id\":2},\"3\":{\"filename\":\"ZAUjVBvT\",\"image\":\"dzadmin/uploads/product/ZAUjVBvT.jpg\",\"type\":\"image/jpeg\",\"img_id\":3},\"4\":{\"filename\":\"IhwemAO4\",\"image\":\"dzadmin/uploads/product/IhwemAO4.jpg\",\"type\":\"image/jpeg\",\"img_id\":4}}', '[]', '[]', 0, 1, 1, 1, '2022-07-27 13:54:26', 1, '2022-07-27 14:59:42'),
(28, '2,17,18', 'Kitchen Room', '', '', 'kitchen-room', 0.00, 0.00, 0.00, '[{\"filename\":\"mHiZakF0\",\"image\":\"dzadmin/uploads/product/mHiZakF0.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 13:57:52', 1, '2022-07-27 14:05:03'),
(29, '2,25,26', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"Nd16UeHm\",\"image\":\"dzadmin/uploads/product/Nd16UeHm.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 13:58:46', 1, '2022-07-27 14:05:07'),
(30, '2,27,29', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"crNBbvXw\",\"image\":\"dzadmin/uploads/product/crNBbvXw.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:00:03', 1, '2022-07-27 14:05:10'),
(31, '2,17,18', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"2AClpouw\",\"image\":\"dzadmin/uploads/product/2AClpouw.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:00:37', 1, '2022-07-27 15:19:07'),
(32, '2,25,26', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"lITfwd6y\",\"image\":\"dzadmin/uploads/product/lITfwd6y.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:01:11', 1, '2022-07-27 15:19:11'),
(33, '2,27,28', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"3noHUWfh\",\"image\":\"dzadmin/uploads/product/3noHUWfh.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:02:23', 1, '2022-07-27 15:19:13'),
(34, '2,31,32', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"bfoeLyMA\",\"image\":\"dzadmin/uploads/product/bfoeLyMA.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:07:09', 1, '2022-07-27 15:19:16'),
(35, '2,33,35', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"CoN3ADdJ\",\"image\":\"dzadmin/uploads/product/CoN3ADdJ.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:07:58', 1, '2022-07-27 15:19:19'),
(36, '2,33,34', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"jB32NOwR\",\"image\":\"dzadmin/uploads/product/jB32NOwR.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:16:03', 1, '2022-07-27 15:19:22'),
(37, '2,36,47', 'Floor', '', '', 'floor', 0.00, 0.00, 0.00, '[{\"filename\":\"r3edpUY8\",\"image\":\"dzadmin/uploads/product/r3edpUY8.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 14:16:53', 1, '2022-07-27 15:19:24'),
(38, '2,13,14', 'Kitchen', '', '', 'kitchen', 0.00, 0.00, 0.00, '[{\"filename\":\"9qUWu8Gg\",\"image\":\"dzadmin/uploads/product/9qUWu8Gg.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-07-27 15:01:09', 1, '2022-07-27 15:19:28'),
(39, '1,5', 'Exterior Wall Tiles', 'EWT1', '', 'exterior-wall-tiles', 700.00, 780.00, 750.00, '[{\"filename\":\"IxVrZO9Y\",\"image\":\"dzadmin/uploads/product/IxVrZO9Y.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-09-02 11:49:29', 1, '2022-09-21 16:31:22'),
(40, '1,3,48', 'Exterior Wall Tiles', 'EWT12', '', 'exterior-wall-tiles', 70.00, 78.00, 75.00, '[{\"filename\":\"Na8S1vfH\",\"image\":\"dzadmin/uploads/product/Na8S1vfH.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 1, 1, 1, '2022-09-02 11:56:19', 1, '2022-09-21 16:31:25'),
(41, '1,3,12', 'Bathroom', '', '', 'bathroom', 0.00, 0.00, 0.00, '[{\"filename\":\"SKIw1zri\",\"image\":\"dzadmin/uploads/product/SKIw1zri.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[]', '[]', 0, 0, 1, 1, '2022-09-02 11:56:35', NULL, NULL),
(42, '2,13,14', 'DUROXZ (HYDROFLEX) 315 Floor and Wall Economy Grade Tile Adhesive', '', '<p>Polymer based adhesive for fixing ceramic tiles and small format natural stone on dry areas of interior floor &amp; interior wall up to a height of 3 Mtrs</p>', 'duroxz-hydroflex-315-floor-and-wall-economy-grade-tile-adhesive', 0.00, 0.00, 0.00, '[{\"filename\":\"IlgRX4DV\",\"image\":\"dzadmin/uploads/product/IlgRX4DV.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[{\"title\":\"Features / Benefits\",\"description\":\"<ul><li>Single component, just add water</li><li>Economical & Easy to use</li><li>Interior applications, polymer based</li><li>Bonds to various substrates</li><li>Exceeds ANSI A118.1T shear bond strength requirements</li><li>Complies with EN/ISO with a C1T classification.</li><li>Exceeds IS 15477:2019 u2013 Type 1T Adhesive standards.</li><li>Can be fortified with latex admix for external Tile and Stone installations.</li></ul>\"},{\"title\":\"Application\",\"description\":\"<p>Designed especially for dry areas of interior floor and interior wall installations of all types of ceramic tile and small format natural stones over concrete and on a variety of cement-based substrates. Can be used up to maximum 12mm bed thickness.</p>\"},{\"title\":\"Substrates\",\"description\":\"<ul><li>Cement Plaster</li><li>Concrete</li><li>Concrete Masonry</li><li>Cement Mortar Beds</li><li>Ceramic Tile*</li><li>Existing Natural Stone*</li><li>Brick Masonry</li><li>Cement Terrazzo</li></ul><p>* Surface to be cleaned and roughened before installation of tiles or stones.</p>\"},{\"title\":\"Customer Care\",\"description\":\"<p>DUROXZ ITAL CHEMTECH PRIVATE LIMITED.</p><p>Survey No : 174/2 , Jagapathiangaram, Kirlampudi u2013 533431, u00a0</p><p>E.G.Dt, Andhra Pradesh,</p><p>Tel : 08868 226778</p><p>Customer Care : Duroxzinfo@gmail.com</p><p>Website : www.duroxz.com</p>\"}]', '[{\"filename\":\"FINAL   HYDROFLEX 315 ( DUROX) 21-01-2022\",\"image\":\"dzadmin/uploads/product/FINAL   HYDROFLEX 315 ( DUROX) 21-01-2022. (2).pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 0, 0, 1, 1, '2022-09-21 16:08:36', 1, '2022-09-21 16:30:18'),
(43, '2,27,29', ' DUROPOXY-15K Epoxy Grout', '', '<p>dfsfaefaada</p>', '-duropoxy-15k-epoxy-grout', 0.00, 0.00, 0.00, '[{\"filename\":\"LOnMe0fF\",\"image\":\"dzadmin/uploads/product/LOnMe0fF.png\",\"type\":\"image/png\",\"img_id\":1}]', '[{\"title\":\"Application\",\"description\":\"<p>Designed especially for interior and covered exterior floor and wall joints of all types of ceramic tile, vitreous, semi-vitreous tile, glass mosaic tiles, metal tiles, precast terrazzo, engineered stone floors and natural stones. Recommended for Institutional and commercial kitchens, Cafeterias, residential facilities, Rest rooms, Schools and wet areas like swimming pools, sauna, water bodies and wash rooms.</p>\"},{\"title\":\"Features / Benefits\",\"description\":\"<ul><li>Eoxy Grout</li><li>Easy to clean</li><li>Colour fast</li><li>Non-cracking or powdering</li><li>Chemical and Temperature resistant</li><li>Complies with ANSI A 118.3, EN 13888, standards.</li><li>Water and shock resistant.</li><li>Food grade u2013 Certified by CFTRI, Mysore</li></ul>\"},{\"title\":\"Substrates\",\"description\":\"<ul><li>Ceramic tile</li><li>Glass Mosaic Tiles</li><li>Vitrified tile</li><li>Metal tiles</li><li>Marble</li><li>Granite</li><li>Agglomerates (Engineered Stones)</li><li>Precast Terrazzo tiles</li></ul>\"},{\"title\":\"Customer Care\",\"description\":\"<p>DUROXZ ITAL CHEMTECH PRIVATE LIMITED.</p><p>Survey No : 174/2 , Jagapathiangaram</p><p>Kirlampudi u2013 533431, E.G.Dt, Andhra Pradesh,</p><p>Tel : 08868 226778</p><p>Customer Care : Duroxzinfo@gmail.com</p><p>Website : www.duroxz.com</p><p>u00a0</p>\"}]', '[{\"filename\":\"FINAL DUROPOXY 15K EPOXY GROUT 23-01-2022 (1)\",\"image\":\"dzadmin/uploads/product/FINAL DUROPOXY 15K EPOXY GROUT 23-01-2022 (1).pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 0, 0, 1, 1, '2022-09-21 16:45:38', 1, '2022-10-03 16:44:06'),
(44, '2,25,26', 'DUROXZ (SOLID 115 )  Premium Floor and Wall Tile Adhesive', '', '', 'duroxz-solid-115---premium-floor-and-wall-tile-adhesive', 0.00, 0.00, 0.00, '[{\"filename\":\"KMJ9exdq\",\"image\":\"dzadmin/uploads/product/KMJ9exdq.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[{\"title\":\"Application\",\"description\":\"<p>Designed especially for interior floor and wall</p><p>installations and external floor installations of all types</p><p>of ceramic tile, vitrified tile, precast terrazzo and</p><p>natural stones over concrete and on a variety of</p><p>cement-based substrates. Can be used upto a</p><p>maximum 12mm bed thickness</p>\"},{\"title\":\"Features / Benefits\",\"description\":\"<ul><li>Single component, just add water</li><li>Economical &amp; Easy to use</li><li>Interior applications, polymer based</li><li>Bonds to various substrates</li><li>Exceeds ANSI A118.1 T shear bond strength requirements</li><li>Exceeds IS 15477:2019 u2013 Type 2 T Adhesive standards.</li><li>Complies with EN/ISO with a C1T classification.</li><li>Can be fortified with latex admix for use on external Wall area.</li></ul>\"},{\"title\":\"Substrates\",\"description\":\"<ul><li>Concrete</li><li>Cement Mortar Beds</li><li>Concrete Masonry</li><li>Existing Vitrified Tile* &amp; Ceramic Tile*</li><li>Cement Plaster</li><li>Cement Terrazzo*</li><li>Brick Masonry</li><li>Existing Natural Stone*</li><li>&nbsp;</li><li>* Surface to be cleaned and roughened before installation of tiles or stones.</li></ul>\"},{\"title\":\"Customer Care\",\"description\":\"<p>DUROXZ ITAL CHEMTECH PRIVATE LIMITED. &nbsp;</p><p>Survey No : 174/2 , Jagapathiangaram Kirlampudi u2013 533431, &nbsp;</p><p>E.G.Dt, Andhra Pradesh, &nbsp;</p><p>Tel : 08868 226778 &nbsp;</p><p>Customer Care : Duroxzinfo@gmail.com &nbsp;</p><p>Website : www.duroxz.com</p>\"}]', '[{\"filename\":\"FINAL DUROXZ SOLID 115 TDS (1)\",\"image\":\"dzadmin/uploads/product/FINAL DUROXZ SOLID 115 TDS (1).pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 0, 0, 1, 1, '2022-09-21 17:05:11', NULL, NULL),
(45, '2,25,26', 'DUROXZ (FLEXZY MAX ) - 215  Floor and Wall Tile Adhesive', '', '<p>Polymer based adhesive for fixing small to medium format ceramic tiles and small format natural stone on dry areas of interior floor &amp; interior wall upto a height of 3 Mtrs.</p>', 'duroxz-flexzy-max----215--floor-and-wall-tile-adhesive', 0.00, 0.00, 0.00, '[{\"filename\":\"BWPRime4\",\"image\":\"dzadmin/uploads/product/BWPRime4.jpg\",\"type\":\"image/jpeg\",\"img_id\":1}]', '[{\"title\":\"Features / Benefits\",\"description\":\"<ul><li>Single component, just add water</li><li>Economical &amp; Easy to use</li><li>Interior applications, polymer based</li><li>Exceeds ANSI A118.1T shear bond strength requirements</li><li>Can be used up to Maximum 12mm bed thickness &nbsp;</li><li>Complies with EN/ISO with a C1T classification.</li><li>Exceeds IS 15477:2019 u2013 Type 1T Adhesive standards.</li><li>Can be fortified with latex admix for external Tile and Stone installations.</li></ul>\"},{\"title\":\"Application\",\"description\":\"<p>Designed especially for dry areas of interior floor and interior wall installations of all types of ceramic tile, semi-vitreous tile, precast terrazzo and small format natural stones over concrete and on a variety of cement- based substrates.</p>\"},{\"title\":\"Substrates\",\"description\":\"<ul><li>Cement Plaster</li><li>Concrete</li><li>Concrete Masonry</li><li>Cement Mortar Beds</li><li>Ceramic Tile*</li><li>Existing Natural Stone*</li><li>Brick Masonry</li><li>Cement Terrazzo</li><li>&nbsp;</li><li>* Surface to be cleaned and roughened before installation of tiles or stones.</li></ul>\"},{\"title\":\"Customer Care\",\"description\":\"<p>DUROXZ ITAL CHEMTECH PRIVATE LIMITED.</p><p>Survey No : 174/2 , Jagapathiangaram</p><p>Kirlampudi u2013 533431, &nbsp;</p><p>E.G.Dt, Andhra Pradesh,</p><p>Tel : 08868 226778</p><p>Customer Care : Duroxzinfo@gmail.com</p><p>Website : www.duroxz.com</p>\"}]', '[{\"filename\":\"FINAL FLEXZY MAX 215 21-01-2022\",\"image\":\"dzadmin/uploads/product/FINAL FLEXZY MAX 215 21-01-2022..pdf\",\"type\":\"application/pdf\",\"doc_id\":1}]', 0, 0, 1, 1, '2022-09-21 17:41:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dz_product_attributes`
--

CREATE TABLE `dz_product_attributes` (
  `prod_attr_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `attr_value` varchar(45) DEFAULT NULL,
  `attr_status` tinyint(1) DEFAULT NULL COMMENT '0 => Active, 1 => Inactive',
  `created_by` int(11) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_product_attributes`
--

INSERT INTO `dz_product_attributes` (`prod_attr_id`, `product_id`, `attr_id`, `attr_value`, `attr_status`, `created_by`, `created_dt`, `updated_by`, `updated_dt`) VALUES
(1, 1, 1, '10', 0, 1, '2022-05-10 00:49:31', 1, '2022-06-02 11:20:39'),
(2, 1, 1, '20', 1, 1, '2022-05-10 00:49:31', 1, '2022-05-11 02:31:48'),
(3, 2, 1, '10', 0, 1, '2022-05-10 00:57:15', 1, '2022-06-02 11:20:47'),
(4, 3, 1, '20', 0, 1, '2022-05-10 01:02:02', 1, '2022-06-02 11:20:54'),
(5, 1, 1, '25', 0, NULL, NULL, 1, '2022-06-02 11:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `dz_testimonial`
--

CREATE TABLE `dz_testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `star_rating` int(11) NOT NULL,
  `testimonial_content` text NOT NULL,
  `customer_image` varchar(255) NOT NULL,
  `testimonial_dt` datetime NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 => active, 1 => inactive',
  `is_deleted` tinyint(1) NOT NULL COMMENT '0 => not deleted, 1 => deleted',
  `updated_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_testimonial`
--

INSERT INTO `dz_testimonial` (`testimonial_id`, `customer_name`, `position`, `star_rating`, `testimonial_content`, `customer_image`, `testimonial_dt`, `status`, `is_deleted`, `updated_dt`) VALUES
(1, 'Kyle Frederick', 'Director', 5, 'Thank you for guiding us through the construction process, understanding, and always ready to accommodate our needs. We love our new space and know that it was built by the very best!', 'dzadmin/uploads/testimonial/6tlfQjbc.jpg', '2022-06-08 18:50:56', 0, 0, '2022-07-27 12:12:46'),
(5, 'Valentin Lacoste', 'Manager', 4, 'Thank you for guiding us through the construction process, understanding, and always ready to accommodate our needs. We love our new space and know that it was built by the very best!\r\n                ', 'dzadmin/uploads/testimonial/xY5BEbaI.jpg', '2022-06-09 14:33:23', 0, 0, '0000-00-00 00:00:00'),
(8, 'BaratsKJHDSYU', 'qqwqewqq', 5, 'wqdewfrgyhfhjfjjhfhjgfghdhfdfd', 'zNq309wV.jpg', '2022-07-26 18:03:56', 0, 1, '2022-07-26 18:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `dz_user_role`
--

CREATE TABLE `dz_user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  `role_status` tinyint(1) DEFAULT 0 COMMENT '0 => "Active", 1 => "Inactive"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dz_user_role`
--

INSERT INTO `dz_user_role` (`role_id`, `role_name`, `role_status`) VALUES
(1, 'Super Admin', 0),
(2, 'Admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dz_admin`
--
ALTER TABLE `dz_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dz_admin_access`
--
ALTER TABLE `dz_admin_access`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `dz_admin_logs`
--
ALTER TABLE `dz_admin_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dz_attributes`
--
ALTER TABLE `dz_attributes`
  ADD PRIMARY KEY (`attr_id`);

--
-- Indexes for table `dz_category`
--
ALTER TABLE `dz_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `dz_cms_banner`
--
ALTER TABLE `dz_cms_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `dz_cms_content`
--
ALTER TABLE `dz_cms_content`
  ADD PRIMARY KEY (`cms_id`);

--
-- Indexes for table `dz_contact`
--
ALTER TABLE `dz_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dz_enquiry`
--
ALTER TABLE `dz_enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `dz_navigation_menu`
--
ALTER TABLE `dz_navigation_menu`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `dz_products`
--
ALTER TABLE `dz_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `dz_product_attributes`
--
ALTER TABLE `dz_product_attributes`
  ADD PRIMARY KEY (`prod_attr_id`);

--
-- Indexes for table `dz_testimonial`
--
ALTER TABLE `dz_testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `dz_user_role`
--
ALTER TABLE `dz_user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dz_admin`
--
ALTER TABLE `dz_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dz_admin_access`
--
ALTER TABLE `dz_admin_access`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dz_admin_logs`
--
ALTER TABLE `dz_admin_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dz_attributes`
--
ALTER TABLE `dz_attributes`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dz_category`
--
ALTER TABLE `dz_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `dz_cms_banner`
--
ALTER TABLE `dz_cms_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dz_cms_content`
--
ALTER TABLE `dz_cms_content`
  MODIFY `cms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dz_contact`
--
ALTER TABLE `dz_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dz_enquiry`
--
ALTER TABLE `dz_enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dz_navigation_menu`
--
ALTER TABLE `dz_navigation_menu`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dz_products`
--
ALTER TABLE `dz_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `dz_product_attributes`
--
ALTER TABLE `dz_product_attributes`
  MODIFY `prod_attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dz_testimonial`
--
ALTER TABLE `dz_testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dz_user_role`
--
ALTER TABLE `dz_user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
