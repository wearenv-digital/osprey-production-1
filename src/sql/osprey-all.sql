-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: sql
-- Generation Time: Jan 07, 2023 at 05:37 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osprey-all`
--
CREATE DATABASE IF NOT EXISTS `osprey-all` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `osprey-all`;

-- --------------------------------------------------------

--
-- Table structure for table `acc_certs`
--

DROP TABLE IF EXISTS `acc_certs`;
CREATE TABLE `acc_certs` (
  `product_code` varchar(11) DEFAULT NULL,
  `Impact protection` varchar(17) DEFAULT NULL,
  `Salt fog resistance` varchar(17) DEFAULT NULL,
  `Corrosion testing` varchar(17) DEFAULT NULL,
  `Vibration testing` varchar(17) DEFAULT NULL,
  `Ingress Protection` varchar(17) DEFAULT NULL,
  `European/US/EMC` varchar(17) DEFAULT NULL,
  `Marine` varchar(17) DEFAULT NULL,
  `Hazardous Area` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `acc_certs`
--

INSERT INTO `acc_certs` (`product_code`, `Impact protection`, `Salt fog resistance`, `Corrosion testing`, `Vibration testing`, `Ingress Protection`, `European/US/EMC`, `Marine`, `Hazardous Area`) VALUES
('OS06BS', '', '', '', '', '', '', '', ''),
('OS01BY', '', '', '', '', '', '', '', ''),
('OSTANKAABB', '', '', '', '', '', '', '', ''),
('OSWASH', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec'),
('OS10CBD', '', '', '', '', '', '', '', ''),
('OS07CBD', '', '', '', '', 'IP66', '', '', ''),
('OS09CBD', '', '', '', '', 'IP66', '', '', ''),
('OS08CBJ44-A', '', '', '', '', 'IP66', '', '', ''),
('OS08CBS44', '', '', '', '', 'IP66', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `acc_features`
--

DROP TABLE IF EXISTS `acc_features`;
CREATE TABLE `acc_features` (
  `product_code` varchar(11) DEFAULT NULL,
  `feature_1` varchar(33) DEFAULT NULL,
  `feature_2` varchar(33) DEFAULT NULL,
  `feature_3` varchar(57) DEFAULT NULL,
  `feature_4` varchar(21) DEFAULT NULL,
  `feature_5` varchar(33) DEFAULT NULL,
  `feature_6` varchar(36) DEFAULT NULL,
  `feature_7` varchar(51) DEFAULT NULL,
  `feature_8` varchar(51) DEFAULT NULL,
  `feature_9` varchar(10) DEFAULT NULL,
  `feature_10` varchar(10) DEFAULT NULL,
  `feature_11` varchar(10) DEFAULT NULL,
  `feature_12` varchar(10) DEFAULT NULL,
  `feature_13` varchar(10) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL,
  `features_concat` varchar(281) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `acc_features`
--

INSERT INTO `acc_features` (`product_code`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `features_concat`) VALUES
('OS06BS', 'Suitable for fixed cameras', '', '', '', '316L stainless steel construction', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', '', '• Suitable for fixed cameras\n• 316L stainless steel construction\n• Suitable for explosionproof and marine environments'),
('OS01BY', 'Suitable for PTZ cameras', '', '', '', '316L stainless steel construction', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', '', '• Suitable for PTZ cameras\n• 316L stainless steel construction\n• Suitable for explosionproof and marine environments'),
('OSTANKAABB', '5, 10 & 25 litre capacity options', '10 & 15 metre delivery head pumps', 'AIS316L stainless steel frame cabinet', 'Optional float switch', 'Easy installation & maintenance', 'Wide range of supply voltage options', 'Polyethylene high density tank', 'Highly resistant to chemical products', '', '', '', '', '', '', '', '', '• 5, 10 & 25 litre capacity options\n• 10 & 15 metre delivery head pumps\n• AIS316L stainless steel frame cabinet\n• Optional float switch\n• Easy installation & maintenance\n• Wide range of supply voltage options\n• Polyethylene high density tank\n• Highly resistant to chemical products'),
('OSWASH', 'Suitable for fixed or PTZ cameras', 'Easy installation & maintenance', 'Use with washer tank OSTANKAABB', '', '', '', '', '', '', '', '', '', '', '', '', '', '• Suitable for fixed or PTZ cameras\n• Easy installation & maintenance\n• Use with washer tank OSTANKAABB'),
('OS10CBD', 'Explosion proof conduit pipe', 'Flame resistant', 'Oil resistant', 'Water resistant', 'Abrasion resistant', 'Flexible', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', '', '• Explosion proof conduit pipe\n• Flame resistant\n• Oil resistant\n• Water resistant\n• Abrasion resistant\n• Flexible\n• Suitable for explosionproof and marine environments'),
('OS07CBD', '', 'Explosionproof Junction Box', 'ATEX  II 2G Ex d IIB T6 Gb; II 2D Ex tb IIIC IP68 T80℃ Db', '', '316L stainless steel construction', 'Weatherproof to IP66', 'DC12V/24V or 230VAC', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', '• Explosionproof Junction Box\n• ATEX  II 2G Ex d IIB T6 Gb; II 2D Ex tb IIIC IP68 T80℃ Db\n• 316L stainless steel construction\n• Weatherproof to IP66\n• DC12V/24V or 230VAC\n• Suitable for explosionproof and marine environments'),
('OS09CBD', '', '', 'ATEX  II 2G Ex d IIB T6 Gb; II 2D Ex tb IIIC IP68 T80℃ Db', '', '316L stainless steel construction', 'Weatherproof to IP66', 'DC12V/24V or 230VAC', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', '• ATEX  II 2G Ex d IIB T6 Gb; II 2D Ex tb IIIC IP68 T80℃ Db\n• 316L stainless steel construction\n• Weatherproof to IP66\n• DC12V/24V or 230VAC\n• Suitable for explosionproof and marine environments'),
('OS08CBJ44-A', '', '', 'IIC', '', 'Aluminium construction', 'Weatherproof to IP66', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', '• IIC\n• Aluminium construction\n• Weatherproof to IP66\n• Suitable for explosionproof and marine environments'),
('OS08CBS44', '', '', 'IIC', '', '316L stainless steel construction', 'Weatherproof to IP66', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', '• IIC\n• 316L stainless steel construction\n• Weatherproof to IP66\n• Suitable for explosionproof and marine environments');

-- --------------------------------------------------------

--
-- Table structure for table `acc_info`
--

DROP TABLE IF EXISTS `acc_info`;
CREATE TABLE `acc_info` (
  `product_code` varchar(11) DEFAULT NULL,
  `product_name` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image_location` varchar(10) DEFAULT NULL,
  `image` varchar(10) DEFAULT NULL,
  `technical_image` varchar(13) DEFAULT NULL,
  `technical_image_2` varchar(10) DEFAULT NULL,
  `technical_image_3` varchar(10) DEFAULT NULL,
  `download_link` varchar(10) DEFAULT NULL,
  `description` varchar(675) DEFAULT NULL,
  `feature_1` varchar(33) DEFAULT NULL,
  `feature_2` varchar(33) DEFAULT NULL,
  `feature_3` varchar(57) DEFAULT NULL,
  `feature_4` varchar(21) DEFAULT NULL,
  `feature_5` varchar(33) DEFAULT NULL,
  `feature_6` varchar(36) DEFAULT NULL,
  `feature_7` varchar(51) DEFAULT NULL,
  `feature_8` varchar(51) DEFAULT NULL,
  `feature_9` varchar(10) DEFAULT NULL,
  `feature_10` varchar(10) DEFAULT NULL,
  `feature_11` varchar(10) DEFAULT NULL,
  `feature_12` varchar(10) DEFAULT NULL,
  `feature_13` varchar(10) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `acc_info`
--

