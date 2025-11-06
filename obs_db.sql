-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 09:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`, `created_at`) VALUES
('A10000Z', 'Fancy Carriages 5449', 'Fancy Carriages', 'B01.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1160.00', 1, '2022-11-28 16:04:45'),
('A10001Y', 'Fancy Carriages 5453', 'Fancy Carriages', 'B02.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1159.00', 1, '2022-11-28 16:10:53'),
('A10002X', 'Fancy Carriages 5455', 'Fancy Carriages', 'B03.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1159.00', 1, '2022-11-28 16:19:30'),
('A10003V', 'Fancy Carriages 5460', 'Fancy Carriages', 'B04.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1159.00', 1, '2022-11-28 16:22:58'),
('A10004U', 'Fancy Carriages 5457', 'Fancy Carriages', 'B05.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1160.00', 1, '2022-11-28 16:23:51'),
('A10005T', 'Fancy Carriages 5345', 'Fancy Carriages', 'B06.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1165.00', 1, '2022-11-28 16:26:04'),
('A10006S', 'Fancy Carriages 5461', 'Fancy Carriages', 'B07.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1170.00', 1, '2022-11-28 16:27:15'),
('A10007R', 'Fancy Carriages 5464', 'Fancy Carriages', 'B08.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1165.00', 1, '2022-11-28 16:28:10'),
('A10008Q', 'Fancy Carriages 5360', 'Fancy Carriages', 'B09.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1170.00', 1, '2022-11-28 16:31:56'),
('A10009P', 'Fancy Carriages 5462', 'Fancy Carriages', 'B10.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1165.00', 1, '2022-11-28 16:34:38'),
('A10010O', 'Fancy Carriages 5466', 'Fancy Carriages', 'B11.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1159.00', 1, '2022-11-28 16:42:02'),
('A10011N', 'Fancy Carriages 5467', 'Fancy Carriages', 'B12.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1159.00', 1, '2022-11-28 16:42:35'),
('A10012M', 'Fancy Carriages 5468', 'Fancy Carriages', 'B13.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1160.00', 1, '2022-11-28 16:44:10'),
('A10013L', 'Fancy Carriages 5469', 'Fancy Carriages', 'B14.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1170.00', 1, '2022-11-28 16:44:45'),
('A10014K', 'Fancy Carriages 5470', 'Fancy Carriages', 'B15.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1159.00', 1, '2022-11-28 16:45:27'),
('A10015J', 'Fancy Carriages 5471', 'Fancy Carriages', 'B16.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1160.00', 1, '2022-11-28 16:46:15'),
('A10016I', 'Fancy Carriages 5472', 'Fancy Carriages', 'B17.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1170.00', 1, '2022-11-28 16:49:49'),
('A10017H', 'Fancy Carriages 5473', 'Fancy Carriages', 'B18.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1165.00', 1, '2022-11-28 16:50:50'),
('A10018G', 'Fancy Carriages 5474', 'Fancy Carriages', 'B19.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1165.00', 1, '2022-11-28 16:51:26'),
('A10019F', 'Fancy Carriages 5475', 'Fancy Carriages', 'B20.png', 'Occasion:        Casual\r\nBag Closure:    Zipper\r\nPattern:            Plain\r\nMaterial:          Durashield Fabric\r\nBagsize:           Large\r\nFeatures:         Water-repellent, Miscellaneous Pocket, Anti-Microbal\r\n\r\n•	100% Authentic Hawk Bag.\r\n•	Treated with Virupro and Nanosilver anti-microbial protection.\r\n•	Self-sanitizing property against harmful viruses and bacteria.\r\n•	Made with Durashield fabric for exceptional weather resistance.\r\n•	Reinforced needlework by Lock-Stitch technology.\r\n•	Use quality water-repellent material.\r\n•	Heavy-duty zippers made with nylon-coil. \r\n•	Ergonomic and breathable shoulder strap.\r\n•	Foam padded back panel.\r\n•	Seamlessly sewn backpack grab handle.\r\n•	Spacious solo main compartment that can fit up to 16-inch laptop.\r\n•	Miscellaneous front pocket. \r\n•	Product weight: 350 grams\r\n•	Dimension: Large (30.5 L x 14 W x 42 H) cm\r\n•	Capacity: 18 L', '1159.00', 1, '2022-11-28 16:52:25'),
('B20000A', 'Fancy Carriages Women\'s Shoulder Sling Bag', 'Fancy Carriages', 's1.png', '- Textured sling bag\r\n- PU leather\r\n- Main compartment with zip fastening\r\n- 2 Inner compartments\r\n- 2 Inner hidden pockets\r\n- Detachable adjustable strap\r\n- Dimensions: L20.2cm x H13.3cm x W7.3cm', '1395.00', 2, '2022-11-28 17:25:33'),
('B20001B', 'Fancy Carriages the Dutch', 'Fancy Carriages', 's2.png', 'Bags from the Dutch brand Fancy Carriages. The Fancy Carriages the dutch bag is made of leather and available in the colors sand/beige and green. The main compartment and the front pocket close with a zipper. The crossbody has an adjustable shoulder strap.\r\n\r\nColor Sand:        Beige\r\nOuter material:  Leather\r\n Inner:                lining Textile\r\n Closure:            Rits', '2658.00', 2, '2022-11-28 17:47:11'),
('B20002C', 'Fancy Carriages Softshot Pearlized Bag', 'Fancy Carriages', 's3.png', 'Pearly grainy leather bag featuring gold-tone metal logo, adjustable and detachable shoulder strap and zipped double compartment.\r\nDesigner colour name: Pearl Blush\r\n\r\nProduct information\r\nComposition and details\r\nCalf Leather\r\nDetails: Metal\r\nColor: Pink\r\nGender: Women\r\nSeason: Fall Winter 2020\r\nSize & Fit\r\nW 8.27 x H 5.12 x D 3.54 inches\r\nShoulder Strap Drop: 22.83 inches\r\nW 21 x H 13 x D 9 cm\r\nShoulder Strap Drop: 58 cm', '3000.00', 2, '2022-11-28 17:55:14'),
('B20003D', 'Fancy Carriages Women\'s Shoulder Sling Bag', 'Fancy Carriages', 's5.png', '- PU leather\r\n- Detachable handle strap (L x W)cm: 57.5 x 0.4\r\n- Detachable & Adjustable shoulder strap (L x W)cm: 107.5 - 123 x 1.5\r\n- 2 Compartments with magnet button fastening- SIZE (L x H x W)CM : 18.5 x 12 x 8.2', '1424.00', 2, '2022-11-28 18:12:07'),
('B20004E', 'Fancy Carriages Wild Women\'s Sling Bag', 'Fancy Carriages', 's4.png', '- Croc effect crossbody bag\r\n- Polyurethane leather\r\n- Main compartments with zip fastening\r\n- 1 inner pocket sleeve\r\n- 1 back pocket slot\r\n- Lined interior\r\n- Detachable adjustable shoulder strap\r\n- Dimensions: L20cm x H19.7cm x W6.5cm', '623.00', 2, '2022-11-28 18:19:13'),
('B20005F', 'Fancy Carriages Wild Women\'s Sling Bag', 'Fancy Carriages', 's10.png', '- Multi tones colourblock top handle crossbody bag\r\n- Polyurethane\r\n- 1 main compartment with turn lock button fastening\r\n- 1 inner zip pocket\r\n- 2 inner pocket sleeves\r\n- Detachable and adjustable shoulder strap\r\n- Lined interior\r\n- Dimensions: L26.5cm x H18.5cm x W12.1cm', '837.00', 2, '2022-11-28 18:21:49'),
('B20006G', 'Fancy Carriages Women\'s Daily Classic Coated Piqué Canvas Cl', 'Fancy Carriages', 's14.png', 'For casual days that need a fun and functional bag, this Daily Classic style with silver-tone accents and adjustable shoulder strap is perfect. Includes an iconic Lacoste polo charm.\r\n\r\nExterior: one zip pocket. Interior: three pockets including one zip pocket\r\nAdjustable, detachable shoulder strap\r\nShiny nickel metal crocodile branding, clasp and polo charm\r\nDimensions 25 x 18 x 6 cm\r\nPetit piqué PVC exterior', '5000.00', 2, '2022-11-28 18:26:19'),
('B20007H', 'Fancy Carriages Hoga Sling Bag', 'Fancy Carriages', 's20.png', 'Product Features: Solid tone sling bag with clip buckle front pocket\r\n-Textile\r\n-Zip fastening\r\n-1 main compartment\r\n-1 front pocket\r\n-1 rear pocket\r\n-Detachable adjustable shoulder strap', '1399.00', 2, '2022-11-28 18:30:39'),
('B20008I', 'Fancy Carriages Black Gotham Pack Messenger Bag', 'Fancy Carriages', 's28.png', 'Coated canvas and buffed calfskin messenger bag in black. Logo embossed at face.\r\n\r\n· Detachable logo-embossed leather tag at adjustable shoulder strap\r\n· Zip compartment at face\r\n· Zip pocket at quilted and padded back face\r\n· Two-way zip closure\r\n· Two patch pockets at interior\r\n· Canvas lining\r\n· Gunmetal-tone hardware\r\n· H12 x W7 x D3.75 in\r\nSupplier color: Charcoal/Black\r\nTextile, calfskin.\r\nImported.', '6000.00', 2, '2022-11-28 18:34:42'),
('B20009J', 'Fancy Carriages logo print messenger bag', 'Fancy Carriages', 's17.png', 'black \r\ntonal design\r\nsmall logo print to the front \r\ntop zip fastening \r\nzip fastening pocket to the front \r\nadjustable shoulder strap\r\ninternal slip pocket', '7000.00', 2, '2022-11-28 18:40:17'),
('B20010K', 'Fancy Carriages Messenger Bag PU Leather Men\'s Chest Bag', 'Fancy Carriages', 's32.png', 'There is a hidden zipper closure and security pocket on the back, making it convenient for storing frequently used items such as smartphones and regular trips\r\nMulti-layer large capacity, wear-resistant, water repellent, lightweight, stylish\r\nPlease wipe it with water, it will not get wet\r\nLarge capacity, you can hold your normal belongings\r\nYou can fold folding umbrella, cell phone, power bank etc', '2500.00', 2, '2022-11-28 18:44:38'),
('D40001A', 'Fancy Carriages Novel Rose Brown Duffle', 'Fancy Carriages', 'D01.png', 'Gender :Unisex\r\nColor :Rose Brown\r\nSize :International:42.5L\r\n\r\n-Signature striped fabric liner -Internal Mesh storage sleeve -Two-way waterproof zipper -Reinforced and articulated carrying handles -Removable padded webbing shoulder strap -Signature shoe compartment -Classic woven label', '6290.00', 4, '2022-11-29 01:17:24'),
('D40002B', 'Fancy Carriages Sutton Mid Chili/Black/Ivy Green/Storm', 'Fancy Carriages', 'D02.png', 'Blue Duffle\r\nGender :Unisex\r\nColor :Chl/Bk/Ivygr/Strmbl\r\nSize :International:28L\r\n\r\n-Signature striped liner -Zippered main compartment with pebbled leather pulls -Top carrying handles -Removable shoulder strap -Front storage sleeve', '4490.00', 4, '2022-11-29 01:18:36'),
('D40003C', 'Fancy Carriages Novel Andy Warhol Duffel', 'Fancy Carriages', 'D03.png', 'Gender: Unisex\r\nCOLOR: Pink Camo/Blue Camo/Black\r\nSIZE: 42.5L\r\n-Andy Warhol Camouflage color-block prints\r\n-Hand-scripted Andy Warhol signature liner print\r\n-Main compartment with waterproof zipper\r\n-Reinforced handles for comfortable carrying\r\n-Removable padded shoulder strap with Andy Warhol signature screen print\r\n-Signature shoe compartment\r\n-Internal mesh storage sleeve\r\n-Internal Andy Warhol for Herschel Supply label\r\n-Dimensions: 11.75\"(H) x 20.5\"(W) x 11\"(D), 42.5L', '6290.00', 4, '2022-11-29 01:20:13'),
('Z30001Z', 'Fancy Carriages Terry Tote bag', 'Fancy Carriages', 'T01.png', 'Vivid color contrasts and an ironic character define this tote bag with a deconstructed design in soft terry with a summery mood. A maxi version of Prada\'s iconic lettering logo embroidered on the front enhances the accessory.\r\n\r\nTerry handles\r\nEmbroidered lettering logo on the front and enameled metal triangle logo on the side\r\nRe-Nylon logo-print lining with zipper pocket\r\nHeight: 34cm\r\nLength: 16cm\r\nWidth: 40cm', '7780.00', 3, '2022-11-29 01:08:47'),
('Z30002Y', 'Fancy Carriages JW Tote Bag', 'Fancy Carriages', 'T02.png', 'New LifeWear that combines UNIQLO’s focus on design, fit, fabric, and functionality with JW Anderson’s focus on traditional British apparel into innovative designs.\r\n\r\n- A cotton canvas tote bag in a handy larger size.\r\n- High-quality faux leather handle.\r\n- Unisex design.\r\n- With a large inside pocket.\r\n- JW Anderson embroidery on the front.', '1490.00', 3, '2022-11-29 01:10:43'),
('Z30003X', 'Fancy Carriages Denim Tote Bag', 'Fancy Carriages', 'T03.png', 'A vintage-inspired gardener\'s bag. Printed with a silk-screen logo and embellished with brass-finish hardware, it offers three practical internal pockets and a detachable shoulder strap.\r\nProduct code: 1BG439_AJ6_F0008_V_OOO\r\nDenim handles\r\nDetachable and adjustable 105 cm woven shoulder strap\r\nMetal hardware\r\nPrinted logo on the front and on enameled metal triangle\r\nSnap closure on the sides\r\nDenim interior with three pockets, one with a zipper\r\nSmall feet on the bottom\r\nHeight: 20cm\r\nLength: 15cm\r\nWidth: 28cm', '8090.00', 3, '2022-11-29 01:13:13'),
('Z30004W', 'Fancy Carriages Re-Nylon Tote Bag', 'Fancy Carriages', 'T04.png', 'A lively geometric motif inspired by the iconic Prada triangle characterizes this padded tote crafted from Re-Nylon, a regenerated yarn produced from recycled, purified plastic trash collected in the ocean, fishing nets, and textile waste fibers. Decorated with nappa leather handles and a detachable woven fabric shoulder strap, it features the iconic enamel triangle on the front.\r\nProduct code: 1BG435_RDJN_F0002_V_OOO\r\nTriangle quilting\r\nNappa leather handles\r\nDetachable adjustable 85 cm logo-print woven nylon shoulder strap\r\nMetal hardware\r\nEnameled metal triangle logo on the front\r\nZipper closure\r\nRe-Nylon logo print lining with three pockets, including one with zipper\r\nHeight: 26cm\r\nLength: 17cm\r\nWidth: 33cm', '5723.00', 3, '2022-11-29 01:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'Mark Cooper', 'Sample Street', 'Here', '2306', 'Sampple'),
(5, 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'Philippines'),
(6, 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'Philippines'),
(7, 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(8, 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, '80.00', '2022-06-21 00:09:36', 'Mark Cooper', 'Sample Street', 'Here', '2306', 'Sampple'),
(6, 5, '220.00', '2022-06-21 01:35:16', 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'Philippines'),
(7, 6, '20.00', '2022-06-21 01:38:20', 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'Philippines'),
(8, 7, '20.00', '2022-06-21 01:40:28', 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(9, 8, '80.00', '2022-06-21 01:42:56', 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-4571-0402-2', '20.00', 2),
(5, '978-1-44937-075-6', '20.00', 1),
(5, '978-0-321-94786-4', '20.00', 1),
(6, '978-1-4571-0402-2', '20.00', 10),
(6, '978-1-44937-075-6', '20.00', 1),
(7, '978-0-7303-1484-4', '20.00', 1),
(8, '978-1-1180-2669-4', '20.00', 1),
(9, '978-1-44937-019-0', '20.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Back Pack'),
(2, 'Sling Bag'),
(3, 'Tote Bag'),
(4, 'Duffle Bag');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
