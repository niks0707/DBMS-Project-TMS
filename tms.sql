-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 08:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '14f6bad2163f7bf5bd395bd70cc412d8', '2022-11-16 18:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(11, 7, 'nikhil@gmail.com', '2022-11-30', '2022-12-30', 'Just wants to enjoy with Friends', '2022-11-21 14:25:47', 1, NULL, '2022-11-21 14:26:10'),
(12, 7, 'Raj@gmail.com', '2022-11-21', '2022-11-25', 'Just wants to enjoy with Friends', '2022-11-21 17:49:54', 1, NULL, '2022-11-21 17:50:30'),
(13, 9, 'Raj@gmail.com', '2022-11-23', '2022-11-30', 'Going with Girlfriend', '2022-11-21 17:50:13', 1, NULL, '2022-11-21 17:50:32'),
(14, 8, 'nikhil@gmail.com', '2022-11-25', '2022-11-28', 'Just wants to enjoy with Friends', '2022-11-22 06:52:41', 0, NULL, NULL),
(15, 11, 'nikhil@gmail.com', '2022-11-30', '2022-12-09', 'Going with Girlfriend', '2022-11-29 04:48:24', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'Raj Patil', 'Raj@gmail.com', '7854698547', 'About Refund', 'I want know about refund', '2022-11-21 18:10:23', NULL),
(6, 'Raj Patil', 'Raj@gmail.com', '7854698547', 'About Refund', 'I want to know about Refund', '2022-11-22 06:49:20', NULL),
(7, 'raj', 'adcsd@gmail.com', '1154412454', 'About Refund', 'ggaf febdf', '2022-11-22 06:56:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">TERMS &amp; CONDITIONS :</font></strong><br></font></p><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\">All correspondence(s) in respect of Tours / Travel Service bookings should be addressed to M/s. TourMyIndia.com</p><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\"><span style=\"margin: 0px; padding: 0px 0px 3px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 24px; font-family: proxima_novasemibold; color: rgb(1, 1, 1); display: block;\">Payments:</span>For all the services contracted, certain advance payment should be made to hold the booking, on confirmed basis &amp; the balance amount can be paid either before your departure from your country or upon arrival in INDIA but definitely before the commencement of the services. Management personnels hold the right to decide upon the amount to be paid as advance payment, based on the nature of the service &amp; the time left for the commencement of the service.</p><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\">Apart from above in some cases like Special Train Journeys, hotels or resorts bookings during the peak season (X-Mas, New Year), full payment is required to be sent in advance.</p><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\"><span style=\"margin: 0px; padding: 0px 0px 3px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 24px; font-family: proxima_novasemibold; color: rgb(1, 1, 1); display: block;\">Mode of Payment:</span>Overseas advance payment can be made through Wire Transfer to our bank.</p><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\"><span style=\"margin: 0px; padding: 0px 0px 3px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 24px; font-family: proxima_novasemibold; color: rgb(1, 1, 1); display: block;\">Cancellation Policy:</span>In the event of cancellation of tour / travel services due to any avoidable / unavoidable reason/s we must be notified of the same in writing. Cancellation charges will be effective from the date we receive advice in writing, and cancellation charges would be as follows:</p><ul class=\"ul1\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"><li style=\"margin: 0px; padding: 0px 0px 0px 15px; list-style: none; color: rgb(40, 42, 44); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: proxima_nova_rgregular; text-align: justify; background: url(&quot;../images/ar.jpg&quot;) 0px 9px no-repeat scroll transparent;\">45 days prior to arrival: 10% of the Tour / service cost</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; list-style: none; color: rgb(40, 42, 44); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: proxima_nova_rgregular; text-align: justify; background: url(&quot;../images/ar.jpg&quot;) 0px 9px no-repeat scroll transparent;\">15 days prior to arrival: 25% of the Tour / service cost</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; list-style: none; color: rgb(40, 42, 44); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: proxima_nova_rgregular; text-align: justify; background: url(&quot;../images/ar.jpg&quot;) 0px 9px no-repeat scroll transparent;\">07 days prior to arrival: 50% of the Tour / service cost</li><li style=\"margin: 0px; padding: 0px 0px 0px 15px; list-style: none; color: rgb(40, 42, 44); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: proxima_nova_rgregular; text-align: justify; background: url(&quot;../images/ar.jpg&quot;) 0px 9px no-repeat scroll transparent;\">48 hours prior to arrival OR No Show: No Refund</li></ul><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\"><b style=\"margin: 0px; padding: 0px;\">Note:</b>&nbsp;Written cancellation will accept on all working days, except Sunday, Any cancellation sent on Sunday\'s will be considered on next working day (Monday).</p><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\">For the X-mas and new year period from 20 Dec to 05 Jan the payment is non-refundable.</p><p style=\"margin-bottom: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); text-align: justify; font-family: calibri !important; line-height: 26px !important; font-size: 17px !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important;\">In case you cancel the trip after commencement, refund would be restricted to a limited amount only which too would depend on the amount that we would be able to recover from the hoteliers/ contractors we patronize. For unused hotel accommodation, chartered transportation &amp; missed meals etc. we do not bear any responsibility to refund.</p>\r\n										'),
(2, 'privacy', '<span style=\"color: rgb(85, 85, 85); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif;\">While information is the cornerstone of our ability to provide superior service, our most important asset is our clients’ trust. Keeping client information secure, and using it only as our clients would want us to, is a top priority for all of us at Journey Travel &amp; Tours. Here then, is our promise to our individual customers:</span><ul style=\"border: 0px; margin-right: 0px; margin-bottom: 1.5em; margin-left: 3em; padding: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(85, 85, 85); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif;\"><li style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\">We will safeguard, according to strict standards of security and confidentiality, any information our customers share with us.</li><li style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\">We will limit the collection and use of customer information to the minimum we require to deliver superior service to our customers, which includes advising our customers about our products, services and other opportunities, and to administer our business.</li><li style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\">We will permit only authorized employees, who are trained in the proper handling of customer information, to have access to that information. Employees who violate our Privacy Promise will be subject to our normal disciplinary process.</li><li style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\">We will not reveal customer information to any external organization unless we have previously informed the customer in disclosures or agreements, or are required by law.</li><li style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\">We will always maintain control over the confidentiality of our customer information. We may, however, share customer information with reputable companies when a customer has expressed an interest in their service or product. Please note that this Privacy Policy does not apply to these other companys use of customer information.</li><li style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\">Whenever we hire other organizations to provide support services, we will require them to conform to our privacy standards and to allow us to audit them for compliance.</li><li style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; padding: 0px; vertical-align: baseline;\">We will attempt to keep customer files complete, up-to-date, and accurate. We will tell our customers how and where to conveniently access their information (except when we’re prohibited by law) and how to notify us about errors which we will promptly correct.</li></ul>'),
(3, 'aboutus', '										<p style=\"box-sizing: inherit; margin-bottom: 1.4em; padding: 0px; border: 0px; color: rgb(11, 51, 84); font-size: 19px;\"><span style=\"font-family: arial;\">“Travel is the main thing you purchase that makes you more extravagant”. We, at ‘Organization Name’, swear by this and put stock in satisfying travel dreams that make you perpetually rich constantly.</span></p><p style=\"box-sizing: inherit; margin-bottom: 1.4em; padding: 0px; border: 0px; color: rgb(11, 51, 84); font-size: 19px;\"><span style=\"font-family: arial;\">We have been moving excellent encounters for a considerable length of time through our cutting-edge planned occasion bundles and other fundamental travel administrations. We rouse our clients to carry on with a rich life, brimming with extraordinary travel encounters.</span></p><p style=\"box-sizing: inherit; margin-bottom: 1.4em; padding: 0px; border: 0px; color: rgb(11, 51, 84); font-size: 19px;\"><span style=\"font-family: arial;\"><br></span></p><p style=\"box-sizing: inherit; margin-bottom: 1.4em; padding: 0px; border: 0px; color: rgb(11, 51, 84); font-size: 19px;\"><span style=\"font-family: arial;\">We offer the best limits on our top-rated visit bundles to clients who pick our viable administrations over and over. How about we remind you indeed that we don’t expect to be your visit and travel specialists; we endeavor to be your vacation accomplices until the end of time.</span><br></p>\r\n										'),
(11, 'contact', '																																																																																<span style=\"color: rgb(0, 0, 0); text-align: justify; font-size: x-large; font-family: &quot;comic sans ms&quot;;\">Address:</span><div><span style=\"color: rgb(0, 0, 0); text-align: justify; font-size: x-large; font-family: &quot;comic sans ms&quot;;\">Dept. of CSE</span><div><div><span style=\"color: rgb(0, 0, 0); text-align: justify; font-size: x-large; font-family: &quot;comic sans ms&quot;;\">Shri Guru Gobind Singhji Institute of Engineering &amp; Technology Nanded(431606)</span></div></div><div><span style=\"color: rgb(0, 0, 0); text-align: justify; font-size: x-large; font-family: &quot;comic sans ms&quot;;\">+917823064192</span></div>\r\n										\r\n										</div>\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(7, 'Goa', 'Family Package/Couple Package/With Friends', 'Goa Maharashtra', 800, 'Free Pickup And Drop Facility', 'Goa, state of India, comprising a mainland district on the country’s southwestern coast and an offshore island. It is located about 250 miles (400 km) south of Mumbai (Bombay). One of India’s smallest states, it is bounded by the states of Maharashtra on the north and Karnataka on the east and south and by the Arabian Sea on the west. The capital is Panaji (Panjim), on the north-central coast of the mainland district. Formerly a Portuguese possession, it became a part of India in 1962 and attained statehood in 1987. Area 1,429 square miles (3,702 square km). Pop. (2011) 1,457,723.', 'goa-tourism.jpg', '2022-11-21 14:23:31', '0000-00-00 00:00:00'),
(8, 'Manali Trip ', 'General', 'Kullu Manali India', 300, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'Situated near the end of valley, Manali is one of the most attractive tourist spot not only of Himachal Pradesh, but of International fame also. Manali is synonymous streams and birdsong, forests and orchards and grandees of snow-capped mountains.\r\n\r\nManali is the real starting point of an ancient trade route which crosses the Rohtang and Baralacha passes, and runs via Lahul and Ladakh to Kashmir while divergent road connects it with Spiti. Now the motor link have been provided up to Leh in Jammu & Kashmir, Pangi valley in Chamba and Kaza of Lahul & Spiti. There are regular bus services to these places from Manali during summer season. It is situated at a distance of 45 kms from Kullu.', 'vishy-9ttisCSNCOc-unsplash.jpg', '2022-11-21 14:31:44', '0000-00-00 00:00:00'),
(9, 'Kerala', 'Family Package/Couple Package/With Friends', 'Kerala', 600, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'Jainism, one of the oldest existing religions, must have evolved gradually, taking an organised form around the end of ninth century BCE, through the preaching of Parsvanatha, the 23rd tirthankara and Mahavira, the 24th thirthankara. It is believed that Jainism spread to South India when King Chandragupta of Maurya Dynasty (c. 324 BC to c. 188 BC) adopted this religion and migrated to Karnataka along with the Jain saint, Bhadrabhahu. This incident is described in an inscription at Sravanabelgola, dated to CE 600. In Kerala, structural evidence for Jain culture dates back to eight or ninth century CE. However, this tradition is not well understood at a popular level. The image gallery has rare images from these age-old Jain temples of Wayanad, Kasaragod, Palakkad and Ernakulam districts, vividly capturing the architectural, structural as well as historical peculiarities of these temples. These stone structures are also rich in relief sculptures.', 'Varkala.jpg', '2022-11-21 14:37:02', '2022-11-21 14:38:32'),
(10, 'Bombay', 'Couple and Friends', 'Bombay Maharashtra', 100, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'The Gateway of India is an arch monument built during the 20th century in Bombay, India. The monument was erected to commemorate the landing of King George V and Queen Mary at Apollo Bunder on their visit to India in 1911.\r\n\r\nBuilt in Indo-Saracenic style, the foundation stone for the Gateway of India was laid on 31 March 1911. The structure is an arch made of basalt, 26 metres (85 feet) high. The final design of George Wittet was sanctioned in 1914 and the construction of the monument was completed in 1924. The Gateway was later used as a symbolic ceremonial entrance to India for Viceroys and the new Governors of Bombay.  It served to allow entry and access to India.\r\n\r\nThe Gateway of India is located on the waterfront at Apollo Bunder area at the end of Chhatrapati Shivaji Marg in South Mumbai and overlooks the Arabian Sea. The monument has also been referred to as the Taj Mahal of Mumbai, and is the city’s top tourist attraction.', '34.jpg', '2022-11-22 06:26:47', '0000-00-00 00:00:00'),
(11, 'Egypt Trip', 'Family Package/Couple Package/With Friends', 'Egypt', 500, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'The very name Egypt conjures a land of mystique, the ancient pyramids, the glorious River Nile and a country that is at the crossroads of tradition and modernity. In common parlance, even if Egypt was called the ‘gift of the Nile’, it’s actually the gift that keeps on giving. From its 7000 year old history to its fascinating culture, Egypt is richly layered, a multitude of complexities, and a cornucopia of culinary delights. \r\n\r\nColourful markets, stunning mosques, the mesmerising Pharaonic sites, natural and manmade architectural wonders, everything is in excess here, a trait that is entirely Egyptian and one that you will soon come to recognise in everything that you see here. People also come here to indulge in star gazing, a contemplative and mind-relaxing activity and whether you’re at the pyramids of Giza or at the stunning White Desert, you will undoubtedly be able to see and understand the magnificence of the universe as a macrocosm.\r\n\r\nThere’s no time like the present to take a look at what Egypt tourism has to offer, so let’s take a look at this charming country and its many wonders.', 'Summer-In-Egypt-Cover.webp', '2022-11-22 06:32:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Nikhil Jadhav', '7823064192', 'nikhil@gmail.com', '14f6bad2163f7bf5bd395bd70cc412d8', '2022-11-16 18:12:23', '0000-00-00 00:00:00'),
(13, 'Raj Patil', '9584756875', 'Raj@gmail.com', 'f8d53959da9bc156492d1a3f66e5c9d1', '2022-11-21 06:28:22', '0000-00-00 00:00:00'),
(14, 'Yogesh Toshniwal', '7548679582', 'Yogesh@gmail.com', '2172c56e67f5004d0d0cb74588a320a0', '2022-11-21 06:29:52', '0000-00-00 00:00:00'),
(15, 'Deva Mali', '7569842345', 'Deva@gmail.com', 'ce2678d49ca12429e48cbab2b689f559', '2022-11-21 06:32:55', '0000-00-00 00:00:00'),
(16, 'Vyanki Kelkar', '7586485924', 'Vyanki@gmail.com', '7c510c944a4e86504c720fdadd3759b0', '2022-11-21 06:34:08', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`),
  ADD KEY `Test` (`PackageId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD CONSTRAINT `Test` FOREIGN KEY (`PackageId`) REFERENCES `tbltourpackages` (`PackageId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
