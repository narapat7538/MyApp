-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 05:16 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flutterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `apm_id` int(10) NOT NULL,
  `apm_name` varchar(100) NOT NULL,
  `apm_price` int(10) NOT NULL,
  `apm_location` varchar(100) NOT NULL,
  `apm_phone` varchar(10) NOT NULL,
  `apm_limitedroom` varchar(100) NOT NULL,
  `apm_facilities` varchar(100) NOT NULL,
  `apm_tpe` varchar(100) NOT NULL,
  `apm_detail` varchar(100) NOT NULL,
  `apm_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`apm_id`, `apm_name`, `apm_price`, `apm_location`, `apm_phone`, `apm_limitedroom`, `apm_facilities`, `apm_tpe`, `apm_detail`, `apm_image`) VALUES
(1, 'มะฮอกกานีบรีซเซอร์วิสอพาร์ทเม้นท์ ระยอง', 7500, '24/46 อดุลย์ธรรมประภ อดุลย์ธรรมประภาส, เชิงเนิน, เมืองระยอง, ระยอง', '0813056035', 'ห้องเช่า', 'Free wifi', 'อพาร์ทเม้นท์ ', 'ต้นไม้และสายลม\r\nGREEN Apartment แห่งเดียวในระยอง\r\n- Fully furnished ตกแต่งครบ พร้อมเข้าอยู่ได้ทัน', 'apm1.jpg'),
(2, 'Hi-End Luxury Condo', 8000, '177 อดุลย์ธรรมประภาส, เชิงเนิน, เมืองระยอง, ระยอง', '0614619456', 'ห้องเช่า', 'Free wifi', 'อพาร์ทเม้นท์ ', 'อากาศดีเหมาะแก่การพักผ่อน ส่วนกลางระดับHi-End Fitness Brand \"Life Fitness\" จากอมริกา\r\nแวดล้อมด้วยร้า', 'apm2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `condo`
--

CREATE TABLE `condo` (
  `condo_id` int(10) NOT NULL,
  `condo_name` varchar(100) NOT NULL,
  `condo_price` int(10) NOT NULL,
  `condo_location` varchar(100) NOT NULL,
  `condo_phone` varchar(10) NOT NULL,
  `condo_limitedroom` varchar(100) NOT NULL,
  `condo_facilities` varchar(100) NOT NULL,
  `condo_type` varchar(100) NOT NULL,
  `condo_detail` varchar(100) NOT NULL,
  `condo_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `condo`
--

