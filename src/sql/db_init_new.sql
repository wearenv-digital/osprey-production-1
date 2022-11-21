-- Adminer 4.8.1 MySQL 8.0.31 dump
SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE IF NOT EXISTS `osprey` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `osprey`;

DROP TABLE IF EXISTS `audio_video`;
CREATE TABLE `audio_video` (
  `product_code` varchar(14) NOT NULL,
  `Image Features` varchar(80) DEFAULT NULL,
  `Video Compression` varchar(33) DEFAULT NULL,
  `Bitrate` varchar(17) DEFAULT NULL,
  `Frame Rate` varchar(3) DEFAULT NULL,
  `Audio Connectivity` varchar(67) DEFAULT NULL,
  `Audio Compression` varchar(44) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `audio_video` (`product_code`, `Image Features`, `Video Compression`, `Bitrate`, `Frame Rate`, `Audio Connectivity`, `Audio Compression`) VALUES
('ASOA-18Z1I-A66',	'',	'',	'',	'',	'',	''),
('BHOA-4Z4I-I66',	'Auto Exposure, Auto White Balance, Auto and Manual Iris, Back Light Compensation',	'H264/265/MJPEG',	'',	'n/a',	'n/a',	'n/a'),
('BHOS-4Z4I-I66',	'Auto Exposure, Auto White Balance, Auto and Manual Iris, Back Light Compensation',	'H264/265/MJPEG',	'',	'n/a',	'n/a',	'n/a'),
('BSOA-2Z4I-I67',	'WDR, BLC, HLC, Defog, DIS',	'',	'',	'n/a',	'G711 Line in/Line out',	'From 8kbps to 64kbps; Duplex, bi-directional'),
('BSOP-2Z1I-I66',	'BLC, HLC, DNR, DEFOG, rotation, privacy zones',	'H265/264/JPEG',	'',	'',	'1 in; 1 out',	'G726/G711/AAC-LC'),
('BSOP-2Z4I-I67',	'BLC, HLC, 3D DNR, Defog, EIS, Distortion Correction',	'H265/265+, H264/264+',	'32kbps to 16Mbps',	'n/a',	'Mono 8 to 48kHz; 1 line in, 1 line out',	'G711/722.1/726/MP2l2/PCM/MP3'),
('BSOP-2Z8I-I66',	'BLC, HLC, DNR, DEFOG, rotation, privacy zones, text overlay',	'H264/MJPEG',	'',	'',	'2-way ',	'G726/G711/AAC-LC/Opus'),
('BSOS-1Z4I-I68',	'',	'H264/265',	'',	'n/a',	'n/a',	'n/a'),
('DSOS-1Z4I-I68',	'',	'H264/MJPEG',	'',	'n/a',	'n/a',	'n/a'),
('PHOS-2Z300-I69',	'',	'H264, MPEG4, MJPEG  ONVIF S, T, Q',	'100kbps to 12Mbps',	'n/a',	'',	''),
('PSOA-3Z30-XI68',	'',	'H264, H265, MJPEG  ONVIF S, G, Q',	'100kbps to 12Mbps',	'n/a',	'',	''),
('PSOS-3Z30-XI68',	'',	'H264, H265, MJPEG  ONVIF S, G, Q',	'100kbps to 12Mbps',	'n/a',	'',	''),
('THOS-2F3I-I68',	'Image enhancement: BLC, 3D DNR, HLC, defog, EIS',	'H265/265+, H264/264+',	'32kbps to 16Mbps',	'',	'1 audio input (line in), 1 audio output (line out), mono soundtrack',	'8 kHz/16 kHz/32 kHz/44.1 kHZ/48 kHz');

DROP TABLE IF EXISTS `automation`;
CREATE TABLE `automation` (
  `product_code` varchar(14) NOT NULL,
  `Signal to Noise Ratio` varchar(16) DEFAULT NULL,
  `Analytics` varchar(150) DEFAULT NULL,
  `DORI` varchar(10) DEFAULT NULL,
  `Pixel Pitch` varchar(3) DEFAULT NULL,
  `Alarm In-Out` varchar(26) DEFAULT NULL,
  `Motion Tracking` varchar(10) DEFAULT NULL,
  `Max Vehicle Speed` varchar(17) DEFAULT NULL,
  `Alarms` varchar(112) DEFAULT NULL,
  `Digital Image Stabilisation` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `automation` (`product_code`, `Signal to Noise Ratio`, `Analytics`, `DORI`, `Pixel Pitch`, `Alarm In-Out`, `Motion Tracking`, `Max Vehicle Speed`, `Alarms`, `Digital Image Stabilisation`) VALUES
('ASOA-18Z1I-A66',	'',	'',	'',	'',	'',	'',	'',	'',	''),
('BHOA-4Z4I-I66',	'',	'',	'',	'n/a',	'n/a',	'',	'',	'',	''),
('BHOS-4Z4I-I66',	'',	'',	'',	'n/a',	'n/a',	'',	'',	'',	''),
('BSOA-2Z4I-I67',	'Better than 55dB',	'Perimeter, virtual fences, loitering, objects left/removed, video overlay, email alarm',	'',	'n/a',	'1 in/ 1 out Terminal block',	'',	'',	'',	''),
('BSOP-2Z1I-I66',	'',	'VMD',	'',	'',	'',	'',	'',	'3 in',	''),
('BSOP-2Z4I-I67',	'',	'Line crossing,Intrusion, Region entrance/exiting, Unattended baggage, Object removal, Scene change, audio exception, defocus, counting',	'',	'n/a',	'Terminal block',	'',	'',	'2 in; 2 out',	''),
('BSOP-2Z8I-I66',	'',	'VMD, audio detection, tamper, loitering',	'',	'',	'',	'',	'81 mph (130 km/h)',	'No',	'Yes'),
('BSOS-1Z4I-I68',	'',	'',	'',	'n/a',	'n/a',	'',	'',	'',	''),
('DSOS-1Z4I-I68',	'',	'',	'',	'n/a',	'n/a',	'',	'',	'',	''),
('PHOS-2Z300-I69',	'',	'Perimeter, line crossing, loitering, objects left/removed, people, vehicles',	'',	'n/a',	'',	'',	'',	'',	'Yes'),
('PSOA-3Z30-XI68',	'',	'Perimeter, line crossing, loitering, objects left/removed',	'',	'n/a',	'',	'',	'',	'4 in; 2 out',	'Yes'),
('PSOS-3Z30-XI68',	'',	'Perimeter, line crossing, loitering, objects left/removed',	'',	'n/a',	'',	'',	'',	'4 in; 2 out',	'Yes'),
('THOS-2F3I-I68',	'',	'Line crossing detection, intrusion detection, region entrance detection, region exit detection, unattended baggage detection, object removal detection',	'',	'',	'1 IN; 1 OUT',	'',	'',	'Motion detection, video tampering, network disconnected, IP address conflict, illegal login, HDD full, HDD error',	'');

DROP TABLE IF EXISTS `cam_features`;
CREATE TABLE `cam_features` (
  `product_code` varchar(14) NOT NULL,
  `feature_1` varchar(105) DEFAULT NULL,
  `feature_2` varchar(105) DEFAULT NULL,
  `feature_3` varchar(71) DEFAULT NULL,
  `feature_4` varchar(89) DEFAULT NULL,
  `feature_5` varchar(96) DEFAULT NULL,
  `feature_6` varchar(105) DEFAULT NULL,
  `feature_7` varchar(146) DEFAULT NULL,
  `feature_8` varchar(115) DEFAULT NULL,
  `feature_9` varchar(174) DEFAULT NULL,
  `feature_10` varchar(83) DEFAULT NULL,
  `feature_11` varchar(105) DEFAULT NULL,
  `feature_12` varchar(47) DEFAULT NULL,
  `feature_13` varchar(48) DEFAULT NULL,
  `feature_14` varchar(89) DEFAULT NULL,
  `feature_15` varchar(34) DEFAULT NULL,
  `feature_16` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `cam_features` (`product_code`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `feature_6`, `feature_7`, `feature_8`, `feature_9`, `feature_10`, `feature_11`, `feature_12`, `feature_13`, `feature_14`, `feature_15`, `feature_16`) VALUES
('???',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	''),
('ASOA-18Z1I-A66',	'High performance ANPR camera with optical zoom lens',	'Perfect plate illumination under all lighting conditions',	'Optical filtering and fully adjustable pulsed infrared LED illumination',	'Ultra-fast 1/10,000th second shutter speed freezes plates at any vehicle speed',	'Instant setup with motorised adjustment of zoom and focus',	'Dual version includes a colour overview camera',	'Vandal-resistant cabinet with full height lockable rear door',	'Rotating cabinet with base clamp for easy pan adjustment',	'',	'',	'',	'',	'',	'',	'',	''),
('BHOA-4Z4I-I66',	'Stainless steel housing',	'Weatherproof IP66 for harsh environments',	'High resolution 4MP',	'3x motorised zoom lens',	'Integrated IR illumination - 50m range',	'12vdc, 24vdc or Poe',	'Explosionproof ',	'Certified for use in hazardous areas',	'Pole and corner mounting options',	'',	'',	'',	'',	'',	'',	''),
('BHOS-4Z4I-I66',	'Stainless steel housing',	'Weatherproof IP66 for harsh environments',	'High resolution 4MP',	'3x motorised zoom lens',	'Integrated IR illumination - 50m range',	'12vdc, 24vdc or Poe',	'Explosionproof ',	'Certified for use in hazardous areas',	'Pole and corner mounting options',	'',	'',	'',	'',	'',	'',	''),
('BSOA-2Z4I-I67',	'Tough, vandal-resistant housing, IK10 & IP67',	'Ruggedised Marine grade',	'PoE (802.3af) or 12VDC',	'2MP with Super Low-Light Performance',	'2.7~12mm Motorised Zoom Lens with Smart Auto Focus',	'Wiper with washer option',	'Built-in on-camera SD Card recording (up to 256GB) for local back-up',	'Adaptive IR Integral LEDs with up to 60m range',	'Intelligent Video Analytics',	'Audio In/ Out',	'Fully cable-managed solution, keeps cables hidden and secure',	'Wall-bracket, pendant or pedestal mount options',	'Washer option',	'Extendable sun/rain visor option',	'Manufactured in the United Kingdom',	'Custom colours available'),
('BSOP-2Z1I-I66',	'2MP (1,920 x 1,080) Fixed Box Network Camera',	'Intelligent Auto (iA) feature provides increased discernibility even in environments with poor visibility',	'Extreme Super Dynamic technologies deliver 144 dB wide dynamic range',	'Colour night vision (0.001 to 0.015 lx)',	'H265 compression and Smart coding technology gives high image quality streaming at low bit rates',	'Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries',	'The advanced on-board ANPR engine enables this high performance camera to give real-time recognition of vehicle registration plates and meta-data.',	'The all-in-one system decreases network bandwidth and hardware costs whilst increasing reliability and resilience. ',	'The stand-alone camera gives Black/White list functionality, direction of travel, country, plate type, time, date, GPS position, vehicle make, model, colour and vehicle type ',	'classification.',	'Interfaces to vehicle barriers ',	'',	'',	'',	'',	''),
('BSOP-2Z4I-I67',	'Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries',	'Recognises vehicle type, brand and colour',	' Supports blacklist and whitelist configuration ',	'Collaborates with lanes to control the entry & exit of vehicles and trigger gate opening ',	'On-board storage up to 256GB ',	'Interfaces to vehicle barriers and osprey\'s LED message signs',	'Wiegand output to osprey\'s access control systems',	'',	'',	'',	'',	'',	'',	'',	'',	''),
('BSOP-2Z8I-I66',	'Sharp license plate images day and night',	'Handles speeds of up to 130 km/h (81 mph)',	'Capture range of up to 100 m ',	'Robust design for poor weather conditions',	'2MP resolution',	'IR range up to 50m',	'8x optical zoom (motorised remote control)',	'Angle of view 16 to 2.3 degrees',	'',	'',	'Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries',	'Recognises vehicle type, brand and colour',	' Supports blacklist and whitelist configuration ',	'Collaborates with lanes to control the entry & exit of vehicles and trigger gate opening ',	'On-board storage up to 256GB ',	'Interfaces to vehicle barriers'),
('BSOS-1Z4I-I68',	'4x motorised zoom lens',	'Day/Night switching for almost any lighting condition',	'H264, MJPEG',	'PoE',	'IP68 Stainless steel enclosure for harsh environments',	'IR illumination - range up to 40m',	'',	'',	'',	'',	'',	'',	'',	'',	'',	''),
('DSOS-1Z4I-I68',	'4x motorized zoom lens',	'	Day/Night switching for almost any lighting condition',	'	H264,H265',	'	PoE',	'	IP68 Stainless steel enclosure for harsh environments',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	''),
('PHOS-2Z30O-I69',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	''),
('PSOA-3Z30-XI68',	'UK design and manufacture',	'UK service and support',	'Ultra-tough rugged PTZ camera',	'IP68',	'Smart IR, White Light and Dual light options',	'Rugged mounting bracket options',	'Custom colour options',	'1/2.8\" CMOS 3MP low-light sensor with 30x optical zoom.',	'Silicon, long-life wiper and washer options',	'ONVIF Profiles S, G and Q compliant',	'Brushless stepper motors for resilience',	'Intelligent, auto-PTZ tracking',	'SD Card ‘edge’ recording option',	'',	'',	''),
('PSOS-3Z30-XI68',	'UK design and manufacture',	'UK service and support',	'Ultra-tough, Electropolished 316 Stainless Steel rugged PTZ camera',	'IP68',	'PoE 90W (802.3bt) ',	'Adaptive White Light and IR (zoom-linked) operation',	'Intelligent, Auto- PTZ Tracking',	'Rugged Mounting Bracket Options',	'Brushless Stepper Motors for Resilience and durability',	'ONVIF Compliant',	'SD Card recording option, up to 256GB',	'',	'',	'',	'',	''),
('THOS-2F3I-I68',	'Explosionproof IP68 rated',	'1/2.8\" Progressive Scan CMOS',	'2 mm, 2.8 mm, 4 mm, 6 mm lens options',	'1920 × 1080 2MP resolution',	'120dB WDR',	'Stainless steel 316L',	'H.265, H.265+, H.264+, H.264',	'Image enhancement: BLC, 3D DNR, HLC, defog, EIS',	'Behaviour analyses, exception detections and face detection',	'II 2 G D Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db IP68 Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db',	'',	'',	'',	'',	'',	'');

DROP TABLE IF EXISTS `cam_info`;
CREATE TABLE `cam_info` (
  `product_code` varchar(14) NOT NULL,
  `product_name` varchar(59) DEFAULT NULL,
  `description` varchar(1359) DEFAULT NULL,
  `features` varchar(959) DEFAULT NULL,
  `image_link` varchar(255) NOT NULL,
  `technical_image` varchar(255) NOT NULL,
  `technical_image_2` varchar(255) NOT NULL,
  `technical_image_3` varchar(255) NOT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `cam_info` (`product_code`, `product_name`, `description`, `features`, `image_link`, `technical_image`, `technical_image_2`, `technical_image_3`) VALUES
('ASOA-18Z1I-A66',	'Bollard ANPR camera',	'osprey Security\'s bollard ANPR cameras are robust units design to provide maximum camera protection at optimal camera height - ideal for automatic entry systems.  \nThey are available in standard or dual (with wide angle overview camera) versions.  The unit comprises our standard ANPR camera mounted in a traffic bollard.\nTo grant access for the correct vehicle, the anpr camera must view the first vehicle in the queue. This can be very difficult with a pole-mounted \nThe full height rear access door (with key lock) simplifies both installation and maintenance.\nThe bollard camera is vandal resistant and available in a variety of colours.  \nThe camera includes:\nAdjustable sunhood\nBase mounting plates\nKeys\nCamera power supply (230v ac to 24V ac 1A)',	'•High performance ANPR camera with optical zoom lens\n•Perfect plate illumination under all lighting conditions\n•Optical filtering and fully adjustable pulsed infrared LED illumination\n•Ultra-fast 1/10,000th second shutter speed freezes plates at any vehicle speed\n•Instant setup with motorised adjustment of zoom and focus\n•Dual version includes a colour overview camera\n•Vandal-resistant cabinet with full height lockable rear door\n•Rotating cabinet with base clamp for easy pan adjustment',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/ASOA-18Z1I-A66+ANPR+bollard+camera.jpg',	'',	'',	''),
('BHOA-4Z4I-I66',	'Explosionproof bullet camera - aluminium  construction',	'The BHOA-4Z4I-I66 Compact camera provides 4x motor-driven optical zoom and delivers 4 MP HD video. The zoom functions can be controlled automatically and precisely \nfrom anywhere. In addition, the camera has a wide dynamic range to improve images in challenging lighting conditions.\nThe camera is housed in a heavy-duty, cast-aluminum, weatherproof enclosure suitable for hostile environments and is certified for use in hazardous areas. The camera is \navailable in 316L stainless steel or aluminium.\nIt is ready for mounting, requiring only power and an IP connection. A wall mount arm is provided. Other mounting options are available.\nThe can be used in Marine and Offshore environments. For example, passenger ships, open bridges, closed spaces, technical rooms - subject to heat generated by \nequipment, areas where there is a risk of explosion, and visual support for docking manoeuvres.',	'•Stainless steel housing\n•Weatherproof IP66 for harsh environments\n•High resolution 4MP\n•3x motorised zoom lens\n•Integrated IR illumination - 50m range\n•12vdc, 24vdc or Poe\n•Explosionproof \n•Certified for use in hazardous areas\n•Pole and corner mounting options',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/BHOA-4Z4I-I66++AL+camera.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BHOA-4Z4I-I66+dwg.jpg',	'',	''),
('BHOS-4Z4I-I66',	'Explosionproof bullet camera - stainless steel construction',	'The BHOS-4Z4I-I66 Compact camera provides 4x motor-driven optical zoom and delivers 4 MP HD video. The zoom functions can be controlled automatically and precisely from anywhere. In addition, the camera has a wide dynamic range to improve images in challenging lighting conditions.\nThe camera is housed in a heavy-duty, stainless steel, weatherproof enclosure suitable for hostile environments and is certified for use in hazardous areas. The camera is also available in aluminium.\nIt is ready for mounting, requiring only power and an IP connection. A wall mount arm is provided. Other mounting options are available.\nThe can be used in Marine and Offshore environments. For example, passenger ships, open bridges, closed spaces, technical rooms - subject to heat generated by equipment, areas where there is a risk of explosion, and visual support for docking manoeuvres.',	'•Stainless steel housing\n•Weatherproof IP66 for harsh environments\n•High resolution 4MP\n•3x motorised zoom lens\n•Integrated IR illumination - 50m range\n•12vdc, 24vdc or Poe\n•Explosionproof \n•Certified for use in hazardous areas\n•Pole and corner mounting options',	'https://osprey-security.https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/BHOS-4Z4I-I66+SS+camera.jpg.eu-west-2.amazonaws.com/products/cameras/images/BHOA-4Z4I-I66++AL+camera.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BHOS-4Z4I-I66+dwg.jpg',	'',	''),
('BSOA-2Z4I-I67',	'Marine Fixed Bullet Marine Paint Finish\nCamera',	'The BSOA-2Z4I-I67 is a compact 2MP weather proof bullet camera manufactured in the UK. The body of the camera is made from solid die-cast aluminium which is pre-treated and powder coated with a ruggedised marine paint. This ensures corrosion free operation in aggressive environments such as those in the chemical industry, offshore and marine. The camera is IP67 dust and water proof, and IK10 vandal resistant which make it suitable for extreme conditions. It is suitable for ships, oil rigs, seaports and terminals, and coastal locations.',	'•Tough, vandal-resistant housing, IK10 & IP67\n•Ruggedised Marine grade\n•PoE (802.3af) or 12VDC\n•2MP with Super Low-Light Performance\n•2.7~12mm Motorised Zoom Lens with Smart Auto Focus\n•Wiper with washer option\n•Built-in on-camera SD Card recording (up to 256GB) for local back-up\n•Adaptive IR Integral LEDs with up to 60m range\n•Intelligent Video Analytics\n•Audio In/ Out\n•Fully cable-managed solution, keeps cables hidden and secure\n•Wall-bracket, pendant or pedestal mount options\n•Washer option\n•Extendable sun/rain visor option\n•Manufactured in the United Kingdom\n•Custom colours available',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/BS0S-1Z4I-I68.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BSOA-2Z4I-I67+dwg.jpg',	'',	''),
('BSOP-2Z1I-I66',	'Self-contained 1080P ANPR camera system',	'osprey Security\'s ANPR software is embedded on this camera giving it Artificial Intelligence (AI).  This creates a \ncomplete stand-alone ANPR system making it suitable for access control, speed monitoring and vehicle counting.\nThe advanced on-board ANPR engine enables this high performance camera to give real-time recognition of vehicle registration plates and meta-data.\nThe all-in-one system decreases network bandwidth and hardware costs whilst increasing reliability and resilience. \nThe stand-alone camera gives Black/White list functionality, direction of travel, country, plate type, time, date, GPS position, vehicle make, model, colour and vehicle type \nclassification.',	'•2MP (1,920 x 1,080) Fixed Box Network Camera\n•Intelligent Auto (iA) feature provides increased discernibility even in environments with poor visibility\n•Extreme Super Dynamic technologies deliver 144 dB wide dynamic range\n•Colour night vision (0.001 to 0.015 lx)\n•H265 compression and Smart coding technology gives high image quality streaming at low bit rates\n•Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries\n•The advanced on-board ANPR engine enables this high performance camera to give real-time recognition of vehicle registration plates and meta-data.\n•The all-in-one system decreases network bandwidth and hardware costs whilst increasing reliability and resilience. \n•The stand-alone camera gives Black/White list functionality, direction of travel, country, plate type, time, date, GPS position, vehicle make, model, colour and vehicle type \n•classification.\n•Interfaces to vehicle barriers ',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/BSOA-2Z4I-I67.png',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BSOP-2Z1I-I66+Integrated+Panasonic+ANPR+camera+dwg.jpg',	'',	''),
('BSOP-2Z4I-I67',	'Standard ANPR camera',	'The BSOP-2Z4I-I67 camera provides HD video for high-accuracy ANPR for parking, access control and security applications. The 2MP sensor provides detailed images of licence plates. The high resolution enables capture of the most challenging plates. The inbuilt 850nm illuminator allows registration plate reading up to 30m distance.',	'•Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries\n•Recognises vehicle type, brand and colour\n• Supports blacklist and whitelist configuration \n•Collaborates with lanes to control the entry & exit of vehicles and trigger gate opening \n•On-board storage up to 256GB \n•Interfaces to vehicle barriers and osprey\'s LED message signs\n•Wiegand output to osprey\'s access control systems',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/BSOP-2Z1I-I66+Integrated+Panasonic+ANPR+camera.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BSOP-2Z4I-I67+Standard+ANPR+Camera+dwg.jpg',	'',	''),
('BSOP-2Z8I-I66',	'Self-contained 2MP ANPR camera system',	'osprey Security\'s ANPR software is embedded on this camera giving it Artificial Intelligence (AI).  This creates a \ncomplete stand-alone ANPR system making it suitable for access control, speed monitoring and vehicle counting.\nThe advanced on-board ANPR engine enables this high performance camera to give real-time recognition of vehicle registration plates and meta-data.\nThe all-in-one system decreases network bandwidth and hardware costs whilst increasing reliability and resilience. \nThe stand-alone camera gives Black/White list functionality, direction of travel, country, plate type, time, date, GPS position, vehicle make, model, colour and vehicle type \nclassification.',	'•Sharp license plate images day and night\n•Handles speeds of up to 130 km/h (81 mph)\n•Capture range of up to 100 m \n•Robust design for poor weather conditions\n•2MP resolution\n•IR range up to 50m\n•8x optical zoom (motorised remote control)\n•Angle of view 16 to 2.3 degrees\n•Vehicle & license plate recognition algorithm can recognise standard license plates of multiple countries\n•Recognises vehicle type, brand and colour\n• Supports blacklist and whitelist configuration \n•Collaborates with lanes to control the entry & exit of vehicles and trigger gate opening \n•On-board storage up to 256GB \n•Interfaces to vehicle barriers',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/BSOP-2Z4I-I67+Standard+ANPR+Camera.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BSOP-2Z4I-I67+Standard+ANPR+Camera+dwg.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BSOP-2Z8I-I66+ANPR+camera+dwg2.jpg',	''),
('BSOS-1Z4I-I68',	'Marine Fixed Bullet Stainless Steel Camera ',	'The BSOS-1Z4I-I68 is a high-quality, 720p HD resolution colour video camera with a 4x motorized zoom lens and auto-iris. It includes integrated IR LEDs for operation at 0 lux.\nThis high-resolution camera supports multiple streams and resolutions in MJPEG or H.264 codec. The zoom lens is remotely adjustable from 2.8 to 12.0 mm, to provide a horizontal field-of-view of up to 100 degrees.\nThe camera is housed in a stainless-steel dome rated IP68. It comes ready for mounting and requires only a PoE network connection.',	'•4x motorised zoom lens\n•Day/Night switching for almost any lighting condition\n•H264, MJPEG\n•PoE\n•IP68 Stainless steel enclosure for harsh environments\n•IR illumination - range up to 40m',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/BS0S-1Z4I-I68.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/BS0S-1Z4I-I68+dwg1.jpg',	'',	''),
('DSOS-1Z4I-I68',	'Marine Fixed Dome Stainless Steel Camera',	'The DSOS-1Z4I-I68 is a high-quality, 720p HD resolution colour video camera with a 4x motorized zoom lens and auto-iris. It includes integrated IR LEDs for operation at 0 lux.\nThis high-resolution camera supports multiple streams and resolutions in MJPEG or H.264 codec. The zoom lens is remotely adjustable from 2.7 to 12.0 mm, to provide a horizontal field-of-view of up to 100 degrees.\nThe camera is housed in a stainless-steel dome rated IP68. It comes ready for mounting and requires only a powered Ethernet network connection.',	'•4x motorized zoom lens\n•	Day/Night switching for almost any lighting condition\n•	H264,H265\n•	PoE\n•	IP68 Stainless steel enclosure for harsh environments',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/DSOS-1Z4I-I68+Marine+fixed+SS+camera.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/DSOS-1Z4I-I68+dwg1.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/DSOS-1Z4I-I68+dwg2.jpg',	''),
('PHOS-2Z30O-I69',	'Explosionproof PTZ Camera - Stainless Steel',	'The marine PHOS-2Z30O-I69 camera is an explosion-proof 2MP PTZ device designed for CCTV surveillance and process monitoring in the oil & gas, maritime or industrial \nsectors where fire or explosion hazards may exist due to the presence of flammable gases or vapours, flammable liquids or combustible dusts.  It offers the highest level of \ncorrosion resistance - thanks to its solid AISI 316L stainless-steel construction and its microshot and electropolished surfaces. The IP66/IP67/IP68/IP69, NEMA Type 4X and \nType 6P certifications guarantee complete protection against water and dust. It can operate in winds up to 210 Km/h.\nThe cameras are explosion-proof certified with an ambient temperature of up to +80°C. They have international certifications for use in Zone 1 and 2, Group IIC for gas, \nZone 21 and 22, Group IIIC for dust. Thanks to the double cable entry, both 120Vac and 230Vac voltage supply versions are compliant with UL/CSA standards. The products \nare Lloyd\'s Register Marine Type Approval System Test Specification Number 1 certified and can be used in Marine and Offshore environments with category types ENV1, \nENV2, ENV3 and ENV5 (for example, passenger ships, open bridges, closed spaces, technical rooms - subject to heat generated by equipment, areas where there is a risk of \nexplosion, and visual support for docking manoeuvres).',	'',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/PHOS-2Z300-I69+camera.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/PHOS-2Z300-I69+dwg.jpg',	'',	''),
('PSOA-3Z30-XI68',	'Marine PTZ Camera - marine paint finish',	'Marine Paint finish designed to give enhanced corrosion resistance of aluminum and mild steel. The gloss finish is an ultra-durable coating conforming to the requirements of EN 12206 and EN 13438 (High \nDurability systems). The camera is available in Marine White, Light Grey and Black. The combination of ultra-durable paint and its Dome Cover, which acts as a sunshield, helps to reduce \nextremes of temperature in direct sunlight. Conversely, the dome cover also provides a level of insulation in cold environments and additional protection to the dome mechanism in marine \napplications. ',	'•UK design and manufacture\n•UK service and support\n•Ultra-tough rugged PTZ camera\n•IP68\n•Smart IR, White Light and Dual light options\n•Rugged mounting bracket options\n•Custom colour options\n•1/2.8\" CMOS 3MP low-light sensor with 30x optical zoom.\n•Silicon, long-life wiper and washer options\n•ONVIF Profiles S, G and Q compliant\n•Brushless stepper motors for resilience\n•Intelligent, auto-PTZ tracking\n•SD Card ‘edge’ recording option',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/PSOA-3Z30-XI68+camera.png',	'',	'',	''),
('PSOS-3Z30-XI68',	'Marine PTZ Camera - stainless steel  construction',	'All the pan, tilt and wiper mechanisms and shafts are built from marine grade stainless steel, increasing corrosion resistance, toughness and durability. They are suitable \nfor ships, oil rigs, seaports and terminals, and coastal locations.',	'•UK design and manufacture\n•UK service and support\n•Ultra-tough, Electropolished 316 Stainless Steel rugged PTZ camera\n•IP68\n•PoE 90W (802.3bt) \n•Adaptive White Light and IR (zoom-linked) operation\n•Intelligent, Auto- PTZ Tracking\n•Rugged Mounting Bracket Options\n•Brushless Stepper Motors for Resilience and durability\n•ONVIF Compliant\n•SD Card recording option, up to 256GB',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/PSOS-3Z30-XI68+camera.png',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/PSOS-3Z30-XI68+dwg.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/PSOS-3Z30-XI68+dwg1.png',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/PSOS-3Z30-XI68+dwg2.png'),
('THOS-2F3I-I68',	'Explosionproof dome camera',	'The THOS-2F3I-I68 compact camera delivers 2MP HD video. The camera has a wide dynamic range to improve images in challenging lighting conditions.  The camera is housed in a heavy-duty, stainless steel IP68 weatherproof enclosure suitable for hostile environments and is certified for use in hazardous areas. The camera is manufactured in 316L stainless steel.  It is ready for mounting, requiring only power and an IP connection. Choice of wall and pendant mount options.  It can be used in Marine and Offshore environments. For example, passenger ships, open bridges, closed spaces, technical rooms - subject to heat generated by equipment, areas where there is a risk of explosion.  Rugged 316L stainless steel dome camera suited for harsh environments.  IP68  rated.  2MP resolution with a choice of lenses giving viewing angle from 127 to 53 degrees. Composite video and IP outputs.  ',	'•Explosionproof IP68 rated\n•1/2.8\" Progressive Scan CMOS\n•2 mm, 2.8 mm, 4 mm, 6 mm lens options\n•1920 × 1080 2MP resolution\n•120dB WDR\n•Stainless steel 316L\n•H.265, H.265+, H.264+, H.264\n•Image enhancement: BLC, 3D DNR, HLC, defog, EIS\n•Behaviour analyses, exception detections and face detection\n•II 2 G D Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db IP68 Ex db IIC T6 Gb/Ex tb IIIC T80℃ Db',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/images/THOS-2F3I-I68+Camera.jpg',	'https://osprey-security.s3.eu-west-2.amazonaws.com/products/cameras/technicals/THOS-2F3I-I68+dwg.jpg',	'',	'');

DROP TABLE IF EXISTS `cam_specs`;
CREATE TABLE `cam_specs` (
  `product_code` varchar(14) NOT NULL,
  `Resolution` varchar(37) DEFAULT NULL,
  `Lens` varchar(65) DEFAULT NULL,
  `Field of View` varchar(3) DEFAULT NULL,
  `Focal Length` varchar(3) DEFAULT NULL,
  `Illumination Range` varchar(48) DEFAULT NULL,
  `Sensitivity` varchar(47) DEFAULT NULL,
  `On-board Storage` varchar(68) DEFAULT NULL,
  `Wide Dynamic Range` varchar(10) DEFAULT NULL,
  `Digital Image Stabilisation` varchar(3) DEFAULT NULL,
  `DORI` varchar(10) DEFAULT NULL,
  `Pan / Tilt Range` varchar(10) DEFAULT NULL,
  `Pan / Tilt` varchar(10) DEFAULT NULL,
  `Pre-Sets` varchar(10) DEFAULT NULL,
  `Pre-Set Tours` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `cam_specs` (`product_code`, `Resolution`, `Lens`, `Field of View`, `Focal Length`, `Illumination Range`, `Sensitivity`, `On-board Storage`, `Wide Dynamic Range`, `Digital Image Stabilisation`, `DORI`, `Pan / Tilt Range`, `Pan / Tilt`, `Pre-Sets`, `Pre-Set Tours`) VALUES
('ASOA-18Z1I-A66',	'650TVL',	'x18',	'',	'',	'40m',	'0lx IR',	'',	'',	'',	'',	'',	'',	'',	''),
('BHOA-4Z4I-I66',	'4MP 1/3\" CMOS',	'2.8-12mm x4  30.9-102.8 degrees',	'n/a',	'n/a',	'50m',	'0lx IR',	'',	'120dB',	'',	'',	'',	'',	'',	''),
('BHOS-4Z4I-I66',	'4MP 1/3\" CMOS',	'2.8-12mm x4  30.9-102.8 degrees',	'n/a',	'n/a',	'50m',	'0lx IR',	'',	'120dB',	'',	'',	'',	'',	'',	''),
('BSOA-2Z4I-I67',	'2MP  1/ 2.8” CMOS  1920 x 1080 pixels',	'2.7-12mm  HFOV  105 tp 326 degrees.  Motorised.  Smart auto-focus',	'n/a',	'n/a',	'Dynamic with lens zoom angle. Up to 60m',	'Colour 0.001lx; Mono 0.001lx @ F1.2',	'Built-in on-camera SD Card recording (up to 256GB) for local back-up',	'120 dB HDR',	'',	'',	'',	'',	'',	''),
('BSOP-2Z1I-I66',	'1080P 1/3 MOS',	'9-21mm  HFOV 14 - 34 degrees',	'',	'',	'40m',	'.001lx col; .00005lx mono; 0lx IR',	'SDHC/SDXC card up to 256GB',	'144dB',	'',	'',	'',	'',	'',	''),
('BSOP-2Z4I-I67',	'2MP  1/1.8\" CMOS',	'8-32mm  HFOV 40.3 - 14.4 degrees',	'n/a',	'n/a',	'100m (850nm)',	'.001lx col; .0003lx mono; 0lx IR',	'MicroSD/SDHC/SDXC card up to 256GB',	'140dB',	'',	'',	'',	'',	'',	''),
('BSOP-2Z8I-I66',	'2MP  1/1.8\" CMOS',	'18-137mm HFOV 16 - 2.3 degrees',	'',	'',	'50m - 850nm (100m with optional LED illuminator)',	'.016lx col; .03lx mono; 0lx IR',	'No',	'',	'Yes',	'',	'',	'',	'',	''),
('BSOS-1Z4I-I68',	'1MP 1/2.8\" CMOS',	'2.8-12mm x4  30-100 degrees',	'n/a',	'n/a',	'40m',	'0.001lx @F1.2 colour; 0lx IR',	'',	'n/a',	'',	'',	'',	'',	'',	''),
('DSOS-1Z4I-I68',	'1MP 1/3\" CMOS',	'2.7-12mm x4  330-100 degrees',	'n/a',	'n/a',	'40m',	'0.0001lx @F1.2 colour; 0lx IR',	'',	'n/a',	'',	'',	'',	'',	'',	''),
('PHOS-2Z300-I69',	'2.38MP  1/ 2.8” CMOS',	'Motorised x30 zoom 4.3-129mm  HFOV  63.7-2.3 degrees',	'n/a',	'n/a',	'n/a',	'Colour 0.006lx @ F1.6; Mono 0.0006lx @ F1.6',	'',	'',	'Yes',	'',	'',	'',	'',	''),
('PSOA-3Z30-XI68',	'3MP  1/ 2.8” CMOS',	'Motorised x30 zoom 4.5-135mm  HFOV  59.9-2.3 degrees',	'n/a',	'n/a',	'IR – 300m; White light – 250m',	'Colour 0.01lx @ F1.2; Mono 0.0001lx @ F1.2',	'',	'',	'Yes',	'',	'',	'',	'',	''),
('PSOS-3Z30-XI68',	'3MP  1/ 2.8” CMOS',	'Motorised x30 zoom 4.5-135mm  HFOV  59.9-2.3 degrees',	'n/a',	'n/a',	'IR – 300m; White light – 250m',	'Colour 0.01lx @ F1.2; Mono 0.0001lx @ F1.2',	'',	'',	'Yes',	'',	'',	'',	'',	''),
('THOS-2F3I-I68',	'2MP  2.8” CMOS',	'2, 2.8, 4, 6 mm  HFOV  126, 108, 86 or 53 degrees',	'',	'',	'n/a',	'Colour 0.003lx @ F1.2; Mono 0.001lx @ F1.2; 0lx',	'MicroSD/SDHC/SDXC card up to 128GB',	'120dB',	'',	'',	'',	'',	'',	'');

DROP TABLE IF EXISTS `electrical_physical`;
CREATE TABLE `electrical_physical` (
  `product_code` varchar(14) NOT NULL,
  `Ethernet` varchar(4) DEFAULT NULL,
  `Alarm In/Out` varchar(26) DEFAULT NULL,
  `Audio Connectivity` varchar(10) DEFAULT NULL,
  `Power Connection` varchar(27) DEFAULT NULL,
  `Power Specs` varchar(79) DEFAULT NULL,
  `Thermal` varchar(1) DEFAULT NULL,
  `Physical` varchar(1) DEFAULT NULL,
  `Material` varchar(57) DEFAULT NULL,
  `Operating Temp (Celcius)` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Relative Humidity` varchar(29) DEFAULT NULL,
  `Certification/s` varchar(1) DEFAULT NULL,
  `Impact Protection` varchar(4) DEFAULT NULL,
  `Salt Fog / Spray Resistance` varchar(27) DEFAULT NULL,
  `Corrosion` varchar(34) DEFAULT NULL,
  `Vibration Testing` varchar(25) DEFAULT NULL,
  `Ingress Protection` varchar(14) DEFAULT NULL,
  `EU / US / EMC` varchar(485) DEFAULT NULL,
  `Marine` varchar(51) DEFAULT NULL,
  `Hazardous Area` varchar(398) DEFAULT NULL,
  `Weight` varchar(37) DEFAULT NULL,
  `Dimensions` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `electrical_physical` (`product_code`, `Ethernet`, `Alarm In/Out`, `Audio Connectivity`, `Power Connection`, `Power Specs`, `Thermal`, `Physical`, `Material`, `Operating Temp (Celcius)`, `Relative Humidity`, `Certification/s`, `Impact Protection`, `Salt Fog / Spray Resistance`, `Corrosion`, `Vibration Testing`, `Ingress Protection`, `EU / US / EMC`, `Marine`, `Hazardous Area`, `Weight`, `Dimensions`) VALUES
('ASOA-18Z1I-A66',	'',	'',	'',	'240 to 24vac @ 1A',	'12W',	'',	'',	'Polycarbonate with stainless steel backing/mounting plate',	'-20 to +50 deg C ',	'',	'',	'',	'',	'',	'',	'IP66',	'',	'',	'',	'1.8kg (camera)',	'228 x 347 x 122 Bollard : 932 high'),
('BHOA-4Z4I-I66',	'RJ45',	'n/a',	'n/a',	'12 or 24vdc or PoE 802.3af',	'8.5W',	'*',	'*',	'Aluminuim',	'-30 to +60 deg C ',	'',	'*',	'',	'',	'',	'',	'IP66',	'Conforms to UL STD 61010-1 + UL1203\nCertified to CSA STD CSA22.2 NO.30 + CAN/CSA C22.2 No. 25\nEN 60079-0:2012+A11:203, EN 60079-1:2007, EN 60079-31:2014.\nATEX 2014/34/EU',	'',	'Class I, Division 1, Groups B-D,\nClass II, Division 1, Groups E-G,\nII 2 GD Ex db IIC T6 Gb,\nII 2 GD Ex tb IIC T80°C Db IP66',	'3.67kg',	'140H x 140W x 197 D'),
('BHOS-4Z4I-I66',	'RJ46',	'n/a',	'n/a',	'12 or 24vdc or PoE 802.3af',	'8.5W',	'*',	'',	'Aluminuim',	'-30 to +60 deg C ',	'',	'*',	'',	'',	'',	'',	'IP66',	'Conforms to UL STD 61010-1 + UL1203\nCertified to CSA STD CSA22.2 NO.30 + CAN/CSA C22.2 No. 25\nEN 60079-0:2012+A11:203, EN 60079-1:2007, EN 60079-31:2014.\nATEX 2014/34/EU',	'',	'Class I, Division 1, Groups B-D,\nClass II, Division 1, Groups E-G,\nII 2 GD Ex db IIC T6 Gb,\nII 2 GD Ex tb IIC T80°C Db IP66',	'4.62kg',	'140H x 140W x 203D'),
('BSOA-2Z4I-I67',	'RJ47',	'1 in/ 1 out Terminal block',	'3.5mm jack',	'Terminal block',	'12vdc (12W IR ON; 4W IR OFF) PoE 802.3af',	'*',	'',	'Aluminuim',	'-40 to +60 deg C ',	'< 90%',	'',	'IK10',	'',	'',	'',	'IP67',	'CE/FCC',	'',	'',	'5kg including bracket (approx..)',	''),
('BSOP-2Z1I-I66',	'RJ45',	'',	'3.5mm jack',	'12vdc/PoE 802.3at',	'9W',	'',	'',	'Aluminuim',	'-40 to +50 deg C ',	'10 to 100% (non-condensing)',	'',	'IK10',	'',	'',	'',	'IP66',	'',	'',	'',	'1.7KG',	'95 x 99 x 337'),
('BSOP-2Z4I-I67',	'RJ45',	'Terminal block',	'3.5mm jack',	'12vdc/PoE 802.3at',	'16W',	'*',	'',	'Aluminuim',	'-30 to +60 deg C ',	'95% or less (non-condensing)',	'',	'IK10',	'',	'NEMA 250-2018',	'',	'IP67',	'FCC (47 CFR Part 15, Subpart B); CE-EMC (EN 55032: 2015, EN 61000-3-2: 2014, EN \n61000-3-3: 2013, EN 50130-4: 2011 +A1: 2014); RCM (AS/NZS CISPR 32: 2015); IC \n(ICES-003: Issue 6, 2016); KC (KN 32: 2015, KN 35: 2015) ',	'',	'',	'1.92KG',	'144dia x 347'),
('BSOP-2Z8I-I66',	'RJ45',	'',	'3.5mm jack',	'2-28vdc/PoE 802.3at;802.3af',	'13W',	'',	'',	'Aluminuim',	'-40 to +60 deg C ',	'10 to 95% RH (non-condensing)',	'',	'IK10',	'',	'',	'',	'IP66',	'EMC\nEN 55032 Class A, EN 50121-4, IEC 62236-4, EN 55024,\nEN 61000-6-1, EN 61000-6-2, FCC Part 15 Subpart B Class A,\nICES-003 Class A, VCCI Class A, RCM AS/NZS CISPR 32 Class A,\nKCC KN32 Class A, KN35, EAC\nSafety\nIEC/EN/UL 62368-1, IEC/EN/UL 60950-22, EN/IEC 62471,\nIS 13252\nEnvironment\nEN 50581, IEC 60068-2-1, IEC 60068-2-2, IEC 60068-2-6,\nIEC 60068-2-14, IEC 60068-2-27, IEC 60068-2-78,\nIEC/EN 60529 IP66, IEC/EN 62262 IK10 body, IK08 glass,\nNEMA 250 Type 4X, NEMA TS 2 (2.2.7-2.2.9)',	'',	'',	'2.4KG',	'147dia x 439'),
('BSOS-1Z4I-I68',	'RJ45',	'n/a',	'n/a',	'',	'12vdc/PoE  <10W',	'*',	'*',	'Aluminuim',	'-40 to +60 deg C ',	'',	'*',	'',	'',	'',	'',	'IP68',	'',	'',	'',	'1.8kg',	'85 x 127'),
('DSOS-1Z4I-I68',	'RJ54',	'n/a',	'n/a',	'',	'12vdc/PoE  0.24A',	'*',	'*',	'Aluminuim',	'-10 to +50 deg C ',	'',	'*',	'',	'',	'',	'',	'IP68',	'',	'',	'',	'1.3kg',	'118W x 88H x 80dia'),
('PHOS-2Z300-I69',	'RJ45',	'',	'',	'',	'230/12/120  120W max',	'*',	'',	'Aluminuim',	'-40 to +80 deg C ',	'230/12/120  120W max',	'',	'IK10',	'EN60068-2-52',	'n/a',	'TEN 50130-5; EN 60068-2-6',	'IP66/67/68/69 ',	'EN 60945',	'Lloyd’s register Marine Type Approval Certification',	'Certified explosion-proof for use in Zones 1 and 2, Group.  IIC (Gas), Zones 21 and 22, Group IIIC (Dust)',	'26.5kg ',	''),
('PSOA-3Z30-XI68',	'RJ45',	'',	'',	'',	'24vdc (50W no LED;90W LED). PoE 802.3bt',	'*',	'',	'Aluminuim',	'-40 to +70 deg C (white or grey paint finish)',	'',	'',	'IK10',	'ASTM B117 1000hr salt-spray',	'TEN 50556:2011; EN 60068-2-64-2008',	'',	'IP68 ',	'EN 55032:2015  EN 55035:2017 Class A',	'',	'',	'5.2kg without lamps; 5.8kg with lamps',	'191W x 342H'),
('PSOS-3Z30-XI68',	'RJ45',	'',	'',	'',	'24vdc (50W no LED;90W LED). PoE 802.3bt',	'*',	'',	'Stainless steel',	'-40 to +70 deg C (white or grey paint finish)',	'',	'',	'IK10',	'ASTM B117 1000hr salt-spray',	'TEN 50556:2011; EN 60068-2-64-2008',	'',	'IP68 ',	'EN 55032:2015  EN 55035:2017 Class A',	'',	'',	'14kg without lamps; 18kg with lamps. ',	'313W x 386H x 214D'),
('THOS-2F3I-I68',	'RJ45',	'1 IN; 1 OUT',	'',	'',	'12 VDC, 0.8 A, max. 10 W PoE (802.3af, 36V to 57V), 0.3 A to 0.2 A, max. 12.5 W',	'',	'',	'316L Stainless steel',	'-40 to +60 deg C ',	'95% or less (non-condensing)',	'',	'',	'',	'',	'',	'IP68 ',	'FCC, CE, IC, KC, UL, CB',	'',	'ATEX: II 2 G D Ex db IIC T6 Gb/Ex tb IIIC T80°C Db IP68 IECEx: Ex db IIC T6 Gb/Ex tb IIIC T80°C Db IP68 For explosive gas atmospheres, the maximum surface temperature is 85°C; For flammable dust atmospheres, the maximum surface temperature is 80°C; IIC: for explosive gas atmospheres other than mines susceptible to firedamp; For explosive gas mixture atmospheres: Zone 1, Zone 2, Zone 21, Zone 22.',	'2.5',	'138dia × 123.4 mm');

-- 2022-10-24 14:39:48