INSERT INTO `acc_info` (`product_code`, `product_name`, `image_location`, `image`, `technical_image`, `technical_image_2`, `technical_image_3`, `download_link`, `description`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`) VALUES
('OS06BS', 'Stainless steel wall bracket for fixed cameras', '', '', 'Not available', '', '', '', 'Heavy duty bracket with joint, made of AISI 316L thick gauge stainless steel. The rotation\nof the joint along the vertical and horizontal axes allows a wide range of positions. It is\nparticularly suitable for stainless steel weatherproof and explosionproof housings. Can be combined with pole and corner mount adapters.', 'Suitable for fixed cameras', '', '', '', '316L stainless steel construction', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', ''),
('OS01BY', 'Stainless steel wall bracket for PTZ cameras', '', '', 'Not available', '', '', '', 'Heavy duty bracket made of AISI 316L thick gauge stainless steel.  It is designed for stainless steel weatherproof and explosionproof housings. Can be combined with pole and corner mount adapters.', 'Suitable for PTZ cameras', '', '', '', '316L stainless steel construction', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', ''),
('OSTANKAABB', 'Washer tank for marine cameras', '', '', '', '', '', '', 'The WPN400 washer series offers a wide range of water reservoir capacities with different pumping height capabilities. The tank is protected by a frame in AISI316 stainless steel.  The washer units are provided with an IP66 rated watertight plastic junction box that contains the power supply for the self-priming submersible pump located inside the tank. The optional float switch prevents the washer unit from running dry and causing damage to the pump. It is wired into the washer power supply unit so when the water level drops to a specific level the power to the pump is cut. The alarm output can be connected to the camera to indicate when the bottle needs refilling.\n', '5, 10 & 25 litre capacity options', '10 & 15 metre delivery head pumps', 'AIS316L stainless steel frame cabinet', 'Optional float switch', 'Easy installation & maintenance', 'Wide range of supply voltage options', 'Polyethylene high density tank', 'Highly resistant to chemical products', '', '', '', '', '', '', '', ''),
('OSWASH', 'Washer nozzel for marine cameras', '', '', '', '', '', '', 'The Washer bracket/nozzle assembly provides an effective wash facility for marine cameras clamping neatly via camera mounting bracket bolts.\nThe bracket arm provides holes for cable-tying a washer pipe (not included).  To operate, simply set a preset position in the camera as a\ndedicated wash position, then enable the wash function for the camera. Washer tubing is 4mm inside diameter; 6mm outside diameter\nYou will require a washer bottle (OSTANKAABB) and wash relay control.', 'Suitable for fixed or PTZ cameras', 'Easy installation & maintenance', 'Use with washer tank OSTANKAABB', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('OS10CBD', 'Explosion proof conduit pipe', '', '', 'Not available', '', '', '', 'The armoured, barrier cable with gland secures the cable and cable connections from tampering.  \nand wet/humid environments.  It is ATEX certified.\n15 or 20mm cable gland.', 'Explosion proof conduit pipe', 'Flame resistant', 'Oil resistant', 'Water resistant', 'Abrasion resistant', 'Flexible', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '', ''),
('OS07CBD', 'Explosionproof stainless steel junction box', '', '', 'Not available', '', '', '', 'This is a versatile explosionproof ATEX junction box for use in Zone 1/21 hazardous areas, specifically designed for CCTV systems.\nIt is made of 316L stainless steel.  It has options of 12/24/230v power supply.\nCable entries are available from 2 to 8 enabling a wide range of connection options.\n25mm cable entry.', '', 'Explosionproof Junction Box', 'ATEX  II 2G Ex d IIB T6 Gb; II 2D Ex tb IIIC IP68 T80℃ Db', '', '316L stainless steel construction', 'Weatherproof to IP66', 'DC12V/24V or 230VAC', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', ''),
('OS09CBD', 'Explosionproof stainless steel junction box', '', '', 'Not available', '', '', '', 'This is a versatile explosionproof ATEX junction box for use in Zone 1/21 hazardous areas, specifically designed for CCTV systems.\nIt is made of 316L stainless steel.  It has options of 12/24/230v power supply.\nCable entries are available from 2 to 8 enabling a wide range of connection options.\n25mm cable entry.', '', '', 'ATEX  II 2G Ex d IIB T6 Gb; II 2D Ex tb IIIC IP68 T80℃ Db', '', '316L stainless steel construction', 'Weatherproof to IP66', 'DC12V/24V or 230VAC', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', ''),
('OS08CBJ44-A', 'Explosionproof aluminium junction box', '', '', 'Not available', '', '', '', 'This is a versatile flameproof ATEX explosionproof junction box for use in Zone 1/21 hazardous areas, specifically designed for CCTV systems.\nIt is made of aluminium.  Cable entries are available from 2 to 8 enabling a wide range of connection options.\n25mm cable entry.', '', '', 'IIC', '', 'Aluminium construction', 'Weatherproof to IP66', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', ''),
('OS08CBS44', 'Explosionproof stainless steel junction box', '', '', 'Not available', '', '', '', 'This is a versatile explosionproof ATEX junction box for use in Zone 1/21 hazardous areas, specifically designed for CCTV systems.\nIt is made of aluminium.  It has options of 12/24/230v power supply.\nCable entries are available from 2 to 8 enabling a wide range of connection options.', '', '', 'IIC', '', '316L stainless steel construction', 'Weatherproof to IP66', '', 'Suitable for explosionproof and marine environments', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `acc_physical`
--

DROP TABLE IF EXISTS `acc_physical`;
CREATE TABLE `acc_physical` (
  `product_code` varchar(11) DEFAULT NULL,
  `Material` varchar(39) DEFAULT NULL,
  `Operating temp` varchar(17) DEFAULT NULL,
  `Thermostat/heater` varchar(17) DEFAULT NULL,
  `Relative humidity` varchar(17) DEFAULT NULL,
  `Atmospheric pressure` varchar(24) DEFAULT NULL,
  `Weight (kg)` varchar(28) DEFAULT NULL,
  `Dimensions (mm)` varchar(82) DEFAULT NULL,
  `Cable entry` varchar(30) DEFAULT NULL,
  `Mounting options` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `acc_physical`
--

INSERT INTO `acc_physical` (`product_code`, `Material`, `Operating temp`, `Thermostat/heater`, `Relative humidity`, `Atmospheric pressure`, `Weight (kg)`, `Dimensions (mm)`, `Cable entry`, `Mounting options`) VALUES
('OS06BS', 'AISI- 316L Stainless Steel', '', '', '', '', '', '', '', ''),
('OS01BY', 'AISI- 316L Stainless Steel', '', '', '', '', '', '', '', ''),
('OSTANKAABB', 'AISI316L Stainless Steel; Tank HDPE HMW', '', '', '', '-20° +60°C (-4° +140° F)', '3kg (5L); 4kg(10L); 7kg(25L)', '279Hx195Wx263D (5L); 353Hx235Wx290D(10L); 527Hx315Wx355D(25L);\nGxFxH (see drawing)', 'For 5.5-8mm diameters cables', 'Wall'),
('OSWASH', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec', 'No technical spec'),
('OS10CBD', '', '', '', '', '', '', '1m length (standard)', '3/4 inch, 20 or 15mm.  ', ''),
('OS07CBD', 'AISI- 316L Stainless Steel', '-40℃～60℃', 'Optional', '≤ 95%（+25°C）', '80kpa～106 kpa', '', '400mm*500mm*150mm', 'M25*1.5 output(original G3/4)', ''),
('OS09CBD', 'AISI- 316L Stainless Steel', '-40℃～60℃', 'Optional', '≤ 95%（+25°C）', '80kpa～106 kpa', '', '400mm*500mm*150mm', 'M25*1.5 output (original G3/4)', ''),
('OS08CBJ44-A', 'Aluminum', '-40℃～60℃', '', '≤ 95%（+25°C）', '80kpa～106 kpa', '', '154mm*62mm', 'M25*1.5 output (original G3/4)', ''),
('OS08CBS44', 'AISI- 316L Stainless Steel', '-40℃～60℃', 'Optional', '≤ 95%（+25°C）', '80kpa～106 kpa', '', '400mm*500mm*150mm', 'M25*1.5 output (original G3/4)', '');

-- --------------------------------------------------------

--
-- Table structure for table `acc_power`
--

DROP TABLE IF EXISTS `acc_power`;
CREATE TABLE `acc_power` (
  `product_code` varchar(11) DEFAULT NULL,
  `Power supply` varchar(27) DEFAULT NULL,
  `Power consumption` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `acc_power`
--

INSERT INTO `acc_power` (`product_code`, `Power supply`, `Power consumption`) VALUES
('OS06BS', '', ''),
('OS01BY', '', ''),
('OSTANKAABB', '24V~, 115V~, 230V~ (+/-10%)', '50W (10m pump); 85W (15m pump)'),
('OSWASH', 'No technical spec', 'No technical spec'),
('OS10CBD', '', ''),
('OS07CBD', 'DC12V/24V or 230VAC', ''),
('OS09CBD', 'DC12V/24V or 230VAC', ''),
('OS08CBJ44-A', '', ''),
('OS08CBS44', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `av`
--

DROP TABLE IF EXISTS `av`;
CREATE TABLE `av` (
  `product_code` varchar(14) DEFAULT NULL,
  `Camera` varchar(37) DEFAULT NULL,
  `Resolution` varchar(20) DEFAULT NULL,
  `Pixels` varchar(25) DEFAULT NULL,
  `Frame rate` varchar(79) DEFAULT NULL,
  `Sensitivity` varchar(72) DEFAULT NULL,
  `Optical Lens` varchar(52) DEFAULT NULL,
  `Digital zoom` varchar(55) DEFAULT NULL,
  `Aperture range` varchar(11) DEFAULT NULL,
  `Angle of view` varchar(125) DEFAULT NULL,
  `Min-working distance` varchar(20) DEFAULT NULL,
  `Zoom speed` varchar(33) DEFAULT NULL,
  `Shooting Mode` varchar(71) DEFAULT NULL,
  `Focusing mode` varchar(32) DEFAULT NULL,
  `IR Illumination range` varchar(21) DEFAULT NULL,
  `Maximum vehicle speed` varchar(8) DEFAULT NULL,
  `Digital image stabilisation` varchar(3) DEFAULT NULL,
  `DORI` varchar(10) DEFAULT NULL,
  `On-board storage (option)` varchar(124) DEFAULT NULL,
  `White balance` varchar(93) DEFAULT NULL,
  `Wide Dynamic Range` varchar(10) DEFAULT NULL,
  `Signal to Noise ratio` varchar(16) DEFAULT NULL,
  `Image features` varchar(94) DEFAULT NULL,
  `Privacy Â masking` varchar(28) DEFAULT NULL,
  `Analytics` varchar(150) DEFAULT NULL,
  `Video compression` varchar(112) DEFAULT NULL,
  `Bitrate` varchar(17) DEFAULT NULL,
  `Audio connection` varchar(67) DEFAULT NULL,
  `Audio compression` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `av`
--

INSERT INTO `av` (`product_code`, `Camera`, `Resolution`, `Pixels`, `Frame rate`, `Sensitivity`, `Optical Lens`, `Digital zoom`, `Aperture range`, `Angle of view`, `Min-working distance`, `Zoom speed`, `Shooting Mode`, `Focusing mode`, `IR Illumination range`, `Maximum vehicle speed`, `Digital image stabilisation`, `DORI`, `On-board storage (option)`, `White balance`, `Wide Dynamic Range`, `Signal to Noise ratio`, `Image features`, `Privacy Â masking`, `Analytics`, `Video compression`, `Bitrate`, `Audio connection`, `Audio compression`) VALUES
('BSOS-1Z4I-I68', '1MP 1/2.8\" CMOS', '1MP', '', '40m', '0.001lx @F1.2 colour; 0lx IR', '2.8-12mm x4  ', '', '', '', '', '', '', '', '', '', '', '', '', 'n/a', '', '', '', '', '', 'H264/265', '', 'n/a', 'n/a'),
('BHOS2F4II66M', 'SONY 1/2.7â€³CMOS', '', '1920Ã—1080 (2MP)', '2 megapixel and following 25 frame(full-time), support 1~25 fps Â is adjustable', 'ColorÂ 0.1Lux@F1.2,BW0.01Â Lux@F1.2;', '4mmã€6mm options', '', '', '', '', '', '', '', '15m @ 850nm', '', '', '', '', '', 'n/a', '', 'Rotate mode, Saturation, Brightness, Contrast adjustable by Â client software or web browser', '', '', 'H.264/H.265/MJPEG', '32 Kbps~8Mbps', '', 'Base Line Profile / Main Profile'),
('BSOS12F28II67', '1/2.8\" Sony Exmor CMOS', '2MP, 8MP', '', 'Max. 25fps', 'Colour: 0.03Lux;B/W: 0Lux(IR LED on)', '2.8mm fixed or 2.7-12mm varifocal', '8x', '', 'H: 113.7Â° / V: 61.5Â°', '', '', '', '', 'IR LED Upto 30M', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('BSOS2FV0I66', '1/2.8â€, 2.1M Sony STARVIS Sensor', '2MP', '', '25fps@1080p', 'Colour : 0.2Lux@50IRE / F1.2 / 3100K;BW : 0.0005Lux@50IRE / F1.2 ', '2.7~12mm, F1.3', '', '', '', '', '', '', '', 'IR LED Upto 30M', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', '25fps/JPEG 1fps', '', '', ''),
('BSOA-2Z4I-I67', '2MP  1/ 2.8â€ CMOS  1920 x 1080 pixe', '2MP', '', 'Dynamic with lens zoom angle. Up to 60m', 'Colour 0.001lx; Mono 0.001lx @ F1.2', '2.7-12mm    Motorised.  Smart auto-focus', '', '', '', '', '', '', '', '', '', '', '', 'Built-in on-camera SD Card recording (up to 256GB) for local back-up', '', '120 dB HDR', 'Better than 55dB', 'WDR, BLC, HLC, Defog, DIS', '', 'Perimeter, virtual fences, loitering, objects left/removed, video overlay, email alarm', '', '', 'G711 Line in/Line out', 'From 8kbps to 64kbps; Duplex, bi-directional'),
('BSOS12F20I66', '1/1.7\" Sony STARVIS CMOS', '12MP', '', 'Max. 20fps@4000x3000', 'Colour: 0.09Lux', 'Fixed 1.85mm, F2.0', '8x', '', 'H: 180Â° / V: 180Â°', '', '', '', '', 'No IR', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('DSOS-1Z4I-I68', '1MP 1/3\" CMOS', '1MP', '', '40m', '0.0001lx @F1.2 colour; 0lx IR', '2.7-12mm x4  ', '', '', '', '', '', '', '', '', '', '', '', '', 'n/a', '', '', '', '', '', 'H264/MJPEG', '', 'n/a', 'n/a'),
('DHOS2F4II66M', 'Â SONY1/3â€³CMOS Senor CCD', '', '1920Ã—1080 (2MP)', '25fps', 'Color Â 0.1Lux@F1.1, Â BW Â 0.01Â Lux@F1.1;', '4mmã€6mmã€8mm Â  Options', '', '', '', '', '', '', '', '15m @ 850nm', '', '', '', '', '', '', '', 'Â Rotate mode, Saturation, Brightness, Contrast adjustable by client software or web browser', '', '', 'H.264/H.265/MJPEG', '32 Â Kbps~8Mbps', '', 'BaseLine Â Profile / Main Profile'),
('BHOS2Z18OI66M', 'Â SONY 1/2.8â€³ CMOS Senor CCD', '', '1920Ã—1080 (2MP)', '25fps', 'Color Â 0.05Lux@F1.6, Â BW Â 0.01Â Lux@F1.6', '4.7 - 84.6 mm motorised zoom lens (x18)', '', 'F1.6 â€“ F3', '58.3-3.2 degree (Wide-Tele)', '10-1500mm(Wide-Tele)', 'Approx. 2.7s(Optical Wide-Tele)', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', 'na', '', '', '', 'Micro SD card 128GB', '', '', '', '', '', '', 'H.264/H.265/MJPEG', '32 Â Kbps~16Mbps', 'na', 'na'),
('BHTS3F8OI66M', '', '', '', 'Main Stream: D1 @ 25fps', '', '', '16x', '', '', '', '', '', '', '', '', '', '', 'Micro SD card 128GB', '', '', '', '', 'Off / On (4Â Area, Rectangle', 'Perimeter, Single Virtual Fences, Double Virtual Fences, Object Left, Object Removed', '', '100Kbps ~ 6Mbps', '1ch Audio In,1ch Audio Out(optional)', ''),
('PHOS2Z260I66M', '1/2.8â€³Progressive Â Scan CMOS', 'â‰¥1000TVL', '1920Ã—1080 (2MP)', '', 'Color ï¼š0.001Lux @ (F1.5ï¼ŒAGC ON); BW ï¼š0.0001Lux @(F1.5ï¼ŒAGC Â ON)', 'Â 5-130mm, 26x', '16x', 'F1.6-F3.5', '58.3-3.2Â°(Wide-Tele)', '10-1000mm(Wide-Tele)', 'About 3s( Â optional , Wide-Tele)', '', 'Auto / semi Â auto / manual', 'na', '', '', '', 'Built in Micro SD card slot, Â support SD/SDHC/SDXC Micro card (maximum support 256G),support manual / alarm Â video recordi', 'Auto/ manual / ATW Â / Outdoor / indoor fluorescent lamp / lamp / white balance Â white balan', 'Yes', 'ï¼ž 52dB', '', 'Yes', '', 'H.264/H.265/MJPEG', '', '', 'G.711/G.726'),
('DSOS2Z200I67', '1/2.8\" Sony STARVIS CMOS', '2MP', '', 'Max. 25fps@1920x1080', 'Colour: 0.2Lux@50IRE, BW: 0.01Lux@50IRE', 'Optical zoom 20x, 4.7-94mmÂ±5%', '16x', '', 'H: 55.5Â°-3Â°', '', '', '', '', 'No IR', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('PSOA-3Z30-XI68', '3MP  1/ 2.8â€ CMOS', '3MP', '', 'IR â€“ 300m; White light â€“ 250m', 'Colour 0.01lx @ F1.2; Mono 0.0001lx @ F1.2', 'Motorised x30 zoom 4.5-135mm  ', '', '', 'HFOV  59.9-2.3 degrees', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Perimeter, line crossing, loitering, objects left/removed', 'H264, H265, MJPEG  ONVIF S, G, Q', '100kbps to 12Mbps', '', ''),
('PSOS-3Z30-XI68', '3MP  1/ 2.8â€ CMOS', '3MP', '', 'IR â€“ 300m; White light â€“ 250m', 'Colour 0.01lx @ F1.2; Mono 0.0001lx @ F1.2', 'Motorised x30 zoom 4.5-135mm  ', '', '', 'HFOV  59.9-2.3 degrees', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Perimeter, line crossing, loitering, objects left/removed', 'H264, H265, MJPEG  ONVIF S, G, Q', '100kbps to 12Mbps', '', ''),
('PHOS2Z200I66M', '1/2.8â€³Â Progressive Scan CMOS', '', '', '', 'ColorÂ ï¼š0.05Lux @ (F1.6ï¼ŒAGC ON); BWÂ ï¼š0.01LuxÂ @(F1.6ï¼ŒAGC ON)', '4.7-94mmï¼Œ20x', '16x', 'F1.6-F3.5', '61.4-2.9Â Â°Â (Wide-Tele )', '10-1500mm(Wide-Tele)', 'About 2.7 s Â (opticalÂ ï¼ŒWide-T', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', '', 'PAL/NTSC', '', '', 'Micro SD card 128GB', '1/ Â 2Automatic / manual / indoor / outdoor lamp / fluorescent lamp', '', '>52dB', '', '', '', 'H.264Â /H.265/MJPEG', '32Â Kbps~16Mbps', '1ch Audio In,1ch Audio Out(optional)', 'G.711-aÂ lawã€G.711-u lawã€G.726'),
('PSOS2Z36II67', '1/2\" Sony Exmor CMOS', '2MP', '', 'Max. 50fps@1920x1080', 'Colour:0.05Lux;B/W: 0Lux(IR LED)', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', 'IR LED 100m', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('PHOS2Z20II66M', '1/2.8â€³Â Progressive Scan CMOS', '', '', '', 'ColorÂ ï¼š0.05Lux @ (F1.6ï¼ŒAGC ON); BWÂ ï¼š0.01LuxÂ @(F1.6ï¼ŒAGC ON); 0', '4.7-94mmï¼Œ20x', '16x', 'F1.6-F3.5', '61.4-2.9Â Â°Â (Wide-Tele )', '10-1500mm(Wide-Tele)', 'About 2.7 s Â (opticalÂ ï¼ŒWide-T', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', '100m @Â 808nm', 'PAL/NTSC', '', '', 'Micro SD card 128GB', '1/ Â 2Automatic / manual / indoor / outdoor lamp / fluorescent lamp', '', '>52dB', '', '', '', 'H.264Â /H.265/MJPEG', '32Â Kbps~16Mbps', '1ch Audio In,1ch Audio Out(optional)', 'G.711-aÂ lawã€G.711-u lawã€G.726'),
('PHOTS2Z200I66M', '1/2.8â€³Â Progressive Scan CMOS', '', '', '', 'ColorÂ ï¼š0.05Lux @ (F1.6ï¼ŒAGC ON); BWÂ ï¼š0.01LuxÂ @(F1.6ï¼ŒAGC ON)', '4.7-94mmï¼Œ20X optical', '', 'F1.6 â€“ F5', '65.5-2.11 degree (Wide-Tele)', '10-1500mm(Wide-Tele)', 'Approx.3s(Optical Wide-Tele)', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', '', '', '', '', '', '1/ Â 2Automatic / manual / indoor / outdoor lamp / fluorescent lamp', '', '>52dB', '', '', '', 'H.264Â /H.265/MJPEG', '32Â Kbps~16Mbps', '', 'G.711-aÂ lawã€G.711-u lawã€G.726'),
('BHOS2F4II66', 'SONY 1/2.7â€³CMOS', '', '1920Ã—1080 (2MP)', '2 megapixel and following 25 frame(full-time), support 1~25 fps Â is adjustable', 'ColorÂ 0.1Lux@F1.2,BW0.01Â Lux@F1.2;', '4mmã€6mm options', '', '', '', '', '', '', '', '15m @ 850nm', '', '', '', '', '', 'n/a', '', 'Rotate mode, Saturation, Brightness, Contrast adjustable by Â client software or web browser', '', '', 'H.264/H.265/MJPEG', '32 Kbps~8Mbps', 'Base Line Profile / Main Profile', ''),
('BHOS-4Z4I-I66', '', '4MP 1/3\" CMOS', '', '', '0lx IR', '2.8-12mm x4  30.9-102.8 degrees', '', '', '', '', '', '', '', '50m', '', '', '', '', '', '120dB', '', 'Auto Exposure, Auto White Balance, Auto and Manual Iris, Back Light Compensation', '', '', 'H264/265/MJPEG', '', 'n/a', 'n/a'),
('BHOA-4Z4I-I66', '*', '4MP 1/3\" CMOS', '', '', '0lx IR', '2.8-12mm x4  30.9-102.8 degrees', '', '', '', '', '', '', '', '50m', '', '', '', '', '', '120dB', '', 'Auto Exposure, Auto White Balance, Auto and Manual Iris, Back Light Compensation', '', '', 'H264/265/MJPEG', '', 'n/a', 'n/a'),
('BHOS2Z360I68', '1/2\" Sony Exmor CMOS', '2MP', '', '50fps', 'Colour: 0.05Lux; B/W: 0.01Lux', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', 'No IR', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('BHOS2ZV0I68', '1/2.8\" Sony STARVIS CMOS', '2MP or 8MP', '', '25fps', 'Colour: 0.03Lux, B/W: 0.01Lux', '2.8, 2.7-12 or 3.2-10.5mm', '8x', '', 'H: 113.7Â° / V: 61.5Â°; H: 108.8Â°-32.3Â° / V: 57.2Â°-18.2Â°; H: 108.8Â°-32.3Â° / V: 57.2Â°-18.2Â°; or H: 108.1Â°-30.3Â° / V:', '', '', '', '', 'No IR', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('BHOS2Z18OI66', 'Â SONY 1/2.8â€³ CMOS Senor CCD', '', '1920Ã—1080 (2MP)', '25fps', 'Color Â 0.05Lux@F1.6, Â BW Â 0.01Â Lux@F1.6', '4.7 - 84.6 mm motorised zoom lens (x18)', '', 'F1.6 â€“ F3', '58.3-3.2 degree (Wide-Tele)', '10-1500mm(Wide-Tele)', 'Approx. 2.7s(Optical Wide-Tele)', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', 'na', '', '', '', 'Micro SD card 128GB', '', '', '', '', '', '', 'H.264/H.265/MJPEG', '32 Â Kbps~16Mbps', 'na', ''),
('BHOS2Z36II68', '1/2\" Sony Exmor CMOS', '2MP', '', '50fps', 'Colour: 0.05Lux; B/W: 0Lux(IR LED)', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', 'Motorized IR LED 300m', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('BHOTS2Z360I68', '1/2\" Sony Exmor CMOS', '2MP', '', '50fps', 'Colour: 0.05Lux', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', '', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('BHTS3F8OI66', '', '', '', 'Main Stream: D1 @ 25fps', '', '', '16x', '', '', '', '', '', '', '', '', '', '', 'Micro SD card 128GB', '', '', '', '', 'Off / On (4Â Area, Rectangle', 'Perimeter, Single Virtual Fences, Double Virtual Fences, Object Left, Object Removed', '', '100Kbps ~ 6Mbps', '1ch Audio In,1ch Audio Out(optional)', ''),
('DHOS2F4II66', 'Â SONY1/3â€³CMOS Senor CCD', '', '1920Ã—1080 (2MP)', '25fps', 'Color Â 0.1Lux@F1.1, Â BW Â 0.01Â Lux@F1.1;', '4mmã€6mmã€8mm Â  Options', '', '', '', '', '', '', '', '15m @ 850nm', '', '', '', '', '', '', '', 'Â Rotate mode, Saturation, Brightness, Contrast adjustable by client software or web browser', '', '', 'H.264/H.265/MJPEG', '32 Â Kbps~8Mbps', 'BaseLine Â Profile / Main Profile', ''),
('THOS-2F3I-I68', '', '2MP  2.8â€ CMOS', '', '', 'Colour 0.003lx @ F1.2; Mono 0.001lx @ F1.2; 0lx', '2, 2.8, 4, 6 mm  HFOV  126, 108, 86 or 53 degrees', '', '', '', '', '', '', '', 'n/a', '', '', '', 'MicroSD/SDHC/SDXC card up to 128GB', '', '120dB', '', 'Image enhancement: BLC, 3D DNR, HLC, defog, EIS', '', 'Line crossing detection, intrusion detection, region entrance detection, region exit detection, unattended baggage detection, object removal detection', 'H265/265+, H264/264+', '32kbps to 16Mbps', '1 audio input (line in), 1 audio output (line out), mono soundtrack', '8 kHz/16 kHz/32 kHz/44.1 kHZ/48 kHz'),
('PHOS2Z26OI66', '1/2.8â€³Progressive Â Scan CMOS', 'â‰¥1000TVL', '1920Ã—1080 (2MP)', '', 'Color ï¼š0.001Lux @ (F1.5ï¼ŒAGC ON); BW ï¼š0.0001Lux @(F1.5ï¼ŒAGC Â ON)', 'Â 5-130mm, 26x', '16x', 'F1.6-F3.5', '58.3-3.2Â°(Wide-Tele)', '10-1000mm(Wide-Tele)', 'About 3s( Â optional , Wide-Tele)', '', 'Auto / semi Â auto / manual', 'na', '', '', '', 'Built in Micro SD card slot, Â support SD/SDHC/SDXC Micro card (maximum support 256G),support manual / alarm Â video recordi', 'Auto/ manual / ATW Â / Outdoor / indoor fluorescent lamp / lamp / white balance Â white balan', 'Yes', 'ï¼ž 52dB', '', 'Yes', '', 'H.264/H.265/MJPEG', '', '', 'G.711/G.726'),
('PHOS2Z36II68', '1/2\" Sony Exmor CMOS', '2MP', '', '50fps', 'Colour: 0.05Lux; B/W: 0Lux(IR LED)', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', 'Motorized IR LED 300m', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('PHOS2Z20II66', '1/2.8â€³Â Progressive Scan CMOS', '', '', '', 'ColorÂ ï¼š0.05Lux @ (F1.6ï¼ŒAGC ON); BWÂ ï¼š0.01LuxÂ @(F1.6ï¼ŒAGC ON)', '4.7-94mmï¼Œ20x', '16x', 'F1.6-F3.5', '61.4-2.9Â Â°Â (Wide-Tele )', '10-1500mm(Wide-Tele)', 'About 2.7 s Â (opticalÂ ï¼ŒWide-T', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', '100m @Â 808nm', 'PAL/NTSC', '', '', 'Micro SD card 128GB', '1/ Â 2Automatic / manual / indoor / outdoor lamp / fluorescent lamp', '', '>52dB', '', '', '', 'H.264Â /H.265/MJPEG', '32Â Kbps~16Mbps', '1ch Audio In,1ch Audio Out(optional)', 'G.711-aÂ lawã€G.711-u lawã€G.726'),
('PHOS2Z200I66', '1/2.8â€³Â Progressive Scan CMOS', '', '', '', 'ColorÂ ï¼š0.05Lux @ (F1.6ï¼ŒAGC ON); BWÂ ï¼š0.01LuxÂ @(F1.6ï¼ŒAGC ON)', '4.7-94mmï¼Œ20x', '16x', 'F1.6-F3.5', '61.4-2.9Â Â°Â (Wide-Tele )', '10-1500mm(Wide-Tele)', 'About 2.7 s Â (opticalÂ ï¼ŒWide-T', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', '', 'PAL/NTSC', '', '', 'Micro SD card 128GB', '1/ Â 2Automatic / manual / indoor / outdoor lamp / fluorescent lamp', '', '>52dB', '', '', '', 'H.264Â /H.265/MJPEG', '32Â Kbps~16Mbps', '1ch Audio In,1ch Audio Out(optional)', 'G.711-aÂ lawã€G.711-u lawã€G.726'),
('PHOS-2Z30O-I69', '', '2.38MP  1/ 2.8â€ CM', '', '', 'Colour 0.006lx @ F1.6; Mono 0.0006lx @ F1.6', 'Motorised x30 zoom 4.3-129mm  HFOV  63.7-2.3 degrees', '', '', '', '', '', '', '', 'n/a', '', 'Yes', '', '', '', '', '', '', '', 'Perimeter, line crossing, loitering, objects left/removed, people, vehicles', 'H264, MPEG4, MJPEG  ONVIF S, T, Q', '100kbps to 12Mbps', '', ''),
('PHOTS2Z36II68', '1/2\" Sony Exmor CMOS', '2MP', '', '50fps', 'Colour: 0.05Lux', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', '', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('PHOTS2Z200I66', '1/2.8â€³Â Progressive Scan CMOS', '', '', '', 'ColorÂ ï¼š0.05Lux @ (F1.6ï¼ŒAGC ON); BWÂ ï¼š0.01LuxÂ @(F1.6ï¼ŒAGC ON)', '4.7-94mmï¼Œ20X optical', '', 'F1.6 â€“ F5', '65.5-2.11 degree (Wide-Tele)', '10-1500mm(Wide-Tele)', 'Approx.3s(Optical Wide-Tele)', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', '', 'PAL/NTSC', '', '', 'Micro SD card 128GB', '1/ Â 2Automatic / manual / indoor / outdoor lamp / fluorescent lamp', '', '>52dB', '', '', '', 'H.264Â /H.265/MJPEG', '32Â Kbps~16Mbps', '', 'G.711-aÂ lawã€G.711-u lawã€G.726'),
('BHTS3F8OI66', '', '', '', 'Main Stream: D1 @ 25fps', '', '', '16x', '', '', '', '', '', '', '', '', '', '', 'Micro SD card 128GB', '', '', '', '', 'Off / On (4Â Area, Rectangle', 'Perimeter, Single Virtual Fences, Double Virtual Fences, Object Left, Object Removed', '', '100Kbps ~ 6Mbps', '1ch Audio In,1ch Audio Out(optional)', ''),
('BSTAIF80I67', 'Uncooled VOx infrared detector', '', 'Effective pixels: 720x480', '25 fps', '', '', 'ePTZ: 20x digital zoom (4x on IE plug-in, 5x built-in)', '', '', '', '', '', '', '', '', '', '', 'Seamless Recording to MicroSD/SDHC/SDXC card and recording to network-attached storage (NAS)', '', '', '', '', '', 'Smart VCA', 'H.265, H.264, MJPEG', '', 'Two-way Audio (full duplex); External microphone input', 'G.726, G.711'),
('BHOTS2Z360I68', '1/2\" Sony Exmor CMOS', '2MP', '', '50fps', 'Colour: 0.05Lux', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', '', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('PHOTS2Z36II68', '1/2\" Sony Exmor CMOS', '2MP', '', '50fps', 'Colour: 0.05Lux', 'Optical zoom 36x, 6.0-216mm F1.5', '8x', '', 'H: 56.5Â°-2.1Â° / V: 33.6Â°-1.2Â°', '', '', '', '', '', '', '', '', '', '', '', '', 'DOL HDR, DNR, BLC, HLC, White balance, Exposure control, Mirror, Flip, Colour Corridor format.', 'Yes', 'Tamper, Video motion detection', 'Simultaneously H.265, H.264 and MJPEG (Triple streaming). Independent Frame Rate and Bandwidth Control, VBR/CBR.', '', '', ''),
('PHOTS2Z20OI66', '1/2.8â€³Â Progressive Scan CMOS', '2MP', '', '', 'ColorÂ ï¼š0.05Lux @ (F1.6ï¼ŒAGC ON); BWÂ ï¼š0.01LuxÂ @(F1.6ï¼ŒAGC ON)', '4.7-94mmï¼Œ20X optical', '', 'F1.6 â€“ F5', '65.5-2.11 degree (Wide-Tele)', '10-1500mm(Wide-Tele)', 'Approx.3s(Optical Wide-Tele)', 'Auto exposure Â / aperture priority / shutter priority / manual exposur', 'Auto Â /manual /one time focusin', '', '', '', '', '', '1/ Â 2Automatic / manual / indoor / outdoor lamp / fluorescent lamp', '', '>52dB', '', '', '', 'H.264Â /H.265/MJPEG', '32Â Kbps~16Mbps', '', 'G.711-aÂ lawã€G.711-u lawã€G.726'),
('BSOA8FVII67', '1/2\" Progressive CMOS', '', '3840x2160 (8MP)', '25 fps', '0.02 lux @ F1.5 (colour); 0.01 lux @ F1.5 (B/W); o lux with IR', '3.9 ~ 10 mm Motorized, Vari-focal, Remote Focus', 'ePTZ: 48x digital zoom (4x on IE plug-in, 12x built-in)', 'F1.5 ~ F2.7', '95Â° ~ 45Â° (Horizontal)', '', '', '', 'Remote focus, remote zoom', '50m', '', '', '', 'Seamless Recording to MicroSD/SDHC/SDKC card and recording to network-attached storage (NAS)', '', '120 dB', '61 dB', '', '', 'Smart VCA', 'H.265, H.264, MJPEG', '', 'Two-Way Audio (full duplex); External microphone input', 'G.711, G.726'),
('DSOA8FVII67', '1/1.8\" Progressive CMOS', '', '3840x2160 (4K/8MP)', '25 fps', '0.28 lux @ F1.5 (colour); <0.005 lux @ F1.5 (B/W); 0 lux with IR', '3.9 ~ 10 mm Motorized, Vari-focal, Remote Focus', '', 'F1.5 ~ F2.7', '119Â° ~ 45Â° (Horizontal)', '', '', '', '', '50m', '', '', '', '', '', '120 dB', '53.5 dB', '', '', 'Smart VCA', 'H.265, H.264', '', '', ''),
('DSOA12F1II66', '1/2.3\" Progressive CMOS in 4056x3040', '', '2944x2944', '25 fps', '0.1 lux @ F2.0 (colour); <0.005 lux @ F2.0 (B/W); 0 lux with IR', '1.22 mm Fixed-focal', 'ePTZ: 12x digital zoom (12x on IE plug-in)', 'F2.0', '180Â° (Horizontal)', '', '', '', 'Pixel calculator', '20m', '', '', '', 'Seamless Recording to MicroSD/SDHC/SDXC card and recording to network-attached storage (NAS)', '', '120 dB', '56.9 dB', '10 fisheye views with dewarping', '', 'Smart VCA', 'H.265, H.264, MJPEG', '', 'Two-way audio (Full duplex); Built-in microphone/ext.input', 'G.711, G.726'),
('BSOP-2Z4I-I67', '1/1.8\" CMOS', '2MP', '', '', '.001lx col; .0003lx mono; 0lx IR', '8-32mm  HFOV 40.3 - 14.4 degrees', '', '', '', '', '', '', '', '100m (850nm)', '', '', '', 'MicroSD/SDHC/SDXC card up to 256GB', '', '140dB', '', 'BLC, HLC, 3D DNR, Defog, EIS, Distortion Correction', '', 'Line crossing,Intrusion, Region entrance/exiting, Unattended baggage, Object removal, Scene change, audio exception, defocus, counting', 'H265/265+, H264/264+', '32kbps to 16Mbps', 'Mono 8 to 48kHz; 1 line in, 1 line out; 3.5mm jack', 'G711/722.1/726/MP2l2/PCM/MP3'),
('BSTAIF80I67', 'Uncooled VOx infrared detector', '', 'Effective pixels: 720x480', '25 fps', '', '', 'ePTZ: 20x digital zoom (4x on IE plug-in, 5x built-in)', '', '', '', '', '', '', '', '', '', '', 'Seamless Recording to MicroSD/SDHC/SDXC card and recording to network-attached storage (NAS)', '', '', '', '', '', 'Smart VCA', 'H.265, H.264, MJPEG', '', 'Two-way Audio (full duplex); External microphone input', 'G.726, G.711'),
('PSOA5Z30II66', '1/2.8\" Progressive CMOS', '5MP', '2560x1920 ', '25 fps', '0.03 lux @ F1.3 (colour); 0.005 lux @ F1.3 (B/W); 0 lux with IR', '4.94 ~ 148.24 mm 30x Optical Zoom, Auto Focus', '32x digital zoom (4x on IE plug-in, 8x built in)', 'F1.3 ~ F4.6', '54.1Â° ~ 1.9Â° (Horizontal)', '', '', '', 'Remote focus, remote zoom', '200m', '', '', '', 'Seamless Recording to MicroSD/SDHC/SDXC card and recording to network-attached storage (NAS)', '', '120 dB', '74 dB', '', '', 'Smart VCA', 'H.265, H.264, MJPEG', '', 'Two-way audio (Full duplex); External line input', 'G.711, G.726');

-- --------------------------------------------------------

--
-- Table structure for table `cables_all`
--

DROP TABLE IF EXISTS `cables_all`;
CREATE TABLE `cables_all` (
  `product_code` varchar(11) DEFAULT NULL,
  `product_name_` varchar(54) DEFAULT NULL,
  `image` varchar(1) DEFAULT NULL,
  `technical_image` varchar(13) DEFAULT NULL,
  `technical_image_2` varchar(10) DEFAULT NULL,
  `technical_image_3` varchar(10) DEFAULT NULL,
  `description` varchar(336) DEFAULT NULL,
  `feature_1` varchar(43) DEFAULT NULL,
  `feature_2` varchar(22) DEFAULT NULL,
  `feature_3` varchar(36) DEFAULT NULL,
  `feature_4` varchar(12) DEFAULT NULL,
  `feature_5` varchar(14) DEFAULT NULL,
  `feature_6` varchar(17) DEFAULT NULL,
  `feature_7` varchar(8) DEFAULT NULL,
  `feature_8` varchar(36) DEFAULT NULL,
  `feature_9` varchar(36) DEFAULT NULL,
  `feature_10` varchar(78) DEFAULT NULL,
  `feature_11` varchar(22) DEFAULT NULL,
  `feature_12` varchar(36) DEFAULT NULL,
  `feature_13` varchar(22) DEFAULT NULL,
  `feature_14` varchar(31) DEFAULT NULL,
  `feature_15` varchar(20) DEFAULT NULL,
  `feature_16` varchar(15) DEFAULT NULL,
  `features_concat` varchar(370) DEFAULT NULL,
  `specs` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cables_all`
--

INSERT INTO `cables_all` (`product_code`, `product_name_`, `image`, `technical_image`, `technical_image_2`, `technical_image_3`, `description`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `features_concat`, `specs`) VALUES
('LMCat5E', 'Cat 5E S/FTP DNV-GL Offshore Marine Approved LAN Cable', '`', 'Not available', '', '', 'To meet the demands of the offshore industry this UV  & Oil resistant DNV- GL approved Category 5E cable is used extensively on vessels. LAN cable, designed for ship- and offshore applications. Tinned Cu-connectors and braid, SHF1 jacket.', 'Designed for ship and offshore applications', 'Flame & fire retardant', 'Oil, fuel and hydrocarbons resistant', 'UV-resistant', 'S/FTP Flexible', 'Tinned conductors', 'SHF1', 'DNV-GL and Lloyd\'s Register approval', 'CPR-Compliant options', 'DNV-GL and Lloyd\'s Register approval', 'Fully compliant to IEC', 'Transmission speeds up to 1GBps', 'SHF1 NEK 606 sheaths', 'LSHF throughout', '', '', '• Designed for ship and offshore applications\n• Flame & fire retardant\n• Oil, fuel and hydrocarbons resistant\n• UV-resistant\n• S/FTP Flexible\n• Tinned conductors\n• SHF1\n• DNV-GL and Lloyd\'s Register approval\n• CPR-Compliant options\n• DNV-GL and Lloyd\'s Register approval\n• Fully compliant to IEC\n• Transmission speeds up to 1GBps\n• SHF1 NEK 606 sheaths\n• LSHF throughout', 'See data sheet'),
('LMCat6ASHF1', 'Cat 6A S/FTP DNV-GL Offshore Marine Approved LAN Cable', '', 'Not available', '', '', 'To meet the demands of the offshore industry this UV  & Oil resistant DNV- GL approved Category 5E cable is used extensively on vessels. Approved LAN cable, designed for ship- and offshore applications. Tested according to IEC 61156 - 5 for transmission characteristics up to 500 MHz - Horizontal floor wiring - Sectional specification.', 'Designed for ship and offshore applications', 'Flame & fire retardant', 'Oil, fuel and hydrocarbons resistant', 'UV-resistant', 'S/FTP', 'LSZH', 'SHF1, UV', 'AWG 23/7', 'DNV-GL and Lloyd\'s Register approval', 'Category 6A DNV- GL marine approved LAN cables are used extensively on vessels', 'CPR-Compliant options', 'DNV-GL and Lloyd\'s Register approval', 'Fully compliant to IEC', 'Transmission speeds up to 1GBps', 'SHF1 NEK 606 sheaths', 'LSHF throughout', '', 'See data sheet');

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification` (
  `product_code` varchar(14) DEFAULT NULL,
  `Impact Protection` varchar(4) DEFAULT NULL,
  `Salt Fog Resistance` varchar(27) DEFAULT NULL,
  `Corrosion Testing` varchar(34) DEFAULT NULL,
  `Vibration Testing` varchar(25) DEFAULT NULL,
  `Ingress Protection` varchar(42) DEFAULT NULL,
  `European/US/EMC` varchar(449) DEFAULT NULL,
  `Marine` varchar(51) DEFAULT NULL,
  `Hazardous Area` varchar(398) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`product_code`, `Impact Protection`, `Salt Fog Resistance`, `Corrosion Testing`, `Vibration Testing`, `Ingress Protection`, `European/US/EMC`, `Marine`, `Hazardous Area`) VALUES
('BSOS-1Z4I-I68', '', '', '', '', 'IP68', '', '', ''),
('BHOS2F4II66M', '', '', '', '', 'IP66', '', '', ''),
('BSOS12F28II67', '', '', '', '', 'IP66/68', '', '', ''),
('BSOS2FV0I66', '', '', '', '', 'IP66', '', '', ''),
('BSOA-2Z4I-I67', 'IK10', '', '', '', 'IP67', 'CE/FCC', '', ''),
('BSOS12F20I66', '', '', '', '', 'IP66', '', '', ''),
('DSOS-1Z4I-I68', '', '', '', '', 'IP68', '', '', ''),
('DHOS2F4II66M', '', '', '', '', 'IP66', '', '', ''),
('BHOS2Z18OI66M', '', '', '', '', 'IP66', '', '', ''),
('BHTS3F8OI66M', '', '', '', '', 'IP66', '', '', ''),
('PHOS2Z260I66M', '', '', '', '', 'IP66', '', '', ''),
('DSOS2Z200I67', '', '', '', '', 'IP68', '', '', ''),
('PSOA-3Z30-XI68', 'IK10', 'ASTM B117 1000hr salt-spray', 'TEN 50556:2011; EN 60068-2-64-2008', '', 'IP68 ', 'EN 55032:2015  EN 55035:2017 Class A', '', ''),
('PSOS-3Z30-XI68', 'IK10', 'ASTM B117 1000hr salt-spray', 'TEN 50556:2011; EN 60068-2-64-2008', '', 'IP68 ', 'EN 55032:2015  EN 55035:2017 Class A', '', ''),
('PHOS2Z200I66M', '', '', '', '', 'IP66', '', '', ''),
('PSOS2Z36II67', '', '', '', '', 'IP66/67', '', '', ''),
('PHOS2Z20II66M', '', '', '', '', 'IP66', '', '', ''),
('PHOTS2Z200I66M', '', '', '', '', 'IP66', '', '', ''),
('BHOS2F4II66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('BHOS-4Z4I-I66', '*', '', '', '', 'IP66', 'Conforms to UL STD 61010-1 + UL1203\nCertified to CSA STD CSA22.2 NO.30 + CAN/CSA C22.2 No. 25\nEN 60079-0:2012+A11:203, EN 60079-1:2007, EN 60079-31:2014.\nATEX 2014/34/EU', '', 'Class I, Division 1, Groups B-D,\nClass II, Division 1, Groups E-G,\nII 2 GD Ex db IIC T6 Gb,\nII 2 GD Ex tb IIC T80°C Db IP66'),
('BHOA-4Z4I-I66', '*', '', '', '', 'IP66', 'Conforms to UL STD 61010-1 + UL1203\nCertified to CSA STD CSA22.2 NO.30 + CAN/CSA C22.2 No. 25\nEN 60079-0:2012+A11:203, EN 60079-1:2007, EN 60079-31:2014.\nATEX 2014/34/EU', '', 'Class I, Division 1, Groups B-D,\nClass II, Division 1, Groups E-G,\nII 2 GD Ex db IIC T6 Gb,\nII 2 GD Ex tb IIC T80°C Db IP66'),
('BHOS2Z360I68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('BHOS2ZV0I68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('BHOS2Z18OI66', '', '', '', '', 'IP66', '', '', 'ATEX\nII 2G Ex d IIC T6 Gb\nII 2D Ex tb IIIC IP68 T80℃ Db'),
('BHOS2Z36II68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('BHOTS2Z360I68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('BHTS3F8OI66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('DHOS2F4II66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('THOS-2F3I-I68', '', '', '', '', 'IP68 ', 'FCC, CE, IC, KC, UL, CB', '', 'ATEX: II 2 G D Ex db IIC T6 Gb/Ex tb IIIC T80°C Db IP68 IECEx: Ex db IIC T6 Gb/Ex tb IIIC T80°C Db IP68 For explosive gas atmospheres, the maximum surface temperature is 85°C; For flammable dust atmospheres, the maximum surface temperature is 80°C; IIC: for explosive gas atmospheres other than mines susceptible to firedamp; For explosive gas mixture atmospheres: Zone 1, Zone 2, Zone 21, Zone 22.'),
('PHOS2Z26OI66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('PHOS2Z36II68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('PHOS2Z20II66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('PHOS2Z200I66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('PHOS-2Z30O-I69', 'IK10', 'EN60068-2-52', 'n/a', 'TEN 50130-5; EN 60068-2-6', 'IP69 ', 'EN 60945', 'Lloyd’s register Marine Type Approval Certification', 'Certified explosion-proof for use in Zones 1 and 2, Group.  IIC (Gas), Zones 21 and 22, Group IIIC (Dust)'),
('PHOTS2Z36II68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('PHOTS2Z200I66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('BHTS3F8OI66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('BSTAIF80I67', 'IK10', '', '', '', 'IP67', '', '', ''),
('BHOTS2Z360I68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('PHOTS2Z36II68', '', '', '', '', 'IP68', '', '', 'ATEX, IECEx, KCs'),
('PHOTS2Z20OI66', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('BSOA8FVII67', 'IK10', '', '', '', 'IP67', 'EMC: CE (EN 55032 Class A, EN55024), FCC (FCC Part 15 Subpart B Class A), RCM (AS/NZS CISPR 32 Class A), VCCI (VCCI-CISPR 32 Class A); Safety: UL (UL 62368-1), CB (IEC/EN 62368-1, IEC/EN 60950-22, IEC/EN 62471); Environment: IK10 (IEC 62262), IP66/67 (IEC 60529), NEMA (NEMA 250 Type 4X); IA: BIS (IS 13252)', '', ''),
('DSOA8FVII67', 'IK10', '', '', '', 'IP67, NEMA 4X', 'CE, FCC Class A, VCCI, C-tick, UL, BIS', '', ''),
('DSOA12F1II66', 'IK10', '', '', '', 'IP66 (IEC 60529), NEMA (NEMA 250 Type 4X);', 'EMC: CE (EN 55032 Class A, EN 55024), FCC (FCC Part 15 Subpart B Class A), VCCI (VCCI-CISPR 32 Class A); UL (UL 62368-1), CB (IEC/EN 62368-1, IEC/EN 60950-22);', '', ''),
('BSOP-2Z4I-I67', 'IK10', '', 'NEMA 250-2018', '', 'IP67', 'FCC (47 CFR Part 15, Subpart B); CE-EMC (EN 55032: 2015, EN 61000-3-2: 2014, EN \n61000-3-3: 2013, EN 50130-4: 2011 +A1: 2014); RCM (AS/NZS CISPR 32: 2015); IC \n(ICES-003: Issue 6, 2016); KC (KN 32: 2015, KN 35: 2015) ', '', ''),
('BSTAIF80I67', 'IK10', '', '', '', 'IP67', '', '', ''),
('PSOA5Z30II66', '', '', '', '', 'IP66', 'EMC: CE (EN 55032 Class A, EN55035, EN50121-4), UKCA (BS EN 55032: 2015 +A11: 2020, BS EN 55035: 2017), FCC (FCC Part 15 Subpart B Class A), IC (ICES-003:2020 Issue7, Class A), RCM (AS/NZS CISPR 32 Class A), VCCI (VCCI-CISPR 32 Class A); Safety: UKCA (BS EN 62368-1:2014+A11:2017), UL (UL 62368-1), CB (IEC/EN 62368-1, IEC/EN 60950-22, IEC/EN 62471); Environment: IK10 (IEC 62262), IP66 (IEC 60529), NEMA (NEMA 250 Type 4X); IA: BIS (IS 13252), BSMI', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ethernet_eth_interface`
--

DROP TABLE IF EXISTS `ethernet_eth_interface`;
CREATE TABLE `ethernet_eth_interface` (
  `product_code` varchar(15) DEFAULT NULL,
  `Connector` varchar(4) DEFAULT NULL,
  `Cable` varchar(33) DEFAULT NULL,
  `Rate` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ethernet_eth_interface`
--

INSERT INTO `ethernet_eth_interface` (`product_code`, `Connector`, `Cable`, `Rate`) VALUES
('OS-CAT5-6TX-POE', 'RJ45', 'Patch or crossover, auto detected', '100Base-TX or 10Base-T, full-duplex with auto-negotiation'),
('OS-COAXTX-POE', 'RJ45', 'Patch or crossover, auto-detected', '100Base-TX or 10Base-T, full-duplex with auto-negotiation'),
('OS-WLIP', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ethernet_features`
--

DROP TABLE IF EXISTS `ethernet_features`;
CREATE TABLE `ethernet_features` (
  `product_code` varchar(15) DEFAULT NULL,
  `feature_1` varchar(121) DEFAULT NULL,
  `feature_2` varchar(77) DEFAULT NULL,
  `feature_3` varchar(76) DEFAULT NULL,
  `feature_4` varchar(59) DEFAULT NULL,
  `feature_5` varchar(62) DEFAULT NULL,
  `feature_6` varchar(62) DEFAULT NULL,
  `feature_7` varchar(62) DEFAULT NULL,
  `feature_8` varchar(55) DEFAULT NULL,
  `feature_9` varchar(36) DEFAULT NULL,
  `feature_10` varchar(36) DEFAULT NULL,
  `feature_11` varchar(10) DEFAULT NULL,
  `feature_12` varchar(10) DEFAULT NULL,
  `feature_13` varchar(10) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL,
  `features_concat` varchar(608) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ethernet_features`
--

INSERT INTO `ethernet_features` (`product_code`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `features_concat`) VALUES
('OS-CAT5-6TX-POE', 'Long range Ethernet and POE over Cat5 or Cat6 cables allows transmission far beyond standard typical 90m maximum distance', 'Long range point-to-point Ethernet over Cat5e or Cat6 cable', 'Pair of units required - one at base (receiver); one at camera (transmitter)', 'Unrestricted 100Base-TX with POE at over 820 metres', 'Delivers full POE Plus power at 600 metres', 'Ruggedised for high performance over extreme temperature range', 'Smart power and diagnostic display for reliable installation', 'Fully automatic, simple to install and maintenance-free', 'Rack mount option', 'Can be used to extend any IP network', '', '', '', '', '', '', '• Long range Ethernet and POE over Cat5 or Cat6 cables allows transmission far beyond standard typical 90m maximum distance\n• Long range point-to-point Ethernet over Cat5e or Cat6 cable\n• Pair of units required - one at base (receiver); one at camera (transmitter)\n• Unrestricted 100Base-TX with POE at over 820 metres\n• Delivers full POE Plus power at 600 metres\n• Ruggedised for high performance over extreme temperature range\n• Smart power and diagnostic display for reliable installation\n• Fully automatic, simple to install and maintenance-free\n• Rack mount option\n• Can be used to extend any IP network'),
('OS-COAXTX-POE', 'Long range Ethernet and POE over new or legacy coaxial cable', 'IP and PoE transmission of upto 690m over RG59 coaxial cable', 'Pair of units required - one at base (receiver); one at camera (transmitter)', 'Unrestricted 100Base-T and POE over 1400m (4,600ft) on RG11', 'Ruggedised for high-performance over extreme temperature range', 'Fully automatic, simple to install and maintenance-free', 'Up to 4.2km (2.5 miles) data-only link at 10Base-T without POE', 'Rack mount option', 'Can be used to extend any IP network', '', '', '', '', '', '', '', '• Long range Ethernet and POE over new or legacy coaxial cable\n• IP and PoE transmission of upto 690m over RG59 coaxial cable\n• Pair of units required - one at base (receiver); one at camera (transmitter)\n• Unrestricted 100Base-T and POE over 1400m (4,600ft) on RG11\n• Ruggedised for high-performance over extreme temperature range\n• Fully automatic, simple to install and maintenance-free\n• Up to 4.2km (2.5 miles) data-only link at 10Base-T without POE\n• Rack mount option\n• Can be used to extend any IP network'),
('OS-WLIP', 'IP67 rated enclosure for marine applications', 'Radio and antenna are combined into a single body that takes up minimal space', 'Uses latest ESD Protection to help protect against power surges', '24vdc or 230vac powered', 'Transmission over several hundred meters', '', '', '', '', '', '', '', '', '', '', '', '• IP67 rated enclosure for marine applications\n• Radio and antenna are combined into a single body that takes up minimal space\n• Uses latest ESD Protection to help protect against power surges\n• 24vdc or 230vac powered\n• Transmission over several hundred meters');

-- --------------------------------------------------------

--
-- Table structure for table `ethernet_interface`
--

DROP TABLE IF EXISTS `ethernet_interface`;
CREATE TABLE `ethernet_interface` (
  `product_code` varchar(15) DEFAULT NULL,
  `Connector` varchar(25) DEFAULT NULL,
  `Cable` varchar(47) DEFAULT NULL,
  `cable 1` varchar(53) DEFAULT NULL,
  `Rate` varchar(63) DEFAULT NULL,
  `Rate 2` varchar(76) DEFAULT NULL,
  `Rate 3` varchar(51) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ethernet_interface`
--

INSERT INTO `ethernet_interface` (`product_code`, `Connector`, `Cable`, `cable 1`, `Rate`, `Rate 2`, `Rate 3`) VALUES
('OS-CAT5-6TX-POE', 'RJ45', 'Cat6, Cat5e, Cat3, other 1/2/4-pair UTP', 'Patch wiring recommended, other wiring auto-corrected', '200Mbps (100Mbps full duplex) up to 820 metres [2,690ft] (Cat6)', '20Mbps (10Mbps full duplex) up to 1,050 metres [3,450ft] (Cat6), auto-adapts', ''),
('OS-COAXTX-POE', 'BNC', '75 Ohm Coaxial, RG59, RG6 or RG11 or equivalent', 'Note: also compatible with 50 Ohm cable types', '200Mbit/s up to 690 metres [2263ft] (RG59 20AWG)', '200Mbit/s up to 1400 metres [4593ft] (RG11)', '20Mbit/s up to 4.2km [2.6miles] (RG11), auto-adapts'),
('OS-WLIP', '10/100/1000 Ethernet Port', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ethernet_led`
--

DROP TABLE IF EXISTS `ethernet_led`;
CREATE TABLE `ethernet_led` (
  `product_code` varchar(15) DEFAULT NULL,
  `LED Indicator Lights` varchar(41) DEFAULT NULL,
  `Ethernet Status Lights` varchar(41) DEFAULT NULL,
  `POE` varchar(37) DEFAULT NULL,
  `POE Lights` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ethernet_led`
--

INSERT INTO `ethernet_led` (`product_code`, `LED Indicator Lights`, `Ethernet Status Lights`, `POE`, `POE Lights`) VALUES
('OS-CAT5-6TX-POE', 'Yellow : Link/activity, Green: power good', 'Yellow : Link/activity, Green: 10/100Mbps', 'Power available (5/10/15/20/25 watts)', 'POE and link status (green/amber), diagnostic codes (red)'),
('OS-COAXTX-POE', 'Link/activity, power good', 'Link/activity, rate', 'Available', 'POE and link status (green/amber), diagnostic codes (red)'),
('OS-WLIP', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ethernet_onboard`
--

DROP TABLE IF EXISTS `ethernet_onboard`;
CREATE TABLE `ethernet_onboard` (
  `product_code` varchar(15) DEFAULT NULL,
  `Antenna Gain` varchar(6) DEFAULT NULL,
  `Processor` varchar(8) DEFAULT NULL,
  `Memory` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ethernet_onboard`
--

INSERT INTO `ethernet_onboard` (`product_code`, `Antenna Gain`, `Processor`, `Memory`) VALUES
('OS-CAT5-6TX-POE', '', '', ''),
('OS-COAXTX-POE', '', '', ''),
('OS-WLIP', '13 dBi', 'MIPS 74K', 'DDR2 64 MB');

-- --------------------------------------------------------

--
-- Table structure for table `ethernet_physical`
--

DROP TABLE IF EXISTS `ethernet_physical`;
CREATE TABLE `ethernet_physical` (
  `product_code` varchar(15) DEFAULT NULL,
  `Dimensions` varchar(66) DEFAULT NULL,
  `Weight` varchar(15) DEFAULT NULL,
  `Operating temperature` varchar(30) DEFAULT NULL,
  `Relative humidity` varchar(22) DEFAULT NULL,
  `Compliance` varchar(47) DEFAULT NULL,
  `Mounting options` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ethernet_physical`
--

INSERT INTO `ethernet_physical` (`product_code`, `Dimensions`, `Weight`, `Operating temperature`, `Relative humidity`, `Compliance`, `Mounting options`) VALUES
('OS-CAT5-6TX-POE', 'L 120mm (inc. brackets), W 36mm H 23mm [L 4.7in, W 1.4in, H 0.9in]', '100g [3.5oz]', '-40°C to 70°C [-40°F to 158°F]', '85% non-condensing', 'FCC, CE, RoHS, UL, BS EN 50121-4 (rail + metro)', 'Free-standing, wall or rack mount'),
('OS-COAXTX-POE', 'L 115mm, W 55mm H 27mm, inc removable bracket', '112g [3.95oz]', '-40°C to 70°C [-40°F to 158°F]', '85% non-condensing', 'FCC, CE, RoHS, BS EN 50121-4 (rail + metro)', 'Free-standing, wall or rack mount'),
('OS-WLIP', '179 x 77.5 x 59.1 mm (7.05 x 3.05 x 2.33\")', '180 g (6.35 oz)', '-40 to 70° C (-40 to 158° F)', '5 to 95% Noncondensing', 'CE, FCC, IC', 'Wall, pedestal or pole mount');

-- --------------------------------------------------------

--
-- Table structure for table `ethernet_power`
--

DROP TABLE IF EXISTS `ethernet_power`;
CREATE TABLE `ethernet_power` (
  `product_code` varchar(15) DEFAULT NULL,
  `POWER` varchar(10) DEFAULT NULL,
  `Unit Power` varchar(53) DEFAULT NULL,
  `POE in (Base)` varchar(69) DEFAULT NULL,
  `POE out (Camera)` varchar(45) DEFAULT NULL,
  `DC power in (Base)` varchar(63) DEFAULT NULL,
  `Power Method` varchar(45) DEFAULT NULL,
  `ESD/EMP Protection` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ethernet_power`
--

INSERT INTO `ethernet_power` (`product_code`, `POWER`, `Unit Power`, `POE in (Base)`, `POE out (Camera)`, `DC power in (Base)`, `Power Method`, `ESD/EMP Protection`) VALUES
('OS-CAT5-6TX-POE', '', '1.0 watt', 'IEEE 802.3af (POE) or IEEE 802.3at (POE Plus), 2-event, power class 4', 'IEEE 802.3af (POE) or IEEE 802.3at (POE Plus)', 'Detachable screw terminal for optional Veracity 54 - 57V supply', '', ''),
('OS-COAXTX-POE', '', '8-57 volts DC or 20-28 volts AC, max 100mA; 1.0 watts', 'IEEE 802.3af (POE) or IEEE 802.3at (POE Plus), 2-event, power class 4', 'IEEE 802.3af (POE) or IEEE 802.3at (POE Plus)', 'Detachable screw terminal for optional 57V supply', '', ''),
('OS-WLIP', '', '24V, 0.3A Gigabit PoE Supply; Max 7W', '', '', '', 'Passive PoE 2-Pair (Pairs 4, 5+; 7, 8 Return)', '±24kV Contact / Air');

-- --------------------------------------------------------

--
-- Table structure for table `eth_info`
--

DROP TABLE IF EXISTS `eth_info`;
CREATE TABLE `eth_info` (
  `product_code` varchar(15) DEFAULT NULL,
  `product_name` varchar(53) DEFAULT NULL,
  `image` varchar(10) DEFAULT NULL,
  `technical_image` varchar(13) DEFAULT NULL,
  `technical_image_2` varchar(10) DEFAULT NULL,
  `technical_image_3` varchar(10) DEFAULT NULL,
  `description` varchar(1289) DEFAULT NULL,
  `feature_1` varchar(121) DEFAULT NULL,
  `feature_2` varchar(77) DEFAULT NULL,
  `feature_3` varchar(76) DEFAULT NULL,
  `feature_4` varchar(59) DEFAULT NULL,
  `feature_5` varchar(62) DEFAULT NULL,
  `feature_6` varchar(62) DEFAULT NULL,
  `feature_7` varchar(62) DEFAULT NULL,
  `feature_8` varchar(55) DEFAULT NULL,
  `feature_9` varchar(36) DEFAULT NULL,
  `feature_10` varchar(36) DEFAULT NULL,
  `feature_11` varchar(10) DEFAULT NULL,
  `feature_12` varchar(10) DEFAULT NULL,
  `feature_13` varchar(10) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `eth_info`
--

INSERT INTO `eth_info` (`product_code`, `product_name`, `image`, `technical_image`, `technical_image_2`, `technical_image_3`, `description`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`) VALUES
('OS-CAT5-6TX-POE', 'Long range ethernet with PoE transmission over Cat5/6', '', '', '', '', 'These device allow long range Ethernet and POE transmission over Cat5 or Cat6 cables far beyond the 90m maximum distance normally quoted.  IP cameras can demand peak network\nbandwidth of several times their\naverage data rate while transmitting\nhigh-activity or low-light scenes.\nThe transmission system has been designed to\nrun IP cameras over 820 metres\n(2,690ft) of normal network cable,\nsupporting the 200Mbps required for\nfull duplex 100Base-TX Ethernet.\nThe full speed Ethernet ensures perfect image\nquality at critical moments, even at\nthe longest cable ranges.\nThe system base unit allows all of\nthe power to be sourced from a POE\nswitch, midspan injector or directly\nfrom its power supply. This\nallows simple installation and reliable\nUPS-backed central power delivery\nto IP cameras. It delivers\nthe full 25.5W required for POE+ equipment at up to 600 metres, or\nstandard 15W POE at up to 820\nmetres. The system  also supports 1-pair and\n2-pair cable with extended range,\nautomatically adapting to the available\npairs. Analogue cameras in UTP\ninstallations can be upgraded\nto IP with no need to replace the\ninstalled cabling infrastructure.\nFor even more extreme distances,\nthe devices can automatically\ndrop to 10Base-T operation, supporting\na range of over 1000 metres (3,280ft).', 'Long range Ethernet and POE over Cat5 or Cat6 cables allows transmission far beyond standard typical 90m maximum distance', 'Long range point-to-point Ethernet over Cat5e or Cat6 cable', 'Pair of units required - one at base (receiver); one at camera (transmitter)', 'Unrestricted 100Base-TX with POE at over 820 metres', 'Delivers full POE Plus power at 600 metres', 'Ruggedised for high performance over extreme temperature range', 'Smart power and diagnostic display for reliable installation', 'Fully automatic, simple to install and maintenance-free', 'Rack mount option', 'Can be used to extend any IP network', '', '', '', '', '', ''),
('OS-COAXTX-POE', 'Long range ethernet with PoE transmission over coax', '', '', '', '', 'The system can be used to transmit PoE ethernet over existing legacy coaxial cables to avoid the need to re-cable a vessel for IP cameras.  It delivers\nunsurpassed distances at full\nbandwidth 100Base-T network signal\nand POE Plus over  regular coaxial cable. It provides the\nreassurance of exceptional performance\nand reliability, while enabling considerable\nsavings in the cost, time and risk of\nupgrading legacy analogue camera\ninstallations to IP.\nA range of 540 - 690 metres with RG-59\nor even up to 1400 metres with RG-11\nis supported without compromising the\n100Base-T data rate. For even greater\ndistances it can automatically configure\nto 10Base-T operation, running approx.\nthree times further with data only. The units\nare entirely self-configuring,\nand feature extended temperature\noperation, have a rugged enclosure\nwith both wall-mount or high density\nrack mounting options. Data and\npower connections are easily monitored\nduring installation using the embedded\nLEDs.  Although designed for 75 Ohm cable,\nthe system will operate over 50\nOhm cable with full performance and\nonly a slight reduction in the maximum\ndistance attainable.\nPoE can be sourced from a\nPOE switch, POE injector or power supply,\nfor simple installation and optional UPS\nbacked power delivery.', 'Long range Ethernet and POE over new or legacy coaxial cable', 'IP and PoE transmission of upto 690m over RG59 coaxial cable', 'Pair of units required - one at base (receiver); one at camera (transmitter)', 'Unrestricted 100Base-T and POE over 1400m (4,600ft) on RG11', 'Ruggedised for high-performance over extreme temperature range', 'Fully automatic, simple to install and maintenance-free', 'Up to 4.2km (2.5 miles) data-only link at 10Base-T without POE', 'Rack mount option', 'Can be used to extend any IP network', '', '', '', '', '', '', ''),
('OS-WLIP', 'Wireless ethernet transmission ', '', 'Not available', '', '', 'This wirelss IP transmission system comprises a transmitter and receiver unit.  It is capable of transmitting IP CCTV over several hundred meters.  It is therefore suitable for applications on-board where it is not possible, or difficult, to run a cable to a camera location.  Examples include transmission from the bow, or crane, to the bridge.  The units require 24vdc which can be provided by a 230vac powers supply.  Both thr transmitter and receiver units are housed in an IP67 enclosure to protect them against water ingress. Suitable for Point-to-Point and Multi-point deployment. Robust link, easy installation, small and easy to handle. Excellent throughput . ', 'IP67 rated enclosure for marine applications', 'Radio and antenna are combined into a single body that takes up minimal space', 'Uses latest ESD Protection to help protect against power surges', '24vdc or 230vac powered', 'Transmission over several hundred meters', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `product_code` varchar(14) DEFAULT NULL,
  `feature_1` varchar(105) DEFAULT NULL,
  `feature_2` varchar(55) DEFAULT NULL,
  `feature_3` varchar(76) DEFAULT NULL,
  `feature_4` varchar(89) DEFAULT NULL,
  `feature_5` varchar(88) DEFAULT NULL,
  `feature_6` varchar(69) DEFAULT NULL,
  `feature_7` varchar(103) DEFAULT NULL,
  `feature_8` varchar(85) DEFAULT NULL,
  `feature_9` varchar(91) DEFAULT NULL,
  `feature_10` varchar(83) DEFAULT NULL,
  `feature_11` varchar(60) DEFAULT NULL,
  `feature_12` varchar(77) DEFAULT NULL,
  `feature_13` varchar(39) DEFAULT NULL,
  `feature_14` varchar(176) DEFAULT NULL,
  `feature_15` varchar(34) DEFAULT NULL,
  `feature_16` varchar(24) DEFAULT NULL,
  `features_concat` varchar(783) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`product_code`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `features_concat`) VALUES
('BSOS-1Z4I-I68', '4x motorised zoom lens', 'Day/Night switching for almost any lighting condition', 'H264, MJPEG', 'PoE', 'IP68 Stainless steel enclosure for harsh environments', 'IR illumination - range up to 40m', '', '', '', '', '', '', '', '', '', '', '• 4x motorised zoom lens\n• Day/Night switching for almost any lighting condition\n• H264, MJPEG\n• PoE\n• IP68 Stainless steel enclosure for harsh environments\n• IR illumination - range up to 40m'),
('BHOS2F4II66M', '', '', '', 'Marine 316L grade stainless steel', 'Fixed lens - 4/6mm options', 'Support ONVIF, HIKVISION, DAHUA', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Uses SONY1/3″CMOS Sensor ', 'High quality IR lamp , long service life , low power consumption.  Distance up to 15 meters', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Anti-shock engineering technology', '2MP resolution', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Marine 316L grade stainless steel\n• Fixed lens - 4/6mm options\n• Support ONVIF, HIKVISION, DAHUA\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Uses SONY1/3″CMOS Sensor \n• High quality IR lamp , long service life , low power consumption.  Distance up to 15 meters\n• Windows glass surface process by nano technology . Good light transmittance. \n• Anti-shock engineering technology\n• 2MP resolution\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BSOS12F28II67', 'AISI 316L Electro Polished Stainless Steel', '2MP or 8MP resolution', 'IR LED Upto 30M', 'Various Lens Options (Fixed & vari-focal)', 'Shock and Vibration Tested', 'Tempered Glass', '12VDC / POE', 'IP67', '-40°C~60°C', '', '', '', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP or 8MP resolution\n• IR LED Upto 30M\n• Various Lens Options (Fixed & vari-focal)\n• Shock and Vibration Tested\n• Tempered Glass\n• 12VDC / POE\n• IP67\n• -40°C~60°C'),
('BSOS2FV0I66', 'AISI 316L Electro Polished Stainless Steel', 'Full-HD Visual flame detection camera', 'Flame wave detection technology with Dual IR sensors', 'Sensing wide angle up to 80 degree', 'Flame detection range upto 30M', '2MP resolution', 'IP66', '', '', '', '', '', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• Full-HD Visual flame detection camera\n• Flame wave detection technology with Dual IR sensors\n• Sensing wide angle up to 80 degree\n• Flame detection range upto 30M\n• 2MP resolution\n• IP66'),
('BSOA-2Z4I-I67', 'Tough, vandal-resistant housing, IK10 & IP67', 'Ruggedised Marine grade', 'PoE (802.3af) or 12VDC', '2MP with Super Low-Light Performance', '2.7~12mm Motorised Zoom Lens with Smart Auto Focus', 'Wiper with washer option', 'Built-in on-camera SD Card recording (up to 256GB) for local back-up', 'Adaptive IR Integral LEDs with up to 60m range', 'Intelligent Video Analytics', 'Audio In/ Out', 'Fully cable-managed solution, keeps cables hidden and secure', 'Wall-bracket, pendant or pedestal mount options', 'Washer option', 'Extendable sun/rain visor option', 'Manufactured in the United Kingdom', 'Custom colours available', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE (802.3af) or 12VDC\n• 2MP with Super Low-Light Performance\n• 2.7~12mm Motorised Zoom Lens with Smart Auto Focus\n• Wiper with washer option\n• Built-in on-camera SD Card recording (up to 256GB) for local back-up\n• Adaptive IR Integral LEDs with up to 60m range\n• Intelligent Video Analytics\n• Audio In/ Out\n• Fully cable-managed solution, keeps cables hidden and secure\n• Wall-bracket, pendant or pedestal mount options\n• Washer option\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom\n• Custom colours available'),
('BSOS12F20I66', 'AISI 316L Electro Polished Stainless Steel', '12MP resolution', '180 degree view', 'Shock and Vibration Tested', '12VDC / POE', 'IP66', '-40°C~60°C', '', '', '', '', '', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 12MP resolution\n• 180 degree view\n• Shock and Vibration Tested\n• 12VDC / POE\n• IP66\n• -40°C~60°C'),
('DSOS-1Z4I-I68', '4x motorized zoom lens', '	Day/Night switching for almost any lighting condition', '	H264,H265', '	PoE', '	IP68 Stainless steel enclosure for harsh environments', '', '', '', '', '', '', '', '', '', '', '', '• 4x motorized zoom lens\n• 	Day/Night switching for almost any lighting condition\n• 	H264,H265\n• 	PoE\n• 	IP68 Stainless steel enclosure for harsh environments'),
('DHOS2F4II66M', '', '', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY1/3″CMOS Sensor ', 'Support dualstream & mobile phone monitoring', 'Infra-red illumination', 'AC220V/DC12V and PoE', 'Wall or pendant mounting', '2MP resolution', 'IP66 rated', '4 mm, 6 mm, 8 mm lens options', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• 316L grade stainless steel for excellent protection in marine environments\n• Uses SONY1/3″CMOS Sensor \n• Support dualstream & mobile phone monitoring\n• Infra-red illumination\n• AC220V/DC12V and PoE\n• Wall or pendant mounting\n• 2MP resolution\n• IP66 rated\n• 4 mm, 6 mm, 8 mm lens options\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BHOS2Z18OI66M', '', '', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY 1/2.8″ CMOS Sensor ', '', '', 'AC220V/DC12V', 'PTZ, Wall, pedestal or pendant mounting', '2MP resolution', 'IP66 rated', '4.7 - 84.6 mm motorised zoom lens (x18)', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• 316L grade stainless steel for excellent protection in marine environments\n• Uses SONY 1/2.8″ CMOS Sensor \n• AC220V/DC12V\n• PTZ, Wall, pedestal or pendant mounting\n• 2MP resolution\n• IP66 rated\n• 4.7 - 84.6 mm motorised zoom lens (x18)\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BHTS3F8OI66M', '', '', '', 'GE glass designed for thermal cameras', 'Support 3 temperature measurement rule types (Spot, Line, Area)', '8mm,15mm, 25mm, 35mm, 50mm lens options', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• GE glass designed for thermal cameras\n• Support 3 temperature measurement rule types (Spot, Line, Area)\n• 8mm,15mm, 25mm, 35mm, 50mm lens options\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Marine 316L grade stainless steel\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• AC220V/DC12V. Other power options available.\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('PHOS2Z260I66M', '', '', '', 'Suited to strong corrosive environments. Anti-corrosion 316L, waterproof', '2MP resolution', '', '', '', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Suited to strong corrosive environments. Anti-corrosion 316L, waterproof\n• 2MP resolution\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('DSOS2Z200I67', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 20X Zoom lens', '2MP resolution', 'PAN (360°Endless / Max. 380°/sec) / TILT (-10~190° / Max.380°/sec)', '', 'Shock and Vibration Tested', 'Fan and Heater', 'AR Coated Polycarbonate Bubble Cover', '12VDC / 24VAC / POE', 'IP67', '-40°C~60°C', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 20X Zoom lens\n• 2MP resolution\n• PAN (360°Endless / Max. 380°/sec) / TILT (-10~190° / Max.380°/sec)\n• Shock and Vibration Tested\n• Fan and Heater\n• AR Coated Polycarbonate Bubble Cover\n• 12VDC / 24VAC / POE\n• IP67\n• -40°C~60°C'),
('PSOA-3Z30-XI68', 'UK design and manufacture', 'UK service and support', 'Ultra-tough rugged PTZ camera', 'IP68', 'Smart IR, White Light and Dual light options', 'Rugged mounting bracket options', 'Custom colour options', '1/2.8\" CMOS 3MP low-light sensor with 30x optical zoom.', 'Silicon, long-life wiper and washer options', 'ONVIF Profiles S, G and Q compliant', 'Brushless stepper motors for resilience', 'Intelligent, auto-PTZ tracking', 'SD Card ‘edge’ recording option', '', '', '', '• UK design and manufacture\n• UK service and support\n• Ultra-tough rugged PTZ camera\n• IP68\n• Smart IR, White Light and Dual light options\n• Rugged mounting bracket options\n• Custom colour options\n• 1/2.8\" CMOS 3MP low-light sensor with 30x optical zoom.\n• Silicon, long-life wiper and washer options\n• ONVIF Profiles S, G and Q compliant\n• Brushless stepper motors for resilience\n• Intelligent, auto-PTZ tracking\n• SD Card ‘edge’ recording option'),
('PSOS-3Z30-XI68', 'UK design and manufacture', 'UK service and support', 'Ultra-tough, Electropolished 316 Stainless Steel rugged PTZ camera', 'IP68', 'PoE 90W (802.3bt) ', 'Adaptive White Light and IR (zoom-linked) operation', 'Intelligent, Auto- PTZ Tracking', 'Rugged Mounting Bracket Options', 'Brushless Stepper Motors for Resilience and durability', 'ONVIF Compliant', 'SD Card recording option, up to 256GB', '', '', '', '', '', '• UK design and manufacture\n• UK service and support\n• Ultra-tough, Electropolished 316 Stainless Steel rugged PTZ camera\n• IP68\n• PoE 90W (802.3bt) \n• Adaptive White Light and IR (zoom-linked) operation\n• Intelligent, Auto- PTZ Tracking\n• Rugged Mounting Bracket Options\n• Brushless Stepper Motors for Resilience and durability\n• ONVIF Compliant\n• SD Card recording option, up to 256GB'),
('PHOS2Z200I66M', '', '', '', 'Marine 316L grade stainless steel', '20x zoom lens', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Marine 316L grade stainless steel\n• 20x zoom lens\n• Support ONVIF, HIKVISION, DAHUA\n• AC85V-260V\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Smart windscreen wiper\n• Supports digital wide dynamic,  3D-DNR, low bit rate\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('PSOS2Z36II67', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built In Wiper', 'Night Vision Up To 100M', 'Optional Powers 24VDC', 'IP67', '-40°C~60°C', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• 360 degree Endless Pan / 180 degree Tilt\n• Shock and Vibration Tested\n• Tempered Glass\n• Built In Wiper\n• Night Vision Up To 100M\n• Optional Powers 24VDC\n• IP67\n• -40°C~60°C'),
('PHOS2Z20II66M', '', '', '', 'Marine 316L grade stainless steel', '20x zoom lens', 'IR distance:100M', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Marine 316L grade stainless steel\n• 20x zoom lens\n• IR distance:100M\n• Support ONVIF, HIKVISION, DAHUA\n• AC85V-260V\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Smart windscreen wiper\n• Supports digital wide dynamic,  3D-DNR, low bit rate\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('PHOTS2Z200I66M', '', '', '', 'Smart windscreen wiper option', 'Marine 316L grade stainless steel', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Smart windscreen wiper option\n• Marine 316L grade stainless steel\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BHOS2F4II66', 'Explosionproof PTZ Dome Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', 'Fixed lens - 4/6mm options', 'Support ONVIF, HIKVISION, DAHUA', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Uses SONY1/3″CMOS Sensor ', 'High quality IR lamp , long service life , low power consumption.  Distance up to 15 meters', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Anti-shock engineering technology', '2MP resolution', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Explosionproof PTZ Dome Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• Marine 316L grade stainless steel\n• Fixed lens - 4/6mm options\n• Support ONVIF, HIKVISION, DAHUA\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Uses SONY1/3″CMOS Sensor \n• High quality IR lamp , long service life , low power consumption.  Distance up to 15 meters\n• Windows glass surface process by nano technology . Good light transmittance. \n• Anti-shock engineering technology\n• 2MP resolution\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BHOS-4Z4I-I66', 'Stainless steel housing', 'Weatherproof IP66 for harsh environments', 'High resolution 4MP', '3x motorised zoom lens', 'Integrated IR illumination - 50m range', '12vdc, 24vdc or Poe', 'Explosionproof ', 'Certified for use in hazardous areas', 'Pole and corner mounting options', '', '', '', '', '', '', '', '• Stainless steel housing\n• Weatherproof IP66 for harsh environments\n• High resolution 4MP\n• 3x motorised zoom lens\n• Integrated IR illumination - 50m range\n• 12vdc, 24vdc or Poe\n• Explosionproof \n• Certified for use in hazardous areas\n• Pole and corner mounting options'),
('BHOA-4Z4I-I66', 'Stainless steel housing', 'Weatherproof IP66 for harsh environments', 'High resolution 4MP', '3x motorised zoom lens', '', '12vdc, 24vdc or Poe', 'Explosionproof ', 'Certified for use in hazardous areas', 'Pole and corner mounting options', '', '', '', '', '', '', '', '• Stainless steel housing\n• Weatherproof IP66 for harsh environments\n• High resolution 4MP\n• 3x motorised zoom lens\n• 12vdc, 24vdc or Poe\n• Explosionproof \n• Certified for use in hazardous areas\n• Pole and corner mounting options'),
('BHOS2Z360I68', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', '12VDC / POE', 'IP68', '-40°C~60°C', '', '', '', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• Shock and Vibration Tested\n• Tempered Glass\n• 12VDC / POE\n• IP68\n• -40°C~60°C'),
('BHOS2ZV0I68', 'AISI 316L Electro Polished Stainless Steel', '2MP or 8MP resolution', 'Fixed, vari-focal and motorised vari-focal lens options', 'Shock and Vibration Tested', 'Tempered Glass', '12VDC / POE', 'IP68', '-40°C~60°C', '', '', '', '', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP or 8MP resolution\n• Fixed, vari-focal and motorised vari-focal lens options\n• Shock and Vibration Tested\n• Tempered Glass\n• 12VDC / POE\n• IP68\n• -40°C~60°C'),
('BHOS2Z18OI66', 'Explosionproof Camera certified for use in hazardous environments', 'ATEX\nII 2G Ex d IIC T6 Gb\nII 2D Ex tb IIIC IP68 T80℃ Db', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY 1/2.8″ CMOS Sensor ', '', '', 'AC220V/DC12V', 'PTZ, Wall, pedestal or pendant mounting', '2MP resolution', 'IP66 rated', '4.7 - 84.6 mm motorised zoom lens (x18)', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Explosionproof Camera certified for use in hazardous environments\n• ATEX\nII 2G Ex d IIC T6 Gb\nII 2D Ex tb IIIC IP68 T80℃ Db\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• 316L grade stainless steel for excellent protection in marine environments\n• Uses SONY 1/2.8″ CMOS Sensor \n• AC220V/DC12V\n• PTZ, Wall, pedestal or pendant mounting\n• 2MP resolution\n• IP66 rated\n• 4.7 - 84.6 mm motorised zoom lens (x18)\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BHOS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', 'Motorised IR illuminator up to 300M ', '', '24VDC', 'IP68', '-40°C~60°C', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• Shock and Vibration Tested\n• Tempered Glass\n• Built-in Wiper\n• Motorised IR illuminator up to 300M \n• 24VDC\n• IP68\n• -40°C~60°C'),
('BHOTS2Z360I68', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'Thermal (35mm / VGA / 12μm)', '24VDC', 'IP68', '-40°C~60°C', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• Shock and Vibration Tested\n• Tempered Glass\n• Built-in Wiper\n• Thermal (35mm / VGA / 12μm)\n• 24VDC\n• IP68\n• -40°C~60°C'),
('BHTS3F8OI66', 'Thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'GE glass designed for thermal cameras', 'Support 3 temperature measurement rule types (Spot, Line, Area)', '8mm,15mm, 25mm, 35mm, 50mm lens options', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Thermal Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• GE glass designed for thermal cameras\n• Support 3 temperature measurement rule types (Spot, Line, Area)\n• 8mm,15mm, 25mm, 35mm, 50mm lens options\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Marine 316L grade stainless steel\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• AC220V/DC12V. Other power options available.\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('DHOS2F4II66', 'Explosionproof Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY1/3″CMOS Sensor ', 'Support dualstream & mobile phone monitoring', 'Infra-red illumination', 'AC220V/DC12V and PoE', 'Wall or pendant mounting', '2MP resolution', 'IP66 rated', '4 mm, 6 mm, 8 mm lens options', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Explosionproof Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• 316L grade stainless steel for excellent protection in marine environments\n• Uses SONY1/3″CMOS Sensor \n• Support dualstream & mobile phone monitoring\n• Infra-red illumination\n• AC220V/DC12V and PoE\n• Wall or pendant mounting\n• 2MP resolution\n• IP66 rated\n• 4 mm, 6 mm, 8 mm lens options\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('THOS-2F3I-I68', 'Explosionproof IP68 rated', '1/2.8\" Progressive Scan CMOS', '2 mm, 2.8 mm, 4 mm, 6 mm lens options', '1920 × 1080 2MP resolution', '120dB WDR', 'Stainless steel 316L', 'H.265, H.265+, H.264+, H.264', 'Image enhancement: BLC, 3D DNR, HLC, defog, EIS', 'Behaviour analyses, exception detections and face detection', 'II 2 G D Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db IP68 Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db', '', '', '', '', '', '', '• Explosionproof IP68 rated\n• 1/2.8\" Progressive Scan CMOS\n• 2 mm, 2.8 mm, 4 mm, 6 mm lens options\n• 1920 × 1080 2MP resolution\n• 120dB WDR\n• Stainless steel 316L\n• H.265, H.265+, H.264+, H.264\n• Image enhancement: BLC, 3D DNR, HLC, defog, EIS\n• Behaviour analyses, exception detections and face detection\n• II 2 G D Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db IP68 Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db'),
('PHOS2Z26OI66', 'Explosionproof PTZ Dome Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion 316L, waterproof', '2MP resolution', '', '', '', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Explosionproof PTZ Dome Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• Suited to strong corrosive environments. Anti-corrosion 316L, waterproof\n• 2MP resolution\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('PHOS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', 'Motorised IR illuminator up to 300M ', '', 'Power options 24VDC / 110AC / 220AC', 'IP68', '-40°C~60°C', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• 360 degree Endless Pan / 180 degree Tilt\n• Shock and Vibration Tested\n• Tempered Glass\n• Built-in Wiper\n• Motorised IR illuminator up to 300M \n• Power options 24VDC / 110AC / 220AC\n• IP68\n• -40°C~60°C'),
('PHOS2Z20II66', 'Explosionproof PTZ Dome Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', '20x zoom lens', 'IR distance:100M', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Explosionproof PTZ Dome Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• Marine 316L grade stainless steel\n• 20x zoom lens\n• IR distance:100M\n• Support ONVIF, HIKVISION, DAHUA\n• AC85V-260V\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Smart windscreen wiper\n• Supports digital wide dynamic,  3D-DNR, low bit rate\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('PHOS2Z200I66', 'Thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', '20x zoom lens', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Thermal Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• Marine 316L grade stainless steel\n• 20x zoom lens\n• Support ONVIF, HIKVISION, DAHUA\n• AC85V-260V\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Smart windscreen wiper\n• Supports digital wide dynamic,  3D-DNR, low bit rate\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('PHOS-2Z30O-I69', 'Stainless steel housing with maximum resistance in corrosive environments', 'Weatherproof IP69 for extreme environments', 'High resolution 4MP', '3x motorised zoom lens', 'Integrated IR illumination - 50m range', '12vdc, 24vdc or Poe', 'Certified explosion-proof for use in Zones 1 and 2, Group IIC (Gas), Zones 21 and 22, Group IIIC (Dust)', 'Certified for use in hazardous areas - ATEX (EN IEC 60079-0, EN 60079-1, EN 60079-31)', 'Option for direct fiber optic connection', 'Certified up to a temperature of +80°C', 'Pole and corner mounting options', '', '', '', '', '', '• Stainless steel housing with maximum resistance in corrosive environments\n• Weatherproof IP69 for extreme environments\n• High resolution 4MP\n• 3x motorised zoom lens\n• Integrated IR illumination - 50m range\n• 12vdc, 24vdc or Poe\n• Certified explosion-proof for use in Zones 1 and 2, Group IIC (Gas), Zones 21 and 22, Group IIIC (Dust)\n• Certified for use in hazardous areas - ATEX (EN IEC 60079-0, EN 60079-1, EN 60079-31)\n• Option for direct fiber optic connection\n• Certified up to a temperature of +80°C\n• Pole and corner mounting options'),
('PHOTS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'Thermal (35mm / VGA / 12μm)', 'Power options 24VDC / 110AC / 220AC', 'IP68', '-40°C~60°C', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• 360 degree Endless Pan / 180 degree Tilt\n• Shock and Vibration Tested\n• Tempered Glass\n• Built-in Wiper\n• Thermal (35mm / VGA / 12μm)\n• Power options 24VDC / 110AC / 220AC\n• IP68\n• -40°C~60°C'),
('PHOTS2Z200I66', 'Thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Smart windscreen wiper option', 'Marine 316L grade stainless steel', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Thermal Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• Smart windscreen wiper option\n• Marine 316L grade stainless steel\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BHTS3F8OI66', 'Thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'GE glass designed for thermal cameras', 'Support 3 temperature measurement rule types (Spot, Line, Area)', '8mm,15mm, 25mm, 35mm, 50mm lens options', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Thermal Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• GE glass designed for thermal cameras\n• Support 3 temperature measurement rule types (Spot, Line, Area)\n• 8mm,15mm, 25mm, 35mm, 50mm lens options\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Marine 316L grade stainless steel\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• AC220V/DC12V. Other power options available.\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BSTAIF80I67', 'Uncooled VOx Infrared Detector', '720x480 Resolution', 'NETD < 50 mk @ F1.0', 'H265 Compression Technology', 'Lens options from 8.8 to 50mm', 'Two-way Audio', 'Supports ONVIF Standard to Simplify Integration and Enhance Interoperability', 'UL Certification', 'Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', 'Video Content Analysis', '', '', '', '', '', '', '• Uncooled VOx Infrared Detector\n• 720x480 Resolution\n• NETD < 50 mk @ F1.0\n• H265 Compression Technology\n• Lens options from 8.8 to 50mm\n• Two-way Audio\n• Supports ONVIF Standard to Simplify Integration and Enhance Interoperability\n• UL Certification\n• Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing\n• Video Content Analysis'),
('BHOTS2Z360I68', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'Thermal (35mm / VGA / 12μm)', '24VDC', 'IP68', '-40°C~60°C', '', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• Shock and Vibration Tested\n• Tempered Glass\n• Built-in Wiper\n• Thermal (35mm / VGA / 12μm)\n• 24VDC\n• IP68\n• -40°C~60°C'),
('PHOTS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'Thermal (35mm / VGA / 12μm)', 'Power options 24VDC / 110AC / 220AC', 'IP68', '-40°C~60°C', '', '', '', '• AISI 316L Electro Polished Stainless Steel\n• 2MP resolution\n• Optical 36X Zoom lens\n• 360 degree Endless Pan / 180 degree Tilt\n• Shock and Vibration Tested\n• Tempered Glass\n• Built-in Wiper\n• Thermal (35mm / VGA / 12μm)\n• Power options 24VDC / 110AC / 220AC\n• IP68\n• -40°C~60°C'),
('PHOTS2Z20OI66', 'Thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Smart windscreen wiper option', 'Marine 316L grade stainless steel', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Thermal Camera certified for use in hazardous environments\n• ATEX Zone 1&2 / 21&22\n• Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.\n• Smart windscreen wiper option\n• Marine 316L grade stainless steel\n• Suited to strong corrosive environments. Anti-corrosion, waterproof.\n• Windows glass surface process by nano technology . Good light transmittance. \n• Low power consumption\n• Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.'),
('BSOA8FVII67', 'Range of resolutions from 2MP to 8MP @ 25 fps', '', 'Built-in IR Illuminators, Effective up to 50 Meters', 'Smart IR Technology to Avoid Overexposure', 'Wide dynamic range for Unparalleled Visibility in Extremely Bright and Dark Environments', 'Supreme Night Visibility for Low Light Conditions', 'Smart Motion Detection to Reduce False Alarms', 'Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', '-40°C ~ 60°C Wide Temperature Range for Extreme Weather Conditions', '', '', '', '', '', '', '', '• Range of resolutions from 2MP to 8MP @ 25 fps\n• Built-in IR Illuminators, Effective up to 50 Meters\n• Smart IR Technology to Avoid Overexposure\n• Wide dynamic range for Unparalleled Visibility in Extremely Bright and Dark Environments\n• Supreme Night Visibility for Low Light Conditions\n• Smart Motion Detection to Reduce False Alarms\n• Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing\n• -40°C ~ 60°C Wide Temperature Range for Extreme Weather Conditions'),
('DSOA8FVII67', 'Range of resolutions from 2MP to 8MP @ 25 fps', 'H265 Compression Technology', 'Built-in IR Illuminators, Effective up to 50 Meters', 'Wide dynamic range for Unparalleled Visibility in Extremely Bright and Dark Environments', '', '', '', 'Weather-proof IP66/IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', '-40°C ~ 60°C Wide Temperature Range for Extreme Weather Conditions', '', '', '', '', '', '', '', '• Range of resolutions from 2MP to 8MP @ 25 fps\n• H265 Compression Technology\n• Built-in IR Illuminators, Effective up to 50 Meters\n• Wide dynamic range for Unparalleled Visibility in Extremely Bright and Dark Environments\n• Weather-proof IP66/IP67, Vandal-proof IK10 and NEMA 4X-rated Housing\n• -40°C ~ 60°C Wide Temperature Range for Extreme Weather Conditions'),
('DSOA12F1II66', '12-Megapixel CMOS Sensor', '25 fps @ 2944x2944', '360° 20M IR with Smart IR ', 'WDR (120dB) for Improved Visibility in High Contrast Scenes', 'Smart Motion Detection to Reduce False Alarms', 'Smart VCA (Intrusion Detection, Crowd Detection, Loitering Detection)', '10 fisheye views with dewarping', '', '', '', '', '', '', '', '', '', '• 12-Megapixel CMOS Sensor\n• 25 fps @ 2944x2944\n• 360° 20M IR with Smart IR \n• WDR (120dB) for Improved Visibility in High Contrast Scenes\n• Smart Motion Detection to Reduce False Alarms\n• Smart VCA (Intrusion Detection, Crowd Detection, Loitering Detection)\n• 10 fisheye views with dewarping'),
('BSOP-2Z4I-I67', 'Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries', 'Recognises vehicle type, brand and colour', ' Supports blacklist and whitelist configuration ', 'Collaborates with lanes to control the entry & exit of vehicles and trigger gate opening ', 'On-board storage up to 256GB ', 'Interfaces to vehicle barriers and LED message signs', 'Wiegand output to access control systems', '', '', '', '', '', '', '', '', '', '• Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries\n• Recognises vehicle type, brand and colour\n•  Supports blacklist and whitelist configuration \n• Collaborates with lanes to control the entry & exit of vehicles and trigger gate opening \n• On-board storage up to 256GB \n• Interfaces to vehicle barriers and LED message signs\n• Wiegand output to access control systems'),
('BSTAIF80I67', 'Uncooled VOx Infrared Detector', '720x480 Resolution', 'NETD < 50 mk @ F1.0', 'H265 Compression Technology', 'Lens options from 8.8 to 50mm', 'Two-way Audio', 'Supports ONVIF Standard to Simplify Integration and Enhance Interoperability', 'UL Certification', 'Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', 'Video Content Analysis', '', '', '', '', '', '', '• Uncooled VOx Infrared Detector\n• 720x480 Resolution\n• NETD < 50 mk @ F1.0\n• H265 Compression Technology\n• Lens options from 8.8 to 50mm\n• Two-way Audio\n• Supports ONVIF Standard to Simplify Integration and Enhance Interoperability\n• UL Certification\n• Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing\n• Video Content Analysis'),
('PSOA5Z30II66', '25 fps @ 2560x1920', '30x Optical Zoom, Auto Focus', '360° Continuous Pan, -20° to 90° (auto flip) Tilt', '200M IR with Smart IR', 'Weather-proof IP66-rated, Vandal-proof IK10 and NEMA 4X-rated Housing', '-40°C ~ 60°C Wide Temperature Range for Extreme Weather Conditions', 'EIS (Electronic Image Stabilization) for Image Stability', '', 'Smart Tracking Advanced for Moving People with People-based Deep Learning Technology', '', '', '', '', '', '', '', '• 25 fps @ 2560x1920\n• 30x Optical Zoom, Auto Focus\n• 360° Continuous Pan, -20° to 90° (auto flip) Tilt\n• 200M IR with Smart IR\n• Weather-proof IP66-rated, Vandal-proof IK10 and NEMA 4X-rated Housing\n• -40°C ~ 60°C Wide Temperature Range for Extreme Weather Conditions\n• EIS (Electronic Image Stabilization) for Image Stability\n• Smart Tracking Advanced for Moving People with People-based Deep Learning Technology');

-- --------------------------------------------------------

--
-- Table structure for table `housings_certs`
--

DROP TABLE IF EXISTS `housings_certs`;
CREATE TABLE `housings_certs` (
  `Product code` varchar(11) DEFAULT NULL,
  `Impact protection` varchar(4) DEFAULT NULL,
  `Salt fog resistance` varchar(10) DEFAULT NULL,
  `Corrosion testing` varchar(10) DEFAULT NULL,
  `Vibration testing` varchar(10) DEFAULT NULL,
  `Ingress Protection` varchar(4) DEFAULT NULL,
  `European/US/EMC` varchar(6) DEFAULT NULL,
  `Marine` varchar(10) DEFAULT NULL,
  `Hazardous Area` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `housings_certs`
--

INSERT INTO `housings_certs` (`Product code`, `Impact protection`, `Salt fog resistance`, `Corrosion testing`, `Vibration testing`, `Ingress Protection`, `European/US/EMC`, `Marine`, `Hazardous Area`) VALUES
('BSOA0000067', 'IK10', '', '', '', 'IP67', 'CE/FCC', '', ''),
('BSOA000W067', 'IK10', '', '', '', 'IP67', 'CE/FCC', '', ''),
('BHTS0000066', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('DHOS0000066', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('BHOS0000066', '', '', '', '', 'IP66', '', '', 'ATEX\nII 2G Ex d IIC T6 Gb\nII 2D Ex tb IIIC IP68 T80℃ Db'),
('PHOS0000066', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('PHOS0000066', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.'),
('PHOS000I066', '', '', '', '', 'IP66', '', '', 'ATEX Zone 1&2 / 21&22. Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.');

-- --------------------------------------------------------

--
-- Table structure for table `housings_features`
--

DROP TABLE IF EXISTS `housings_features`;
CREATE TABLE `housings_features` (
  `Product code` varchar(11) DEFAULT NULL,
  `feature 1` varchar(82) DEFAULT NULL,
  `feature 2` varchar(55) DEFAULT NULL,
  `feature 3` varchar(76) DEFAULT NULL,
  `feature 4` varchar(72) DEFAULT NULL,
  `feature 5` varchar(74) DEFAULT NULL,
  `feature 6` varchar(24) DEFAULT NULL,
  `feature 7` varchar(62) DEFAULT NULL,
  `feature 8` varchar(60) DEFAULT NULL,
  `feature 9` varchar(77) DEFAULT NULL,
  `feature 10` varchar(47) DEFAULT NULL,
  `feature 11` varchar(44) DEFAULT NULL,
  `feature 12` varchar(77) DEFAULT NULL,
  `feature 13` varchar(25) DEFAULT NULL,
  `feature 14` varchar(176) DEFAULT NULL,
  `feature 15` varchar(10) DEFAULT NULL,
  `feature 16` varchar(10) DEFAULT NULL,
  `features_concat` varchar(504) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `housings_features`
--

INSERT INTO `housings_features` (`Product code`, `feature 1`, `feature 2`, `feature 3`, `feature 4`, `feature 5`, `feature 6`, `feature 7`, `feature 8`, `feature 9`, `feature 10`, `feature 11`, `feature 12`, `feature 13`, `feature 14`, `feature 15`, `feature 16`, `features_concat`) VALUES
('BSOA0000067', 'Tough, vandal-resistant housing, IK10 & IP67', 'Ruggedised Marine grade', 'PoE+, 24VAC or 12VDC', 'Wide range of camera & lens options', 'Camera/lens options can be factory fitted if required', 'Custom colours available', 'Marine powdercoat paint gives a robust, UV light-stable finish', 'Fully cable-managed solution, keeps cables hidden and secure', 'No need for additional junction box', 'Wall-bracket, pendant or pedestal mount options', 'Extendable sun/rain visor option', 'Manufactured in the United Kingdom', '', '', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('BSOA000W067', 'Tough, vandal-resistant housing, IK10 & IP67', 'Ruggedised Marine grade', 'PoE+, 24VAC or 12VDC', 'Wide range of camera & lens options', 'Camera/lens options can be factory fitted if required', 'Custom colours available', 'Marine powdercoat paint gives a robust, UV light-stable finish', 'Fully cable-managed solution, keeps cables hidden and secure', 'No need for additional junction box', 'Wall-bracket, pendant or pedestal mount options', 'Extendable sun/rain visor option', 'Manufactured in the United Kingdom', 'Long life silicone wiper ', 'Washer option with remote control (WPN400)', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('BHTS0000066', 'Thermal Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'GE glass designed for thermal cameras', '', '', '', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('DHOS0000066', 'Explosionproof Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', '', 'Support dualstream & mobile phone monitoring', 'Infra-red illumination', 'AC220V/DC12V and PoE', 'Wall or pendant mounting', '', 'IP66 rated', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('BHOS0000066', 'Explosionproof Camera Housing certified for use in hazardous environments', 'ATEX\nII 2G Ex d IIC T6 Gb\nII 2D Ex tb IIIC IP68 T80℃ Db', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', '', '', '', 'AC220V/DC12V', 'PTZ, Wall, pedestal or pendant mounting', '', 'IP66 rated', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('PHOS0000066', 'Explosionproof PTZ Dome Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion 316L, waterproof', '', '', '', '', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('PHOS0000066', 'Explosionproof PTZ Dome Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', 'IR distance:100M', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', '', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('PHOS000I066', 'Explosionproof PTZ Dome Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', '', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', '', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `housings_info`
--

DROP TABLE IF EXISTS `housings_info`;
CREATE TABLE `housings_info` (
  `product_code` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `product_name` varchar(63) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(10) DEFAULT NULL,
  `technical_image` varchar(10) DEFAULT NULL,
  `technical_image_2` varchar(10) DEFAULT NULL,
  `technical_image_3` varchar(10) DEFAULT NULL,
  `download_link` varchar(10) DEFAULT NULL,
  `description_(as_text)` varchar(1088) DEFAULT NULL,
  `feature_1` varchar(82) DEFAULT NULL,
  `feature_2` varchar(55) DEFAULT NULL,
  `feature_3` varchar(76) DEFAULT NULL,
  `feature_4` varchar(72) DEFAULT NULL,
  `feature_5` varchar(74) DEFAULT NULL,
  `feature_6` varchar(24) DEFAULT NULL,
  `feature_7` varchar(62) DEFAULT NULL,
  `feature_8` varchar(60) DEFAULT NULL,
  `feature_9` varchar(77) DEFAULT NULL,
  `feature_10` varchar(47) DEFAULT NULL,
  `feature_11` varchar(44) DEFAULT NULL,
  `feature_12` varchar(77) DEFAULT NULL,
  `feature_13` varchar(25) DEFAULT NULL,
  `feature_14` varchar(176) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL,
  `features_concat` varchar(504) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `housings_info`
--

INSERT INTO `housings_info` (`product_code`, `product_name`, `image`, `technical_image`, `technical_image_2`, `technical_image_3`, `download_link`, `description_(as_text)`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `features_concat`) VALUES
('BSOA0000067', 'Marine camera housing', '', '', '', '', '', 'Fully cable managed Camera Housing, including wall bracket and 12V DC/24V AC heater. Ruggedised marine finish. The BSA0067 is a tough, fixed camera\nhousing which seals against dirt, moisture and dust ingress. It allows a wide range of fixed cameras and lenses to be used in tough, outdoor environments. It is IP67 weather-proof rated and IK10\nshock and vandal-resistant.  It can be pendant or pedestal mounted to ceilings, walls\nand soffits.', 'Tough, vandal-resistant housing, IK10 & IP67', 'Ruggedised Marine grade', 'PoE+, 24VAC or 12VDC', 'Wide range of camera & lens options', 'Camera/lens options can be factory fitted if required', 'Custom colours available', 'Marine powdercoat paint gives a robust, UV light-stable finish', 'Fully cable-managed solution, keeps cables hidden and secure', 'No need for additional junction box', 'Wall-bracket, pendant or pedestal mount options', 'Extendable sun/rain visor option', 'Manufactured in the United Kingdom', '', '', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('BSOA000W067', 'Marine camera housing with wiper (& washer option)', '', '', '', '', '', 'Marine camera housing with wiper (& washer option). Long life silicone wiper with auto-wipe and/or remote wash/wipe control facility.  Wash/wipe intervals can be set using remote control or dip-switch.  Fully cable managed Camera Housing, including wall bracket and 12V DC/24V AC heater. Ruggedised marine finish. It is a a tough, fixed camera housing which seals against dirt, moisture and dust ingress. It allows a wide range of fixed cameras and lenses to be used in tough, outdoor environments. It is IP67 weather-proof rated and IK10 shock and vandal-resistant.  It can be pendant or pedestal mounted to ceilings, walls and soffits.\nThe system includes a nozzle to squirt water onto the camera’s window. This is cleaned away by the camera’s silicon wiper. This connects to the washer pipe of the wash pump system (OSTANKAABB and OSWASH). The washer pump motor can be switched on via an open/close contact or a telemetry control command. The nozel bracket is made from Marine Grade, 316, stainless steel for exceptional resistance to extreme marine, hazardous and toxic environments.”', 'Tough, vandal-resistant housing, IK10 & IP67', 'Ruggedised Marine grade', 'PoE+, 24VAC or 12VDC', 'Wide range of camera & lens options', 'Camera/lens options can be factory fitted if required', 'Custom colours available', 'Marine powdercoat paint gives a robust, UV light-stable finish', 'Fully cable-managed solution, keeps cables hidden and secure', 'No need for additional junction box', 'Wall-bracket, pendant or pedestal mount options', 'Extendable sun/rain visor option', 'Manufactured in the United Kingdom', 'Long life silicone wiper ', 'Washer option with remote control (WPN400)', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('BHTS0000066', 'Explosionproof Thermal Camera Housing- stainless steel ', '', '', '', '', '', 'The rugged thermal camera housing is an ATEX Class I Division 1&2 / Class II Division 1&2 certified PTZ camera station, made in 316L stainless-steel. It is supplied without a camera.  However, we can fit and certify a thermal camera of your choice if required.  It is designed for use in hazardous areas in onshore, offshore, marine and heavy industrial environments.  For example, passenger ships & commercial vessels, oil & gas exploration/extraction/marine and transport.', 'Thermal Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'GE glass designed for thermal cameras', '', '', '', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('DHOS0000066', 'Explosionproof fixed dome housing - stainless steel ', '', '', '', '', '', 'This compact camera housing is manufactured in heavy-duty 316L stainless steel.  It is supplied without a camera.  However, we can fit and certify an IP or analogue camera of your choice if required.  It is IP66 rated - suitable for hostile environments.  It is certified for use in hazardous areas.  It is ready for wall or pendant mounting, requiring only power and avideo/IP connection. It is designed for use in hazardous areas in onshore, offshore, marine and heavy industrial environments.  For example, passenger ships & commercial vessels, oil & gas exploration/extraction/marine and transport.', 'Explosionproof Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', '', 'Support dualstream & mobile phone monitoring', 'Infra-red illumination', 'AC220V/DC12V and PoE', 'Wall or pendant mounting', '', 'IP66 rated', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('BHOS0000066', 'Explosionproof housing with wiper - stainless steel ', '', '', '', '', '', 'This camera housing is a rugged corrosion-proof dual-head CCTV station designed for use in demanding environments. It is supplied without cameras.  However, we can fit and certify IP,  analogue and thermal cameras of your choice if required. The thermal housing\'s large germanium window suits all thermal modules from 8 to 100 mm. ', 'Explosionproof Camera Housing certified for use in hazardous environments', 'ATEX\nII 2G Ex d IIC T6 Gb\nII 2D Ex tb IIIC IP68 T80℃ Db', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', '', '', '', 'AC220V/DC12V', 'PTZ, Wall, pedestal or pendant mounting', '', 'IP66 rated', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('PHOS0000066', 'Explosionproof PTZ Dome Housing - Stainless Steel ', '', '', '', '', '', 'The camera housing is an ATEX Class I Division 1&2 / Class II Division 1&2 certified PTZ dome station, made in 316L stainless-steel. It is supplied without a camera.  However, we can fit and certify an IP or analogue camera of your choice if required.  It is designed for use in hazardous areas in onshore, offshore, marine and heavy industrial environments.  For example, passenger ships & commercial vessels, oil & gas exploration/extraction/marine and transport.', 'Explosionproof PTZ Dome Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion 316L, waterproof', '', '', '', '', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('PHOS0000066', 'Explosionproof PTZ Housing for Camera with IR - Stainless Steel', '', '', '', '', '', 'The rugged camera housing is an ATEX Class I Division 1&2 / Class II Division 1&2 certified PTZ camera station, made in 316L stainless-steel. It is supplied without a camera but with IR illuminator only.  However, we can fit and certify an IP or analogue camera of your choice if required.  It is designed for use in hazardous areas in onshore, offshore, marine and heavy industrial environments.  For example, passenger ships & commercial vessels, oil & gas exploration/extraction/marine and transport.', 'Explosionproof PTZ Dome Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', 'IR distance:100M', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', '', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom'),
('PHOS000I066', 'Explosionproof PTZ Housing for Camera - Stainless Steel', '', '', '', '', '', 'The rugged camera housing is an ATEX Class I Division 1&2 / Class II Division 1&2 certified PTZ camera station, made in 316L stainless-steel. It is supplied without a camera.  However, we can fit and certify an IP or analogue camera of your choice if required.  It is designed for use in hazardous areas in onshore, offshore, marine and heavy industrial environments.  For example, passenger ships & commercial vessels, oil & gas exploration/extraction/marine and transport.', 'Explosionproof PTZ Dome Camera Housing certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', '', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', '', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', '', '• Tough, vandal-resistant housing, IK10 & IP67\n• Ruggedised Marine grade\n• PoE+, 24VAC or 12VDC\n• Wide range of camera & lens options\n• Camera/lens options can be factory fitted if required\n• Custom colours available\n• Marine powdercoat paint gives a robust, UV light-stable finish\n• Fully cable-managed solution, keeps cables hidden and secure\n• No need for additional junction box\n• Wall-bracket, pendant or pedestal mount options\n• Extendable sun/rain visor option\n• Manufactured in the United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `housings_movement`
--

DROP TABLE IF EXISTS `housings_movement`;
CREATE TABLE `housings_movement` (
  `Product code` varchar(11) DEFAULT NULL,
  `Pan range` varchar(35) DEFAULT NULL,
  `Dimensions - external (mm)` varchar(10) DEFAULT NULL,
  `Pan speed` varchar(64) DEFAULT NULL,
  `Tilt range` varchar(8) DEFAULT NULL,
  `Tilt speed` varchar(101) DEFAULT NULL,
  `Pre-sets` varchar(4) DEFAULT NULL,
  `Pre-set tours` varchar(2) DEFAULT NULL,
  `Motion tracking` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `housings_movement`
--

INSERT INTO `housings_movement` (`Product code`, `Pan range`, `Dimensions - external (mm)`, `Pan speed`, `Tilt range`, `Tilt speed`, `Pre-sets`, `Pre-set tours`, `Motion tracking`) VALUES
('BSOA0000067', '', '', '', '', '', '', '', ''),
('BSOA000W067', '', '', '', '', '', '', '', ''),
('BHTS0000066', '', '', '', '', '', '', '', ''),
('DHOS0000066', '', '', '', '', '', '', '', ''),
('BHOS0000066', 'na', '', 'na', 'na', 'na', 'na', 'na', 'na'),
('PHOS0000066', '360°', '', 'Horizontal rotation speed：0.1°-250°/s, rotation speed can be set', '-18°-90°', 'Vertical rotation speed：0.1°-150°/s, rotation speed can be set; Verticalpreset  rotation speed：200°/s', '1024', '', ''),
('PHOS0000066', 'Horizontal ：0～360°Vertical:   ：±90°', '', 'Horizontal ：0.1°/S~40°/s Vertical:   ：0.1°/S~40°/s', '', '', '300', '', ''),
('PHOS000I066', 'Horizontal ：0～360°Vertical:   ：±90°', '', 'Horizontal ：0.1°/S~40°/s Vertical:   ：0.1°/S~40°/s', '', '', '300', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `housings_optics`
--

DROP TABLE IF EXISTS `housings_optics`;
CREATE TABLE `housings_optics` (
  `Product code` varchar(11) DEFAULT NULL,
  `IR Illumination range` varchar(12) DEFAULT NULL,
  `Window` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `housings_optics`
--

INSERT INTO `housings_optics` (`Product code`, `IR Illumination range`, `Window`) VALUES
('BSOA0000067', '', 'Toughened Glass'),
('BSOA000W067', '', 'Toughened Glass'),
('BHTS0000066', '', 'Germanium glass(Ge)'),
('DHOS0000066', '', ''),
('BHOS0000066', '', 'na'),
('PHOS0000066', '', ''),
('PHOS0000066', '100m @ 808nm', ''),
('PHOS000I066', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `housings_physical`
--

DROP TABLE IF EXISTS `housings_physical`;
CREATE TABLE `housings_physical` (
  `Product code` varchar(11) DEFAULT NULL,
  `Material` varchar(21) DEFAULT NULL,
  `Colour` varchar(30) DEFAULT NULL,
  `Operating temp` varchar(28) DEFAULT NULL,
  `Relative humidity` varchar(12) DEFAULT NULL,
  `Atmospheric pressure` varchar(19) DEFAULT NULL,
  `Weight (kg)` varchar(24) DEFAULT NULL,
  `Dimensions - external (mm)` varchar(56) DEFAULT NULL,
  `Dimensions - internal (mm)` varchar(25) DEFAULT NULL,
  `Cable entry` varchar(70) DEFAULT NULL,
  `Mounting options` varchar(48) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `housings_physical`
--

INSERT INTO `housings_physical` (`Product code`, `Material`, `Colour`, `Operating temp`, `Relative humidity`, `Atmospheric pressure`, `Weight (kg)`, `Dimensions - external (mm)`, `Dimensions - internal (mm)`, `Cable entry`, `Mounting options`) VALUES
('BSOA0000067', 'Die Cast Aluminuim', 'RAL 7035 light grey (standard)', '-20 to +55 deg C ', '', '20mm conduit access', '3.7kg including bracket ', '358L x 152W x 309H (pedestal);\n420L x 152W x 369H (wall)', 'L 290mm x W 79mm x H103mm', 'Base/ 20mm conduit access 2x 20mm internal glands', 'Wall hanging, fixed bracket , pedestal base'),
('BSOA000W067', 'Die Cast Aluminuim', 'RAL 7035 light grey (standard)', '-20 to +55 deg C ', '', '20mm conduit access', '4.2kg including bracket ', '358L x 152W x 309H (pedestal);\n420L x 152W x 369H (wall)', 'L 228mm x W 79mm x H103mm', ' Base/ 20mm conduit access 1x 20mm Split Gland; 1x 20mm standard gland', 'Wall hanging, fixed bracket , pedestal base'),
('BHTS0000066', '316L stainless steel', '', '-40°C ~ 60°C (-40°F ~ 140°F)', '', '', '', '380mm*143mm*151mm', 'Φ108×300mm(length', '2pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('DHOS0000066', '316L stainless  steel', '', '-40℃～60℃', '≤95%（+25°C）', '80kpa～106 kpa', '', 'Dia 157.5   147.5H', '', '1pcs M20*1.5(original 1* G1/2″ )', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS0000066', '316L stainless  steel', '', '-40℃～60℃', '≤95%（+25°C）', '80kpa～106 kpa', '', 'Φ162×457.5mm(length )', 'Φ90.5×309.5mm(length )', '2pcs M25*1.5 output (original G3/4″ )', 'Wall hanging, fixed bracket , pedestal base, PTZ'),
('PHOS0000066', '316L stainless  steel', '', '-40℃～60℃', '≤ 95%（+25°C）', '80kpa～106 kpa', '', 'Dia 157.5 (6 inch dome) 189.6 H', '', '1pcs M25*1.5 output(original G3/4), M32 option', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS0000066', '316L stainless  steel', '', '-40℃～60℃', '≤ 95%（+25°C）', '80kpa～106 kpa', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS000I066', '316L stainless  steel', '', '-40℃～60℃', '≤ 95%（+25°C）', '80kpa～106 kpa', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base');

-- --------------------------------------------------------

--
-- Table structure for table `housings_power`
--

DROP TABLE IF EXISTS `housings_power`;
CREATE TABLE `housings_power` (
  `Product code` varchar(11) DEFAULT NULL,
  `Power supply` varchar(21) DEFAULT NULL,
  `Power consumption` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `housings_power`
--

INSERT INTO `housings_power` (`Product code`, `Power supply`, `Power consumption`) VALUES
('BSOA0000067', 'PoE+, 12VDC or 24VAC ', '36W (12VDC); 72W (24VAC)'),
('BSOA000W067', 'PoE+, 12VDC or 24VAC ', '10.8W (12VDC); 6.6W (24VAC); 13W PoE'),
('BHTS0000066', 'DC12V', ''),
('DHOS0000066', 'DC12V/POE(Optional)', ''),
('BHOS0000066', '230VAC/DC12V', ''),
('PHOS0000066', 'AC24V ', '2A'),
('PHOS0000066', 'AC85V-260V', ''),
('PHOS000I066', 'AC85V-260V', '');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `ID` int NOT NULL,
  `movement` varchar(5) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `addit_category` varchar(9) DEFAULT NULL,
  `product_code` varchar(14) DEFAULT NULL,
  `product_name` varchar(72) DEFAULT NULL,
  `image_location` varchar(16) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `technical_image` varchar(13) DEFAULT NULL,
  `technical_image_2` varchar(10) DEFAULT NULL,
  `technical_image_3` varchar(39) DEFAULT NULL,
  `description` varchar(1249) DEFAULT NULL,
  `cost_price_euro` varchar(8) DEFAULT NULL,
  `cost_price_gbp` varchar(10) DEFAULT NULL,
  `manufacturer` varchar(11) DEFAULT NULL,
  `features` varchar(10) DEFAULT NULL,
  `feature_1` varchar(105) DEFAULT NULL,
  `feature_2` varchar(55) DEFAULT NULL,
  `feature_3` varchar(76) DEFAULT NULL,
  `feature_4` varchar(89) DEFAULT NULL,
  `feature_5` varchar(88) DEFAULT NULL,
  `feature_6` varchar(69) DEFAULT NULL,
  `feature_7` varchar(103) DEFAULT NULL,
  `feature_8` varchar(85) DEFAULT NULL,
  `feature_9` varchar(91) DEFAULT NULL,
  `feature_10` varchar(83) DEFAULT NULL,
  `feature_11` varchar(60) DEFAULT NULL,
  `feature_12` varchar(77) DEFAULT NULL,
  `feature_13` varchar(39) DEFAULT NULL,
  `feature_14` varchar(176) DEFAULT NULL,
  `feature_15` varchar(34) DEFAULT NULL,
  `feature_16` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`ID`, `movement`, `category`, `addit_category`, `product_code`, `product_name`, `image_location`, `image`, `technical_image`, `technical_image_2`, `technical_image_3`, `description`, `cost_price_euro`, `cost_price_gbp`, `manufacturer`, `features`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`) VALUES
(1, 'FIXED', 'marine', '', 'BSOS-1Z4I-I68', 'Marine Fixed Bullet Stainless Steel Camera ', 'example location', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BS0S-1Z4I-I68.jpg\r\n', '', '', '', 'The BSOS-1Z4I-I68 is a high-quality, 720p HD resolution colour video camera with a 4x motorized zoom lens and auto-iris. It includes integrated IR LEDs for operation at 0 lux.\nThis high-resolution camera supports multiple streams and resolutions in MJPEG or H.264 codec. The zoom lens is remotely adjustable from 2.8 to 12.0 mm, to provide a horizontal field-of-view of up to 100 degrees.\nThe camera is housed in a stainless-steel bullet rated IP68. It comes ready for mounting and requires only a PoE network connection. It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.  ', '', '500.64', 'IV&C', '', '4x motorised zoom lens', 'Day/Night switching for almost any lighting condition', 'H264, MJPEG', 'PoE', 'IP68 Stainless steel enclosure for harsh environments', 'IR illumination - range up to 40m', '', '', '', '', '', '', '', '', '', ''),
(2, 'FIXED', 'marine', '', 'DSOS-1Z4I-I68', 'Marine Fixed Dome Stainless Steel Camera', 'example location', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/DSOS-1Z4I-I68+Marine+fixed+SS+camera.jpg', '', '', '', 'This camera is a high-quality 720p resolution colour video camera with a 3x motorized zoom lens and auto-iris. It will produce high-definition video in low light conditions. The camera includes integrated IR LEDs for operation at 0 lux.  The camera supports multiple streams and resolutions in MJPEG or H.264 codec. The zoom lens is remotely adjustable from 2.7 to 12.0 mm, to provide a horizontal field-of-view of up to 100 degrees.  The camera is housed in a stainless-steel dome rated IP68. It comes ready for mounting and requires only a powered ethernet network connection. It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.  ', '', '534.24', 'IV&C', '', '4x motorized zoom lens', '	Day/Night switching for almost any lighting condition', '	H264,H265', '	PoE', '	IP68 Stainless steel enclosure for harsh environments', '', '', '', '', '', '', '', '', '', '', ''),
(3, '', 'marine', '', 'DHOS2F4II66M', 'Marine fixed dome camera - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/DHOS2F4II66+camera.jpg\r\n', '', '', '', 'This compact camera delivers 2MP HD video. It is housed in a heavy-duty, stainless steel IP66 weatherproof enclosure suitable for hostile environments. The camera is manufactured in 316L stainless steel.  It is ready for wall or pendant mounting, requiring only power and an IP connection. It can be used in Marine and Offshore environments. For example, passenger ships, bridges and engine rooms.  It offers a choice of lenses/viewing angles.   ', '420.00', 'Â£340.20', '', '', '', '', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY1/3â€³CMOS Sensor ', 'Support dualstream & mobile phone monitoring', 'Infra-red illumination', 'AC220V/DC12V and PoE', 'Wall or pendant mounting', '2MP resolution', 'IP66 rated', '4 mm, 6 mm, 8 mm lens options', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(4, 'FIXED', 'marine', '', 'BHOS2F4II66M', 'Marine bullet camera - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS2F4II66M+camera.jpg\r\n', '', '', '', 'This compact camera provides a fixed angle view in 2MP HD video. It is housed in a heavy-duty, stainless steel, weatherproof enclosure suitable for hostile environments. It is ready for mounting, requiring only power and an IP connection. A wall mount arm is provided. Other mounting options are available.  It can be used in Marine and Offshore environments. For example, passenger ships, bridges and engine rooms.  It offers a choice of lenses/viewing angles.   It\'s small volume and light weight makes it particularly suitable for applications where a small form factor is required.', '310.00', 'Â£251.10', '', '', '', '', '', 'Marine 316L grade stainless steel', 'Fixed lens - 4/6mm options', 'Support ONVIF, HIKVISION, DAHUA', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Uses SONY1/3â€³CMOS Sensor ', 'High quality IR lamp , long service life , low power consumption.  Distance up to 15 meters', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Anti-shock engineering technology', '2MP resolution', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(5, 'FIXED', 'marine', '', 'BHOS2Z18OI66M', 'Marine Zoom Camera with wiper - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS2Z18OI66M+camera.jpg\r\n', '', '', '', 'This is a fixed camera station entirely made in AISI316L stainless-steel, specifically designed for corrosive and harsh environments. It is equipped with the latest generation IP day/night camera, sunshield, heater/demister and wiper. It offers a high performance motorised zoom lens (x18).It is capable of wall, pole or pendant mounting, requiring only power and an IP connection. It can be used in Marine and Offshore environments including passenger and commercial vessels.  ', '800.00', 'Â£648.00', '', '', '', '', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY 1/2.8â€³ CMOS Sensor ', '', '', 'AC220V/DC12V', 'PTZ, Wall, pedestal or pendant mounting', '2MP resolution', 'IP66 rated', '4.7 - 84.6 mm motorised zoom lens (x18)', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(6, 'FIXED', 'marine', 'thermal', 'BHTS3F8OI66M', 'Marine thermal Camera - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHTS3F8OI66M+camera.jpg', '', '', '', 'The rugged camera is manufactured in 316L stainless steel.  It is a fixed thermal camera station equipped with the latest generation IP thermal camera, LWIR 8-14Âµm Microbolometer, 400 Ã—300 or  640Ã—512 resolution.  It is suitable for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.   ', '4,950.00', 'Â£4,009.50', '', '', '', '', '', 'GE glass designed for thermal cameras', 'Support 3 temperature measurement rule types (Spot, Line, Area)', '8mm,15mm, 25mm, 35mm, 50mm lens options', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(7, 'PTZ', 'marine', '', 'PHOS2Z260I66M', 'Marine PTZ Dome Camera - Stainless Steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOS2Z200I66M+PTZ+camera.jpg', '', '', '', 'This is a PTZ dome camera station, made in 316L stainless-steel, specifically designed for marine applications. It is equipped with the latest generation 2MP IP day/night camera.  It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.   ', '1,920.00', 'Â£1,555.20', '', '', '', '', '', 'Suited to strong corrosive environments. Anti-corrosion 316L, waterproof', '2MP resolution', '', '', '', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(8, 'FIXED', 'marine', '', 'BSOS12F28II67', 'Marine fixed camera with IR - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSOS12F28II67+camera.jpg\r\n', 'Not available', '', '', 'This is a high-quality 2MP HD resolution colour video camera with choice of fixed or vari-focal lens and 2MP or 8MP resolution. It includes integrated IR LEDs for operation at 0 lux at upto 30m.  The vari-focal lens is adjustable from 2.8 to 12.0 mm, to provide a horizontal field-of-view of up to 100 degrees.\nThe camera is housed in a stainless-steel bullet rated to IP67. It comes ready for mounting and requires only a PoE network connection (or 12vdc).  It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.  ', '614', 'Â£528.04', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP or 8MP resolution', 'IR LED Upto 30M', 'Various Lens Options (Fixed & vari-focal)', 'Shock and Vibration Tested', 'Tempered Glass', '12VDC / POE', 'IP67', '-40Â°C~60Â°C', '', '', '', '', '', '', ''),
(9, 'PTZ', 'marine', '', 'DSOS2Z200I67', 'Marine PTZ dome camera with IR - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/DSOS2Z200I67+camera.jpg', 'Not available', '', '', 'This camera is a high-quality 2MP resolution colour/mono PTZ video camera with a 20x motorized zoom lens and auto-iris.   The camera supports multiple streams and resolutions in MJPEG or H.264 codec. The zoom lens is remotely adjustable from 4.7 to 94 mm, to provide a horizontal field-of-view of up to 55.5 degrees.  The camera is housed in a stainless-steel dome rated IP67. It comes ready for mounting and requires only PoE (or 12vdc/24vac optionally).  It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.  ', '1827', 'Â£1,571.22', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 20X Zoom lens', '2MP resolution', 'PAN (360Â°Endless / Max. 380Â°/sec) / TILT (-10~190Â° / Max.380Â°/sec)', '', 'Shock and Vibration Tested', 'Fan and Heater', 'AR Coated Polycarbonate Bubble Cover', '12VDC / 24VAC / POE', 'IP67', '-40Â°C~60Â°C', '', '', '', ''),
(10, 'FIXED', 'marine', '', 'BSOS2FV0I66', 'Marine fixed flame detection camera - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSOS2FV0I66+camera.jpg\r\n', 'Not available', '', '', 'This specialist camera uses flame wave detection to detect flames at up to 30m distance.  It operates with a high-quality 2MP HD resolution colour video camera fitted with a vari-focal lens.adjustable from 2.8 to 12.0 mm to provide a horizontal field-of-view of up to 100 degrees.  It also includes an in-built IR illuminator.  The camera is housed in a stainless-steel bullet rated to IP66. It comes ready for mounting and requires only a PoE network connection (or 12vdc). It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.  ', '2048', 'Â£1,761.28', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', 'Full-HD Visual flame detection camera', 'Flame wave detection technology with Dual IR sensors', 'Sensing wide angle up to 80 degree', 'Flame detection range upto 30M', '2MP resolution', 'IP66', '', '', '', '', '', '', '', '', ''),
(11, 'PTZ', 'marine', '', 'PSOA-3Z30-XI68', 'Marine PTZ Camera - marine paint finish', 'example location', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PSOA-3Z30-XI68+camera.png\r\n', '', '', '', 'The PSOA-3Z30-XI68 marine paint finish rugged, ball PTZ cameras are designed for tough, outdoor, surveillance applications. The die-cast aluminium body is anodised before being powder coated, making the camera environmentally tough and resistant to malicious attack or vandalism. All moving parts are designed to last; from its long-life, silicon wiper through to the motor technology used in its pan and tilt mechanism and its 30x optical zoom camera.  MTBF is 7 years.\nIt\'s 3MP, 30x zoom camera module has exceptional low-light capability; H265, H264 and MJPEG compression; intelligent analytics and tracking. IR detection distances exceed 300m at night.\nIts Marine Paint finish designed to give enhanced corrosion resistance of aluminum and mild steel. The gloss finish is an ultra-durable coating conforming to the requirements of EN 12206 and EN 13438 (High Durability systems). The camera is available in Marine White, Light Grey and Black. The combination of ultra-durable paint and its Dome Cover, which acts as a sunshield, helps to reduce extremes of temperature in direct sunlight. Conversely, the dome cover also provides a level of insulation in cold environments and additional protection to the dome mechanism in marine applications. ', '', '', 'Redvision', '', 'UK design and manufacture', 'UK service and support', 'Ultra-tough rugged PTZ camera', 'IP68', 'Smart IR, White Light and Dual light options', 'Rugged mounting bracket options', 'Custom colour options', '1/2.8\" CMOS 3MP low-light sensor with 30x optical zoom.', 'Silicon, long-life wiper and washer options', 'ONVIF Profiles S, G and Q compliant', 'Brushless stepper motors for resilience', 'Intelligent, auto-PTZ tracking', 'SD Card â€˜edgeâ€™ recording option', '', '', ''),
(12, 'FIXED', 'marine', '', 'BSOA-2Z4I-I67', 'Fixed Bullet Marine Paint Finish Camera', 'example location', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSOA-2Z4I-I67.png\r\n', '', '', '', 'The BSOA-2Z4I-I67 is a compact 2MP weather proof bullet camera manufactured in the UK. The body of the camera is made from solid die-cast aluminium which is pre-treated and powder coated with a ruggedised marine paint. This ensures corrosion free operation in aggressive environments such as those in the chemical industry, offshore and marine. The camera is IP67 dust and water proof, and IK10 vandal resistant which make it suitable for extreme conditions. It is suitable for ships, oil rigs, seaports and terminals, and coastal locations.', '', '', 'Redvision', '', 'Tough, vandal-resistant housing, IK10 & IP67', 'Ruggedised Marine grade', 'PoE (802.3af) or 12VDC', '2MP with Super Low-Light Performance', '2.7~12mm Motorised Zoom Lens with Smart Auto Focus', 'Wiper with washer option', 'Built-in on-camera SD Card recording (up to 256GB) for local back-up', 'Adaptive IR Integral LEDs with up to 60m range', 'Intelligent Video Analytics', 'Audio In/ Out', 'Fully cable-managed solution, keeps cables hidden and secure', 'Wall-bracket, pendant or pedestal mount options', 'Washer option', 'Extendable sun/rain visor option', 'Manufactured in the United Kingdom', 'Custom colours available'),
(13, 'PTZ', 'marine', '', 'PSOS-3Z30-XI68', 'Marine PTZ Camera - stainless steel  construction', 'example location', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PSOS-3Z30-XI68+camera.png\r\n', '', '', '', 'The PSOS-3Z30-XI68 stainless steel rugged, ball PTZ cameras are designed for tough, outdoor, surveillance applications. All moving parts are designed to last; from its long-life, silicon wiper through to the motor technology used in its pan and tilt mechanism and its 30x optical zoom camera.  MTBF is 7 years.\nIt\'s 3MP, 30x zoom camera module has exceptional low-light capability; H265, H264 and MJPEG compression; intelligent analytics and tracking. IR detection distances exceed 300m at night.\nAll the pan, tilt and wiper mechanisms and shafts are built from marine grade stainless steel, increasing corrosion resistance, toughness and durability. They are suitable for ships, oil rigs, seaports and terminals, and coastal locations.', '', '', 'Redvision', '', 'UK design and manufacture', 'UK service and support', 'Ultra-tough, Electropolished 316 Stainless Steel rugged PTZ camera', 'IP68', 'PoE 90W (802.3bt) ', 'Adaptive White Light and IR (zoom-linked) operation', 'Intelligent, Auto- PTZ Tracking', 'Rugged Mounting Bracket Options', 'Brushless Stepper Motors for Resilience and durability', 'ONVIF Compliant', 'SD Card recording option, up to 256GB', '', '', '', '', ''),
(14, 'PTZ', 'marine', '', 'PHOS2Z200I66M', 'Marine Optical PTZ Camera with wiper - Stainless Steel', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOS2Z200I66M+PTZ+camera.jpg', 'Not available', '', '', 'The camera is a PTZ camera station, made in 316L stainless-steel. It is equipped with the latest generation 2MP IP day/night camera and x20 motorised zoom lens. It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.   It is available with IR illuminator and thermal camera options.', '2,030.00', 'Â£1,644.30', '', '', '', '', '', 'Marine 316L grade stainless steel', '20x zoom lens', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(15, 'PTZ', 'marine', '', 'PSOS2Z36II67', 'Marine PTZ camera with IR and wiper- stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PSOS2Z36II67+camera.jpg\r\n', 'Not available', '', '', 'This IP67 stainless steel rugged PTZ camera is designed for tough, outdoor, surveillance applications.  \nIt\'s 2MP 360x zoom camera module has exceptional low-light capability with H265, H264 and MJPEG compression options. IR detection distances exceed 100m at night.  The camera has an in-built wiper and washer option.  It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.  ', '4410', 'Â£3,792.60', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built In Wiper', 'Night Vision Up To 100M', 'Optional Powers 24VDC', 'IP67', '-40Â°C~60Â°C', '', '', '', ''),
(16, 'FIXED', 'marine', '', 'BSOS12F20I66', 'Marine fixed fisheye camera - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSOS12F20I66+fisheye+camera.jpg\r\n', 'Not available', '', '', 'This ultra-high resolution (12MP) fisheye camera allows monitoring of large areas which would otherwise require several cameras. It not only provides a panoramic image, but zoomed-in, detailed views as well.  It is manufactured from 316L stainless steel and so it suitable for marine and offshore environments. It comes ready for mounting and requires only a PoE network connection (or 12vdc). It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.  ', '2048', 'Â£1,761.28', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '12MP resolution', '180 degree view', 'Shock and Vibration Tested', '12VDC / POE', 'IP66', '-40Â°C~60Â°C', '', '', '', '', '', '', '', '', ''),
(17, 'PTZ', 'marine', '', 'PHOS2Z20II66M', 'Marine Optical PTZ Camera with IR - Stainless Steel', '', '', 'Not available', '', '', 'The camera is a PTZ camera station, made in 316L stainless-steel. It is equipped with the latest generation 2MP IP day/night camera and x20 motorised zoom lens with a high performance Infra-Red illuminator.  The IR lamp covers a distance upto 100m.  It is designed for use in onshore, offshore, marine and heavy industrial environments including passenger ships & commercial vessels.   ', '2,030.00', 'Â£1,644.30', '', '', '', '', '', 'Marine 316L grade stainless steel', '20x zoom lens', 'IR distance:100M', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(18, 'PTZ', 'marine', 'thermal', 'PHOTS2Z200I66M', 'Marine thermal/Optical PTZ Camera - stainless steel construction', '', '', 'Not available', '', '', 'This camera is a rugged corrosion-proof dual-head PTZ station designed for use in onshore, offshore, marine and heavy industrial environments. The combination of thermal imaging and daylight cameras facilitates 24/7 remote camera surveillance. The daylight camera controls the movement of the camera (PTZ). The camera\'s large germanium window suits all thermal modules from 8 to 100 mm. ', '7,750.00', 'Â£6,277.50', '', '', '', '', '', 'Smart windscreen wiper option', 'Marine 316L grade stainless steel', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(19, 'FIXED', 'hazardous', '', 'BHOS2F4II66', 'Explosionproof bullet camera - stainless steel ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS2F4II66+camera.png', '', '', '', 'EX701PWC2', '310.00', 'Â£251.10', 'Kaiuxan', '', 'Explosionproof PTZ Dome Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', 'Fixed lens - 4/6mm options', 'Support ONVIF, HIKVISION, DAHUA', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Uses SONY1/3â€³CMOS Sensor ', 'High quality IR lamp , long service life , low power consumption.  Distance up to 15 meters', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Anti-shock engineering technology', '2MP resolution', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(20, 'FIXED', 'hazardous', '', 'BHOS-4Z4I-I66', 'Explosionproof bullet camera - stainless steel ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS-4Z4I-I66+SS+camera.jpg', '', '', 'paragon-security.co.uk/example-download', 'AMZ-HD41-3-S', '', '', 'IV&C', '', 'Stainless steel housing', 'Weatherproof IP66 for harsh environments', 'High resolution 4MP', '3x motorised zoom lens', 'Integrated IR illumination - 50m range', '12vdc, 24vdc or Poe', 'Explosionproof ', 'Certified for use in hazardous areas', 'Pole and corner mounting options', '', '', '', '', '', '', ''),
(21, 'FIXED', 'hazardous', '', 'BHOA-4Z4I-I66', 'Explosionproof bullet camera - aluminium  ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/oducts/cameras/prod-images/BHOA-4Z4I-I66+AL+camera.jpg\r\n', '', '', 'paragon-security.co.uk/example-download', 'AMZ-HD41-3-A', '', '', 'IV&C', '', 'Stainless steel housing', 'Weatherproof IP66 for harsh environments', 'High resolution 4MP', '3x motorised zoom lens', '', '12vdc, 24vdc or Poe', 'Explosionproof ', 'Certified for use in hazardous areas', 'Pole and corner mounting options', '', '', '', '', '', '', ''),
(22, 'FIXED', 'hazardous', '', 'BHOS2Z360I68', 'Explosionproof motorised x30 zoom bullet camera', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS2Z360I68+camera.jpg\r\n', '', '', '', 'GCXBN236Z', '3519', 'Â£3,026.34', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', '12VDC / POE', 'IP68', '-40Â°C~60Â°C', '', '', '', '', '', '', ''),
(23, 'FIXED', 'hazardous', '', 'BHOS2ZV0I68', 'Explosionproof fixed 2MP/8MP bullet camera\r\n', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS2ZV0I68+camera.jpg\r\n', '', '', '', 'GC-XBN-2/8MP', '2151', 'Â£1,849.86', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP or 8MP resolution', 'Fixed, vari-focal and motorised vari-focal lens options', 'Shock and Vibration Tested', 'Tempered Glass', '12VDC / POE', 'IP68', '-40Â°C~60Â°C', '', '', '', '', '', '', '', ''),
(24, 'FIXED', 'hazardous', '', 'BHOS2Z18OI66', 'Explosionproof Zoom Camera with wiper - stainless steel ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS2Z18OI66+camera.jpg', '', '', '', 'EX600PWY218', '800.00', 'Â£648.00', 'Kaiuxan', '', 'Explosionproof Camera certified for use in hazardous environments', 'ATEX\nII 2G Ex d IIC T6 Gb\nII 2D Ex tb IIIC IP68 T80â„ƒ ', '', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY 1/2.8â€³ CMOS Sensor ', '', '', 'AC220V/DC12V', 'PTZ, Wall, pedestal or pendant mounting', '2MP resolution', 'IP66 rated', '4.7 - 84.6 mm motorised zoom lens (x18)', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(25, 'FIXED', 'hazardous', '', 'BHOS2Z36II68', 'Explosionproof zoom camera with Motorized IR LED', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOS2Z36II68+camera.jpg\r\n', '', '', '', 'GC-XDFN-236I', '6061', 'Â£5,212.46', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', 'Motorised IR illuminator up to 300M ', '', '24VDC', 'IP68', '-40Â°C~60Â°C', '', '', '', ''),
(26, 'FIXED', 'hazardous', '', 'BHOTS2Z360I68', 'Explosionproof Optical & thermal zoom camera', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOTS2Z360I68+camera.jpg\r\n', '', '', '', 'GC-XDFN-236T', '20137', 'Â£17,317.8', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'thermal (35mm / VGA / 12Î¼m)', '24VDC', 'IP68', '-40Â°C~60Â°C', '', '', '', ''),
(27, 'FIXED', 'hazardous', 'thermal', 'BHTS3F8OI66', 'Explosionproof thermal Camera - stainless steel ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHTS3F8OI66+camera.jpg\r\n', '', '', '', 'EX600PW8-R', '4,950.00', 'Â£4,009.50', 'Kaiuxan', '', 'thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'GE glass designed for thermal cameras', 'Support 3 temperature measurement rule types (Spot, Line, Area)', '8mm,15mm, 25mm, 35mm, 50mm lens options', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(28, 'FIXED', 'hazardous', '', 'DHOS2F4II66', 'Explosionproof fixed dome camera - stainless steel ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/DHOS2F4II66M+camera.jpg\r\n', '', '', '', 'EX2000PSB2', '420.00', 'Â£340.20', 'Kaiuxan', '', 'Explosionproof Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', '316L grade stainless steel for excellent protection in marine environments', 'Uses SONY1/3â€³CMOS Sensor ', 'Support dualstream & mobile phone monitoring', 'Infra-red illumination', 'AC220V/DC12V and PoE', 'Wall or pendant mounting', '2MP resolution', 'IP66 rated', '4 mm, 6 mm, 8 mm lens options', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(29, 'FIXED', 'hazardous', '', 'THOS-2F3I-I68', 'Explosionproof fixed dome camera', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/THOS-2F3I-I68+dome+camera.jpg\r\n', '', '', 'paragon-security.co.uk/example-download', 'DS-2XE6126FWD-HS', '', 'Â£946.92', 'Hikvision', '', 'Explosionproof IP68 rated', '1/2.8\" Progressive Scan CMOS', '2 mm, 2.8 mm, 4 mm, 6 mm lens options', '1920 Ã— 1080 2MP resolution', '120dB WDR', 'Stainless steel 316L', 'H.265, H.265+, H.264+, H.264', 'Image enhancement: BLC, 3D DNR, HLC, defog, EIS', 'Behaviour analyses, exception detections and face detection', 'II 2 G D Ex db IIC T6 Gb/Ex tb IIIC T80â„ƒ Db IP68 Ex db IIC T6 Gb/Ex tb IIIC T80â„', '', '', '', '', '', ''),
(30, 'PTZ', 'hazardous', '', 'PHOS2Z26OI66', 'Explosionproof PTZ Dome Camera - Stainless Steel ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOS2Z26OI66+camera.jpg\r\n', '', '', '', 'EX2000PSA226', '1,920.00', 'Â£1,555.20', 'Kaiuxan', '', 'Explosionproof PTZ Dome Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Suited to strong corrosive environments. Anti-corrosion 316L, waterproof', '2MP resolution', '', '', '', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(31, 'PTZ', 'hazardous', '', 'PHOS2Z36II68', 'Explosionproof PTZ with Motorized IR LED', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOS2Z36II68+camera.jpg\r\n', '', '', '', 'GC-XDPN-236I', '11339', 'Â£9,751.54', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', 'Motorised IR illuminator up to 300M ', '', 'Power options 24VDC / 110AC / 220AC', 'IP68', '-40Â°C~60Â°C', '', '', ''),
(32, 'PTZ', 'hazardous', '', 'PHOS2Z20II66', 'Explosionproof Optical PTZ Camera with IR - Stainless Steel', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOS2Z20II66+camera.png\r\n', '', '', '', 'EX1000ZPPS220', '2,030.00', 'Â£1,644.30', 'Kaiuxan', '', 'Explosionproof PTZ Dome Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', '20x zoom lens', 'IR distance:100M', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(33, 'PTZ', 'hazardous', '', 'PHOS2Z200I66', 'Explosionproof Optical PTZ Camera with wiper - Stainless Steel', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOS2Z200I66M+PTZ+camera.jpg\r\n', '', '', '', 'EX1000ZPPS220', '2,030.00', 'Â£1,644.30', '', '', 'thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Marine 316L grade stainless steel', '20x zoom lens', '', 'Support ONVIF, HIKVISION, DAHUA', 'AC85V-260V', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Smart windscreen wiper', 'Supports digital wide dynamic,  3D-DNR, low bit rate', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(34, 'PTZ', 'hazardous', '', 'PHOS-2Z30O-I69', 'Explosionproof PTZ Camera - Stainless Steel', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOS-2Z300-I69+camera.jpg\r\n', '', '', 'paragon-security.co.uk/PHOS-2Z30o-i69', 'Maximus MPX series2', '', '', 'Videotec', '', 'Stainless steel housing with maximum resistance in corrosive environments', 'Weatherproof IP69 for extreme environments', 'High resolution 4MP', '3x motorised zoom lens', 'Integrated IR illumination - 50m range', '12vdc, 24vdc or Poe', 'Certified explosion-proof for use in Zones 1 and 2, Group IIC (Gas), Zones 21 and 22, Group IIIC (Dust)', 'Certified for use in hazardous areas - ATEX (EN IEC 60079-0, EN 60079-1, EN 60079-31)', 'Option for direct fiber optic connection', 'Certified up to a temperature of +80Â°C', 'Pole and corner mounting options', '', '', '', '', ''),
(35, 'PTZ', 'hazardous', '', 'PHOTS2Z36II68', 'Explosionproof PTZ Camera - Optical & thermal', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOTS2Z36II68+camera.jpg\r\n', '', '', '', 'GC-XDPN-236T', '26002', 'Â£22,361.7', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'thermal (35mm / VGA / 12Î¼m)', 'Power options 24VDC / 110AC / 220AC', 'IP68', '-40Â°C~60Â°C', '', '', ''),
(36, 'PTZ', 'thermal', 'hazardous', 'PHOTS2Z200I66', 'Explosionproof thermal/Optical PTZ Camera - stainless steel ', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOTS2Z200I66+twin+PTZ+camera.jpg\r\n', '', '', '', 'EX1000ZPPST50D220-R', '7,750.00', 'Â£6,277.50', 'Kaiuxan', '', 'thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Smart windscreen wiper option', 'Marine 316L grade stainless steel', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(37, 'FIXED', 'thermal', 'hazardous', 'BHTS3F8OI66', 'Explosionproof thermal Camera - stainless steel construction', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHTS3F8OI66+camera.jpg\r\n', '', '', '', 'EX600PW8-R', '4,950.00', 'Â£4,009.50', 'Kaiuxan', '', 'thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'GE glass designed for thermal cameras', 'Support 3 temperature measurement rule types (Spot, Line, Area)', '8mm,15mm, 25mm, 35mm, 50mm lens options', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Marine 316L grade stainless steel', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', 'AC220V/DC12V. Other power options available.', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(38, '', 'thermal', '', 'BSTAIF80I67', 'thermal fixed camera (IP67)', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSTAIF80I67+Thermal+camera.png\r\n', '', '', '', 'TB9331-E\nInfrared thermal Image, 720x480, 8.8/19/35/50mm', '', '', 'Vivotek', '', 'Uncooled VOx Infrared Detector', '720x480 Resolution', 'NETD < 50 mk @ F1.0', 'H265 Compression Technology', 'Lens options from 8.8 to 50mm', 'Two-way Audio', 'Supports ONVIF Standard to Simplify Integration and Enhance Interoperability', 'UL Certification', 'Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', 'Video Content Analysis', '', '', '', '', '', ''),
(39, 'FIXED', 'thermal', 'hazardous', 'BHOTS2Z360I68', 'Explosionproof Optical & thermal zoom camera', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BHOTS2Z360I68+camera.jpg', '', '', '', 'GC-XDFN-236T', '20137', 'Â£17,317.8', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'thermal (35mm / VGA / 12Î¼m)', '24VDC', 'IP68', '-40Â°C~60Â°C', '', '', '', ''),
(40, 'PTZ', 'thermal', 'hazardous', 'PHOTS2Z36II68', 'Explosionproof PTZ Camera - Optical & thermal', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PHOTS2Z36II68+camera.jpg\r\n', '', '', '', 'GC-XDPN-236T', '26002', 'Â£22,361.7', 'ArgesMarine', '', 'AISI 316L Electro Polished Stainless Steel', '2MP resolution', 'Optical 36X Zoom lens', '', '360 degree Endless Pan / 180 degree Tilt', 'Shock and Vibration Tested', 'Tempered Glass', 'Built-in Wiper', '', 'thermal (35mm / VGA / 12Î¼m)', 'Power options 24VDC / 110AC / 220AC', 'IP68', '-40Â°C~60Â°C', '', '', ''),
(41, 'PTZ', 'thermal', 'hazardous', 'PHOTS2Z20OI66', 'Explosionproof thermal/Optical PTZ Camera - stainless steel construction', '', 'Not available', '', '', '', 'EX1000ZPPST50D220-R', '7,750.00', 'Â£6,277.50', 'Kaiuxan', '', 'thermal Camera certified for use in hazardous environments', 'ATEX Zone 1&2 / 21&22', 'Class I Division 1&2 / Class II Division 1&2 and all the rest except zone 0.', 'Smart windscreen wiper option', 'Marine 316L grade stainless steel', 'Suited to strong corrosive environments. Anti-corrosion, waterproof.', 'Windows glass surface process by nano technology . Good light transmittance. ', 'Low power consumption', '', '', '', '', '', 'Suited to harsh environmental conditions including petrochemicals, mining, military, medicine, oil & gas, marine, drilling platforms, food processing and storage, offshore etc.', '', ''),
(42, 'fixed', 'commercial', '', 'BSOA8FVII67', 'External bullet camera with motorised vari-focal lens (IP67)', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSOA8FVII67+BULLET+camera.jpg\r\n', '', '', '', 'IB9391-EHT bullet 8MP/4/2', '', '', 'Vivotek', '', 'Range of resolutions from 2MP to 8MP @ 25 fps', '', 'Built-in IR Illuminators, Effective up to 50 Meters', 'Smart IR Technology to Avoid Overexposure', 'Wide dynamic range for Unparalleled Visibility in Extremely Bright and Dark Environments', 'Supreme Night Visibility for Low Light Conditions', 'Smart Motion Detection to Reduce False Alarms', 'Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', '-40Â°C ~ 60Â°C Wide Temperature Range for Extreme Weather Conditions', '', '', '', '', '', '', ''),
(43, 'fixed', 'commercial', '', 'DSOA8FVII67', 'External dome camera with motorised vari-focal lens (IP67)', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/DSOA8FVII67+DOME+camera.jpg\r\n', '', '', '', 'FD9392-EHTV-O dome 8MP/4/2', '', '', 'Vivotek', '', 'Range of resolutions from 2MP to 8MP @ 25 fps', 'H265 Compression Technology', 'Built-in IR Illuminators, Effective up to 50 Meters', 'Wide dynamic range for Unparalleled Visibility in Extremely Bright and Dark Environments', '', '', '', 'Weather-proof IP66/IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', '-40Â°C ~ 60Â°C Wide Temperature Range for Extreme Weather Conditions', '', '', '', '', '', '', ''),
(44, 'fixed', 'commercial', '', 'DSOA12F1II66', 'Fisheye camera 12MP 360 degree', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/DSOA12F1II66+FISHEYE+camera.jpg\r\n', '', '', '', 'FE9391-EHV-v2 fisheye', '', '', 'Vivotek', '', '12-Megapixel CMOS Sensor', '25 fps @ 2944x2944', '360Â° 20M IR with Smart IR ', 'WDR (120dB) for Improved Visibility in High Contrast Scenes', 'Smart Motion Detection to Reduce False Alarms', 'Smart VCA (Intrusion Detection, Crowd Detection, Loitering Detection)', '10 fisheye views with dewarping', '', '', '', '', '', '', '', '', ''),
(45, 'fixed', 'commercial', '', 'BSOP-2Z4I-I67', 'ANPR camera', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSOP-2Z4I-I67+Standard+ANPR+Camera.jpg', '', '', 'paragon-security.co.uk/example-download', 'iDS-2CD7A26G0/P-IZHS', '', '', 'Hikvision', '', 'Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries', 'Recognises vehicle type, brand and colour', ' Supports blacklist and whitelist configuration ', 'Collaborates with lanes to control the entry & exit of vehicles and trigger gate opening ', 'On-board storage up to 256GB ', 'Interfaces to vehicle barriers and LED message signs', 'Wiegand output to access control systems', '', '', '', '', '', '', '', '', ''),
(46, 'fixed', 'commercial', 'thermal', 'BSTAIF80I67', 'thermal fixed camera (IP67)', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/BSTAIF80I67+Thermal+camera.png\r\n', '', '', '', 'TB9331-E\nInfrared thermal Image, 720x480, 8.8/19/35/50mm', '', '', 'Vivotek', '', 'Uncooled VOx Infrared Detector', '720x480 Resolution', 'NETD < 50 mk @ F1.0', 'H265 Compression Technology', 'Lens options from 8.8 to 50mm', 'Two-way Audio', 'Supports ONVIF Standard to Simplify Integration and Enhance Interoperability', 'UL Certification', 'Weather-proof IP67, Vandal-proof IK10 and NEMA 4X-rated Housing', 'Video Content Analysis', '', '', '', '', '', ''),
(47, 'ptz', 'commercial', '', 'PSOA5Z30II66', 'External 5MP PTZ camera', '', 'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/prod-images/PSOA5Z30II66+PTZ+CAMERA.jpg\r\n', '', '', '', 'SD9384-EHL PTZ 2MP/5MP', '', '', 'Vivotek', '', '25 fps @ 2560x1920', '30x Optical Zoom, Auto Focus', '360Â° Continuous Pan, -20Â° to 90Â° (auto flip) Tilt', '200M IR with Smart IR', 'Weather-proof IP66-rated, Vandal-proof IK10 and NEMA 4X-rated Housing', '-40Â°C ~ 60Â°C Wide Temperature Range for Extreme Weather Conditions', 'EIS (Electronic Image Stabilization) for Image Stability', '', 'Smart Tracking Advanced for Moving People with People-based Deep Learning Technology', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `monitors_specs`
--

DROP TABLE IF EXISTS `monitors_specs`;
CREATE TABLE `monitors_specs` (
  `Model` varchar(8) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL,
  `Spec_1` varchar(10) DEFAULT NULL,
  `Spec_2` varchar(22) DEFAULT NULL,
  `Spec_3` varchar(34) DEFAULT NULL,
  `Spec_4` varchar(14) DEFAULT NULL,
  `Spec_5` varchar(33) DEFAULT NULL,
  `Spec_6` varchar(25) DEFAULT NULL,
  `Spec_7` varchar(70) DEFAULT NULL,
  `Spec_8` varchar(70) DEFAULT NULL,
  `Spec_9` varchar(17) DEFAULT NULL,
  `Spec_10` varchar(15) DEFAULT NULL,
  `Spec_11` varchar(40) DEFAULT NULL,
  `Spec_12` varchar(11) DEFAULT NULL,
  `Spec_13` varchar(20) DEFAULT NULL,
  `Spec_14` varchar(31) DEFAULT NULL,
  `Spec_15` varchar(19) DEFAULT NULL,
  `Spec_16` varchar(28) DEFAULT NULL,
  `Spec_17` varchar(18) DEFAULT NULL,
  `Spec_18` varchar(24) DEFAULT NULL,
  `Spec_19` varchar(22) DEFAULT NULL,
  `Spec_20` varchar(37) DEFAULT NULL,
  `Spec_21` varchar(21) DEFAULT NULL,
  `Spec_22` varchar(12) DEFAULT NULL,
  `Spec_23` varchar(11) DEFAULT NULL,
  `Spec_24` varchar(20) DEFAULT NULL,
  `Spec_25` varchar(50) DEFAULT NULL,
  `Spec_26` varchar(53) DEFAULT NULL,
  `Spec_27` varchar(11) DEFAULT NULL,
  `Spec_28` varchar(34) DEFAULT NULL,
  `Spec_29` varchar(26) DEFAULT NULL,
  `Spec_30` varchar(19) DEFAULT NULL,
  `Spec_31` varchar(15) DEFAULT NULL,
  `Spec_32` varchar(24) DEFAULT NULL,
  `Spec_33` varchar(32) DEFAULT NULL,
  `Spec_34` varchar(24) DEFAULT NULL,
  `Spec_35` varchar(21) DEFAULT NULL,
  `Spec_36` varchar(37) DEFAULT NULL,
  `Spec_37` varchar(11) DEFAULT NULL,
  `Spec_38` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `monitors_specs`
--

INSERT INTO `monitors_specs` (`Model`, `type`, `Spec_1`, `Spec_2`, `Spec_3`, `Spec_4`, `Spec_5`, `Spec_6`, `Spec_7`, `Spec_8`, `Spec_9`, `Spec_10`, `Spec_11`, `Spec_12`, `Spec_13`, `Spec_14`, `Spec_15`, `Spec_16`, `Spec_17`, `Spec_18`, `Spec_19`, `Spec_20`, `Spec_21`, `Spec_22`, `Spec_23`, `Spec_24`, `Spec_25`, `Spec_26`, `Spec_27`, `Spec_28`, `Spec_29`, `Spec_30`, `Spec_31`, `Spec_32`, `Spec_33`, `Spec_34`, `Spec_35`, `Spec_36`, `Spec_37`, `Spec_38`) VALUES
('model_no', 'type', 'Resolution', 'Diagonal size (inches)', 'Viewable Area WxH (inches/mm)', 'Led Type', 'Pixel Pitch (mm)', 'Screen Maximum Resolution', 'Display Resolutions', 'Supported Input Resolutions', 'Refresh Rate (Hz）', 'Color Depth (M）', 'Brightness (cd/㎡) (typical)', 'Auto Adjust', 'Monitor Aspect Ratio', 'Display Aspect Ratio', 'Horizontal TV Lines', 'Contrast Ratio', 'Response Time (ms)', 'View Angle H/V (degrees)', 'Digital Video Inputs', 'Analog Video In/Out', 'Audio Inputs (stereo)', 'Speakers (W)', 'Stand-by（W）', 'Power Consumption（W）', 'Monitor Body Dimensions', 'Dimensions Monitor+Stand', 'Colour', 'Case & Stand Material', 'VESA Mounting Pattern (mm)', 'Base/Stand Included', 'Base Tilt Angle', 'Weight Cabinet Only (kg)', 'Weight Cabinet+Base Stand(Ib/kg)', 'Power Supply (internal)', 'Operating Temperature', 'Operating Humidity', 'Accessories', 'Certications'),
('MONUHD27', 'UHD', 'UHD', '27', '23.54*13.24', 'LED', '0.3114x0.3114', '1920x1080', '', '', '60', '16.7', '250', 'Yes', '16:09', 'OSD selectable 16:9 or 4:3', '00:00', '3000 :1SCR', '5 (GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x1080', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 3', '＜0.5', '32W Typical', '24.57*14.7*2.05', '24.57*18.2*7.6', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '11.06', '10.42', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONUHD43', 'UHD', 'UHD', '43', '', '', '0.2451mm×0.2451mm', '3840×2160', '', '', '', '', '260', '', '', '', '', '1000 :1SCR', '8(GTG)', '', '', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 5W', '', '<83W', '970.2×558.8×83.8mm', '', '', '', '', 'Yes', '', '7.7', '', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '', '10~90%', 'CE/FCC/WEEE/REACH'),
('MONUHD49', 'UHD', 'UHD', '49', '', '', '0.2797mm×0.2797mm', '', '', '', '', '', '260', '', '', '', '', '1000 :1SCR', '8(GTG)', '', '', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 5W', '', '<94W', '1107.4×645.1×88.9mm', '', '', '', '', 'Yes', '', '10', '', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '', '10~90%', 'CE/FCC/WEEE/REACH'),
('MONUHD55', 'UHD', 'UHD', '55', '', '', ' 0.3151mm×0.3151mm', '', '', '', '', '', '260', '', '', '', '', '1000 :1SCR', '8(GTG)', '', '', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 5W', '', '<165W', '1244.6×729×94mm', '', '', '', '', 'Yes', '', '13.9', '', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '', '10~90%', 'CE/FCC/WEEE/REACH'),
('MONUHD65', 'UHD', 'UHD', '65', '', '', ' 0.372mm×0.372mm', '', '', '', '', '', '260', '', '', '', '', '1000 :1SCR', '8(GTG)', '', '', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 5W', '', '<189W', '1460.5×843.2×90.5mm', '', '', '', '', 'Yes', '', '17.8', '', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '', '10~90%', 'CE/FCC/WEEE/REACH'),
('MONFHD20', 'Full HD', 'Full HD', '19.53', '', 'LED', '', '1920x1080', '640 x 480; 800 x 600; 1024 x 768; 1280 x 1024; 1366 x 768; 1920 x 1080', '640 x 480; 800 x 600; 1024 x 768; 1280 x 1024; 1366 x 768; 1920 x 1080', '60', '16.7', '250', 'Yes', '16:09', 'OSD selectable 16:9 or 4:3', '1080', '1000 :1SCR', '5(GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x1080', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 3W', '＜0.5', '19W Typical', '18.52inchx11.1inchx1.88inch / 470.4mmx282mmx47.7mm', '18.52inchx13.43inchx5.87inch/ 470.4mmx341.2mmx149.1mm', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '5.8Ibs / 2.6kg', '6.3Ibs / 2.85kg', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONFHD22', 'Full HD', 'Full HD', '21.5', '', 'LED', '', '', '1920x1080', '640x480;800x600;1024x768;1280x1024;1366x768;1920x1080', '60', '16.7', '250', 'Yes', '16:09', 'OSD selectable 16:9 or 4:3', '1080', '1000 :1SCR', '5(GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x1080', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 3W', '＜0.5', '20W Typical', '19.96inchx12.16inchx1.9inch / 507mmx309.1mmx48.5mm', '19.96inchx14.57inchx5.87inch / 507mmx370.2mmx149mm', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '6.9Ibs / 3kg', '7.5Ibs / 3.4kg', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONFHD24', 'Full HD', 'Full HD', '23.6', '20.52inch*11.54inch / 521mm*293mm', 'LED', '0.2715x0.2715', '1920x1080', '', '', '60', '16.7', '250', 'Yes', '16:09', 'OSD selectable 16:9 or 4:3', '1080', '1000 :1SCR', '5(GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x1080', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 3', '＜0.5', '25W Typical', '21.88inchx13.28inchx2inch / 555.9mmx337mmx50.8mm', '21.88inchx15.69inchx5.87inch / 555.9mmx398.5mmx149mm', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '8.5Ibs / 3.85kg', '9.0Ibs / 4.08kg', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONFHD27', 'Full HD', 'Full HD', '27', '23.54*13.24', 'LED', '0.3114x0.3114', '1920x1080', '', '', '60', '16.7', '250', 'Yes', '16:09', 'OSD selectable 16:9 or 4:3', '1080', '3000 :1SCR', '5 (GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x1080', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 3', '＜0.5', '32W Typical', '24.57*14.7*2.05', '24.57*18.2*7.6', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '11.06', '10.42', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONFHD32', 'Full HD', 'Full HD', '31.5', '27.5inch*15.47inch / 698.5mm*393mm', 'LED', '0.36x0.36', '1920x1080', '640 x 480; 800 x 600; 1024 x 768; 1280 x 1024; 1920 x 1080', '640 x 480; 800 x 600; 1024 x 768; 1280 x 1024; 1920 x 1080', '60', '16.7', '300', 'Yes', '16:09', 'OSD selectable 16:9 or 4:3', '1080', '3000 :1SCR', '5 (GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x1080', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 5', '＜0.5', '50W Typical', '28.8inchx17inchx1.9inch / 731.4mmx432.5mmx49mm', '28.8inchx19.6inchx6.3inch / 731.4mmx497.5mmx160mm', 'Matte black', 'Metal + Aluminum (removable stand)', '200 x 200', 'Yes', '-5°~15°', '21.1Ibs / 9.6kg', '22.9Ibs / 10.4kg', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', 'VGA up to 1920x1080, BNC CVBS looping', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONFHD43', 'Full HD', 'Full HD', '43', '', 'DLED', '0.02” x 0.02” (0.4902mmx0.4902mm)', '1920x1080', '', '', '', '', '500cd/m² (NITS)', '', '', '', '', '1200 :1SCR', '', '', '', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 10W', '', '110W', '38.3\" x 22.3\" x 3.7\" (972.5×566×94.2mm)', '', '', '', '', 'Yes', '', '7.45', '', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '', '10~90%', 'CE/FCC/WEEE/REACH'),
('MONHD19', 'HD', 'HD', '18.5', '16.13*9.07', 'LED', '0.30x0.30', '1366 x 768', '640x480;800x600;1024x768;1280x1024;1366 x 768', '640x480;800x600;1024x768;1280x1024;1366 x 768', '60', '16.7', '250', 'Yes', '16:09', 'OSD selectable 16:9 or 4:3', '768', '1000 :1SCR or 1,000,000:1DCR', '5(GTG)', '170°x 150°/CR＞10', 'HDMI up to 1366 x 768', 'VGA up to 1366 x 768', '1x3.5mm mini-jack', '2 x 3', '＜0.5', '18W Typical', '17.37*10.67*1.81', '17.37*13.08*5.87', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '5.1', '5.7', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONHD24', 'HD', 'HD', '23.8', '20.74x11.67(527.04×296.46)', 'LED', '0.2745×0.2745', '1920x1080', '720x400;640x480;800x600;1024x768;1280x1024;1366x768;1920x1080', '720x400;640x480;800x600;1024x768;1280x1024;1366x768;1920x1080', '60', '16.7', '250', 'Yes', '16:09', 'OSD options: Full/4:3/Over Scan', '1080', '1000:1 SCR', '8 (GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x 1080', 'VGA up to 1920 x 1080', '1x3.5mm mini-jack', '2x2', '＜0.5', '20W Typical', '21.3”x12.6”x1.7”(541.4×321.8×43.8mm)', '21.3”x16.1”x7.5”(541.4×409×190mm)', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '6.9Ibs(3.15 Kg)', '7.7Ibs(3.5 Kg)', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONHD27', 'HD', 'HD', '27', '23.53x13.24(597.888×336.312)', 'LED', '0.3114×0.3114', '1920x1080', '720x400;640x480;800x600;1024x768;1280x1024;1366x768;1920x1080', '720x400;640x480;800x600;1024x768;1280x1024;1366x768;1920x1080', '60', '16.7', '250', 'Yes', '16:09', 'OSD options: Full/4:3/Over Scan', '1080', '1000:1 SCR', '8 (GTG)', '178°x 178°/CR＞10', 'HDMI up to 1920 x 1080', 'VGA up to 1920 x 1080', '1x3.5mm mini-jack', '2x2', '＜0.5', '26W Typical', '24.1”x14.3”x1.9”(614.4×363.5×49.5mm)', '24.1”x17.7”x7.5”(614.4×450.7×190mm)', 'Matte black', 'Plastic', '100 x 100', 'Yes', '-5°~15°', '9.7Ibs(4.4 Kg)', '10.5Ibs(4.8 Kg)', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '-20°C~50°C / -4°F~122°F', '10~90%', 'CE/FCC/ROHS/HDMI/UL/WEEE/REACH'),
('MONHD32', 'HD', 'HD', '32', '', 'Backlight DLED', '0.02” x 0.02” (0.510mmx0.510mm)', '1366x768', '', '', '', '', 'Typ.:400cd/m² (NITS) Center Luminance of', '', '', '', '', 'Typ.:1100:1', '9ms (GTG)', '', '', 'VGA up to 1920x1080, BNC CVBS looping', '1x3.5mm mini-jack', '2 x 10W', '', '75W', '28.8” x 17.1” x 3.2” (732×434×80.9mm) ', '', '', '', '', 'Yes', '', '4.5', '', 'AC 100-240V~50/60Hz 1.1A', '0°C~40°C / 32°F~104°F', '', '10~90%', 'CE/FCC/WEEE/REACH');

-- --------------------------------------------------------

--
-- Table structure for table `monitors_types`
--

DROP TABLE IF EXISTS `monitors_types`;
CREATE TABLE `monitors_types` (
  `Monitor Type` varchar(15) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `image` varchar(10) DEFAULT NULL,
  `technical_image` varchar(10) DEFAULT NULL,
  `description` varchar(352) DEFAULT NULL,
  `feature 1` varchar(55) DEFAULT NULL,
  `feature 2` varchar(31) DEFAULT NULL,
  `feature 3` varchar(29) DEFAULT NULL,
  `feature 4` varchar(39) DEFAULT NULL,
  `feature 5` varchar(33) DEFAULT NULL,
  `feature 6` varchar(96) DEFAULT NULL,
  `feature 7` varchar(27) DEFAULT NULL,
  `feature 8` varchar(105) DEFAULT NULL,
  `feature 9` varchar(105) DEFAULT NULL,
  `feature 10` varchar(68) DEFAULT NULL,
  `feature 11` varchar(23) DEFAULT NULL,
  `features_concat` varchar(559) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `monitors_types`
--

INSERT INTO `monitors_types` (`Monitor Type`, `type`, `image`, `technical_image`, `description`, `feature 1`, `feature 2`, `feature 3`, `feature 4`, `feature 5`, `feature 6`, `feature 7`, `feature 8`, `feature 9`, `feature 10`, `feature 11`, `features_concat`) VALUES
('UHD 4k Monitors', 'UHD', '', '', 'Experience True 4K CCTV security monitoring. Boasting 16.7 million colours 4K UHD Resolution these monitors will make your CCTV video come to life. Designed specifically to run for 24 hours a day, 7 days a week, 365 days a year and compatible with HDMI, VGA, DVI, BNC and Audio. 27, 43, 49, 55 and 65’’ 4K UHD LED screen size options.', '27, 43, 49, 55 and 65’’ 4K UHD LED screen size options', '3840 x 2160 screen resolution ', 'Designed for 24/7 monitoring ', 'HDMI, USB, VGA, DVI, BNC & Audio inputs', 'Desktop and VESA mounting options', 'Experience breathtaking level of details when you open your eyes to the clarity of 4K UHD screen', '5 ms GTG response time ', '16:9 widescreen resolution ', 'LED backlight technology provides for industry-leading low power consumption and less hazardous materials', 'Enjoy crisp content and energetic hues with the 300 cd/m² brightness', 'Analogue CVBS BNC input', '• 27, 43, 49, 55 and 65’’ 4K UHD LED screen size options\n• 3840 x 2160 screen resolution \n• Designed for 24/7 monitoring \n• HDMI, USB, VGA, DVI, BNC & Audio inputs\n• Desktop and VESA mounting options\n• Experience breathtaking level of details when you open your eyes to the clarity of 4K UHD screen\n• 5 ms GTG response time \n• 16:9 widescreen resolution \n• LED backlight technology provides for industry-leading low power consumption and less hazardous materials\n• Enjoy crisp content and energetic hues with the 300 cd/m² brightness\n• Analogue CVBS BNC input'),
('FHD monitors', 'FHD', '', '', 'Experience Full HD CCTV security monitoring. Designed specifically to run for 24 hours a day, 7 days a week, 365 days a year and compatible with BNC, HDMI, VGA, DVI and Audio.  These monitors combine extremely high contrast and low power consumption to be the perfect deploy-anywhere option. 20, 22, 24, 27, 32 and 43’’ Full HD LED screen size options.', '20, 22, 24, 32 and 43’’ Full HD LED screen size options', '1920 x 1080P screen resolution ', 'Designed for 24/7 monitoring ', 'BNC, HDMI, VGA & Audio inputs', 'Desktop and VESA mounting options', '6 ms GTG response time ', '16:9 widescreen resolution ', 'LED backlight technology provides for industry-leading low power consumption and less hazardous materials', '250 cd/m² brightness gives an exceptional visible display for clear and consistent on-screen pictures', '100mm x 100mm VESA Mounting Pattern', 'Analogue CVBS BNC input', '• 20, 22, 24, 32 and 43’’ Full HD LED screen size options\n• 1920 x 1080P screen resolution \n• Designed for 24/7 monitoring \n• BNC, HDMI, VGA & Audio inputs\n• Desktop and VESA mounting options\n• 6 ms GTG response time \n• 16:9 widescreen resolution \n• LED backlight technology provides for industry-leading low power consumption and less hazardous materials\n• 250 cd/m² brightness gives an exceptional visible display for clear and consistent on-screen pictures\n• 100mm x 100mm VESA Mounting Pattern\n• Analogue CVBS BNC input'),
('HD Monitors', 'HD', '', '', 'Experience HD CCTV security monitoring. Designed specifically to run for 24 hours a day, 7 days a week, 365 days a year and compatible with HDMI, VGA, DVI and   19, 24, 27 and 32\" HD LED screen size options.', '19, 24, 27 and 32\" HD LED screen size options', '1366 x 768 screen resolution ', 'Designed for 24/7 monitoring ', 'HDMI, VGA & Audio inputs', 'Desktop and VESA mounting options', '', '', '', '', '', '', '• 19, 24, 27 and 32\" HD LED screen size options\n• 1366 x 768 screen resolution \n• Designed for 24/7 monitoring \n• HDMI, VGA & Audio inputs\n• Desktop and VESA mounting options');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_adv_features`
--

DROP TABLE IF EXISTS `nvr_adv_features`;
CREATE TABLE `nvr_adv_features` (
  `product_code` varchar(10) DEFAULT NULL,
  `VCA Counting Solution` varchar(9) DEFAULT NULL,
  `VCA Event Search` varchar(9) DEFAULT NULL,
  `Smart Search II` varchar(9) DEFAULT NULL,
  `Trend Micro IoT Security` varchar(9) DEFAULT NULL,
  `Cybersecurity Management` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_adv_features`
--

INSERT INTO `nvr_adv_features` (`product_code`, `VCA Counting Solution`, `VCA Event Search`, `Smart Search II`, `Trend Micro IoT Security`, `Cybersecurity Management`) VALUES
('NVR0400TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR0800TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR1600TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR3200TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR6400TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR12800TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('SMW00TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_adv_features_1`
--

DROP TABLE IF EXISTS `nvr_adv_features_1`;
CREATE TABLE `nvr_adv_features_1` (
  `product_code` varchar(10) DEFAULT NULL,
  `VCA Counting Solution` varchar(9) DEFAULT NULL,
  `VCA Event Search` varchar(9) DEFAULT NULL,
  `Smart Search II` varchar(9) DEFAULT NULL,
  `Trend Micro IoT Security` varchar(9) DEFAULT NULL,
  `Cybersecurity Management` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_adv_features_1`
--

INSERT INTO `nvr_adv_features_1` (`product_code`, `VCA Counting Solution`, `VCA Event Search`, `Smart Search II`, `Trend Micro IoT Security`, `Cybersecurity Management`) VALUES
('NVR0400TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR0800TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR1600TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR3200TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR6400TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('NVR12800TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported'),
('SMW00TB', 'Supported', 'Supported', 'Supported', 'Supported', 'Supported');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_audio`
--

DROP TABLE IF EXISTS `nvr_audio`;
CREATE TABLE `nvr_audio` (
  `product_code` varchar(10) DEFAULT NULL,
  `Audio Format` varchar(12) DEFAULT NULL,
  `Audio In` varchar(30) DEFAULT NULL,
  `Audio Out` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_audio`
--

INSERT INTO `nvr_audio` (`product_code`, `Audio Format`, `Audio In`, `Audio Out`) VALUES
('NVR0400TB', 'G.711, G.726', '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1'),
('NVR0800TB', 'G.711, G.726', '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1'),
('NVR1600TB', 'G.711, G.726', '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1'),
('NVR3200TB', 'G.711, G.726', '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1'),
('NVR6400TB', 'G.711, G.726', '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1'),
('NVR12800TB', 'G.711, G.726', '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1'),
('SMW00TB', 'G.711, G.726', '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_deep_search`
--

DROP TABLE IF EXISTS `nvr_deep_search`;
CREATE TABLE `nvr_deep_search` (
  `product_code` varchar(10) DEFAULT NULL,
  `Object Search` varchar(15) DEFAULT NULL,
  `Scene Search` varchar(35) DEFAULT NULL,
  `Attribute Search` varchar(48) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_deep_search`
--

INSERT INTO `nvr_deep_search` (`product_code`, `Object Search`, `Scene Search`, `Attribute Search`) VALUES
('NVR0400TB', 'n/a', 'n/a', 'n/a'),
('NVR0800TB', 'n/a', 'n/a', 'n/a'),
('NVR1600TB', 'People, Vehicle', 'Line crossing, Intrusion, Loitering', 'People: Gender, Age, Clothing Color, Accessories'),
('NVR3200TB', 'People, Vehicle', 'Line crossing, Intrusion, Loitering', 'People: Gender, Age, Clothing Color, Accessories'),
('NVR6400TB', 'n/a', 'n/a', 'n/a'),
('NVR12800TB', 'n/a', 'n/a', 'n/a'),
('SMW00TB', 'People, Vehicle', 'Line crossing, Intrusion, Loitering', 'People: Gender, Age, Clothing Color, Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_device`
--

DROP TABLE IF EXISTS `nvr_device`;
CREATE TABLE `nvr_device` (
  `product_code` varchar(10) DEFAULT NULL,
  `OS` varchar(19) DEFAULT NULL,
  `Watchdog` varchar(19) DEFAULT NULL,
  `Power Restoration` varchar(49) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_device`
--

INSERT INTO `nvr_device` (`product_code`, `OS`, `Watchdog`, `Power Restoration`) VALUES
('NVR0400TB', 'Embedded Linux', 'Hardware + Software', 'System Restart Automatically after Power Recovery'),
('NVR0800TB', 'Embedded Linux', 'Hardware + Software', 'System Restart Automatically after Power Recovery'),
('NVR1600TB', 'Embedded Linux', 'Hardware + Software', 'System Restart Automatically after Power Recovery'),
('NVR3200TB', 'Embedded Linux', 'Hardware + Software', 'System Restart Automatically after Power Recovery'),
('NVR6400TB', 'Embedded Windows 10', 'Hardware + Software', 'System Restart Automatically after Power Recovery'),
('NVR12800TB', 'Embedded Windows', 'Hardware + Software', 'System Restart Automatically after Power Recovery'),
('SMW00TB', 'Embedded Windows', 'Hardware + Software', 'System Restart Automatically after Power Recovery');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_disk_features`
--

DROP TABLE IF EXISTS `nvr_disk_features`;
CREATE TABLE `nvr_disk_features` (
  `product_code` varchar(13) DEFAULT NULL,
  `feature_1` varchar(35) DEFAULT NULL,
  `feature_2` varchar(144) DEFAULT NULL,
  `feature_3` varchar(137) DEFAULT NULL,
  `feature_4` varchar(80) DEFAULT NULL,
  `feature_5` varchar(169) DEFAULT NULL,
  `feature_6` varchar(10) DEFAULT NULL,
  `feature_7` varchar(156) DEFAULT NULL,
  `feature_8` varchar(100) DEFAULT NULL,
  `feature_9` varchar(123) DEFAULT NULL,
  `feature_10` varchar(115) DEFAULT NULL,
  `feature_11` varchar(107) DEFAULT NULL,
  `feature_12` varchar(10) DEFAULT NULL,
  `feature_13` varchar(10) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL,
  `features_concat` varchar(1195) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_disk_features`
--

INSERT INTO `nvr_disk_features` (`product_code`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `features_concat`) VALUES
('STXXXXXVXXXX ', 'Available from 1TB to 20TB capacity', 'ImagePerfect™ firmware is designed to ensure seamless video footage capture in 24×7 surveillance workloads that record video from 64 HD cameras.', 'SkyHawk Health Management actively helps protect your surveillance storage by focusing on prevention, intervention, and recovery options.', 'RapidRebuild™ provides 3× faster volume rebuilds over traditional RAID rebuilds.', 'Unparalleled data protection with included 3-year Rescue Data Recovery Services plan, helping protect important video data with Seagate\'s in-house data recovery services', '', 'RV sensors built in allow drives to maintain performance in multi-bay systems, giving you the flexibility to scale your systems when more storage is needed.', 'ATA streaming support enables recordings from up to 64 HD cameras for smooth, uninterrupted footage.', '1M hours MTBF, 3-year limited warranty represents an improved total cost of ownership (TCO) with reduced maintenance costs.', 'Lower power consumption means a reduction in heat emissions, which improves reliability in surveillance solutions. ', 'Tarnish-resistant components help protect drives from environmental elements, increasing field reliability.', '', '', '', '', '', '• Available from 1TB to 20TB capacity\n• ImagePerfect™ firmware is designed to ensure seamless video footage capture in 24×7 surveillance workloads that record video from 64 HD cameras.\n• SkyHawk Health Management actively helps protect your surveillance storage by focusing on prevention, intervention, and recovery options.\n• RapidRebuild™ provides 3× faster volume rebuilds over traditional RAID rebuilds.\n• Unparalleled data protection with included 3-year Rescue Data Recovery Services plan, helping protect important video data with Seagate\'s in-house data recovery services\n• RV sensors built in allow drives to maintain performance in multi-bay systems, giving you the flexibility to scale your systems when more storage is needed.\n• ATA streaming support enables recordings from up to 64 HD cameras for smooth, uninterrupted footage.\n• 1M hours MTBF, 3-year limited warranty represents an improved total cost of ownership (TCO) with reduced maintenance costs.\n• Lower power consumption means a reduction in heat emissions, which improves reliability in surveillance solutions. \n• Tarnish-resistant components help protect drives from environmental elements, increasing field reliability.');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_disk_info`
--

DROP TABLE IF EXISTS `nvr_disk_info`;
CREATE TABLE `nvr_disk_info` (
  `product_code` varchar(13) DEFAULT NULL,
  `product_name` varchar(13) DEFAULT NULL,
  `image` varchar(10) DEFAULT NULL,
  `technical_drawing` varchar(13) DEFAULT NULL,
  `description` varchar(10) DEFAULT NULL,
  `Hidden field 1` varchar(10) DEFAULT NULL,
  `Cost price Euro` varchar(10) DEFAULT NULL,
  `Cost price £` varchar(10) DEFAULT NULL,
  `Manufacturer` varchar(7) DEFAULT NULL,
  `Hidden field 5` varchar(10) DEFAULT NULL,
  `feature_1` varchar(35) DEFAULT NULL,
  `feature_2` varchar(144) DEFAULT NULL,
  `feature_3` varchar(137) DEFAULT NULL,
  `feature_4` varchar(80) DEFAULT NULL,
  `feature_5` varchar(169) DEFAULT NULL,
  `feature_6` varchar(10) DEFAULT NULL,
  `feature_7` varchar(156) DEFAULT NULL,
  `feature_8` varchar(100) DEFAULT NULL,
  `feature_9` varchar(123) DEFAULT NULL,
  `feature_10` varchar(115) DEFAULT NULL,
  `feature_11` varchar(107) DEFAULT NULL,
  `feature_12` varchar(10) DEFAULT NULL,
  `feature_13` varchar(10) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_disk_info`
--

INSERT INTO `nvr_disk_info` (`product_code`, `product_name`, `image`, `technical_drawing`, `description`, `Hidden field 1`, `Cost price Euro`, `Cost price £`, `Manufacturer`, `Hidden field 5`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`) VALUES
('STXXXXXVXXXX ', 'NVR Hard Disk', '', 'Not available', '', '', '', '', 'Seagate', '', 'Available from 1TB to 20TB capacity', 'ImagePerfect™ firmware is designed to ensure seamless video footage capture in 24×7 surveillance workloads that record video from 64 HD cameras.', 'SkyHawk Health Management actively helps protect your surveillance storage by focusing on prevention, intervention, and recovery options.', 'RapidRebuild™ provides 3× faster volume rebuilds over traditional RAID rebuilds.', 'Unparalleled data protection with included 3-year Rescue Data Recovery Services plan, helping protect important video data with Seagate\'s in-house data recovery services', '', 'RV sensors built in allow drives to maintain performance in multi-bay systems, giving you the flexibility to scale your systems when more storage is needed.', 'ATA streaming support enables recordings from up to 64 HD cameras for smooth, uninterrupted footage.', '1M hours MTBF, 3-year limited warranty represents an improved total cost of ownership (TCO) with reduced maintenance costs.', 'Lower power consumption means a reduction in heat emissions, which improves reliability in surveillance solutions. ', 'Tarnish-resistant components help protect drives from environmental elements, increasing field reliability.', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_disk_size_specs`
--

DROP TABLE IF EXISTS `nvr_disk_size_specs`;
CREATE TABLE `nvr_disk_size_specs` (
  `product_code` varchar(13) DEFAULT NULL,
  `size (TB)` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_disk_size_specs`
--

INSERT INTO `nvr_disk_size_specs` (`product_code`, `size (TB)`) VALUES
('ST20000VE002 ', 20),
('ST18000VE002 ', 18),
('ST16000VE002 ', 16),
('ST12000VE001 ', 12),
('ST10000VE001 ', 10),
('ST8000VE001', 8),
('ST6000VX009 ', 6),
('ST4000VX016 ', 4),
('ST3000VX015 ', 3),
('ST2000VX017 ', 2),
('ST1000VX013 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nvr_display`
--

DROP TABLE IF EXISTS `nvr_display`;
CREATE TABLE `nvr_display` (
  `product_code` varchar(10) DEFAULT NULL,
  `LiveView Display Channels` varchar(12) DEFAULT NULL,
  `LiveView Display Specs` varchar(79) DEFAULT NULL,
  `Video Output` varchar(24) DEFAULT NULL,
  `Display Resolution` varchar(30) DEFAULT NULL,
  `Fisheye Dewarp` varchar(35) DEFAULT NULL,
  `Warp (web)` varchar(15) DEFAULT NULL,
  `PTZ Operation` varchar(53) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_display`
--

INSERT INTO `nvr_display` (`product_code`, `LiveView Display Channels`, `LiveView Display Specs`, `Video Output`, `Display Resolution`, `Fisheye Dewarp`, `Warp (web)`, `PTZ Operation`) VALUES
('NVR0400TB', '4 Channels', 'Multi-Layout Display: 1x1, 2x2, 3V', 'HDMI x1, VGA x1', '3840x2160, 1920x1080, 1280x720', 'Local: 1O, 1R, 1P, 1O3R, 1O8R, 1P3R', 'Web: 1O, 1R, 1P', 'Direction Control, Home, Iris, Preset, Patrol (Group)'),
('NVR0800TB', '8 Channels', 'Multi-Layout Display: 1x1, 2x2, 3x3, 1P+3,2P+3,1M+5, 1P+6, 3V', 'HDMI x1, VGA x1', '3840x2160, 1920x1080, 1280x720', 'Local: 1O, 1R, 1P, 1O3R, 1O8R, 1P3R', 'Web: 1O, 1R, 1P', 'Direction Control, Home, Iris, Preset, Patrol (Group)'),
('NVR1600TB', '16 Channels', 'Multi-Layout Display: 1x1, 2x2, 3x3, 1P+3,2P+3,1M+5, 1P+6, 3V,1M+12, 4x4', 'HDMI x1, VGA x1', '3840x2160, 1920x1080, 1280x720', 'Local: 1O, 1R, 1P, 1O3R, 1O8R, 1P3R', 'Web: 1O, 1R, 1P', 'Direction Control, Home, Iris, Preset, Patrol (Group)'),
('NVR3200TB', '32 Channels', 'Multi-Layout Display: 1x1, 2x2, 3x3, 1P+3,2P+3,1M+5, 1P+6, 3V,1M+12, 4x4, 1M+31', 'HDMI x1, VGA x1', '3840x2160, 1920x1080, 1280x720', 'Local: 1O, 1R, 1P, 1O3R, 1O8R, 1P3R', 'Web: 1O, 1R, 1P', 'Direction Control, Home, Iris, Preset, Patrol (Group)'),
('NVR6400TB', '64 Channels', 'Multi-Layout Display: 1x1, 2x2, 3x3, 1P+3,2P+3,1M+5, 1P+6, 3V,1M+12, 4x4, 1M+31', 'HDMI x1, VGA x1, DVI x 1', 'HDMI/DVI 1920x1080', 'Local: 1O, 1R, 1P, 1O3R, 1O8R, 1P3R', 'Web: 1O, 1R, 1P', 'Direction Control, Home, Iris, Preset, Patrol (Group)'),
('NVR12800TB', '128 Channels', 'Multi-Layout Display: 1x1, 2x2, 3x3, 1P+3,2P+3,1M+5, 1P+6, 3V,1M+12, 4x4, 1M+31', 'HDMI x1, VGA x1', 'HDMI/DVI 1920x1080', 'Local: 1O, 1R, 1P, 1O3R, 1O8R, 1P3R', 'Web: 1O, 1R, 1P', 'Direction Control, Home, Iris, Preset, Patrol (Group)'),
('SMW00TB', '32 Channels', 'Multi-Layout Display: 1x1, 2x2, 3x3, 1P+3,2P+3,1M+5, 1P+6, 3V,1M+12, 4x4, 1M+31', 'HDMI x1, VGA x1', 'HDMI 4096x2160, DVI 1920x1080', 'Local: 1O, 1R, 1P, 1O3R, 1O8R, 1P3R', 'Web: 1O, 1R, 1P', 'Direction Control, Home, Iris, Preset, Patrol (Group)');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_features`
--

DROP TABLE IF EXISTS `nvr_features`;
CREATE TABLE `nvr_features` (
  `product_code` varchar(10) DEFAULT NULL,
  `feature_1` varchar(37) DEFAULT NULL,
  `feature_2` varchar(35) DEFAULT NULL,
  `feature_3` varchar(52) DEFAULT NULL,
  `feature_4` varchar(28) DEFAULT NULL,
  `feature_5` varchar(57) DEFAULT NULL,
  `feature_6` varchar(44) DEFAULT NULL,
  `feature_7` varchar(55) DEFAULT NULL,
  `feature_8` varchar(34) DEFAULT NULL,
  `feature_9` varchar(58) DEFAULT NULL,
  `feature_10` varchar(35) DEFAULT NULL,
  `feature_11` varchar(77) DEFAULT NULL,
  `feature_12` varchar(33) DEFAULT NULL,
  `feature_13` varchar(11) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL,
  `features_concat` varchar(457) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_features`
--

INSERT INTO `nvr_features` (`product_code`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `features_concat`) VALUES
('NVR0400TB', 'H.265/H.264 upto 8MP camera supported', '4K Display ', '4 x PoE Port ', '', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', '', '802.3at/af PoE with PoE Management', '', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', '• H.265/H.264 upto 8MP camera supported\n• 4K Display \n• 4 x PoE Port \n• 4K Video Output Display for Clear and Detailed Monitoring\n• Deep Search (Attribute Search, Scene Search)\n• 802.3at/af PoE with PoE Management\n• Alarm In *16, Alarm Out *8\n• Made in Taiwan\n• Upto 48TB on-board storage'),
('NVR0800TB', 'H.265/H.264 upto 8MP camera supported', '4K Display ', '8 x PoE Port ', '', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', '', '802.3at/af PoE with PoE Management', 'RAID 0, 1 supported to Prevent from Recording Data Loss', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', '• H.265/H.264 upto 8MP camera supported\n• 4K Display \n• 8 x PoE Port \n• 4K Video Output Display for Clear and Detailed Monitoring\n• Deep Search (Attribute Search, Scene Search)\n• 802.3at/af PoE with PoE Management\n• RAID 0, 1 supported to Prevent from Recording Data Loss\n• Alarm In *16, Alarm Out *8\n• Made in Taiwan\n• Upto 48TB on-board storage'),
('NVR1600TB', 'H.265/H.264 Compression Technology', '4K Display ', '16 x PoE Port ', 'Up to 20MP Cameras Supported', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', 'Smart VCA Camera Supported for Event Search & Recording', '802.3at/af PoE with PoE Management', 'RAID 0, 1, 5 Supported to Prevent from Recording Data Loss', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', '• H.265/H.264 Compression Technology\n• 4K Display \n• 16 x PoE Port \n• Up to 20MP Cameras Supported\n• 4K Video Output Display for Clear and Detailed Monitoring\n• Deep Search (Attribute Search, Scene Search)\n• Smart VCA Camera Supported for Event Search & Recording\n• 802.3at/af PoE with PoE Management\n• RAID 0, 1, 5 Supported to Prevent from Recording Data Loss\n• Alarm In *16, Alarm Out *8\n• Made in Taiwan\n• Upto 48TB on-board storage'),
('NVR3200TB', 'H.265/H.264 Compression Technology', '4K Display ', '16 x PoE Port ', 'Up to 20MP Cameras Supported', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', 'Smart VCA Camera Supported for Event Search & Recording', '802.3at/af PoE with PoE Management', 'RAID 0, 1, 5 Supported to Prevent from Recording Data Loss', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', '• H.265/H.264 Compression Technology\n• 4K Display \n• 16 x PoE Port \n• Up to 20MP Cameras Supported\n• 4K Video Output Display for Clear and Detailed Monitoring\n• Deep Search (Attribute Search, Scene Search)\n• Smart VCA Camera Supported for Event Search & Recording\n• 802.3at/af PoE with PoE Management\n• RAID 0, 1, 5 Supported to Prevent from Recording Data Loss\n• Alarm In *16, Alarm Out *8\n• Made in Taiwan\n• Upto 48TB on-board storage'),
('NVR6400TB', 'H.265/H.264 Compression Technology', 'Up to 64CH Recording, 64CH Display', 'Support HDMI, Display Port & DVI Simultaneous Output', '16 Hot-Swappable HDD Bays', 'Support RAID 0/1/5/6/10 Storage', 'Redundant Power', 'Dual Lan Giga Network Ports', 'Multiple Fisheye Dewarp Support', 'Upto 256TB on-board storage', 'Smart Search: People/Vehicle Search', 'Analytics Integration: Smart VCA, Parking Violation/Restricted Zone Detection', 'Cybersecurity Management Solution', '', '', '', '', '• H.265/H.264 Compression Technology\n• Up to 64CH Recording, 64CH Display\n• Support HDMI, Display Port & DVI Simultaneous Output\n• 16 Hot-Swappable HDD Bays\n• Support RAID 0/1/5/6/10 Storage\n• Redundant Power\n• Dual Lan Giga Network Ports\n• Multiple Fisheye Dewarp Support\n• Upto 256TB on-board storage\n• Smart Search: People/Vehicle Search\n• Analytics Integration: Smart VCA, Parking Violation/Restricted Zone Detection\n• Cybersecurity Management Solution'),
('NVR12800TB', 'H.265/H.264 Compression Technology', 'Up to 128CH Recording, 64CH Display', 'Support HDMI, Display Port & DVI Simultaneous Output', '16 Hot-Swappable HDD Bays', 'Support RAID 0/1/5/6/10 Storage', 'Redundant Power', 'Dual Lan Giga Network Ports', 'Multiple Fisheye Dewarp Support', 'Upto 256TB on-board storage', 'Smart Search: People/Vehicle Search', 'Analytics Integration: Smart VCA, Parking Violation/Restricted Zone Detection', 'Cybersecurity Management Solution', '', '', '', '', '• H.265/H.264 Compression Technology\n• Up to 128CH Recording, 64CH Display\n• Support HDMI, Display Port & DVI Simultaneous Output\n• 16 Hot-Swappable HDD Bays\n• Support RAID 0/1/5/6/10 Storage\n• Redundant Power\n• Dual Lan Giga Network Ports\n• Multiple Fisheye Dewarp Support\n• Upto 256TB on-board storage\n• Smart Search: People/Vehicle Search\n• Analytics Integration: Smart VCA, Parking Violation/Restricted Zone Detection\n• Cybersecurity Management Solution'),
('SMW00TB', 'H.265/H.264 Compression Technology', '4K Display ', 'Can act as NVR if required', 'Up to 20MP Cameras Supported', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', 'Smart VCA Camera Supported for Event Search & Recording', 'Upto 4 monitor outputs', '', '', 'Built in United Kingdom', 'Upto 32TB on-board storage', 'Slim design', '', '', '', '• H.265/H.264 Compression Technology\n• 4K Display \n• Can act as NVR if required\n• Up to 20MP Cameras Supported\n• 4K Video Output Display for Clear and Detailed Monitoring\n• Deep Search (Attribute Search, Scene Search)\n• Smart VCA Camera Supported for Event Search & Recording\n• Upto 4 monitor outputs\n• Built in United Kingdom\n• Upto 32TB on-board storage\n• Slim design');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_general`
--

DROP TABLE IF EXISTS `nvr_general`;
CREATE TABLE `nvr_general` (
  `product_code` varchar(10) DEFAULT NULL,
  `Power Input` varchar(20) DEFAULT NULL,
  `Power Consumption` varchar(10) DEFAULT NULL,
  `Dimensions` varchar(30) DEFAULT NULL,
  `Weight` varchar(21) DEFAULT NULL,
  `Operating Temperature` varchar(27) DEFAULT NULL,
  `Humidity` varchar(7) DEFAULT NULL,
  `Safety Certifications` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_general`
--

INSERT INTO `nvr_general` (`product_code`, `Power Input`, `Power Consumption`, `Dimensions`, `Weight`, `Operating Temperature`, `Humidity`, `Safety Certifications`) VALUES
('NVR0400TB', 'DC 48V/2A', 'Max. 96 W', '263 (W) x 247 (D) x 43 (H) mm', '2.35 kg (without HDD)', '0°C ~ 40°C (32°F ~ 104°F)', '0 ~ 95%', 'CE, FCC, VCCI, C-Tick, UL, CB, BSMI, BIS'),
('NVR0800TB', '100-240V AC, 50/60Hz', 'Max. 175 W', '366 (W) x 320 (D) x 46 (H) mm', '2.5 kg (without HDD)', '0°C ~ 40°C (32°F ~ 104°F)', '0 ~ 95%', 'CE, FCC, VCCI, C-Tick, UL, CB, BSMI, BIS'),
('NVR1600TB', '100-240V AC, 50/60Hz', 'Max. 300 W', '432 (W) x 421 (D) x 66 (H) mm', '4.6 kg (without HDD)', '-10°C ~ 55°C (14°F ~ 131°F)', '0 ~ 95%', 'CE, LVD, FCC, VCCI, C-Tick, UL, CB, BSMI, BIS'),
('NVR3200TB', '100-240V AC, 50/60Hz', 'Max. 300 W', '432 (W) x 421 (D) x 66 (H) mm', '4.6 kg (without HDD)', '-10°C ~ 55°C (14°F ~ 131°F)', '0 ~ 95%', 'CE, LVD, FCC, VCCI, C-Tick, UL, CB, BSMI, BIS'),
('NVR6400TB', '100-240V AC, 50/60Hz', 'Max. 550 W', '435 (W) x 540 (D) x 132 (H) mm', '33 kg (without HDD)', '5°C ~ 35°C (41°F ~ 95°F)', '0 ~ 95%', 'CE, FCC, VCCI, C-Tick, UL, CB, BSMI, BIS'),
('NVR12800TB', '100-240V AC, 50/60Hz', 'Max. 550 W', '435 (W) x 540 (D) x 132 (H) mm', '33 kg (without HDD)', '5°C ~ 35°C (41°F ~ 95°F)', '0 ~ 95%', 'CE, FCC, VCCI, C-Tick, UL, CB, BSMI, BIS'),
('SMW00TB', '100-240V AC, 50/60Hz', 'Max. 250 W', '342 (W) x 409 (D) x 96 (H) mm', '5.12 kg (without HDD)', '5°C ~ 35°C (41°F ~ 95°F)', '0 ~ 95%', 'CE, FCC, VCCI, C-Tick, UL, CB, BSMI');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_info`
--

DROP TABLE IF EXISTS `nvr_info`;
CREATE TABLE `nvr_info` (
  `product_code` varchar(10) NOT NULL,
  `product_name` varchar(31) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(10) DEFAULT NULL,
  `technical_image` varchar(10) DEFAULT NULL,
  `technical_image_2` varchar(10) DEFAULT NULL,
  `technical_image_3` varchar(10) DEFAULT NULL,
  `download_link` varchar(10) DEFAULT NULL,
  `description` varchar(896) DEFAULT NULL,
  `feature_1` varchar(37) DEFAULT NULL,
  `feature_2` varchar(35) DEFAULT NULL,
  `feature_3` varchar(52) DEFAULT NULL,
  `feature_4` varchar(28) DEFAULT NULL,
  `feature_5` varchar(57) DEFAULT NULL,
  `feature_6` varchar(44) DEFAULT NULL,
  `feature_7` varchar(55) DEFAULT NULL,
  `feature_8` varchar(34) DEFAULT NULL,
  `feature_9` varchar(58) DEFAULT NULL,
  `feature_10` varchar(35) DEFAULT NULL,
  `feature_11` varchar(77) DEFAULT NULL,
  `feature_12` varchar(33) DEFAULT NULL,
  `feature_13` varchar(11) DEFAULT NULL,
  `feature_14` varchar(10) DEFAULT NULL,
  `feature_15` varchar(10) DEFAULT NULL,
  `feature_16` varchar(10) DEFAULT NULL,
  `monitor_type` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_info`
--

INSERT INTO `nvr_info` (`product_code`, `product_name`, `image`, `technical_image`, `technical_image_2`, `technical_image_3`, `download_link`, `description`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`, `monitor_type`) VALUES
('NVR0400TB', '4-CH PoE NVR with analytics', '', '', '', '', '', 'This is an H265 Linux-based standalone NVR that supports up to 4K IP camera video decoding and local 4K video display. With advanced H265 compression technology, users are able to experience Full HD quality video while expending less HDD capacity than H264.  The NVR features embedded 4x 802.3 at/af PoE ports to provide users easy and convenient IP camera installation, and also supports remote and mobile access via apps for both iOS and Android devices. The viewing app provides instant push notification and direct video playback functions when triggered by an alarm notification and provides users a flexible and intelligent NVR for seamless use in small video surveillance applications.  1 x 14TB disc can be accommodated internally.  On-board smartsearch video analytics and cybersecurity management.', 'H.265/H.264 upto 8MP camera supported', '4K Display ', '4 x PoE Port ', '', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', '', '802.3at/af PoE with PoE Management', '', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', ''),
('NVR0800TB', '8-CH PoE NVR with analytics', '', '', '', '', '', 'This is an H265 Linux-based standalone NVR that supports up to 4K IP camera video decoding and local 4K video display. With advanced H265 compression technology, users are able to experience Full HD quality video while expending less HDD capacity than H264.  The NVR features embedded 8x 802.3 at/af PoE ports to provide users easy and convenient IP camera installation, and also supports remote and mobile access via apps for both iOS and Android devices. The viewing app provides instant push notification and direct video playback functions when triggered by an alarm notification and provides users a flexible and intelligent NVR for seamless use in small to medium sized video surveillance applications.  Upto 4 x 12TB discs can be accommodated internally giving a maximum on-board capacity of 48TB. On-board smartsearch video analytics and cybersecurity management.\n\n', 'H.265/H.264 upto 8MP camera supported', '4K Display ', '8 x PoE Port ', '', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', '', '802.3at/af PoE with PoE Management', 'RAID 0, 1 supported to Prevent from Recording Data Loss', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', ''),
('NVR12800TB', '128-CH NVR with analytics', '', '', '', '', '', 'This is an H265 Windows-based standalone NVR that supports up to 4K IP camera video decoding and local 4K video display. With advanced H265 compression technology, users are able to experience Full HD quality video while expending less HDD capacity than H264.  The NVR supports remote and mobile access via apps for both iOS and Android devices. The viewing app provides instant push notification and direct video playback functions when triggered by an alarm notification and provides users a flexible and intelligent NVR for seamless use in arge video surveillance applications.  RAID 0, 1, 5, 6 and 10 is supported.  Upto 16 x 16TB discs can be accommodated internally giving a maximum on-board capacity of 256TB. On-board smartsearch video analytics and cybersecurity management.\n\n', 'H.265/H.264 Compression Technology', 'Up to 128CH Recording, 64CH Display', 'Support HDMI, Display Port & DVI Simultaneous Output', '16 Hot-Swappable HDD Bays', 'Support RAID 0/1/5/6/10 Storage', 'Redundant Power', 'Dual Lan Giga Network Ports', 'Multiple Fisheye Dewarp Support', 'Upto 256TB on-board storage', 'Smart Search: People/Vehicle Search', 'Analytics Integration: Smart VCA, Parking Violation/Restricted Zone Detection', 'Cybersecurity Management Solution', '', '', '', '', ''),
('NVR1600TB', '16-CH PoE NVR with analytics', '', '', '', '', '', 'This is an H265 Linux-based standalone NVR that supports up to 4K IP camera video decoding and local 4K video display. With advanced H265 compression technology, users are able to experience Full HD quality video while expending less HDD capacity than H264.  The NVR features embedded 16x 802.3 at/af PoE ports to provide users easy and convenient IP camera installation, and also supports remote and mobile access via apps for both iOS and Android devices. The viewing app provides instant push notification and direct video playback functions when triggered by an alarm notification and provides users a flexible and intelligent NVR for seamless use in medium sized video surveillance applications.  RAID 0, 1 and 5 is supported.  Upto 4 x 12TB discs can be accommodated internally giving a maximum on-board capacity of 48TB. On-board smartsearch video analytics and cybersecurity management.\n\n', 'H.265/H.264 Compression Technology', '4K Display ', '16 x PoE Port ', 'Up to 20MP Cameras Supported', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', 'Smart VCA Camera Supported for Event Search & Recording', '802.3at/af PoE with PoE Management', 'RAID 0, 1, 5 Supported to Prevent from Recording Data Loss', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', ''),
('NVR3200TB', '32-CH PoE NVR with analytics', '', '', '', '', '', 'This is an H265 Linux-based standalone NVR that supports up to 4K IP camera video decoding and local 4K video display. With advanced H265 compression technology, users are able to experience Full HD quality video while expending less HDD capacity than H264.  The NVR features embedded 16x 802.3 at/af PoE ports to provide users easy and convenient IP camera installation, and also supports remote and mobile access via apps for both iOS and Android devices. The viewing app provides instant push notification and direct video playback functions when triggered by an alarm notification and provides users a flexible and intelligent NVR for seamless use in medium sized video surveillance applications.  RAID 0, 1 and 5 is supported.  Upto 4 x 12TB discs can be accommodated internally giving a maximum on-board capacity of 48TB. On-board smartsearch video analytics and cybersecurity management.\n\n', 'H.265/H.264 Compression Technology', '4K Display ', '16 x PoE Port ', 'Up to 20MP Cameras Supported', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', 'Smart VCA Camera Supported for Event Search & Recording', '802.3at/af PoE with PoE Management', 'RAID 0, 1, 5 Supported to Prevent from Recording Data Loss', 'Alarm In *16, Alarm Out *8', 'Made in Taiwan', 'Upto 48TB on-board storage', '', '', '', '', ''),
('NVR6400TB', '64-CH NVR with analytics', '', '', '', '', '', 'This is an H265 Windows-based standalone NVR that supports up to 4K IP camera video decoding and local 4K video display. With advanced H265 compression technology, users are able to experience Full HD quality video while expending less HDD capacity than H264.  The NVR supports remote and mobile access via apps for both iOS and Android devices. The viewing app provides instant push notification and direct video playback functions when triggered by an alarm notification and provides users a flexible and intelligent NVR for seamless use in medium to large sized video surveillance applications.  RAID 0, 1, 5, 6 and 10 is supported.  Upto 16 x 16TB discs can be accommodated internally giving a maximum on-board capacity of 256TB. On-board smartsearch video analytics and cybersecurity management.\n\n', 'H.265/H.264 Compression Technology', 'Up to 64CH Recording, 64CH Display', 'Support HDMI, Display Port & DVI Simultaneous Output', '16 Hot-Swappable HDD Bays', 'Support RAID 0/1/5/6/10 Storage', 'Redundant Power', 'Dual Lan Giga Network Ports', 'Multiple Fisheye Dewarp Support', 'Upto 256TB on-board storage', 'Smart Search: People/Vehicle Search', 'Analytics Integration: Smart VCA, Parking Violation/Restricted Zone Detection', 'Cybersecurity Management Solution', '', '', '', '', ''),
('SMW00TB', 'Security Management Workstation', '', '', '', '', '', 'Our Security Management Workstations allow viewing and management of all your CCTV cameras and recordings.  They complement our the range of recorders to enable quick set-up of a surveillance workstation.  The terminal is preloaded with a Security Management Client and preconfigured to minimise installation time and facilitate quick connection to the server/network video recorder.  It has validated hardware and software components for optimal surveillance experience.  It includes everything you need to keep your system updated and maintained - all from one central location.  The base terminal supports two monitors - with option for upgrade to four monitor outputs.  The workstation may also be used as a 32-channel NVR if required with up to 32TB on-board hard disc recording if required.  It is optimised to meet the demands for reliable high-definition surveillance.  ', 'H.265/H.264 Compression Technology', '4K Display ', 'Can act as NVR if required', 'Up to 20MP Cameras Supported', '4K Video Output Display for Clear and Detailed Monitoring', 'Deep Search (Attribute Search, Scene Search)', 'Smart VCA Camera Supported for Event Search & Recording', 'Upto 4 monitor outputs', '', '', 'Built in United Kingdom', 'Upto 32TB on-board storage', 'Slim design', '', '', '', 'station');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_interface`
--

DROP TABLE IF EXISTS `nvr_interface`;
CREATE TABLE `nvr_interface` (
  `product_code` varchar(10) DEFAULT NULL,
  `USB Front` varchar(18) DEFAULT NULL,
  `USB Rear` varchar(30) DEFAULT NULL,
  `Alarm In` int DEFAULT NULL,
  `Alarm Out` int DEFAULT NULL,
  `Audio Out` varchar(30) DEFAULT NULL,
  `Audio In` varchar(40) DEFAULT NULL,
  `RS485` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_interface`
--

INSERT INTO `nvr_interface` (`product_code`, `USB Front`, `USB Rear`, `Alarm In`, `Alarm Out`, `Audio Out`, `Audio In`, `RS485`) VALUES
('NVR0400TB', 'Front: 1 (USB 2.0)', 'Back: 1 (USB 3.0)', 16, 8, '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1', 'n/a'),
('NVR0800TB', 'Front: 1 (USB 2.0)', 'Back: 1 (USB 3.0)', 16, 8, '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1', 'n/a'),
('NVR1600TB', 'Front: 2 (USB 2.0)', 'Back: 1 (USB 3.0)', 16, 8, '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1', '1 (Reserved)'),
('NVR3200TB', 'Front: 2 (USB 2.0)', 'Back: 1 (USB 3.0)', 16, 8, '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1', '1 (Reserved)'),
('NVR6400TB', 'Front: 3 (USB 2.0)', 'Back: 6 (USB 3.0)', 16, 8, '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1', 'n/a'),
('NVR12800TB', 'Front: 3 (USB 2.0)', 'Back: 6 (USB 3.0)', 16, 8, '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1', 'n/a'),
('SMW00TB', 'Front: 2 (USB 2.0)', 'Back: 4 (USB 3.1 tyoe A and C)', 16, 8, '3.5 Phone Jack Audio Output x1', '3.5 Phone Jack Audio Input (Reserved) x1', '1 (Reserved)');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_network`
--

DROP TABLE IF EXISTS `nvr_network`;
CREATE TABLE `nvr_network` (
  `product_code` varchar(10) DEFAULT NULL,
  `Ethernet` varchar(35) DEFAULT NULL,
  `Network Throughput Input/Output Total` varchar(8) DEFAULT NULL,
  `PoE` varchar(54) DEFAULT NULL,
  `PoE Management` varchar(9) DEFAULT NULL,
  `Protocols` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_network`
--

INSERT INTO `nvr_network` (`product_code`, `Ethernet`, `Network Throughput Input/Output Total`, `PoE`, `PoE Management`, `Protocols`) VALUES
('NVR0400TB', '10/100/1000Mbps Ethernet (RJ-45) x2', '88 Mbps', '802.3at/af compliant PoE ports x 4 (Total Max. 200 W)', 'Supported', 'IPv4, IPv6, TCP/IP, HTTP, HTTPS, UPnP, RTSP/RTP/RTCP, SMTP, FTP, DHCP, NTP, DNS, DDNS'),
('NVR0800TB', '10/100/1000Mbps Ethernet (RJ-45) x2', '88 Mbps', '802.3at/af compliant PoE ports x 8 (Total Max. 200 W)', 'Supported', 'IPv4, IPv6, TCP/IP, HTTP, HTTPS, UPnP, RTSP/RTP/RTCP, SMTP, FTP, DHCP, NTP, DNS, DDNS'),
('NVR1600TB', '10/100/1000Mbps Ethernet (RJ-45) x2', '224 Mbps', '802.3at/af compliant PoE ports x 16 (Total Max. 200 W)', 'Supported', 'IPv4, IPv6, TCP/IP, HTTP, HTTPS, UPnP, RTSP/RTP/RTCP, SMTP, FTP, DHCP, NTP, DNS, DDNS'),
('NVR3200TB', '10/100/1000Mbps Ethernet (RJ-45) x2', '224 Mbps', '802.3at/af compliant PoE ports x 16 (Total Max. 200 W)', 'Supported', 'IPv4, IPv6, TCP/IP, HTTP, HTTPS, UPnP, RTSP/RTP/RTCP, SMTP, FTP, DHCP, NTP, DNS, DDNS'),
('NVR6400TB', '10/100/1000Mbps Ethernet (RJ-45) x2', '400 Mbps', 'na/a', 'Supported', 'IPv4, IPv6, TCP/IP, HTTP, HTTPS, UPnP, RTSP/RTP/RTCP, SMTP, FTP, DHCP, NTP, DNS, DDNS'),
('NVR12800TB', '10/100/1000Mbps Ethernet (RJ-45) x2', '400 Mbps', 'n/a', 'Supported', 'IPv4, IPv6, TCP/IP, HTTP, HTTPS, UPnP, RTSP/RTP/RTCP, SMTP, FTP, DHCP, NTP, DNS, DDNS'),
('SMW00TB', '10/100/1000Mbps Ethernet (RJ-45) x2', '224 Mbps', '802.3at/af compliant PoE ports x 16 (Total Max. 200 W)', 'Supported', 'IPv4, IPv6, TCP/IP, HTTP, HTTPS, UPnP, RTSP/RTP/RTCP, SMTP, FTP, DHCP, NTP, DNS, DDNS');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_playback`
--

DROP TABLE IF EXISTS `nvr_playback`;
CREATE TABLE `nvr_playback` (
  `product_code` varchar(10) DEFAULT NULL,
  `Playback Display Channels` varchar(11) DEFAULT NULL,
  `Display Spec` varchar(79) DEFAULT NULL,
  `Playback Control` varchar(138) DEFAULT NULL,
  `Video Search` varchar(33) DEFAULT NULL,
  `Thumbnail Explorer (Storyboard)` varchar(51) DEFAULT NULL,
  `Snapshot` varchar(10) DEFAULT NULL,
  `Video Clip Export` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_playback`
--

INSERT INTO `nvr_playback` (`product_code`, `Playback Display Channels`, `Display Spec`, `Playback Control`, `Video Search`, `Thumbnail Explorer (Storyboard)`, `Snapshot`, `Video Clip Export`) VALUES
('NVR0400TB', '4 Channels', 'Multi-Layout Display: 1x1, 2x2, 1P+3, 1V+3', 'Regular (play, pause, stop), rewind, next/previous frame, speed control, calendar, event, timeline, timeline scale, thumbnail (storyboard)', 'By calendar, date/time, and alarm', 'Listing the thumbnail of recorded video (Max. 2-CH)', 'JPEG', 'Supported'),
('NVR0800TB', '4 Channels', 'Multi-Layout Display: 1x1, 2x2, 1P+3, 1V+3', 'Regular (play, pause, stop), rewind, next/previous frame, speed control, calendar, event, timeline, timeline scale, thumbnail (storyboard)', 'By calendar, date/time, and alarm', 'Listing the thumbnail of recorded video (Max. 2-CH)', 'JPEG', 'Supported'),
('NVR1600TB', '4 Channels', 'Multi-Layout Display: 1x1, 2x2, 1P+3, 3V', 'Regular (play, pause, stop), rewind, next/previous frame, speed control, calendar, event, timeline, timeline scale, thumbnail (storyboard)', 'By calendar, date/time, and alarm', 'Listing the thumbnail of recorded video (Max. 2-CH)', 'JPEG', 'Supported'),
('NVR3200TB', '4 Channels', 'Multi-Layout Display: 1x1, 2x2, 1P+3, 3V', 'Regular (play, pause, stop), rewind, next/previous frame, speed control, calendar, event, timeline, timeline scale, thumbnail (storyboard)', 'By calendar, date/time, and alarm', 'Listing the thumbnail of recorded video (Max. 2-CH)', 'JPEG', 'Supported'),
('NVR6400TB', '64 Channels', 'Multi-Layout Display: 1x1, 2x2, 1P+3, 3V', 'Regular (play, pause, stop), rewind, next/previous frame, speed control, calendar, event, timeline, timeline scale, thumbnail (storyboard)', 'By calendar, date/time, and alarm', 'Listing the thumbnail of recorded video (Max. 2-CH)', 'JPEG & BMP', 'Supported'),
('NVR12800TB', '64 Channels', 'Multi-Layout Display: 1x1, 2x2, 1P+3, 3V', 'Regular (play, pause, stop), rewind, next/previous frame, speed control, calendar, event, timeline, timeline scale, thumbnail (storyboard)', 'By calendar, date/time, and alarm', 'Listing the thumbnail of recorded video (Max. 2-CH)', 'JPEG & BMP', 'Supported'),
('SMW00TB', '32 Channels', 'Multi-Layout Display: 1x1, 2x2, 3x3, 1P+3,2P+3,1M+5, 1P+6, 3V,1M+12, 4x4, 1M+31', 'Regular (play, pause, stop), rewind, next/previous frame, speed control, calendar, event, timeline, timeline scale, thumbnail (storyboard)', 'By calendar, date/time, and alarm', 'Listing the thumbnail of recorded video (Max. 2-CH)', 'JPEG', 'Supported');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_recording`
--

DROP TABLE IF EXISTS `nvr_recording`;
CREATE TABLE `nvr_recording` (
  `product_code` varchar(10) DEFAULT NULL,
  `Recording Time (sec.) Pre` varchar(23) DEFAULT NULL,
  `Post` varchar(26) DEFAULT NULL,
  `Recording Stream` varchar(6) DEFAULT NULL,
  `Recording Throughput` varchar(8) DEFAULT NULL,
  `Recording Mode` varchar(64) DEFAULT NULL,
  `Recording Setting` varchar(19) DEFAULT NULL,
  `Watermark` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_recording`
--

INSERT INTO `nvr_recording` (`product_code`, `Recording Time (sec.) Pre`, `Post`, `Recording Stream`, `Recording Throughput`, `Recording Mode`, `Recording Setting`, `Watermark`) VALUES
('NVR0400TB', 'Pre-Record: 5 (Max. 10)', 'Post-Record: 20 (Max. 300)', 'Dual', '64 Mbps', 'Continuous, Schedule, Manual, Event, Activity Adaptive Streaming', 'Recycle (unit: Day)', 'Supported'),
('NVR0800TB', 'Pre-Record: 5 (Max. 10)', 'Post-Record: 20 (Max. 300)', 'Dual', '64 Mbps', 'Continuous, Schedule, Manual, Event, Activity Adaptive Streaming', 'Recycle (unit: Day)', 'Supported'),
('NVR1600TB', 'Pre-Record: 5 (Max. 10)', 'Post-Record: 20 (Max. 300)', 'Dual', '192 Mbps', 'Continuous, Schedule, Manual, Event, Activity Adaptive Streaming', 'Recycle (unit: Day)', 'Supported'),
('NVR3200TB', 'Pre-Record: 5 (Max. 10)', 'Post-Record: 20 (Max. 300)', 'Dual', '192 Mbps', 'Continuous, Schedule, Manual, Event, Activity Adaptive Streaming', 'Recycle (unit: Day)', 'Supported'),
('NVR6400TB', 'Pre-Record: 3-15', 'Post-Record: 10-60', 'Single', '512 Mbps', 'Continuous, Schedule, Manual, Event, Activity Adaptive Streaming', 'Recycle (unit: Day)', 'Supported'),
('NVR12800TB', 'Pre-Record: 3-15', 'Post-Record: 10-60', 'Single', '512 Mbps', 'Continuous, Schedule, Manual, Event, Activity Adaptive Streaming', 'Recycle (unit: Day)', 'Supported'),
('SMW00TB', 'Pre-Record: 5 (Max. 10)', 'Post-Record: 20 (Max. 300)', 'Dual', '400 Mbps', 'Continuous, Schedule, Manual, Event, Activity Adaptive Streaming', 'Recycle (unit: Day)', 'Supported');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_remote`
--

DROP TABLE IF EXISTS `nvr_remote`;
CREATE TABLE `nvr_remote` (
  `product_code` varchar(10) DEFAULT NULL,
  `Mobile/Tablet App` varchar(23) DEFAULT NULL,
  `Web Browser` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_remote`
--

INSERT INTO `nvr_remote` (`product_code`, `Mobile/Tablet App`, `Web Browser`) VALUES
('NVR0400TB', 'iViewer (Android & iOS)', 'Chrome'),
('NVR0800TB', 'iViewer (Android & iOS)', 'Chrome'),
('NVR1600TB', 'iViewer (Android & iOS)', 'Chrome'),
('NVR3200TB', 'iViewer (Android & iOS)', 'Chrome'),
('NVR6400TB', 'iViewer (Android & iOS)', 'n/a'),
('NVR12800TB', 'iViewer (Android & iOS)', 'n/a'),
('SMW00TB', 'iViewer (Android & iOS)', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_storage`
--

DROP TABLE IF EXISTS `nvr_storage`;
CREATE TABLE `nvr_storage` (
  `product_code` varchar(10) DEFAULT NULL,
  `HDD Devices` varchar(22) DEFAULT NULL,
  `RAID` varchar(19) DEFAULT NULL,
  `Disk Management` varchar(30) DEFAULT NULL,
  `HDD Tech` varchar(14) DEFAULT NULL,
  `External Storage` varchar(21) DEFAULT NULL,
  `Video Clip Export` varchar(23) DEFAULT NULL,
  `Schedule Backup` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_storage`
--

INSERT INTO `nvr_storage` (`product_code`, `HDD Devices`, `RAID`, `Disk Management`, `HDD Tech`, `External Storage`, `Video Clip Export`, `Schedule Backup`) VALUES
('NVR0400TB', 'Internal x1 (3.5\")', 'n/a', 'Create, Format and Remove Disk', 'HDD S.M.A.R.T.', 'USB Storage (USB 3.0)', 'USB Dongle (FAT Format)', 'FTP'),
('NVR0800TB', 'Internal x4 (3.5\")', 'RAID 0, 1', 'Create, Format and Remove Disk', 'HDD S.M.A.R.T.', 'USB Storage (USB 3.0)', 'USB Dongle (FAT Format)', 'FTP'),
('NVR1600TB', 'Internal x4 (3.5\")', 'RAID 0, 1, 5', 'Create, Format and Remove Disk', 'HDD S.M.A.R.T.', 'USB Storage (USB 3.0)', 'USB Dongle (FAT Format)', 'FTP'),
('NVR3200TB', 'Internal x4 (3.5\")', 'RAID 0, 1, 5', 'Create, Format and Remove Disk', 'HDD S.M.A.R.T.', 'USB Storage (USB 3.0)', 'USB Dongle (FAT Format)', ''),
('NVR6400TB', 'Hot-swappable tray x16', 'RAID 0, 1, 5, 6, 10', 'Create, Format and Remove Disk', 'HDD S.M.A.R.T.', 'USB Storage (USB 3.0)', 'USB Dongle (FAT Format)', 'NAS'),
('NVR12800TB', 'Hot-swappable tray x16', 'RAID 0, 1, 5, 6, 10', 'Create, Format and Remove Disk', 'HDD S.M.A.R.T.', 'USB Storage (USB 3.0)', 'USB Dongle (FAT Format)', 'NAS'),
('SMW00TB', 'Internal x2 (3.5\")', 'n/a', 'Create, Format and Remove Disk', 'HDD S.M.A.R.T.', 'USB Storage (USB 3.0)', 'USB Dongle (FAT Format)', '');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_system`
--

DROP TABLE IF EXISTS `nvr_system`;
CREATE TABLE `nvr_system` (
  `product_code` varchar(10) DEFAULT NULL,
  `Camera Integration` varchar(15) DEFAULT NULL,
  `Event` varchar(176) DEFAULT NULL,
  `Event Action` varchar(127) DEFAULT NULL,
  `User Management` varchar(39) DEFAULT NULL,
  `Log` varchar(30) DEFAULT NULL,
  `Date & Time` varchar(59) DEFAULT NULL,
  `Language` varchar(144) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_system`
--

INSERT INTO `nvr_system` (`product_code`, `Camera Integration`, `Event`, `Event Action`, `User Management`, `Log`, `Date & Time`, `Language`) VALUES
('NVR0400TB', 'ONVIF Profile S', 'Motion Detection, Smart VCA Event, Cyber Attack, PIR Detection, Tampering Detection, Camera DI/DO, Camera Disconnected, Disk Failure, Disk Full, NVR DI/DO, PoE error, Fan error', 'Record, Email (Text), Email (Snapshot), FTP, Buzzer, ePTZ Control (Go to Preset), NVR DO, Camera DO, VIVOCloud APP Notification', 'User level: administrator, regular user', 'System, recording, user, error', 'Time Zone, Manual, Automatic Sync NTP, Daylight Saving Time', 'Czech, English, French, German, Italian, Japanese, Korean, Portuguese, Polish, Russian, Spanish, Simplified Chinese, Traditional Chinese, Arabic'),
('NVR0800TB', 'ONVIF Profile S', 'Motion Detection, Smart VCA Event, Cyber Attack, PIR Detection, Tampering Detection, Camera DI/DO, Camera Disconnected, Disk Failure, Disk Full, NVR DI/DO, PoE error, Fan error', 'Record, Email (Text), Email (Snapshot), FTP, Buzzer, ePTZ Control (Go to Preset), NVR DO, Camera DO, VIVOCloud APP Notification', 'User level: administrator, regular user', 'System, recording, user, error', 'Time Zone, Manual, Automatic Sync NTP, Daylight Saving Time', 'Czech, English, French, German, Italian, Japanese, Korean, Portuguese, Polish, Russian, Spanish, Simplified Chinese, Traditional Chinese, Arabic'),
('NVR1600TB', 'ONVIF Profile S', 'Motion Detection, Smart VCA Event, Cyber Attack, PIR Detection, Tampering Detection, Camera DI/DO, Camera Disconnected, Disk Failure, Disk Full, NVR DI/DO, PoE error, Fan error', 'Record, Email (Text), Email (Snapshot), FTP, Buzzer, ePTZ Control (Go to Preset), NVR DO, Camera DO, VIVOCloud APP Notification', 'User level: administrator, regular user', 'System, recording, user, error', 'Time Zone, Manual, Automatic Sync NTP, Daylight Saving Time', 'Czech, English, French, German, Italian, Japanese, Korean, Portuguese, Polish, Russian, Spanish, Simplified Chinese, Traditional Chinese, Arabic'),
('NVR3200TB', 'ONVIF Profile S', 'Motion Detection, Smart VCA Event, Cyber Attack, PIR Detection, Tampering Detection, Camera DI/DO, Camera Disconnected, Disk Failure, Disk Full, NVR DI/DO, PoE error, Fan error', 'Record, Email (Text), Email (Snapshot), FTP, Buzzer, ePTZ Control (Go to Preset), NVR DO, Camera DO, VIVOCloud APP Notification', 'User level: administrator, regular user', 'System, recording, user, error', 'Time Zone, Manual, Automatic Sync NTP, Daylight Saving Time', 'Czech, English, French, German, Italian, Japanese, Korean, Portuguese, Polish, Russian, Spanish, Simplified Chinese, Traditional Chinese, Arabic'),
('NVR6400TB', 'ONVIF Profile S', 'Motion Detection, Smart VCA Event, Cyber Attack, PIR Detection, Tampering Detection, Camera DI/DO, Camera Disconnected, Disk Failure, Disk Full, NVR DI/DO, PoE error, Fan error', 'Record, Email (Text), Email (Snapshot), FTP, Buzzer, ePTZ Control (Go to Preset), NVR DO, Camera DO, VIVOCloud APP Notification', 'User level: administrator, regular user', 'System, recording, user, error', 'Sync server', 'Czech, English, French, German, Italian, Japanese, Korean, Portuguese, Polish, Russian, Spanish, Simplified Chinese, Traditional Chinese, Arabic'),
('NVR12800TB', 'ONVIF Profile S', 'Motion Detection, Smart VCA Event, Cyber Attack, PIR Detection, Tampering Detection, Camera DI/DO, Camera Disconnected, Disk Failure, Disk Full, NVR DI/DO, PoE error, Fan error', 'Record, Email (Text), Email (Snapshot), FTP, Buzzer, ePTZ Control (Go to Preset), NVR DO, Camera DO, VIVOCloud APP Notification', 'User level: administrator, regular user', 'System, recording, user, error', 'Sync server', 'Czech, English, French, German, Italian, Japanese, Korean, Portuguese, Polish, Russian, Spanish, Simplified Chinese, Traditional Chinese, Arabic'),
('SMW00TB', 'ONVIF Profile S', 'Motion Detection, Smart VCA Event, Cyber Attack, PIR Detection, Tampering Detection, Camera DI/DO, Camera Disconnected, Disk Failure, Disk Full, NVR DI/DO, PoE error, Fan error', 'Record, Email (Text), Email (Snapshot), FTP, Buzzer, ePTZ Control (Go to Preset), NVR DO, Camera DO, VIVOCloud APP Notification', 'User level: administrator, regular user', 'System, recording, user, error', 'Time Zone, Manual, Automatic Sync NTP, Daylight Saving Time', 'Czech, English, French, German, Italian, Japanese, Korean, Portuguese, Polish, Russian, Spanish, Simplified Chinese, Traditional Chinese, Arabic');

-- --------------------------------------------------------

--
-- Table structure for table `nvr_video`
--

DROP TABLE IF EXISTS `nvr_video`;
CREATE TABLE `nvr_video` (
  `product_code` varchar(10) DEFAULT NULL,
  `Video Format` varchar(26) DEFAULT NULL,
  `Graphic Decoder` varchar(17) DEFAULT NULL,
  `Decoding Resolution` varchar(15) DEFAULT NULL,
  `Decoding Capability` varchar(12) DEFAULT NULL,
  `Needs Key` varchar(50) DEFAULT NULL,
  `Needs Key 1` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nvr_video`
--

INSERT INTO `nvr_video` (`product_code`, `Video Format`, `Graphic Decoder`, `Decoding Resolution`, `Decoding Capability`, `Needs Key`, `Needs Key 1`) VALUES
('NVR0400TB', 'H.265, H.264, MJPEG', 'Hardware decoding', 'Up to 3840x2160', 'H.265/H.264:', '3840x2160 @ 30 fps (1-CH)', '1920x1080 @ 120 fps (4-CH)'),
('NVR0800TB', 'H.265, H.264, MJPEG', 'Hardware decoding', 'Up to 8192x8192', 'H.265/H.264:', '3840x2160 @ 30 fps (1-CH)', '1920x1080 @ 120 fps (4-CH)'),
('NVR1600TB', 'H.265, H.264, MJPEG', 'Hardware decoding', 'Up to 8192x8192', 'H.265/H.264:', '3840x2160 @ 90 fps (3-CH)', '1920x1080 @ 360 fps (12-CH)'),
('NVR3200TB', 'H.265, H.264, MJPEG', 'Hardware decoding', 'Up to 8192x8192', 'H.265/H.264:', '3840x2160 @ 90 fps (3-CH)', '1920x1080 @ 360 fps (12-CH)'),
('NVR6400TB', 'H.265, H.264, MJPEG', 'Software decoding', 'Up to 8192x8192', 'H.265/H.264:', 'H264 1920x1080 @ 540 fps ', 'H265 1920x1080 @ 270 fps '),
('NVR12800TB', 'H.265, H.264, MJPEG', 'Software decoding', 'Up to 8192x8192', 'H.265/H.264:', 'H264 1920x1080 @ 540 fps ', 'H265 1920x1080 @ 270 fps '),
('SMW00TB', 'H.265, H.264, MJPEG, MPEG4', 'Software decoding', 'Up to 8192x8192', 'H.265/H.264:', 'H264 1920x1080 @ 540 fps; H265 1920x1080 @ 270 fps', '1920x1080 @ 360 fps (12-CH)');

-- --------------------------------------------------------

--
-- Table structure for table `pan_tilt`
--

DROP TABLE IF EXISTS `pan_tilt`;
CREATE TABLE `pan_tilt` (
  `product_code` varchar(14) DEFAULT NULL,
  `Pan-Range` varchar(35) DEFAULT NULL,
  `Pan-Speed` varchar(64) DEFAULT NULL,
  `Tilt-Range` varchar(28) DEFAULT NULL,
  `Tilt-Speed` varchar(101) DEFAULT NULL,
  `Pre-Sets` varchar(32) DEFAULT NULL,
  `Pre-Set Tours` varchar(11) DEFAULT NULL,
  `Motion Tracking` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pan_tilt`
--

INSERT INTO `pan_tilt` (`product_code`, `Pan-Range`, `Pan-Speed`, `Tilt-Range`, `Tilt-Speed`, `Pre-Sets`, `Pre-Set Tours`, `Motion Tracking`) VALUES
('BSOS-1Z4I-I68', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BHOS2F4II66M', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BSOS12F28II67', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BSOS2FV0I66', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BSOA-2Z4I-I67', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BSOS12F20I66', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('DSOS-1Z4I-I68', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('DHOS2F4II66M', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BHOS2Z18OI66M', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BHTS3F8OI66M', '', '', '', '', '', '', ''),
('PHOS2Z260I66M', '360Â°', 'Horizontal rotation speedï¼š0.1Â°-250Â°/s, rotation speed can be', '-18Â°-90Â°', 'Vertical rotation speedï¼š0.1Â°-150Â°/s, rotation speed can be set; VerticalpresetÂ  rotation speedï¼', '', '', ''),
('DSOS2Z200I67', 'Pan: 360Â° endless, Tilt: -10Â°-+19', 'Pan/tilt speed: max. 380Â° / sec', '', '', 'Preset: 256, Tour: 8, Pattern: 8', '', ''),
('PSOA-3Z30-XI68', '', '', '', '', '', '', ''),
('PSOS-3Z30-XI68', '', '', '', '', '', '', ''),
('PHOS2Z200I66M', 'HorizontalÂ ï¼š0ï½ž360Â°Vertical: Â', '0.1Â°/S~40Â°/sÂ ', '', '0.1Â°/S~40Â°/s', '300', '', ''),
('PSOS2Z36II67', 'Pan: 360Â° endless, Tilt: Â±90Â°', '1.8Â°-30Â°/sec', '', '1.8Â°-30Â°/sec', 'Preset: 226', '', ''),
('PHOS2Z20II66M', 'HorizontalÂ ï¼š0ï½ž360Â°Vertical: Â', '0.1Â°/S~40Â°/sÂ ', '', '0.1Â°/S~40Â°/s', '300', '', ''),
('PHOTS2Z200I66M', 'HorizontalÂ ï¼š0ï½ž360Â°', '', 'Vertical: Â Â ï¼šÂ±90Â°', '', '', '', ''),
('BHOS2F4II66', '', '', '', '', '', '', ''),
('BHOS-4Z4I-I66', '', '', '', '', '', '', ''),
('BHOA-4Z4I-I66', '', '', '', '', '', '', ''),
('BHOS2Z360I68', '', '', '', '', '', '', ''),
('BHOS2ZV0I68', '', '', '', '', '', '', ''),
('BHOS2Z18OI66', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('BHOS2Z36II68', '', '', '', '', '', '', ''),
('BHOTS2Z360I68', '', '', '', '', '', '', ''),
('BHTS3F8OI66', '', '', '', '', '', '', ''),
('DHOS2F4II66', '', '', '', '', '', '', ''),
('THOS-2F3I-I68', '', '', '', '', '', '', ''),
('PHOS2Z26OI66', '360Â°', 'Horizontal rotation speedï¼š0.1Â°-250Â°/s, rotation speed can be', '-18Â°-90Â°', 'Vertical rotation speedï¼š0.1Â°-150Â°/s, rotation speed can be set; VerticalpresetÂ  rotation speedï¼', '1024', '', ''),
('PHOS2Z36II68', 'Pan: 360Â° endless, Tilt: Â±90Â°', 'Pan/tilt speed: 1.8Â°-20Â°/sec', '', '', 'Preset: 256', '', ''),
('PHOS2Z20II66', 'HorizontalÂ ï¼š0ï½ž360Â°Vertical: Â', 'HorizontalÂ ï¼š0.1Â°/S~40Â°/sÂ Vertical: Â Â ï¼š0.1Â°/S~40Â°/s', '', '', '300', '', ''),
('PHOS2Z200I66', 'HorizontalÂ ï¼š0ï½ž360Â°Vertical: Â', 'HorizontalÂ ï¼š0.1Â°/S~40Â°/sÂ Vertical: Â Â ï¼š0.1Â°/S~40Â°/s', 'Vertical: Â Â ï¼šÂ±90Â°', '', '300', '', ''),
('PHOS-2Z30O-I69', '', '', '', '', '', '', ''),
('PHOTS2Z36II68', 'Pan: 360Â° endless, Tilt: Â±90Â°', '', 'Pan/tilt speed: 1.8Â°-20Â°/s', '', '', 'Preset: 256', ''),
('PHOTS2Z200I66', 'HorizontalÂ ï¼š0ï½ž360Â°', '', 'Vertical: Â Â ï¼šÂ±90Â°', '', '', '', ''),
('BHTS3F8OI66', '', '', '', '', '', '', ''),
('BSTAIF80I67', '', '', '', '', '', '', ''),
('BHOTS2Z360I68', '', '', '', '', '', '', ''),
('PHOTS2Z36II68', 'Pan: 360Â° endless, Tilt: Â±90Â°', '', 'Pan/tilt speed: 1.8Â°-20Â°/s', '', '', 'Preset: 256', ''),
('PHOTS2Z20OI66', 'HorizontalÂ ï¼š0ï½ž360Â°', '', 'Vertical: Â Â ï¼šÂ±90Â°', '', '', '', ''),
('BSOA8FVII67', '', '', '', '', '', '', ''),
('DSOA8FVII67', '353Â°', '', '180Â°', '', '', '', ''),
('DSOA12F1II66', '', '', '', '', '', '', ''),
('BSOP-2Z4I-I67', '', '', '', '', '', '', ''),
('BSTAIF80I67', '', '', '', '', '', '', ''),
('PSOA5Z30II66', '360Â° endless', '', '-20Â° to 90Â° (auto flip)', '', '256 preset locations', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `physical`
--

DROP TABLE IF EXISTS `physical`;
CREATE TABLE `physical` (
  `product_code` varchar(14) DEFAULT NULL,
  `Material` varchar(42) DEFAULT NULL,
  `Colour` varchar(10) DEFAULT NULL,
  `Operating Temp` varchar(45) DEFAULT NULL,
  `Relative Humidity` varchar(28) DEFAULT NULL,
  `Atmospheric Pressure` varchar(13) DEFAULT NULL,
  `Weight (kg)` varchar(37) DEFAULT NULL,
  `Dimensions - external (mm)` varchar(40) DEFAULT NULL,
  `Dimensions - internal (mm)` varchar(22) DEFAULT NULL,
  `Cable Entry` varchar(46) DEFAULT NULL,
  `Mounting Options` varchar(48) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `physical`
--

INSERT INTO `physical` (`product_code`, `Material`, `Colour`, `Operating Temp`, `Relative Humidity`, `Atmospheric Pressure`, `Weight (kg)`, `Dimensions - external (mm)`, `Dimensions - internal (mm)`, `Cable Entry`, `Mounting Options`) VALUES
('BSOS-1Z4I-I68', 'Aluminuim', '', '-40 to +60 deg C ', '', '', '1.8kg', '85 x 127', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS2F4II66M', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Dia 83  117L   110H', '', '1pcs M20*1.5 output(original G1/2)', 'Wall hanging, fixed bracket , pedestal base'),
('BSOS12F28II67', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 2.5Kg', '109(W)x132.5(H)x124(D)mm', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BSOS2FV0I66', 'AISI 316L Electro Polished Stainless Steel', '', '-20Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'About 2.9Kg', 'TBD', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BSOA-2Z4I-I67', 'Aluminuim', '', '-40 to +60 deg C ', '< 90%', '', '5kg including bracket (approx..)', '', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BSOS12F20I66', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'TBD', 'TBD', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('DSOS-1Z4I-I68', 'Aluminuim', '', '-10 to +50 deg C ', '', '', '1.3kg', '118W x 88H x 80dia', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('DHOS2F4II66M', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Dia 157.5   147.5H', '', '1pcs M20*1.5(original 1*Â G1/2â€³ )', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS2Z18OI66M', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Î¦162Ã—457.5mm(length )', 'Î¦90.5Ã—309.5mm(length', '2pcs M25*1.5 output (original G3/4â€³ )', 'Wall hanging, fixed bracket , pedestal base, PTZ'),
('BHTS3F8OI66M', '316L stainless steel', '', '-40Â°C ~ 60Â°C (-40Â°F ~ 140Â°F)', '', '', '', '380mm*143mm*151mm', 'Î¦108Ã—300mm (length)', '2pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS2Z260I66M', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤ 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Dia 157.5 (6 inch dome) 189.6 H', '', '1pcs M25*1.5 output(original G3/4), M32 option', 'Wall hanging, fixed bracket , pedestal base'),
('DSOS2Z200I67', 'AISI 316L Electro Polished Stainless Steel', '', '-30Â°C - +50Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 4.3Kg', '185(W)x160(H)x185(D)mm', '', 'One 3/4\" NPT conduit entries', 'Wall hanging, fixed bracket , pedestal base'),
('PSOA-3Z30-XI68', 'Aluminuim', '', '-40 to +70 deg C (white or grey paint finish)', '', '', '5.2kg without lamps; 5.8kg with lamps', '191W x 342H', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('PSOS-3Z30-XI68', 'Stainless steel', '', '-40 to +70 deg C (white or grey paint finish)', '', '', '14kg without lamps; 18kg with lamps. ', '313W x 386H x 214D', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS2Z200I66M', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('PSOS2Z36II67', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 18Kg', '320(W)x345(H)x299(D)mm', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS2Z20II66M', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('PHOTS2Z200I66M', '316L stainless steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS2F4II66', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Dia 83  117L   110H', '', '1pcs M20*1.5 output(original G1/2)', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS-4Z4I-I66', 'Aluminuim', '', '-30 to +60 deg C ', '', '', '4.62kg', '140H x 140W x 203D', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BHOA-4Z4I-I66', 'Aluminuim', '', '-30 to +60 deg C ', '', '', '3.67kg', '140H x 140W x 197 D', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS2Z360I68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 6Kg', '121(W)x178(H)x250(D)mm', '', 'One conduit entry', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS2ZV0I68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 6Kg', '121(W)x178(H)x250(D)mm', '', 'One conduit entry', 'Wall hanging, fixed bracket , pedestal base'),
('BHOS2Z18OI66', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Î¦162Ã—457.5mm(length )', 'Î¦90.5Ã—309.5mm(length', '2pcs M25*1.5 output (original G3/4â€³ )', 'Wall hanging, fixed bracket , pedestal base, PTZ'),
('BHOS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 10Kg', '244(W)x237.5(H)x270(D)mm', '', 'Two M25 conduit entries', 'Wall hanging, fixed bracket , pedestal base'),
('BHOTS2Z360I68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 10Kg', '244(W)x237.5(H)x270(D)mm', '', 'Two M25 conduit entries', 'Wall hanging, fixed bracket , pedestal base'),
('BHTS3F8OI66', '316L stainless steel', '', '-40Â°C ~ 60Â°C (-40Â°F ~ 140Â°F)', '', '', '', '380mm*143mm*151mm', 'Î¦108Ã—300mm (length)', '2pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('DHOS2F4II66', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Dia 157.5   147.5H', '', '1pcs M20*1.5(original 1*Â G1/2â€³ )', 'Wall hanging, fixed bracket , pedestal base'),
('THOS-2F3I-I68', '316L Stainless steel', '', '-40 to +60 deg C ', '95% or less (non-condensing)', '', '2.5', '138dia Ã— 123.4 mm', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS2Z26OI66', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤ 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', 'Dia 157.5 (6 inch dome) 189.6 H', '', '1pcs M25*1.5 output(original G3/4), M32 option', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 32Kg', '353(W)x412(H)x210(D)mm', '', 'Two M25 conduit entries', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS2Z20II66', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS2Z200I66', '316L stainless Â steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('PHOS-2Z30O-I69', 'Aluminuim', '', '-40 to +80 deg C ', '', '', '26.5kg ', '', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('PHOTS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 32Kg', '353(W)x412(H)x210(D)mm', '', 'Two M25 conduit entries', 'Wall hanging, fixed bracket , pedestal base'),
('PHOTS2Z200I66', '316L stainless steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('BHTS3F8OI66', '316L stainless steel', '', '-40Â°C ~ 60Â°C (-40Â°F ~ 140Â°F)', '', '', '', '380mm*143mm*151mm', 'Î¦108Ã—300mm (length)', '2pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('BSTAIF80I67', '', '', '-50Â°C ~ 60Â°C (-58Â°F ~ 140Â°F)', '90%', '', '2,115 g', '121 x 121 x 471.2 mm (with junction box)', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BHOTS2Z360I68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 10Kg', '244(W)x237.5(H)x270(D)mm', '', 'Two M25 conduit entries', 'Wall hanging, fixed bracket , pedestal base'),
('PHOTS2Z36II68', 'AISI 316L Electro Polished Stainless Steel', '', '-40Â°C - +60Â°C', '0-90% RH(Non-condensing)', '', 'Approx. 32Kg', '353(W)x412(H)x210(D)mm', '', 'Two M25 conduit entries', 'Wall hanging, fixed bracket , pedestal base'),
('PHOTS2Z20OI66', '316L stainless steel', '', '-40â„ƒï½ž60â„ƒ', 'â‰¤Â 95%ï¼ˆ+25Â°Cï¼‰', '80kpaï½ž106 k', '', '', '', '1pcs M25*1.5 output(original G3/4)', 'Wall hanging, fixed bracket , pedestal base'),
('BSOA8FVII67', '', '', '-50Â°C ~ 50Â°C (-58Â°F ~ 122Â°F) (IR on)', '95%', '', '2.2 kg', '121 x 121 x 394 mm (w/ junction box)', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('DSOA8FVII67', '', '', '-50Â°C ~ 60Â°C (-58Â°F ~ 140Â°F) (IR off)', '90%', '', '1,343 g', 'Ã˜ 155 x 138 mm', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('DSOA12F1II66', '', '', '-40Â°C ~ 50Â°C (-40Â°F ~ 122Â°F) (IR on)', '90% RH (non-condensing)', '', '701 g', 'Ã¸ 150 x 68.2 mm', '', '', 'Ceiling or wall mount'),
('BSOP-2Z4I-I67', 'Aluminuim', '', '-30 to +60 deg C ', '95% or less (non-condensing)', '', '1.92KG', '144dia x 347', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('BSTAIF80I67', '', '', '-50Â°C ~ 60Â°C (-58Â°F ~ 140Â°F)', '90%', '', '2,115 g', '121 x 121 x 471.2 mm (with junction box)', '', '', 'Wall hanging, fixed bracket , pedestal base'),
('PSOA5Z30II66', '', '', '-40Â°C ~ 60Â°C (-40Â°F ~ 140Â°F) (IR on)', '98% RH (non-condensing)', '', '7.1 kg', '256 x 336 mm', '', '', 'Wall hanging, fixed bracket , pedestal base');

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `COL 1` varchar(14) DEFAULT NULL,
  `COL 2` varchar(42) DEFAULT NULL,
  `COL 3` varchar(18) DEFAULT NULL,
  `COL 4` varchar(18) DEFAULT NULL,
  `COL 5` varchar(309) DEFAULT NULL,
  `COL 6` varchar(22) DEFAULT NULL,
  `COL 7` varchar(41) DEFAULT NULL,
  `COL 8` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `power`
--

INSERT INTO `power` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`) VALUES
('Product code', 'Ethernet', 'RS485', 'BNC Output', 'Alarm in/out', 'Audio in/out connector', 'Power supply', 'Power consumption'),
('BSOS-1Z4I-I68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', 'n/a', '', '12vdc/PoE  <10W', '<10W'),
('BHOS2F4II66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'DC12V/POE(Optional)', ''),
('BSOS12F28II67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / POE', '250mA(12W)@PoE, 1A (12W)'),
('BSOS2FV0I66', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / POE', 'IR OFF : 150mA(MAX) / IR ON : 400mA(MAX)'),
('BSOA-2Z4I-I67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '1 in/ 1 out Terminal block', '', '12vdc/PoE 802.3af', '12W IR ON; 4W IR OFF'),
('BSOS12F20I66', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / POE', ''),
('DSOS-1Z4I-I68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', 'n/a', '', '12vdc/PoE  ', '0.24A'),
('DHOS2F4II66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'DC12V/POE(Optional)', ''),
('BHOS2Z18OI66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', 'Optional', 'Optional', '230VAC/DC12V', ''),
('BHTS3F8OI66M', 'Ethernet RJ-45(10/100/1000Base-T)', 'Support (optional)', 'Support (optional)', '', '', 'DC12V', ''),
('PHOS2Z260I66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC24V 2A', ''),
('DSOS2Z200I67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / 24VAC / POE', '250mA(12W)@PoE, 1A (12W)'),
('PSOA-3Z30-XI68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '24vdc . PoE 802.3bt', '50W no LED;90W LED'),
('PSOS-3Z30-XI68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '24vdc  PoE 802.3bt', '50W no LED;90W LED'),
('PHOS2Z200I66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC85V-260V', ''),
('PSOS2Z36II67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '24VDC', '50W(80W with water tank operation)'),
('PHOS2Z20II66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC85V-260V', ''),
('PHOTS2Z200I66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC85V-260V(DC 24V option)', ''),
('BHOS2F4II66', '', 'RJ45', '', '', '', 'DC12V/POE(Optional)', ''),
('BHOS-4Z4I-I66', '', 'RJ45', '', 'n/a', 'n/a', '12 or 24vdc or PoE 802.3af', '8.5W'),
('BHOA-4Z4I-I66', '', 'RJ45', '', 'n/a', 'n/a', '12 or 24vdc or PoE 802.3af', '8.5W'),
('BHOS2Z360I68', '', 'RJ45', '', '', '', '12VDC / POE', '250mA(12W)@PoE, 1A (12W) @12VDC'),
('BHOS2ZV0I68', '', 'RJ45', '', '', '', '12VDC / POE', '250mA(12W)@PoE, 1A (12W) @12VDC'),
('BHOS2Z18OI66', '', 'RJ45', '', 'Optional', 'Optional', '230VAC/DC12V', ''),
('BHOS2Z36II68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W(Max. 80W with water tank and IR LED operation)'),
('BHOTS2Z360I68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('BHTS3F8OI66', '', 'RJ45', '', 'Support (optional)', 'Support (optional)', 'DC12V', ''),
('DHOS2F4II66', '', 'RJ45', '', '', '', 'DC12V/POE(Optional)', ''),
('THOS-2F3I-I68', '', 'RJ45', '', '1 IN; 1 OUT', '', '12 VDC; PoE (802.3af, 36V to 57V)', '0.8 A, max. 10 W PoE 0.3 A to 0.2 A, max. 12.5 W'),
('PHOS2Z26OI66', '', 'RJ45', '', '', '', 'AC24V ', '2A'),
('PHOS2Z36II68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W(Max. 80W with water tank and IR LED operation)'),
('PHOS2Z20II66', '', 'RJ45', '', '', '', 'AC85V-260V', ''),
('PHOS2Z200I66', '', 'RJ45', '', '', '', 'AC85V-260V', ''),
('PHOS-2Z30O-I69', '', 'RJ45', '', '', '', '230/12/120  ', '120W max'),
('PHOTS2Z36II68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('PHOTS2Z200I66', '', 'RJ45', '', '', '', 'AC85V-260V(DC 24V option)', ''),
('BHTS3F8OI66', '1 Ethernet (10/100 Base-T) RJ-45 Connector', 'Support (optional)', 'Support (optional)', '', '', 'DC12V', ''),
('BSTAIF80I67', 'RJ-45 ', 'Yes', 'Yes', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'AC 24V, DC 12V, IEEE 802.3at PoE Class 4', 'PoE: Max. 14 W'),
('BHOTS2Z360I68', 'RJ45', '', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('PHOTS2Z36II68', 'RJ45', '', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('PHOTS2Z20OI66', '', '', '', '', '', 'AC85V-260V(DC 24V option)', ''),
('BSOA8FVII67', 'RJ-45 ', '', '', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'IEEE 802.3at Class 4 PoE, DC 12V, AC 24V', 'PoE : Max. 24.8 W'),
('DSOA8FVII67', 'RJ-45 ', '', '', '', '', 'IEEE 802.3af Class3 PoE; 12vdc; 24vac', 'Max. 25 W'),
('DSOA12F1II66', 'RJ-45 ', '', '', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'IEEE 802.3at PoE Class 4', 'Max. 22.5 W/9.55 W (IR on/off)'),
('BSOP-2Z4I-I67', 'RJ45', '', '', 'Terminal block', '', '12vdc/PoE 802.3at', '16W'),
('BSTAIF80I67', 'RJ-45 ', 'Yes', 'Yes', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'AC 24V, DC 12V, IEEE 802.3at PoE Class 4', 'PoE: Max. 14 W'),
('PSOA5Z30II66', 'RJ-45 ', '', '', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, smart tracking advanced trigger, system boot, preset reached', '', 'AC 24V, DC 48V, IEEE 802.3 bt Class 6 PoE', 'PoE: Max. 51W/26W (IR on/off)');

-- --------------------------------------------------------

--
-- Table structure for table `power_conn`
--

DROP TABLE IF EXISTS `power_conn`;
CREATE TABLE `power_conn` (
  `product_code` varchar(14) DEFAULT NULL,
  `Ethernet` varchar(42) DEFAULT NULL,
  `RS485` varchar(18) DEFAULT NULL,
  `BNC Output` varchar(18) DEFAULT NULL,
  `Alarm In/Out` varchar(309) DEFAULT NULL,
  `Audio In/Out Connector` varchar(18) DEFAULT NULL,
  `Power Supply` varchar(41) DEFAULT NULL,
  `Power Consumption` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `power_conn`
--

INSERT INTO `power_conn` (`product_code`, `Ethernet`, `RS485`, `BNC Output`, `Alarm In/Out`, `Audio In/Out Connector`, `Power Supply`, `Power Consumption`) VALUES
('BSOS-1Z4I-I68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', 'n/a', '', '12vdc/PoE  <10W', '<10W'),
('BHOS2F4II66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'DC12V/POE(Optional)', ''),
('BSOS12F28II67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / POE', '250mA(12W)@PoE, 1A (12W)'),
('BSOS2FV0I66', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / POE', 'IR OFF : 150mA(MAX) / IR ON : 400mA(MAX)'),
('BSOA-2Z4I-I67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '1 in/ 1 out Terminal block', '', '12vdc/PoE 802.3af', '12W IR ON; 4W IR OFF'),
('BSOS12F20I66', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / POE', ''),
('DSOS-1Z4I-I68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', 'n/a', '', '12vdc/PoE  ', '0.24A'),
('DHOS2F4II66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'DC12V/POE(Optional)', ''),
('BHOS2Z18OI66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', 'Optional', 'Optional', '230VAC/DC12V', ''),
('BHTS3F8OI66M', 'Ethernet RJ-45(10/100/1000Base-T)', 'Support (optional)', 'Support (optional)', '', '', 'DC12V', ''),
('PHOS2Z260I66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC24V 2A', ''),
('DSOS2Z200I67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '12VDC / 24VAC / POE', '250mA(12W)@PoE, 1A (12W)'),
('PSOA-3Z30-XI68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '24vdc . PoE 802.3bt', '50W no LED;90W LED'),
('PSOS-3Z30-XI68', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '24vdc  PoE 802.3bt', '50W no LED;90W LED'),
('PHOS2Z200I66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC85V-260V', ''),
('PSOS2Z36II67', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', '24VDC', '50W(80W with water tank operation)'),
('PHOS2Z20II66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC85V-260V', ''),
('PHOTS2Z200I66M', 'Ethernet RJ-45(10/100/1000Base-T)', '', '', '', '', 'AC85V-260V(DC 24V option)', ''),
('BHOS2F4II66', '', 'RJ45', '', '', '', 'DC12V/POE(Optional)', ''),
('BHOS-4Z4I-I66', '', 'RJ45', '', 'n/a', 'n/a', '12 or 24vdc or PoE 802.3af', '8.5W'),
('BHOA-4Z4I-I66', '', 'RJ45', '', 'n/a', 'n/a', '12 or 24vdc or PoE 802.3af', '8.5W'),
('BHOS2Z360I68', '', 'RJ45', '', '', '', '12VDC / POE', '250mA(12W)@PoE, 1A (12W) @12VDC'),
('BHOS2ZV0I68', '', 'RJ45', '', '', '', '12VDC / POE', '250mA(12W)@PoE, 1A (12W) @12VDC'),
('BHOS2Z18OI66', '', 'RJ45', '', 'Optional', 'Optional', '230VAC/DC12V', ''),
('BHOS2Z36II68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W(Max. 80W with water tank and IR LED operation)'),
('BHOTS2Z360I68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('BHTS3F8OI66', '', 'RJ45', '', 'Support (optional)', 'Support (optional)', 'DC12V', ''),
('DHOS2F4II66', '', 'RJ45', '', '', '', 'DC12V/POE(Optional)', ''),
('THOS-2F3I-I68', '', 'RJ45', '', '1 IN; 1 OUT', '', '12 VDC; PoE (802.3af, 36V to 57V)', '0.8 A, max. 10 W PoE 0.3 A to 0.2 A, max. 12.5 W'),
('PHOS2Z26OI66', '', 'RJ45', '', '', '', 'AC24V ', '2A'),
('PHOS2Z36II68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W(Max. 80W with water tank and IR LED operation)'),
('PHOS2Z20II66', '', 'RJ45', '', '', '', 'AC85V-260V', ''),
('PHOS2Z200I66', '', 'RJ45', '', '', '', 'AC85V-260V', ''),
('PHOS-2Z30O-I69', '', 'RJ45', '', '', '', '230/12/120  ', '120W max'),
('PHOTS2Z36II68', '', 'RJ45', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('PHOTS2Z200I66', '', 'RJ45', '', '', '', 'AC85V-260V(DC 24V option)', ''),
('BHTS3F8OI66', '1 Ethernet (10/100 Base-T) RJ-45 Connector', 'Support (optional)', 'Support (optional)', '', '', 'DC12V', ''),
('BSTAIF80I67', 'RJ-45 ', 'Yes', 'Yes', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'AC 24V, DC 12V, IEEE 802.3at PoE Class 4', 'PoE: Max. 14 W'),
('BHOTS2Z360I68', 'RJ45', '', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('PHOTS2Z36II68', 'RJ45', '', '', '1 alarm input, 1 relay, 1 RS485', '', '24VDC Option 110VAC/220VAC', '60W'),
('PHOTS2Z20OI66', '', '', '', '', '', 'AC85V-260V(DC 24V option)', ''),
('BSOA8FVII67', 'RJ-45 ', '', '', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'IEEE 802.3at Class 4 PoE, DC 12V, AC 24V', 'PoE : Max. 24.8 W'),
('DSOA8FVII67', 'RJ-45 ', '', '', '', '', 'IEEE 802.3af Class3 PoE; 12vdc; 24vac', 'Max. 25 W'),
('DSOA12F1II66', 'RJ-45 ', '', '', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'IEEE 802.3at PoE Class 4', 'Max. 22.5 W/9.55 W (IR on/off)'),
('BSOP-2Z4I-I67', 'RJ45', '', '', 'Terminal block', '', '12vdc/PoE 802.3at', '16W'),
('BSTAIF80I67', 'RJ-45 ', 'Yes', 'Yes', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, shock detection, system boot', '', 'AC 24V, DC 12V, IEEE 802.3at PoE Class 4', 'PoE: Max. 14 W'),
('PSOA5Z30II66', 'RJ-45 ', '', '', 'Audio detection, camera tampering detection, cybersecurity events (brute force attack event, cyberattack event, quarantine event), digital input, manual trigger, motion detection, periodical trigger, recording notification, SD card life expectancy, smart tracking advanced trigger, system boot, preset reached', '', 'AC 24V, DC 48V, IEEE 802.3 bt Class 6 PoE', 'PoE: Max. 51W/26W (IR on/off)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nvr_info`
--
ALTER TABLE `nvr_info`
  ADD PRIMARY KEY (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