INSERT INTO `condo` (`condo_id`, `condo_name`, `condo_price`, `condo_location`, `condo_phone`, `condo_limitedroom`, `condo_facilities`, `condo_type`, `condo_detail`, `condo_image`) VALUES
(1, 'iCondo ศาลายา 2 เดอะ แคมปัส', 2, 'ถ.ศาลายา-นครชัยศรี ต.ศาลายา อ.พุทธมณฑล จ.นครปฐม', '0244466812', 'ห้องพัก', 'Free Wifi', 'คอนโด', 'ทำเลศักยภาพ แหล่งรวมไลฟ์สไตล์ทันสมัย ไกล้มหาวิทยาลัยมหิดล ศาลายา และแหล่งช็อปปิ้งชั้นนำ รวมถึงรถไฟฟ้', 'icondo2.jpg'),
(2, 'iCondo ศาลายา', 1, 'ถ.ศาลายา-นครชัยศรี ต.ศาลายา อ.พุทธมณฑล จ.นครปฐม', '1375', 'ห้องพัก', 'Free wifi', 'คอนโด', 'อยู่ใกล้มหาลัยมหิดล ศาลายา สามารถเข้าออกถึง 2 ทาง ทั้งจากถนนบรมราชชนนี และถนน ศาลายา-นครไชยศรี นอกจา', 'icon1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(10) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `dormitory_price` int(10) NOT NULL,
  `dormitory_location` varchar(100) NOT NULL,
  `dormitory_phone` varchar(10) NOT NULL,
  `dormitory_limitedroom` varchar(100) NOT NULL,
  `dormitory_facilities` varchar(100) NOT NULL,
  `dormitory_type` varchar(100) NOT NULL,
  `dormitory_detail` varchar(100) NOT NULL,
  `dormitory_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `dormitory_name`, `dormitory_price`, `dormitory_location`, `dormitory_phone`, `dormitory_limitedroom`, `dormitory_facilities`, `dormitory_type`, `dormitory_detail`, `dormitory_image`) VALUES
(1, 'กรองทองแมนชั่นสุขุมวิท77 ( อ่อนนุช 19-21)', 6400, '907,909 ซ.อ่อนนุช 19 -21 ถ.อ่อนนุช แขวงสวนหลวง เขตสวนหลวง กรุงเทพ ', '0863138871', 'ห้องพักรายวัน', 'Free wifi', 'หอพัก', 'สัมผัสรูปแบบห้องพักที่หรูหราทันสมัยอย่างมีสไตล์โดดเด่นเป็นเอกลักษณ์เหนือใคร ด้วยการตกแต่งเฟอร์นิเจอร', 'dor1.jpg'),
(2, 'M PARK ศรีนครินทร์(ซีคอนสแควร์)', 8000, '55/1 ซ.สุภาพงษ์ 3 แยก5/2 ถ.ศรีนครินทร์ 42 แขวงหนองบอน เขตประเวศ กรุงเทพ', '0971701700', 'ห้องพักรายวัน', 'Free wifi', 'หอพัก', 'MPARK ห้องพักหรู รายวัน รายเดือน ตกแต่งสวย มีบริการอินเตอร์ เคเบิ้ลทีวีฟรี และที่จอดรถ 100 คัน ด้วยท', 'dor2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `game_id` varchar(15) NOT NULL,
  `game_name` varchar(255) NOT NULL,
  `game_price` int(5) NOT NULL,
  `game_detail` text NOT NULL,
  `game_img` varchar(255) NOT NULL,
  `game_stock` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `game_id`, `game_name`, `game_price`, `game_detail`, `game_img`, `game_stock`) VALUES
(52, 'q', 'qwq', 1, '1', 'pict_20211027_103436_4da87f2263.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `name`, `surname`) VALUES
('u1', 'p1', 'Nalinee', 'Inthamano'),
('u2', 'p2', 'Mintra', 'Deejai');

-- --------------------------------------------------------

--
-- Table structure for table `mansion`
--

CREATE TABLE `mansion` (
  `mansion_id` int(10) NOT NULL,
  `mansion_name` varchar(100) NOT NULL,
  `mansion_price` int(10) NOT NULL,
  `mansion_location` varchar(100) NOT NULL,
  `mansion_phone` varchar(10) NOT NULL,
  `mansion_limitedroom` varchar(100) NOT NULL,
  `mansion_facilities` varchar(100) NOT NULL,
  `mansion_type` varchar(100) NOT NULL,
  `mansion_detail` varchar(100) NOT NULL,
  `mansion_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mansion`
--

INSERT INTO `mansion` (`mansion_id`, `mansion_name`, `mansion_price`, `mansion_location`, `mansion_phone`, `mansion_limitedroom`, `mansion_facilities`, `mansion_type`, `mansion_detail`, `mansion_image`) VALUES
(1, 'วรรณศิริ แมนชั่น', 3500, 'ซ.11 ถ.ราษฎร์อุทิศ 1 บ่อยาง เมืองสงขลา สงขลา', '0818975727', 'ห้องพัก', 'Free wifi', 'เเมนชั่น', 'หอพักเน้นความสะดวกสบาย ราคาประหยัด บริการห้องพักทั้งรายวัน-รายเดือน\r\nใกล้ม.ทักษิณ ม.ราชภัฏสงขลา (5 น', 'man1.jpg'),
(2, 'เพชรแมนชั่น', 3500, '356-328สข.2029ตำบลหาดใหญ่อำเภอหาดใหญ่', '0831922639', 'ห้องพัก', 'Free wifi', 'เเมนชั่น', 'ห้องพักรายวันเริ่มต้น 360 บาท\r\nห้องพักรายเดือนเริ่มต้น 3,500 บาท\r\n3-5 นาที ถึงเซ็นทรัลเฟสติเวิล ไดอา', 'man2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`apm_id`);

--
-- Indexes for table `condo`
--
ALTER TABLE `condo`
  ADD PRIMARY KEY (`condo_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mansion`
--
ALTER TABLE `mansion`
  ADD PRIMARY KEY (`mansion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `apm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `condo`
--
ALTER TABLE `condo`
  MODIFY `condo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `mansion`
--
ALTER TABLE `mansion`
  MODIFY `mansion_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
