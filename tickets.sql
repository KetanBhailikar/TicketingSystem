-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 06:37 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_loc`
--

CREATE TABLE `admin_loc` (
  `USER_ID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `LOCATION_ID` varchar(10) DEFAULT NULL,
  `LOCATION` varchar(20) DEFAULT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_mh`
--

CREATE TABLE `admin_mh` (
  `USER_ID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `LOCATION_ID` varchar(10) DEFAULT NULL,
  `MH_ID` varchar(40) DEFAULT NULL,
  `MH_NAME` varchar(30) DEFAULT NULL,
  `MH_LOCATION` varchar(20) DEFAULT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_t`
--

CREATE TABLE `admin_t` (
  `USER_ID` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(30) DEFAULT NULL,
  `admin_type` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_t`
--

INSERT INTO `admin_t` (`USER_ID`, `PASSWORD`, `PHONE_NUMBER`, `EMAIL_ID`, `admin_type`, `area`) VALUES
('1234', 'admin', '0987654321', 'dww', 'main', 'na'),
('567', 'admin', '0987654321', 'sdfghj', 'monument', 'TAJ MAHAL'),
('987', 'amdin', '03', 'sa', 'regional', 'AGRA');

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

CREATE TABLE `booking_table` (
  `S_CODE` varchar(28) NOT NULL,
  `DATE_OF_ISSUE` date DEFAULT NULL,
  `TIME_OF_ISSUE` varchar(9) DEFAULT NULL,
  `MH_ID` varchar(40) DEFAULT NULL,
  `MH_NAME` varchar(30) DEFAULT NULL,
  `MH_LOCATION` varchar(20) DEFAULT NULL,
  `BOOKING_DATE` date DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `USER_ID` varchar(20) NOT NULL,
  `NATIONALITY` varchar(20) NOT NULL,
  `TRANSACTION_ID` varchar(40) DEFAULT NULL,
  `BOOKING_STATUS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city_table`
--

CREATE TABLE `city_table` (
  `CITY_NAME` varchar(30) NOT NULL,
  `IMG_LINK` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_table`
--

INSERT INTO `city_table` (`CITY_NAME`, `IMG_LINK`) VALUES
('AGRA', 'https://content.r9cdn.net/rimg/dimg/f5/e5/a45c961d-city-29118-164803dbdc7.jpg?width=1200&height=630&crop=true'),
('AMARAVATHI', 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-t2kejd5ck053mqpje4ts54v785-20191213022818.Medi.jpeg'),
('AURANGABAD', 'https://static.toiimg.com/photo/52550880/.jpg'),
('BANGALORE', 'https://www.flydubai.com/en/media/Bengaluru-2560x960_tcm8-161431.jpg'),
('BHOPAL', 'https://www.localguidesconnect.com/t5/image/serverpage/image-id/574867iD537DF5F12772F0A/image-size/large?v=v2&px=999'),
('BHUBANESHWAR', 'https://odishatourism.gov.in/content/dam/tourism/home/discover/major-cities/bhubaneswar/gallery/gallery2.jpg'),
('CHANDIGARH', 'https://images.indianexpress.com/2020/04/wh-fb.jpeg'),
('CHENNAI', 'https://www.outlookindia.com/outlooktraveller/public/uploads/filemanager/images/Chennai3.jpg'),
('DELHI', 'https://static.onecms.io/wp-content/uploads/sites/28/2021/07/30/new-delhi-india-NEWDELHITG0721.jpg'),
('DHARWAD', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/BadamiCaves87.JPG/1200px-BadamiCaves87.JPG'),
('GOA', 'https://d1e00ek4ebabms.cloudfront.net/production/47610c3b-e9df-4cac-8438-a0dddff7f7e2.jpg'),
('GUWAHATI', 'https://pickyourtrail.com/blog/wp-content/uploads/2020/05/boudhayan-bardhan-VNlwWP-sy1A-unsplash-scaled.jpg'),
('HAMPI', 'https://www.karnatakatourism.org/wp-content/uploads/2021/02/vijayanagara.jpg'),
('HYDERABAD', 'https://dp5zphk8udxg9.cloudfront.net/wp-content/uploads/2017/03/Clean-Hyderabad-e1489638542950.jpg'),
('JABALPUR', 'https://femina.wwmindia.com/content/2020/jul/jabalpurmadhyapradesh1594194876.jpg'),
('JAIPUR', 'https://www.micato.com/wp-content/uploads/2018/09/jaipur-1110x700.jpg'),
('JHANSI', 'https://www.tourmyindia.com/states/uttarpradesh/images/jhansi-fort.jpg'),
('JODHPUR', 'https://www.tajhotels.com/content/dam/luxury/hotels/Umaid_Bhavan/images/3x2/Exterior4-3x22.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg'),
('KOLKATA', 'https://img.staticmb.com/mbcontent//images/uploads/2021/5/best-places-to-live-in-kolkata.jpg'),
('LEH', 'https://images.memphistours.com/large/300049555_Leh-Ladakh.jpg'),
('LUCKNOW', 'https://static.toiimg.com/thumb/msid-89182877,width-748,height-499,resizemode=4,imgsize-2444912/Mind-blowing-facts-about-Lucknow.jpg'),
('MUMBAI', 'https://gumlet.assettype.com/nationalherald%2F2021-11%2F0a0fdcc6-925f-44d2-b3a2-ff2167e2e105%2FMumbai.png?rect=219%2C0%2C1191%2C670&auto=format%2Ccompress&fmt=webp&w=1200'),
('NAGPUR', 'https://im.whatshot.in/img/2020/Nov/istock-1139387103-cropped-1597665160-1605757098.jpg?wm=1&w=1200&h=630&cc=1'),
('PATNA', 'https://tourism.bihar.gov.in/content/dam/bihar-tourism/images/category_a/patna/buddha_smriti_park/buddha-samiti-park.jpg/jcr:content/renditions/cq5dam.web.480.480.jpeg'),
('RAIGANJ', 'https://im.hunt.in/cg/Raiganj/City-Guide/raiganj2.jpg'),
('RAIPUR', 'https://upload.wikimedia.org/wikipedia/commons/8/81/Naya_Raipur%2C_Sector_19.png'),
('RAJKOT', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/fc/b6/47/caption.jpg?w=500&h=400&s=1'),
('SARNATH', 'https://static.toiimg.com/photo/68814312.cms'),
('SHIMLA', 'https://theindiasaga.com/wp-content/uploads/2020/08/pexels-shalender-kumar-3574440-1-750x460.jpg'),
('SRINAGAR', 'https://assets.cntraveller.in/photos/621361f7c78f51616154fbf8/master/pass/houseboats%20in%20srinagar%20lead.jpg'),
('THRISSUR', 'https://www.keralatourism.org/images/temple/video/thumb/Vadakkumnathan_Temple-02012020130746.jpg'),
('TIRUCHIRAPALLI', 'https://chaloghumane.com/wp-content/uploads/2021/09/Tiruchirappalli.jpg'),
('VADODARA', 'https://upload.wikimedia.org/wikipedia/commons/a/a1/Laxmi_Vilas_Palace%2C_Vadodara.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mh_table`
--

CREATE TABLE `mh_table` (
  `MH_ID` varchar(40) NOT NULL,
  `MH_NAME` varchar(30) DEFAULT NULL,
  `MH_LOCATION` varchar(30) DEFAULT NULL,
  `INDIAN` decimal(10,2) DEFAULT NULL,
  `FOREIGN_` decimal(10,2) DEFAULT NULL,
  `BIMSTEC` decimal(10,2) DEFAULT NULL,
  `SAARC` decimal(10,2) DEFAULT NULL,
  `CAMERA` decimal(10,2) DEFAULT NULL,
  `VIDEO` decimal(10,2) DEFAULT NULL,
  `DESCRIPTION` varchar(3000) DEFAULT NULL,
  `IMG_LINK` varchar(1000) DEFAULT NULL,
  `MAP_LINK` varchar(1000) DEFAULT NULL,
  `NOTE` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mh_table`
--

INSERT INTO `mh_table` (`MH_ID`, `MH_NAME`, `MH_LOCATION`, `INDIAN`, `FOREIGN_`, `BIMSTEC`, `SAARC`, `CAMERA`, `VIDEO`, `DESCRIPTION`, `IMG_LINK`, `MAP_LINK`, `NOTE`) VALUES
('AGR01', 'AGRA FORT', 'AGRA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Established as Shahjahanabad in 1648, The Red Fort was known as the capital of the Mughal Empire in India. Its construction is attributed to Shah Jahan who also built the famous Taj Mahal in Agra, and was also known by the name Quila Mubarak and remained the residence of the Mughal Imperial family for nearly 20 decades.', 'https://lh5.googleusercontent.com/p/AF1QipPMz15lxDldpBQfd_w2oFEE5TkN4yWNP1M1cmVy=w408-h306-k-no', 'https://goo.gl/maps/ktCeY6pGXKVh5fFr9', NULL),
('AGR02', 'AKBAR TOMB SIKANDRA', 'AGRA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'The tomb of Akbar the Great, located in Sikandra, in the suburbs of Agra is an important Mughal architectural masterpiece tradition, which stated to commence the construction of one’s tomb during one’s lifetime. The South gate of this tomb is the largest with four white marble chhatri-topped minarets, similar to those of the Taj Mahal. The buildings are constructed mainly from deep red sandstone., which was built between 1605-1613. Akbar himself commenced the construction of this tomb, according to Tartary ', 'https://lh5.googleusercontent.com/p/AF1QipP2QFQlE2i1BDpyoAbMFVhj3Ozo9bgzK-t2eCmC=w408-h306-k-no', 'https://goo.gl/maps/gt8taUaWpVcYehZA9', NULL),
('AGR03', 'FATEHPUR SIKRI', 'AGRA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Constructed by Emperor Akbar as part of his plans to build a grand capital for his empire, the World Heritage Site of Fatehpur Sikri is 39 km away from Agra in Uttar Pradesh. Fatehpur Sikri served as the Mughal capital from 1571 to 1585. Spread across eight sq km, the city is about three miles long and one mile wide. Built with red Sikri sandstone, the city’s architecture is a blend of Islamic and Hindu styles. The sandstone throughout the city has exquisite ornamental carvings and interlaced decorative designs.', 'https://lh5.googleusercontent.com/p/AF1QipP2QFQlE2i1BDpyoAbMFVhj3Ozo9bgzK-t2eCmC=w408-h306-k-no', 'https://goo.gl/maps/gt8taUaWpVcYehZA9', NULL),
('AGR04', 'RAM BAGH', 'AGRA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPB6zH1mBKO5gkWB1pLiY0VYAwMXxNqbL-dKIVJ=w426-h240-k-no', 'https://goo.gl/maps/uBrss63aDjuTEbth9', NULL),
('AGR05', 'ITIMAD-UD-DAULAH TOMBITIMAD-UD', 'AGRA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/proxy/29M6LIINFXrLoA_8iv7Z8DBKH8F9DQP7ruoP7ESgeX4xcEGTBl_FoXS9tApKv24fmGvuGYEaaK0z5hkblc8g8h4So3WommSYZQBzKrxHI5B48Y_dspLEz2oMqW3L0tH0AO5cq89BB8VLTPRRrdxeSMll8un1Dg=w408-h272-k-no', 'https://goo.gl/maps/BaBiQxXF3Yv848KN8', NULL),
('AGR06', 'MARIAM TOMB SIKANDRA', 'AGRA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh6.googleusercontent.com/proxy/jioB760f_LO5oj0q_nWLLgPywd7mn0BFvKC1nZ8nYAlu_rewIwIqkRrMxInvou4xrX2PQTN4KBP8h0SvJkxENB-cavGGGl3aY8_tqmrtWPOe6_B3BOR5dTRVXbADmGNFaHs07m94YKdSSYFQ0M_acp3tNskRVyc=w408-h272-k-no', 'https://goo.gl/maps/JbvLmXYhRcJNFin47', NULL),
('AGR07', 'MEHTAB BAGH', 'AGRA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOKz3O7JNPFuJ6P7kE79jrnV6SIG0QqxjQ811Td=w426-h240-k-no', 'https://goo.gl/maps/ZFXVteomQUNdBhoc9', NULL),
('AGR08', 'TAJ MAHAL', 'AGRA', '45.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Taj Mahal, with marble lattice screens and fine carvings. This was the first of many tombs to be erected on the banks of River Yamuna. If you are visiting Agra, you ought to pay a visit to this unique construction, which stands as an initial to every marble monument that glorifies Agra. ', 'https://lh5.googleusercontent.com/p/AF1QipOwcynxRpNebAQYvogATP7Bg7j0k45R21LWYlCN=w408-h306-k-no', 'https://goo.gl/maps/fySVQMb2yiTT6hqt6', NULL),
('AMA01', 'ARCHAEOLOGICAL SITE MUSEUM, AM', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNJVBMN7CMXo6uzwDh8OEUXxv-uYIFfDRpS5GFI=w408-h544-k-no', 'https://goo.gl/maps/HaWVNQGrdR7nEAu7A', NULL),
('AMA02', 'ARCHAEOLOGICAL SITE MUSEUM, CH', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPSoZVdm84r67P_jP_nH-BHsV50Z-N2hqBgxniv=w408-h306-k-no', 'https://goo.gl/maps/Qy291jzBpXrhxBKu6', NULL),
('AMA03', 'ARCHAEOLOGICAL SITE MUSEUM, NA', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPqO2STXPFGHc9R_g405tntLFu--QzGm3MNUjJH=w408-h306-k-no', 'https://goo.gl/maps/aTkuUiBz91EyytAf9', NULL),
('AMA04', 'BUDDHIST MONUMENTS AT GUNTAPAL', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMa0CBM5mdfS64LQrYWBDYDuyjG_O_DranJsUGI=w408-h544-k-no', 'https://goo.gl/maps/eTd6Vrg63QfYcrGm9', NULL),
('AMA05', 'CHANDRAGIRI MONUMENT', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/proxy/v5TrVGOaFvIh0vs5yB1z4a3t-DMnPvZIxC6YWw7Dhw2Z9cG0ME-NH3X_6QXoFoMoDvRd0ZNklIIvIU5O1R7CwQkbpUpuzQXX9vRZHgugsAqCrRY0b7g1TqEsw_QmTP09ZPkFveb3pWqIfWogEAnYiue0ReCOlFA=w426-h240-k-no', 'https://goo.gl/maps/DExcn7iKu2p3euDD7', NULL),
('AMA06', 'FOUR STOREYED ROCK-CUT HINDU T', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh4.googleusercontent.com/proxy/KbPiZ_35M7rIoPIxpKqZmaN80URQ32YNkLey0Q_Lr4GfevGISHBsV1tWJilUbDQDqEDQ8F-jyJj2pWGb8NNM5wkBGU1GUNFetKLa3afKtvtrcMpLTyjNoPIQqcY0zCCRwunrBtemOjnKz9Iax2sGaWYaeo3qbA=w408-h272-k-no', 'https://goo.gl/maps/6UrX3hpR8aCwftcv9', NULL),
('AMA07', 'HILLS OF NAGARJUNKONDA WITH AN', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPqO2STXPFGHc9R_g405tntLFu--QzGm3MNUjJH=w408-h306-k-no', 'https://goo.gl/maps/XBMuxZAybbHMw3bJ6', NULL),
('AMA08', 'RUINED BUDDHIST STUPA, AMARAVA', 'AMARAVATHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMoRZC1-UBOXBHRWK40kOHrRwI2sN_WhWBh2f6j=w427-h240-k-no', 'https://goo.gl/maps/hkNvDsU8AwqEKLe87', NULL),
('AUR01', 'AJANTA CAVES', 'AURANGABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.unclesamholidays.com/gallery/Ajanta-Caves01.jpg', 'https://goo.gl/maps/3yXGu6YHkJFMUMdx9', NULL),
('AUR02', 'AURANGABAD CAVES', 'AURANGABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP21jeMPRnhhzwLf9p4fDPox5GQvP-https://lh5.googleusercontent.com/p/AF1QipP21jeMPRnhhzwLf9p4fDPox5GQvP-ypEVa3UVP=w408-h544-k-no', 'https://goo.gl/maps/2aiYyNBxBhNvgiww9', NULL),
('AUR03', 'DAULATABAD FORT', 'AURANGABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOyVEOEpSsmwhR9qig3tgvNqHbooCiLIXd8NZL4=w408-h293-k-no', 'https://goo.gl/maps/dW2CjPuLawE291uH6', NULL),
('AUR04', 'ELLORA CAVES', 'AURANGABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOXb8kLvL2rFafftT5Z9E56ChX5LtTtOS_JWJKp=w408-h544-k-no', 'https://goo.gl/maps/ifQ1UvkG3hEt1i2t8', NULL),
('AUR05', 'PANDULENA CAVES, NASIK', 'AURANGABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh4.googleusercontent.com/proxy/p5OQAHcfKyUOQ7G12lT-AZyCGWa3gsEC6ljjWrYbSJKBJXFXl6C2rwlxQM-TMEjdfmjvfSxSa1zwccD025liWAXIeVNfR41w7xl9D8-kjIek6lKkXQU57e1geE5yiAIM0sNUAL0uPMVYKI7tnseqcsGLYLwCf74=w408-h272-k-no', 'https://goo.gl/maps/EEeLTVqvTJgsdBpx9', NULL),
('AUR06', 'TOMB OF RABIADURANI (BIBI KAMA', 'AURANGABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPmB2vjlxLKU9_Zlp7yOPhfCIvcpcHlCaNWlZsK=w426-h240-k-no', 'https://goo.gl/maps/eNi9qsHAK3yyejnL8', NULL),
('BAN01', 'ARCHAEOLOGICAL MUSEUM, HALEBID', 'BANGALORE', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMsHUMQAPgh3SRcyOReARQHfAxkWTEHPbMuWEjJ=w408-h306-k-no', 'https://goo.gl/maps/VaD6av5Do9ntQPZJ8', NULL),
('BAN02', 'DARYIA DAULAT BAGH, SRIRANGAPA', 'BANGALORE', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipO0uOyT10PM_EHMVPKL_3F_MFbO7TWa4huAeKJr=w426-h240-k-no', 'https://goo.gl/maps/jqsepuiKXg1htzg39', NULL),
('BAN03', 'FORTRESS AND TEMPLES ON THE HI', 'BANGALORE', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMe-BkmMIXwQR7xr0h4iCuRL0Q8vCzBFaGpA-HK=w408-h306-k-no', 'https://goo.gl/maps/tvRzTUNu7Tn7xVt9A', NULL),
('BAN04', 'PALACE OF TIPU SULTAN, BENGALU', 'BANGALORE', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNc4XV5s5A8_TQeEiauH58nQ1Mll0GAYBVG1E3p=w408-h307-k-no', 'https://goo.gl/maps/v7Tx5QDeyh56gR5P7', NULL),
('BAN05', 'KESHAVA TEMPLE, SOMANATHPUR', 'BANGALORE', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNUp0Hdqqz6etbTFKgiD4fWASTfE6Okv5qmD38f=w408-h305-k-no', 'https://goo.gl/maps/fxVt1V2V1VK6ysiU9', NULL),
('BHO01', 'ARCHAEOLOGICAL SITE MUSEUM, CH', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMhOW2uy1ZXk5WdjOI22iF1d8MqpU70ZYemqzAg=w426-h240-k-no', 'https://goo.gl/maps/GnRcFrJJabtW7pXa7', NULL),
('BHO02', 'ARCHAEOLOGICAL SITE MUSEUM, GW', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNfRHhybcUd3f9aRa5sHSPK97YygTNS-ypz7PTG=w533-h240-k-no', 'https://goo.gl/maps/avfkCLBrNYQ2pWfE7', NULL),
('BHO03', 'ARCHAEOLOGICAL SITE MUSEUM, SA', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNpcwaIg-UPjJlYqq87FCViOGMEuwkXAYiitRsS=w408-h306-k-no', 'https://goo.gl/maps/vMihK5RoG6gKqCzj9', NULL),
('BHO04', 'BADAL MAHAL GATEWAY, CHANDERI', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNrDJdge7Vljkp2hUFthcX-seNqGO_mGeBUMKWQ=w408-h607-k-no', 'https://goo.gl/maps/sgdb1GkcTYSGjK8a8', NULL),
('BHO05', 'BIR SINGH PALACE DATIA', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOcC1euzjfuLPiFaMMQev7PoBK3f7Pv7yPmAr5A=w408-h287-k-no', 'https://goo.gl/maps/YwFwnAUU9adrQwvo8', NULL),
('BHO06', 'BUDDHIST CAVE NO.01 TO 51, DHA', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Dhamnar_caves1.JPG/120px-Dhamnar_caves1.JPG', 'https://goo.gl/maps/wrqRvoyMwzZyJoCd7', NULL),
('BHO07', 'BUDDHIST CAVES, BAGH', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNLicVXasJGS4KNplcM_YqE0QfoM1cZjCPCmewl=w408-h306-k-no', 'https://goo.gl/maps/PgjAEWxEBvLEM6EaA', NULL),
('BHO08', 'BUDDHIST MONUMENTS, SANCHI', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNEN70WkZnZPJmceo6LRHz5lssh22uf96DgM7IE=w408-h272-k-no', 'https://goo.gl/maps/AwyrzgPtUmKXBzY97', NULL),
('BHO09', 'CAVES 1 TO 20 UDAYGIRI VIDISHA', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPQtAZaa-6Kplnv70NdVjcOemrbkqTvgrW0I7_4=w408-h275-k-no', 'https://goo.gl/maps/7g8xKMfHAuMwEDSa8', NULL),
('BHO10', 'GROUP OF MONUMENTS, MANDU', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOIDNxmF7t73lRc4OF2rtd1LJzbVdVA8IxZW6Pe=w426-h240-k-no', 'https://goo.gl/maps/KPR31FqpSpneF91J7', NULL),
('BHO11', 'GWALIOR FORT ', 'BHOPAL', '20.00', '250.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPO3MDTjLiLgUPPAw_sXhUmSIbFCezp5Imy_K3e=w408-h306-k-no', 'https://goo.gl/maps/FPLs6pGtwBe4UQzu7', NULL),
('BHO12', 'HOSHANG SHAH’S TOMB, MANDU', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPvXx7w4m60rQSogEZ6Rv33w7TV5Z2Un3gZnnGS=w408-h272-k-no', 'https://goo.gl/maps/4UhaUsAUGEQs1cL79', NULL),
('BHO13', 'ROOPMATI’S PAVILION, MANDU', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPZnawOo0oL7dY4SvZ03nfhXwWpkST7Dre7xFJt=w408-h306-k-no', 'https://goo.gl/maps/PeZnBmCdcEjLnzkUA', NULL),
('BHO14', 'THE PALACE IN THE FORT', 'BHOPAL', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipN6R23EBwox_ppvjQBJwTDwEjKSicLW_hO14J-f=w533-h240-k-no', 'https://goo.gl/maps/73Y3EjkGJn6LXVHh8', NULL),
('BHU01', 'ARCHAEOLOGICAL SITE MUSEUM, KO', 'BHUBANESHWAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.hlimg.com/images/things2do/738X538/konarkmuseum_1509006144t.jpg', 'https://goo.gl/maps/quWfqDfYDmxPJPda8', NULL),
('BHU02', 'RAJARANI TEMPLE', 'BHUBANESHWAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOEw6EuCHuk6wTv3a1GKOjIsQjVWtBqMZ2yXRkw=w1080-k-no', 'https://g.page/wipro-bhubaneswar?share', NULL),
('BHU03', 'RUINS OF BUDDHIST TEMPLES LALI', 'BHUBANESHWAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.deccanherald.com/sites/dh/files/articleimages/2021/05/23/file7ftkaf2imgyanun950k-988411-1621710218.jpg', 'https://goo.gl/maps/UD2T35qMCF2PKZZq7', NULL),
('BHU04', 'SUN TEMPLE, KONARAK  ', 'BHUBANESHWAR', '35.00', '350.00', '35.00', '35.00', '100.00', '200.00', 'Temp', 'https://www.indianpanorama.in/images/temples/konark-sun-temple-india.jpg', 'https://goo.gl/maps/kTZepsoeDSD5WvEe7', NULL),
('BHU05', 'ANCIENT REMAINS ON BOTH UDAIGI', 'BHUBANESHWAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://img.veenaworld.com/wp-content/uploads/2021/10/Udaygiri-and-Khandagiri.jpg', 'https://goo.gl/maps/Pp5SMbMEshB1xK6z6', NULL),
('BHU06', 'ARCHAEOLOGICAL MUSEUM, RATNAGI', 'BHUBANESHWAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPP7EJHGk_1Of1jNkK4DtBUYM4RPTVbCTFo2ic=w1080-k-no', 'https://goo.gl/maps/9gPyZaSoyFw93wpH9', NULL),
('CHA01', 'ARCHAEOLOGICAL SITE MUSEUM, RO', 'CHANDIGARH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP9CRJa2pKrYFxsU6CkSbERNDUmCCZblQwpnWIs=w408-h306-k-no', 'https://goo.gl/maps/KRqCx6bwfmQTrqWF7', NULL),
('CHA02', 'SHEIKH CHILLI’S TOMB', 'CHANDIGARH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOPRNGob0T3LjIpYwQ4MhdhVcerQHr_JNFjrtzn=w408-h306-k-no', 'https://goo.gl/maps/fWz8EW4KZfgS8ykK7', NULL),
('CHA03', 'SURAJ KUND', 'CHANDIGARH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOg14a98tNeOZvFsujv-WoD2RCqfe5tN70eB-Pp=w408-h306-k-no', 'https://goo.gl/maps/SM3BxiBe4HMNxVng6', NULL),
('CHE01', 'FORT, ST. GEORGE', 'CHENNAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPuaZ1B32XFvsR4a1tbZWgZl4lIRmYU_-yyRiaI=w408-h254-k-no', 'https://goo.gl/maps/uLUARNKspvq5DcKFA', NULL),
('CHE02', 'GINGEE FORT', 'CHENNAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipN-i7nRXhIZ2BuCfnq4oE0Htm_suUsp8TkPhNk4=w426-h240-k-no', 'https://goo.gl/maps/2PKCWiCrrMrsabdEA', NULL),
('CHE03', 'GROUP OF MONUMENTS, MAMALLAPUR', 'CHENNAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipN3MNTPxqoifBwEA_NFW2fJF_Re4-jViTI1ROVf=w408-h271-k-no', 'https://goo.gl/maps/mCTqrFUdSs4QCaGT8', NULL),
('CHE04', 'TIGER HEADED ROCK CUT TEMPLE &', 'CHENNAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP4gxpTKTzioUMi_-SanI44YQ33xP22oCjgvmuH=w408-h289-k-no', 'https://goo.gl/maps/FnFUq5nDakW9fPmV6', NULL),
('DEL01', 'HAUZKHAS', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPGufORnq1xu346yORNokXHNWDfPZfE-BWiZ-VG=w408-h306-k-no', 'https://goo.gl/maps/D1HhPKGY4Jog8NQu8', NULL),
('DEL02', 'HUMAYUNS TOMB', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh3.googleusercontent.com/proxy/fAu22sd3MfAISLKLsDaPAny74eUTmepWVQh2OrlkwZwdDtB_0j2FRD6uriImC8Yrxg1LHwJBrf9Uo6s5d3zKcbAbcxH414v0p3eNeNMNVnukTEwq_g-R57eRNQh2dqHFxp7EQYto4wqFaWO2pxV8g374y8Q67w=w408-h272-k-no', 'https://goo.gl/maps/GPrdiPfcact1pd9g6', NULL),
('DEL03', 'JANTAR MANTAR', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipM24VWQ-bY8oiNOjd08yD96f-kME_yUU_fwmHE3=w408-h306-k-no', 'https://goo.gl/maps/5rVJx71TJ7pHD7LPA', NULL),
('DEL04', 'KHAN-I-KHANA', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.makemytrip.com/travel-guide/media/dg_image/delhi/Tomb-of-Khan-i-Khana-Delhi.jpg', 'https://goo.gl/maps/SbKvqDFffF4FvCzD9', NULL),
('DEL05', 'KOTLA FIROZ SHAH', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPb1HWzU-zB96f2doJ-XANKNX7FTAmoPdIIEMtz=w408-h272-k-no', 'https://goo.gl/maps/sgrFeTJaBJHMHjWk8', NULL),
('DEL06', 'PURANA QILA', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNlMwSQ00wENuTGInRYoWBpyKOgiy70rb5UVEfA=w408-h306-k-no', 'https://goo.gl/maps/KRPyd8Y9HsmTYdVt9', NULL),
('DEL07', 'PURANA QILA LAKE', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://assets.cntraveller.in/photos/60ba16d91fa22668f0259f26/master/w_1600,c_limit/Purana-Qila-lake-fountain.jpg', 'https://goo.gl/maps/95GEtMQVKfGofqbq7', NULL),
('DEL08', 'PURANA QILA MUSEUMS', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipN8GKH1eO5krgLo2R260RIw_vuJGaFm-P3UqqtV=w408-h251-k-no', 'https://goo.gl/maps/kBevWiNDPTJN2czQ7', NULL),
('DEL09', 'QUTUB MINAR', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMBgN_tBk5DzfMbZ4LFJ9s_9ZnuPaNLDRq_vAgr=w408-h840-k-no', 'https://goo.gl/maps/DU8LkoZiBaYQbbWU9', NULL),
('DEL10', 'RED FORT   ', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMooT0abtOcrV0_GdESL9ZuQQtgkEFRqf8bNi5P=w426-h240-k-no', 'https://goo.gl/maps/AfEWJdxJGn6stDtm6', NULL),
('DEL11', 'SAFDARJUNG TOMB', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMEsFkyab26Mql2gP1IyEZJZxq2LQIITo9whe72=w408-h272-k-no', 'https://goo.gl/maps/4GgAJrVpn6anGn3x6', NULL),
('DEL12', 'SULTAN GARHI', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOC8yHGfpGcMFQQyaZQYqqL1Pr0xuWqpLdFrtpd=w408-h306-k-no', 'https://goo.gl/maps/ntKLsy7bG5eZSQ877', NULL),
('DEL13', 'TUGHLAQABAD FORT', 'DELHI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipO55Je98XRv_CUAl8p4QcQ90rGc8M5WQoIezOds=w431-h240-k-no', 'https://goo.gl/maps/tcsCouGyyDx6txoR7', NULL),
('DHA01', 'ARCHAEOLOGICAL MUSEUM, AIHOLEs', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPkXp3X8-pSFtq4gBt55_9XJCfGw4QkTooSwT6w=w408-h306-k-no', 'https://goo.gl/maps/kXPvQDayXhC2DLyZA', NULL),
('DHA02', 'ARCHAEOLOGICAL MUSEUM, VIJAYAP', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMyxUv_73dxax4aQHT3QSxi8sTbAqS4by_GbSP2=w408-h306-k-no', 'https://goo.gl/maps/5KYp9EL9jbRGkkFh8', NULL),
('DHA03', 'ARCHAEOLOGICAL SITE MUSEUM, BA', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipN1MKBLKd3AWPPPGAaJmq0xI-j2neEV_zEj1VUu=w426-h240-k-no', 'https://goo.gl/maps/3ipd6AbxvpywzoBh9', NULL),
('DHA04', 'CAVE AT BADAMI', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNEH-lKYvhnkni_vGUX_3AYtbNmjHBuzZSLG0YL=w408-h306-k-no', 'https://goo.gl/maps/DLVLpzYYh7WLSdjs5', NULL),
('DHA05', 'DURGA TEMPLE, AIHOLE', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOUCAKhhzoBbG9xNbKKO22GdmTZMu5a4kog2349=w408-h267-k-no', 'https://goo.gl/maps/31upA1LL45Mw5s148', NULL),
('DHA06', 'GOL-GUMBAZ, VIJAYAPURA', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNFJ1Kgoz5tHjsncm8iMOTBoGY2hPpgDZKqyW4r=w408-h305-k-no', 'https://goo.gl/maps/asjLigGDLs6viKmw7', NULL),
('DHA07', 'GROUP OF TEMPLES, PATTADAKAL', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPcJHhJ9dGNk0gATqK4LWse-HW_9x1nvrcAKqqT=w408-h272-k-no', 'https://goo.gl/maps/V2kHk3bEj4KRZGVe8', NULL),
('DHA08', 'IBRAHIM RAUZA, VIJAYAPURA', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://maps.gstatic.com/tactile/pane/default_geocode-1x.png', 'https://goo.gl/maps/f6VDETRLeQEUgVCe9', NULL),
('DHA09', 'TEMPLES & SCULPTURE GALLERY, L', 'DHARWAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNv4Yl45Ad2HVWAaiKz9czW1M6cXW0nfYoNbNH7=w408-h306-k-no', 'https://goo.gl/maps/NWhKetW9ifBHDn1v7', NULL),
('GOA01', 'ARCHAEOLOGICAL SITE MUSEUM, OL', 'GOA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOoZ19ScDb0T6KfCgth34z4Wj4WJt-Lw3UWCIg-=w408-h272-k-no', 'https://goo.gl/maps/9NzKvoqNbsWn1n4AA', NULL),
('GOA02', 'UPPER FORT AGUADA', 'GOA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNbHMhbE3WpKZpt5EnZFztZDLykBjCBIf-_VVvd=w408-h306-k-no', 'https://goo.gl/maps/A8ZVwsXLwhBbxY1o7', NULL),
('GUW01', 'AHOM RAJA’S PALACE', 'GUWAHATI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMY7KiffLMm9cPfZ9sByj2gI4Jsss5pMURWrZyt=w408-h306-k-no', 'https://goo.gl/maps/xZpgy3vtZVpoMvoD7', NULL),
('GUW02', 'ARCHAEOLOGICAL SITE MUSEUM, SR', 'GUWAHATI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNuKadWKlqmOmYtJ_y2ZxxlKlrChfBhCPmNqPmJ=w408-h293-k-no', 'https://goo.gl/maps/hpTxG3e894G5fxUB7', NULL),
('GUW03', 'BISHNUDOL', 'GUWAHATI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPTFra5qjFtHBO9AJhZ-qh3wK1UDCk2d1tYtlx7=w426-h240-k-no', 'https://goo.gl/maps/Yjo4sg8pcYjC66bq5', NULL),
('GUW04', 'GROUP OF FOUR MAIDANS', 'GUWAHATI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPPMg0-jIPws058sty1FlD9I5UFKci5nCwMMTZI=w408-h306-k-no', 'https://goo.gl/maps/FRyyCcQfsuf4taz16', NULL),
('GUW05', 'KARENGHAR OF AHOM KINGS', 'GUWAHATI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNOoT1sQPvWwnNN7kSoRWIu4T3QOkbhSzeyJEOD=w408-h305-k-no', 'https://goo.gl/maps/5nKN3seMfGV1HEqs7', NULL),
('GUW06', 'RANGHAR RUINS', 'GUWAHATI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipM4Vg3yF3V_ZUA8azL7r_hrG508_HN-RJjogs9k=w426-h240-k-no', 'https://goo.gl/maps/xrpGDft7bwapgpd29', NULL),
('HAM01', 'BELLARY FORT', 'HAMPI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP6ro8vDulZJn41S25MaT8TBjBdNI1-C8-lH9qH=w408-h306-k-no', 'https://goo.gl/maps/wq8qRRAfbdTrZbkC9', NULL),
('HAM02', 'GROUP OF MONUMENTS, HAMPI', 'HAMPI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOYIUogkpQeg40DyeoznwkgpuV2f6jySJ88E4w=w408-h271-k-no', 'https://goo.gl/maps/sMm2vGvnE7xFGdws5', NULL),
('HYD01', 'ARCHAEOLOGICAL SITE MUSEUM, KO', 'HYDERABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP7fG8sSntW0y-GJR37nNzrrhUKI2Sb3gdNIrcZ=w408-h306-k-no', 'https://goo.gl/maps/Aoaqb8dnuXEoTvdL9', NULL),
('HYD02', 'CHARMINAR ', 'HYDERABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'The Charminar constructed in 1591, is a monument located in Hyderabad, Telangana, India. The landmark has become known globally as a symbol of Hyderabad and is listed among the most recognised structures in India.', 'https://lh5.googleusercontent.com/p/AF1QipM2MnGdaMrZQNH6p_lW8TDYzzeLQteaDV3ISF60=w408-h544-k-no', 'https://goo.gl/maps/aBxFGjQTp1YNAt7a7', NULL),
('HYD03', 'GOLKONDA FORT', 'HYDERABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNceoYcIp7A69w1ghvXcSTb9oCze903CmyYfbK4=w426-h240-k-no', 'https://goo.gl/maps/zUDDfrKca28XFgG3A', NULL),
('HYD04', 'WARANGAL FORT  ', 'HYDERABAD', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOoAHuyYA3FAmTAg1PUgDYJrNgtDHekqwCG7Q7P=w408-h544-k-no', 'https://goo.gl/maps/kBVNT8TWpC5DkBc7A', NULL),
('JAB01', 'ANCIENT SITE AND ADAMGARH ROCK', 'JABALPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOSw0DFeBGv4-c9GBG6faY7L6nbPcpIEpOCYLQZ=w408-h306-k-no', 'https://goo.gl/maps/tctTXm5UrNJRXRgq5', NULL),
('JAB02', 'GROUP OF TEMPLE, PARAMESHVAR S', 'JABALPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipO5FUZpLKEn4Nk06x1ErqRYXJ8Ag7BU93p57q7D=w408-h306-k-no', 'https://goo.gl/maps/1ahpvHyDPMKCoKeG8', NULL),
('JAB03', 'WESTERN GROUP OF TEMPLES, KHAJ', 'JABALPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNaqpxIEEts52f7MxWeAawuELIWDYJYZwHcMj_r=w426-h240-k-no', 'https://goo.gl/maps/Mrme8jugtiasKBu26', NULL),
('JAI01', 'ANCIENT SITE, BHANGARH', 'JAIPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPvqAdrjIhBcE2SZDqhiHoooncNNv9fdh1hCNIj=w408-h306-k-no', 'https://goo.gl/maps/2xuzXP8uKTYJZ3up6', NULL),
('JAI02', 'BAORI AT ABHANERI', 'JAIPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNUOPyikcfjIcMs1eyq8aDoPAKckFenwG45-zUp=w408-h306-k-no', 'https://goo.gl/maps/xS5Fz99VpbvwJgc29', NULL),
('JAI03', 'DEEG BHAWAN', 'JAIPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipO07wWizpEJYR7aVyvVA2BeU8UgO_ZxemgYiuPl=w408-h272-k-no', 'https://goo.gl/maps/vFVK4xCNEURwNB9p7', NULL),
('JHA01', 'GUPTA TEMPLE & VARAH TEMPLE, D', 'JHANSI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMr91Hckb3Vmf0HRz71XY9cgXT_cLZ8SnYgslqf=w408-h306-k-no', 'https://goo.gl/maps/QkxzpsygdWjQFFE89', NULL),
('JHA02', 'KALINJAR FORT', 'JHANSI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP8ipeK3oCeq4RekEqwvwC0yVEMnRUaoreolail=w408-h289-k-no', 'https://goo.gl/maps/vHRaybYUfpZqhE2v6', NULL),
('JHA03', 'RANI JHANSI FORT', 'JHANSI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPPtwZnoHHfh2GqjMqaeaI_uwR6CzzwRT7ybDz5=w408-h306-k-no', 'https://goo.gl/maps/K6o39XNX56y5cu9L7', NULL),
('JHA04', 'RANI LAKSHMI BAI MAHAL', 'JHANSI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://maps.gstatic.com/tactile/pane/default_geocode-1x.png', 'https://goo.gl/maps/f1Zwjbrgwjn9qFMQA', NULL),
('JOD01', 'ARCHAEOLOGICAL SITE MUSEUM, KA', 'JODHPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOmLYxfhN_Ke8OyDXV_YpAfJz7MdkGBVsSOPUpp=w408-h306-k-no', 'https://goo.gl/maps/mU5zpwFyhFdaovCw6', NULL),
('JOD02', 'CHITTAURGARH FORT', 'JODHPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPJG_6ctysJBvlef47NSPafnDj17OwJ41qOgnVx=w426-h240-k-no', 'https://goo.gl/maps/wSzdPngQiWGcH5ez5', NULL),
('JOD03', 'KUMBHALGARH FORT', 'JODHPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP9aS3MAxAAlGsNzlygnq7XpynebBwweob_gU1A=w420-h240-k-no', 'https://goo.gl/maps/FSgrrwffi5awLJqP9', NULL),
('JOD04', 'MARBLE PAVILLION AND BALUSTARD', 'JODHPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.asijodhpurcircle.in%2Fmonuments&psig=AOvVaw3SqZ6GHcvmFUVLiMzVOOaW&ust=1647497292982000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDd6Ov7yfYCFQAAAAAdAAAAABAD', 'https://goo.gl/maps/8pvgDKn42P31xvcs7', NULL),
('KOL01', 'BISHNUPUR TEMPLES', 'KOLKATA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://s3.ap-southeast-1.amazonaws.com/gounesco.com/wp-content/uploads/2016/05/12202632/Rasmanch-3-1024x759.jpg', 'https://goo.gl/maps/skMMAJS86HCY3JN26', NULL),
('KOL02', 'MATCALFE-HALL', 'KOLKATA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'http://www.firstpost.com/wp-content/uploads/2019/06/Metcalfe-Hall-2.jpg', 'https://goo.gl/maps/ZSihAFiToZe6w3kp8', NULL),
('LEH01', 'ANCIENT PALACE LEH', 'LEH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.culturalindia.net/iliimages/Leh-Palace-ili-34-img-1.jpg', 'https://goo.gl/maps/TDupSey4Qo1FxjkJ8', NULL),
('LUC01', 'PIPRAHWA & GANWARIA', 'LUCKNOW', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://en.wikipedia.org/wiki/File:Kapilavastu_Stupas-Original-00020.jpg', 'https://goo.gl/maps/SHmAZQP1ZcCs6m1J9', NULL),
('LUC02', 'RESIDENCY BUILDINGS', 'LUCKNOW', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.shadowsgalore.com/wp-content/uploads/2019/03/Lucknow-Residency-55.jpg', 'https://goo.gl/maps/oYB9iqKfag5B1Ett5', NULL),
('LUC03', 'SITE OF SAHET –MAHET', 'LUCKNOW', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://imgcld.yatra.com/ytimages/image/upload/t_monuments_detailslargeimg/v1514015087/Monuments/balrampur/385a67c7-0c8e-421c-8e31-f632b14fe626/1_Fk5pyw.jpg', 'https://goo.gl/maps/xbX2cQ2Hq4ZwGYWr5', NULL),
('MUM01', 'CAVE, TEMPLE AND INSCRIPTIONS,', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://res.cloudinary.com/dwzmsvp7f/image/fetch/q_75,f_auto,w_800/http%3A%2F%2Fres.cloudinary.com%2Fdwzmsvp7f%2Fimage%2Fupload%2Fv1571730025%2Fuoqp59gw585iauxxtx0g.jpg', 'https://goo.gl/maps/udQsawGD98QdkAsq9', NULL),
('MUM02', 'CAVES, TEMPLES AND INSCRIPTION', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lakshmisharath.com/wp-content/uploads/2017/07/Bhaja-Caves.jpg', 'https://goo.gl/maps/7TxhyCRrKN51Pnqi6', NULL),
('MUM03', 'ELEPHANTA CAVES', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://en.wikivoyage.org/wiki/File:Elephanta_Cave_1_C1.jpg', 'https://goo.gl/maps/Sqs3eXYLgCtCkkLG9', NULL),
('MUM04', 'JANJIRA FORT,MUMRD', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.hindujagruti.org/wp-content/uploads/2015/02/Murud_Janjira_640.jpg', 'https://goo.gl/maps/yCgumuUCMVLLz2Ct6', NULL),
('MUM05', 'KOLABA FORT, ALIBAG', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'http://www.ekdantholidayhome.com/images/atract1.jpg', 'https://goo.gl/maps/FvaF2GXa6pkQZf6v8', NULL),
('MUM06', 'KONDIVTE CAVES', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.artstor.org/wp-content/uploads/2016/07/awss35953_35953_33228742-768x576.jpg', 'https://goo.gl/maps/CGfz8VJdGZLdQn2n6', NULL),
('MUM07', 'LOHGAD FORT', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.whatshot.in/pune/stone-caved-pond-on-lohagad-fort-c-15660', 'https://goo.gl/maps/b6NjDrTmhN95tUCM8', NULL),
('MUM08', 'OLD FORT, SHOLAPUR  20,250', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://mr.wikipedia.org/wiki/%E0%A4%9A%E0%A4%BF%E0%A4%A4%E0%A5%8D%E0%A4%B0:Solapur_Fort_1-Solapur-_Maharashtra.jpg', 'https://goo.gl/maps/N48ca2m2vgDLniti8', NULL),
('MUM09', 'RAIGAD FORT', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/02/13/790557-raigad-fort-01.jpg', 'https://goo.gl/maps/rj6ZyaazThBH8m1b6', NULL),
('MUM10', 'SHANIWARWADA', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,q_auto/v1/filestore/480xyutg27yqds55oev43kmcu67p_image.jpg', 'https://goo.gl/maps/xTgxdXTqSnUPKbLY8', NULL),
('MUM11', 'AGA KHAN PALACE BUILDING, PUNE', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.mkgandhi.org/images/agakhan.jpg', 'https://goo.gl/maps/TiWCHUKchFbJjKNL9', NULL),
('MUM12', 'BUDDHIST CAVES, KANHERI', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://en.wikipedia.org/wiki/File:Kanheri_Caves_prayer_hall.JPG', 'https://goo.gl/maps/ZKMW6h9d4Sm3KBzv5', NULL),
('MUM13', 'CAVE, TEMPLE & INSCRIPTIONS, B', 'MUMBAI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://en.wikipedia.org/wiki/File:017_Chaitya_Hall_and_nearby_Caves_(33692641645).jpg', 'https://www.gstatic.com/images/icons/material/system_gm/2x/share_gm_blue_18dp.png', NULL),
('NAG01', 'ANCIENT BUDDHIST REMAINS COMPR', 'NAGPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://th-thumbnailer.cdn-si-edu.com/ueHg3cPIjzFc9bXyvq6sC2IqCkQ=/1000x750/filters:no_upscale():focal(668x325:669x326)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/5e/e7/5ee75552-8f1e-4327-8cdc-422b3035c9d8/pic-5-8.jpg', 'https://goo.gl/maps/2ve2ghgJ6PNkA3rN7', NULL),
('NAG02', 'GAWILGARH FORT', 'NAGPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.ffo.gov.in/uploads/location_photos/Gawligarh-768x577.png', 'https://goo.gl/maps/w3mtLuBs4WJEjish8', NULL),
('PAT01', 'ANCIENT RUINS VAISHALI', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.google.com/url?sa=i&url=http%3A%2F%2Funexploredbihar.blogspot.com%2F2016%2F03%2Fremains-of-ancient-vaishali-and-ashoka.html&psig=AOvVaw2gQMnWi8-KINVaDh9Rfi3e&ust=1647493305726000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCICW0__syfYCFQAAAAAdAAAAABAJ', 'https://goo.gl/maps/tcebnVNPz3TweWYm6', NULL),
('PAT02', 'ANCIENT SITE OF VIKRAMSHILA', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://imgcld.yatra.com/ytimages/image/upload/t_mobiledetailsimg/v1514642652/Monuments/Vikramshila/b788c090-cd63-441b-b221-f9e92844a2cd/1_aBhsjk.jpg', 'https://goo.gl/maps/ui5xk2tXUWUKFjX58', NULL),
('PAT03', 'ARCHAEOLOGICAL SITEMUMSEUM, BO', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.tripinvites.com/places/bodh-gaya/bodhgaya-multimedia-museum/photos-of-bodhgaya-multimedia-museum/', 'https://goo.gl/maps/EBgVLX3RUC87yeCv6', NULL),
('PAT04', 'ARCHAEOLOGICAL SITEMUMSEUM, NA', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://en.wikipedia.org/wiki/File:Nalanda_University_ruins.JPG', 'https://goo.gl/maps/RTjr8VCqyg6uGpzp6', NULL),
('PAT05', 'ARCHAEOLOGICAL SITEMUMSEUM, VA', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Relicstupa-vaishali.jpg/1280px-Relicstupa-vaishali.jpg', 'https://goo.gl/maps/ehwXDhTsdMnCeEXg6', NULL),
('PAT06', 'EXCAVATED SITE, NALANDA', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.outlookindia.com/traveller/wp-content/uploads/2017/09/nalanda1_TI.jpg', 'https://goo.gl/maps/8uRCdQKFHjvKHdRC8', NULL),
('PAT07', 'SHER SHAH’S TOMB', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://images.thrillophilia.com/image/upload/s--3H7XLF9U--/c_fill,h_600,q_auto,w_975/f_auto,fl_strip_profile/v1/images/photos/000/365/049/original/1628940998_6117aa8a31a93.jpg.jpg?1628940998', 'https://goo.gl/maps/p2YAz2ZtBAT17pJy5', NULL),
('PAT08', 'SITE OF MAURYAN PALACE', 'PATNA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.indianetzone.com/photos_gallery/102/Palace_of_Ashoka__Kumrahar_2.jpg', 'https://goo.gl/maps/NH26DmXgMWRCDyWb9', NULL),
('RAI01', 'HTTPS://ASSETS-NEWS.HOUSING.CO', 'RAIGANJ', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://goo.gl/maps/FGGKwvT5X5UT9wqT8', 'https://goo.gl/maps/FGGKwvT5X5UT9wqT8', NULL),
('RAJ01', 'SOKAN ROCK EDICT, JUNAGADH', 'RAJKOT', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.gujarattourism.com/content/dam/gujrattourism/images/june/Ashoka-Rock-Edict.jpg', 'https://goo.gl/maps/ty3RqHGm9xYGX5ji9', NULL),
('RAJ02', 'BABA PYARE, KHAPRAKODIA CAVES', 'RAJKOT', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Baba_Pyra_caves.jpg/1280px-Baba_Pyra_caves.jpg', 'https://goo.gl/maps/uApFwsSpz72SpLUQ6', NULL),
('RAJ03', 'BUDDHISH CAVES, JUNAGADH', 'RAJKOT', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://www.gujarattourism.com/content/dam/gujrattourism/images/buddhist-circuit/buddhist-caves-of-khapra-kodiya/Buddhist-Caves-of-Khapra-Kodiya1.jpg', 'https://goo.gl/maps/i8pRw4h2W11NokSk7', NULL),
('RPR01', 'TEMPLE OF LAXMAN AND OLD SITES', 'RAIPUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPcxI7gbnga81KZT4mYhXPdMfm3zv45cKpXZ_zp=w408-h306-k-no', 'https://goo.gl/maps/fU63Ha6UXBCSQAP46', NULL),
('SAR01', 'ANCIENT BUDDHIST SITE KNOW AS ', 'SARNATH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMeMh2dqUcAlVobgpWeOMD4c57F-77qnC1e4XJt=w408-h306-k-no', 'https://goo.gl/maps/MTaSs9ajCwZXN3Ts9', NULL),
('SAR02', 'LORD CORNWALLIS TOMB', 'SARNATH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOhRpTWADZBYGdwt6vQJBF6lhZJ3icizt5yxJoy=w408-h302-k-no', 'https://goo.gl/maps/Fg934Dy7y8oPYtWz6', NULL),
('SAR03', 'OBSERVATORY OF MAN SINGH', 'SARNATH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOovKa9p2oDkUgiucD36B_PTJEjJiKPnMQsHdhM=w408-h306-k-no', 'https://goo.gl/maps/v5pW5mvstTVsGnuYA', NULL),
('SAR04', 'OLD FORT', 'SARNATH', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNlMwSQ00wENuTGInRYoWBpyKOgiy70rb5UVEfA=w408-h306-k-no', 'https://goo.gl/maps/YXGRxWPXabVzuGnU7', NULL),
('SHI01', 'ROCK-CUT TEMPLES AND SCULPTURE', 'SHIMLA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipO1QMEbGPHaLoEjODa8yMxi7j6n6ZUw34SNU2IT=w408-h270-k-no', 'https://goo.gl/maps/UYzv1kYqSGCuHjn36', NULL),
('SHI02', 'RUINED FORT, KANGRA', 'SHIMLA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipM6eYf9hWQAupx-V4ryaEQ3gW1vIRZAMaJ6Q_Ar=w408-h306-k-no', 'https://goo.gl/maps/zfeqhj8hhTmn9xKT8', NULL),
('SRI01', 'ANCIENT PALACES ATTRIBUTED TO ', 'SRINAGAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOI0YJAfdy-MOt7qR_fK9B9-Gms3DAbZulw-xyl=w408-h306-k-no', 'https://goo.gl/maps/b5wCKYLh4eTHcXw8A', NULL),
('SRI02', 'AWANTISWAMI TEMPLE', 'SRINAGAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNRkqgmKnfCWbSJfEDHucQjMvA82p_AJn6KamSL=w408-h306-k-no', 'https://goo.gl/maps/1BSmA6bdY7VKx8SA7', NULL),
('SRI03', 'GROUP OF TEMPLES, KIRAMCHI', 'SRINAGAR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNM6p6ekprJc8UGdhtS9v4h1KuHB11EK5_cpAPX=w426-h240-k-no', 'https://goo.gl/maps/3ruxpcjAeaHidQCW6', NULL),
('THI01', 'FORT VATTAKOTTAI', 'TIRUCHIRAPALLI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOX9Hcf-A_Cydysmx9ErSrum1MAymqpSH3oY152=w408-h272-k-no', 'https://goo.gl/maps/UT3DqzULsvhXZg7y8', NULL),
('THI02', 'FORT, DINDIGUL', 'TIRUCHIRAPALLI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMicwBx-6k8CIGBBXqbjlTcavoYo3ZDKQg0KTd9=w408-h306-k-no', 'https://goo.gl/maps/gQoWREhdPRwi7qdf6', NULL),
('THI03', 'FORT, TIRUMAYAM', 'TIRUCHIRAPALLI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPs0E_d4v0iGpcQJm9agLIEXrwCKvBX7zC6iBzv=w408-h291-k-no', 'https://goo.gl/maps/Xwo6cQJDX3g5F7pi8', NULL),
('THI04', 'MUVARKOIL', 'TIRUCHIRAPALLI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPs28lSosJ_XTxbFFZ0iXL-HrNmknKuTbK_m9Xr=w408-h272-k-no', 'https://goo.gl/maps/SNMSovLbEtnNo6Ys5', NULL),
('THI05', 'NATURAL CAVERN CALLED ELADIPAT', 'TIRUCHIRAPALLI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNT0mgiA2zcOoCoYpWZbiVdTIS-CN3odjRzDd2t=w408-h510-k-no', 'https://goo.gl/maps/LdDSPbwu7swDquov5', NULL),
('THI06', 'ROCK CUT JAIN TEMPLE, SITTANAV', 'TIRUCHIRAPALLI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNT0mgiA2zcOoCoYpWZbiVdTIS-CN3odjRzDd2t=w408-h510-k-no', 'https://goo.gl/maps/LdDSPbwu7swDquov5', NULL),
('THI07', 'TIRUMALAI NAYAK PALACE SRIVILL', 'TIRUCHIRAPALLI', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMfWT-ExaWv_XkHwiMr1Z08EoJwWzbaTnrRTcsL=w408-h306-k-no', 'https://goo.gl/maps/ikitbP7EyqKVxPGVA', NULL),
('THR01', 'BEKAL FORT', 'THRISSUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOzyxstttQRwXXd5wrwIcOZdxYqyOM9EyCywzFm=w408-h307-k-no', 'https://goo.gl/maps/SDg1zBkuK7bSTxAC8', NULL),
('THR02', 'FORT ST. ANGELO, KANNUR', 'THRISSUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOpdjjcZpkdWtRKOTzdW9kPUTVZju5fOE4VUTDr=w426-h240-k-no', 'https://goo.gl/maps/7uraoJT319WVaf6dA', NULL),
('THR03', 'FORT, PALAKKAD, PALAKKAD', 'THRISSUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipOGzmQ7ctbn1OpBwAc_KBsvdHCzIaNiFhnBSBvH=w408-h306-k-no', 'https://goo.gl/maps/PnUrfayfywi1cvVd9', NULL),
('THR04', 'MATTANCHERRY PALACE MUSEUM', 'THRISSUR', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/proxy/C9CeFeTb_wNa6DtuYWgg9vbFfVfc4WiPA8TDm7bM6K4d3Zqzt1OA2Oc4VNf50OF6Gb8ULJC4yu7laJry1R3OA797ZK2ZNO3YymTn1ykZaFiesu4k8vtm5UE7cH22cVXvRvIcdVhvLvKxCPmko1IdVtpcyPRaCg=w408-h271-k-no', 'https://goo.gl/maps/BSktgBKrJvtnZtre6', NULL),
('VAD01', 'ARCHAEOLOGICAL SITE MUSEUM, DH', 'VADODARA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipMjAwHBfk2wN-3XoVBOYZlwDW85fl0M2BH0njGP=w408-h306-k-no', 'https://goo.gl/maps/PtAjG1KtEJHcKNxHA', NULL),
('VAD02', 'ARCHAEOLOGICAL SITE MUSEUM, LO', 'VADODARA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipM5q9zqx9QNZclq6l3Q2fOmBx2WH5eSZy6ij1pK=w408-h272-k-no', 'https://goo.gl/maps/icbxwwDCXxDveRSj7', NULL),
('VAD03', 'CHAMPANER MONUMENTS', 'VADODARA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipPEhbDrwJyfgXIWxT5k3dFu7uUA-tv3vBUotVUm=w408-h271-k-no', 'https://goo.gl/maps/fa6isNsv3iWbFwZWA', NULL),
('VAD04', 'RANI KI-VAV, PATAN', 'VADODARA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipP0lScSMZHzZHqrVOIpOmhGcP8PPToCvYE75JiK=w408-h306-k-no', 'https://g.page/theranikivav?share', NULL),
('VAD05', 'RUDABAI STEP WELL, ADALAJ', 'VADODARA', '20.00', '1050.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipN7lYAbs1L2Lkqpr5RAzZMSJ3_PnejOiOA7CYlJ=w408-h305-k-no', 'https://goo.gl/maps/8p6DbqKB3b96LbgT9', NULL),
('VAD06', 'SUN TEMPLE', 'VADODARA', '20.00', '250.00', '20.00', '20.00', '100.00', '200.00', 'Temp', 'https://lh5.googleusercontent.com/p/AF1QipNde8hMeIrVBnXUTP7GGM8VZ0Vs4yN02_frg1Z3=w408-h268-k-no', 'https://goo.gl/maps/Y1eheEAhRFqAyakG6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mh_visitors`
--

CREATE TABLE `mh_visitors` (
  `DATE_` date DEFAULT NULL,
  `MH_ID` varchar(40) NOT NULL,
  `MH_NAME` varchar(30) DEFAULT NULL,
  `MH_LOCATION` varchar(20) DEFAULT NULL,
  `NO_OF_VISITORS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mh_visitors`
--

INSERT INTO `mh_visitors` (`DATE_`, `MH_ID`, `MH_NAME`, `MH_LOCATION`, `NO_OF_VISITORS`) VALUES
(NULL, '', 'AGRA FORT', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_table`
--

CREATE TABLE `ticket_table` (
  `TICKET_ID` varchar(40) NOT NULL,
  `USER_ID` varchar(20) DEFAULT NULL,
  `TRANSACTION_ID` varchar(40) DEFAULT NULL,
  `S_CODE` varchar(28) DEFAULT NULL,
  `USER_NAME` varchar(30) DEFAULT NULL,
  `EMAIL_ID` varchar(30) DEFAULT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `NATIONALITY` varchar(20) DEFAULT NULL,
  `MH_NAME` varchar(30) DEFAULT NULL,
  `MH_LOCATION` varchar(20) DEFAULT NULL,
  `BOOKING_DATE` date DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `DATE_OF_ISSUE` date DEFAULT NULL,
  `TIME_OF_ISSUE` varchar(9) DEFAULT NULL,
  `TOTAL_AMOUNT` int(20) DEFAULT NULL,
  `STATUS` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_table`
--

INSERT INTO `ticket_table` (`TICKET_ID`, `USER_ID`, `TRANSACTION_ID`, `S_CODE`, `USER_NAME`, `EMAIL_ID`, `PHONE_NUMBER`, `NATIONALITY`, `MH_NAME`, `MH_LOCATION`, `BOOKING_DATE`, `QUANTITY`, `DATE_OF_ISSUE`, `TIME_OF_ISSUE`, `TOTAL_AMOUNT`, `STATUS`) VALUES
('order_J7e9Dr9OZp2ZUY', 'ABCD', NULL, 'order_J7e9Dr9OZp2ZUY', 'ABCD', NULL, NULL, NULL, 'AGRA FORT', NULL, NULL, 6, '2022-03-17', NULL, 220, NULL),
('order_J7eDEg5PpvEujS', 'sohan', NULL, 'order_J7eDEg5PpvEujS', 'sohan', NULL, NULL, NULL, 'TAJ MAHAL', NULL, NULL, 9, '2026-11-19', NULL, 705, NULL),
('order_J8PsH0RbD33K1m', 'ketan', NULL, 'order_J8PsH0RbD33K1m', 'ketan', NULL, NULL, NULL, 'AGRA FORT', NULL, NULL, 1, '2022-03-19', NULL, 120, NULL),
('order_J8yAbqH4wTA1YN', 'idk2', NULL, 'order_J8yAbqH4wTA1YN', 'idk2', NULL, NULL, NULL, 'AGRA FORT', NULL, NULL, 2, '2022-03-20', NULL, 140, 'USED'),
('order_J8yCH6a2kLeWH5', 'idk2', NULL, 'order_J8yCH6a2kLeWH5', 'idk2', NULL, NULL, NULL, 'AKBAR TOMB SIKANDRA', NULL, NULL, 2, '2022-03-26', NULL, 40, 'USED'),
('order_J8yQnT0Fk77pzd', 'idk2', NULL, 'order_J8yQnT0Fk77pzd', 'idk2', NULL, NULL, NULL, 'FATEHPUR SIKRI', NULL, NULL, 1, '2022-03-20', NULL, 120, 'USED'),
('order_J8z7F4AKgzRUsw', 'idk2', NULL, 'order_J8z7F4AKgzRUsw', 'idk2', NULL, NULL, NULL, 'FATEHPUR SIKRI', NULL, NULL, 1, '2022-03-20', NULL, 20, 'UNUSED'),
('order_J9GjhGQUO5pJGT', 'Shobhana', NULL, 'order_J9GjhGQUO5pJGT', 'Shobhana', NULL, NULL, NULL, 'CHARMINAR ', NULL, NULL, 1, '2022-03-21', NULL, 20, 'USED'),
('order_J9Gnn8AYBNzUTI', 'Shobhana', NULL, 'order_J9Gnn8AYBNzUTI', 'Shobhana', NULL, NULL, NULL, 'FORTRESS AND TEMPLES ON THE HI', NULL, NULL, 2, '2022-03-21', NULL, 40, 'USED'),
('order_J9GpUd1IXbzJQ7', 'Shobhana', NULL, 'order_J9GpUd1IXbzJQ7', 'Shobhana', NULL, NULL, NULL, 'AJANTA CAVES', NULL, NULL, 1, '2022-03-24', NULL, 20, 'USED'),
('order_JB0nKieHMTPB66', 'idk', NULL, 'order_JB0nKieHMTPB66', 'idk', NULL, NULL, NULL, 'TAJ MAHAL', NULL, NULL, 1, '2022-03-25', NULL, 45, 'UNUSED'),
('order_JBCB9nLuzGSeLx', 'abcd', NULL, 'order_JBCB9nLuzGSeLx', 'abcd', NULL, NULL, NULL, 'ARCHAEOLOGICAL SITE MUSEUM, OL', NULL, NULL, 5, '2022-03-31', NULL, 400, 'UNUSED'),
('order_JBCDBqD3Zkwb76', 'abcd', NULL, 'order_JBCDBqD3Zkwb76', 'abcd', NULL, NULL, NULL, 'TAJ MAHAL', NULL, NULL, 5, '2026-11-25', NULL, 425, 'UNUSED'),
('order_JBCVG903QTTqFS', 'idk2', NULL, 'order_JBCVG903QTTqFS', 'idk2', NULL, NULL, NULL, 'PURANA QILA LAKE', NULL, NULL, 2, '2022-03-26', NULL, 340, 'UNUSED');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `USER_ID` varchar(20) NOT NULL,
  `USER_NAME` varchar(30) DEFAULT NULL,
  `EMAIL_ID` varchar(30) DEFAULT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `ACCOUNT_CREATION_DATE` date DEFAULT NULL,
  `ACCOUNT_CREATION_TIME` varchar(9) DEFAULT NULL,
  `NATIONALITY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`USER_ID`, `USER_NAME`, `EMAIL_ID`, `PHONE_NUMBER`, `PASSWORD`, `ACCOUNT_CREATION_DATE`, `ACCOUNT_CREATION_TIME`, `NATIONALITY`) VALUES
('ABC', 'ABC', 'abc@gmail.com', 'something', 'fukrey', '0000-00-00', '0:0:0', 'INDIAN'),
('ABCD', 'ABCD', 'ABCAAA@GMAIL.COM', 'something', 'abcd', '0000-00-00', '0:0:0', 'INDIAN'),
('IDK', 'IDK', 'IDK@GMAIL.COM', '9876543210', '0123456789', '0000-00-00', '05:05:05', 'INDIAN'),
('idk2', 'idk2', 'ik@gmail.com', 'something', '0123456789', '0000-00-00', '0:0:0', 'INDIAN'),
('ik', 'ik', 'ik@mail.com', 'something', '1234', '0000-00-00', '0:0:0', 'INDIAN'),
('ik2', 'ik2', 'ik@mail.com', 'something', '1234', '0000-00-00', '0:0:0', 'INDIAN'),
('ketan', 'ketan', 'ketanbhailikar@gmail.com', 'something', 'mypassword', '0000-00-00', '0:0:0', 'INDIAN'),
('Shobhana', 'Shobhana', 'shobhanabhailikar@gmail.com', 'something', 'skb', '0000-00-00', '0:0:0', 'INDIAN'),
('sohan', 'sohan', 'Mallelasohanm@asdjk.com', 'something', 'sohan12345678', '0000-00-00', '0:0:0', 'INDIAN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_loc`
--
ALTER TABLE `admin_loc`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `admin_mh`
--
ALTER TABLE `admin_mh`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `admin_t`
--
ALTER TABLE `admin_t`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD PRIMARY KEY (`S_CODE`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `city_table`
--
ALTER TABLE `city_table`
  ADD PRIMARY KEY (`CITY_NAME`);

--
-- Indexes for table `mh_table`
--
ALTER TABLE `mh_table`
  ADD PRIMARY KEY (`MH_ID`),
  ADD KEY `LOC` (`MH_LOCATION`);

--
-- Indexes for table `mh_visitors`
--
ALTER TABLE `mh_visitors`
  ADD PRIMARY KEY (`MH_ID`);

--
-- Indexes for table `ticket_table`
--
ALTER TABLE `ticket_table`
  ADD PRIMARY KEY (`TICKET_ID`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD CONSTRAINT `booking_table_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user_details` (`USER_ID`);

--
-- Constraints for table `mh_table`
--
ALTER TABLE `mh_table`
  ADD CONSTRAINT `LOC` FOREIGN KEY (`MH_LOCATION`) REFERENCES `city_table` (`CITY_NAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
