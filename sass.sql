-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 12:38 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sass`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_deds`
--

CREATE TABLE `emp_deds` (
  `id` int(11) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `empLic` double DEFAULT NULL,
  `empIt` double DEFAULT NULL,
  `empcpf` double DEFAULT NULL,
  `empother` double DEFAULT NULL,
  `empdosal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_infos`
--

CREATE TABLE `emp_infos` (
  `id` int(11) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `empname` varchar(255) DEFAULT NULL,
  `empsname` varchar(255) DEFAULT NULL,
  `empgen` varchar(255) DEFAULT NULL,
  `empdes` varchar(255) DEFAULT NULL,
  `empdept` varchar(255) DEFAULT NULL,
  `empqua` varchar(255) DEFAULT NULL,
  `empphno` varchar(255) DEFAULT NULL,
  `empemail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_infos`
--

INSERT INTO `emp_infos` (`id`, `empid`, `empname`, `empsname`, `empgen`, `empdes`, `empdept`, `empqua`, `empphno`, `empemail`) VALUES
(1, '70CIV01', 'S M V Narayana', 'smvnarayana', 'm', 'Principal', 'CIV', 'M.Tech,Ph.D.', '12345678', 'fac@gmail.com'),
(2, '70CIV02', 'T.Naresh Kumar', 'tnareshkumar', 'm', 'Asst. Prof.', 'CIV', 'M.Tech.', '12345679', 'fac@gmail.com'),
(3, '70CIV03', 'M.Nagarjuna', 'mnagarjuna', 'm', 'Asst. Prof.', 'CIV', 'B.Tech.', '12345680', 'fac@gmail.com'),
(4, '70CIV04', 'P.Venkata Nagaraja', 'pvenkatanagaraja', 'm', 'Asst. Prof.', 'CIV', 'M.Sc.', '12345681', 'fac@gmail.com'),
(5, '70CIV05', 'V.Haneef', 'vhaneef', 'm', 'Asst. Prof.', 'CIV', 'B.Tech.', '12345682', 'fac@gmail.com'),
(6, '70CIV06', 'N R Gowthami', 'nrgowthami', 'm', 'Asst. Prof.', 'CIV', 'M.Tech.', '12345683', 'fac@gmail.com'),
(7, '70CIV07', 'D.Gayathri', 'dgayathri', 'm', 'Asst. Prof.', 'CIV', 'B.Tech.', '12345684', 'fac@gmail.com'),
(8, '70CIV08', 'N.Madhava Reddy', 'nmadhavareddy', 'm', 'Asst. Prof.', 'CIV', 'M.Tech.', '12345685', 'fac@gmail.com'),
(9, '70CIV09', 'G.Venkata Subash', 'gvenkatasubash', 'm', 'Asst. Prof', 'CIV', 'B.Tech.', '12345686', 'fac@gmail.com'),
(10, '70CIV10', 'K.Anitha', 'kanitha', 'm', 'Asst.Prof.', 'CIV', 'B.Tech.', '12345687', 'fac@gmail.com'),
(11, '70CIV11', 'N.Sandhya Rani', 'nsandhyarani', 'm', 'Asst.Prof', 'CIV', 'B.Tech.', '12345688', 'fac@gmail.com'),
(12, '70CIV12', 'K.Sumana', 'ksumana', 'm', 'Asst.Prof.', 'CIV', '', '12345689', 'fac@gmail.com'),
(13, '70CIV13', 'Golla Rajesh', 'grajesh', 'm', 'Asst.Prof.', 'CIV', '', '12345690', 'fac@gmail.com'),
(14, '70CIV14', 'N.Janardhan Reddy', 'njanardhanreddy', 'm', 'Asst.Prof.', 'CIV', '', '12345691', 'fac@gmail.com'),
(15, '70CSE01', 'A.Subramanyam', 'asubramanyam', 'm', 'Professor', 'CSE', 'B.E, M.Tech., Ph.D.', '12345692', 'fac@gmail.com'),
(16, 'aits051001', 'M.Rudra Kumar', 'mrudrakumar', 'm', 'Asso. Prof.', 'CSE', 'M.Tech', '12345693', 'fac@gmail.com'),
(17, 'aits051002', 'K.Uday Kumar reddy', 'kudaykumarreddy', 'm', 'Asst. Prof.', 'CSE', 'M.E.', '12345694', 'fac@gmail.com'),
(18, 'aits051003', 'T.N.Ranganadham', 'tnranganadham', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345695', 'fac@gmail.com'),
(19, 'aits051004', 'J.Krishna', 'jkrishna', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345696', 'fac@gmail.com'),
(20, 'aits051005', 'K.Prasanna', 'kprasanna', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345697', 'fac@gmail.com'),
(21, 'aits051006', 'P.Phanindra Kumar Reddy', 'pphanindrakumarreddy', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345698', 'fac@gmail.com'),
(22, 'aits051007', 'G.Suryanarayana', 'gsuryanarayana', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345699', 'fac@gmail.com'),
(23, 'aits051008', 'K.L.N.C.Prakash', 'klncprakash', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345700', 'fac@gmail.com'),
(24, 'aits051009', 'S.Suraj Kamal', 'ssurajkamal', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345701', 'fac@gmail.com'),
(25, 'aits051010', 'C.V.Lakshmi Narayana', 'cvlakshminarayana', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345702', 'fac@gmail.com'),
(26, 'aits051011', 'M M Venkata Chalapathy', 'mmvenkatachalapathy', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345703', 'fac@gmail.com'),
(27, 'aits051012', 'S.Aleem Basha', 'saleembasha', 'm', 'Asst. Prop.', 'CSE', 'M.Tech.', '12345704', 'fac@gmail.com'),
(28, 'aits051013', 'A.Ramesh Babu', 'arameshbabu', 'm', 'Asst. Prof.', 'CSE', 'M.Tech. ', '12345705', 'fac@gmail.com'),
(29, 'aits051014', 'M.Nageswara Prasad', 'mnageswaraprasad', 'm', 'Asst. Prof.', 'CSE', 'M. Tech.', '12345706', 'fac@gmail.com'),
(30, 'aits051015', 'Z.Sobha Rani', 'zsobharani', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345707', 'fac@gmail.com'),
(31, 'aits051016', 'Dr.G.Vinit Kumar', 'drgvinitkumar', 'm', 'Asst. Prof.', 'CSE', 'M.Tech, Ph.D', '12345708', 'fac@gmail.com'),
(32, 'aits051017', 'N.Penchalaiah', 'npenchalaiah', 'm', 'Asst. Prof.', 'CSE', 'M. Tech.', '12345709', 'fac@gmail.com'),
(33, 'aits051018', 'J.Maruthi Nagendra Prasad', 'jmaruthinagendraprasad', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345710', 'fac@gmail.com'),
(34, 'aits051019', 'A.Vijaya Krishna', 'avijayakrishna', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345711', 'fac@gmail.com'),
(35, 'aits051020', 'O.Prasanthi', 'oprasanthi', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345712', 'fac@gmail.com'),
(36, 'aits051021', 'C.Naga Swaroopa', 'cnagaswaroopa', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345713', 'fac@gmail.com'),
(37, 'aits051022', 'S.Salma Bagum', 'ssalmabagum', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345714', 'fac@gmail.com'),
(38, 'aits051023', 'L.Ramya', 'lramya', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345715', 'fac@gmail.com'),
(39, 'aits051024', 'K.Venkata Sravani', 'kvenkatasravani', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345716', 'fac@gmail.com'),
(40, 'aits051025', 'C.Suguna Devi', 'csugunadevi', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345717', 'fac@gmail.com'),
(41, 'aits051026', 'B.Naveen Kumar', 'bnaveenkumar', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345718', 'fac@gmail.com'),
(42, 'aits051027', 'A.Vishalakshi', 'avishalakshi', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345719', 'fac@gmail.com'),
(43, 'aits051028', 'T.Naga Lakshmi', 'tnagalakshmi', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345720', 'fac@gmail.com'),
(44, 'aits051029', 'Shaik Mahammad Rafi', 'shaikmahammadrafi', 'm', 'Asst. Prof.', 'CSE', 'M.Tech.', '12345721', 'fac@gmail.com'),
(45, 'aits051030', 'Raja Ashok Kumar', 'rajaashokkumar', 'm', 'Asst.Prof', 'CSE', 'M.Tech.', '12345722', 'fac@gmail.com'),
(46, 'aits051031', 'M.Suresh Babu', 'msureshbabu', 'm', 'Asst.Prof.', 'CSE', 'M.Tech.', '12345723', 'fac@gmail.com'),
(47, 'aits051032', 'G.Keerthi', 'gkeerthi', 'm', 'Asst.Prof.', 'CSE', 'M.Tech.', '12345724', 'fac@gmail.com'),
(48, 'aits051033', 'B.Abdul rahim', 'babdulrahim', 'm', 'Professor', 'ECE', 'M.Tech.', '12345725', 'fac@gmail.com'),
(49, 'aits051034', 'P.Lakshmi Devi', 'plakshmidevi', 'm', 'Asso. Prof.', 'ECE', 'M.Tech.', '12345726', 'fac@gmail.com'),
(50, 'aits051035', 'K.Sreenivasa Rao', 'ksreenivasarao', 'm', 'Asso. Prof.', 'ECE', 'M.Tech.', '12345727', 'fac@gmail.com'),
(51, 'aits051036', 'Ch Nagaraju', 'chnagaraju', 'm', 'Asso. Prof.', 'ECE', 'M.Tech.', '12345728', 'fac@gmail.com'),
(52, 'aits051037', 'Shaik Fahimuddin', 'shaikfahimuddin', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345729', 'fac@gmail.com'),
(53, 'aits051038', 'J.Damodhar', 'jdamodhar', 'm', 'Asst. Prof.', 'ECE', 'M.E.', '12345730', 'fac@gmail.com'),
(54, 'aits051039', 'R.Mahesh Kumar', 'rmaheshkumar', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345731', 'fac@gmail.com'),
(55, 'aits051040', 'P.Syamala Devi', 'psyamaladevi', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345732', 'fac@gmail.com'),
(56, 'aits051041', 'M.Venkata Das', 'mvenkatadas', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345733', 'fac@gmail.com'),
(57, 'aits051042', 'M.Ravikishore', 'mravikishore', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345734', 'fac@gmail.com'),
(58, 'aits051043', 'P.Brundavani', 'pbrundavani', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345735', 'fac@gmail.com'),
(59, 'aits051044', 'J.Chinna Babu', 'jchinnababu', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345736', 'fac@gmail.com'),
(60, 'aits051045', 'K.Riyazuddin', 'kriyazuddin', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345737', 'fac@gmail.com'),
(61, 'aits051046', 'P.Sukumar', 'psukumar', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345738', 'fac@gmail.com'),
(62, 'aits051047', 'K.Ramudu', 'kramudu', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345739', 'fac@gmail.com'),
(63, 'aits051048', 'K.Prasad', 'kprasad', 'm', 'Asst. Prof.', 'ECE', 'M.Tech. ', '12345740', 'fac@gmail.com'),
(64, 'aits051049', 'C.Venkatesh', 'cvenkatesh', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345741', 'fac@gmail.com'),
(65, 'aits051050', 'K.Naga Narasaiah Goud', 'knaganarasaiahgoud', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345742', 'fac@gmail.com'),
(66, '70ECE19', 'G.Tirumalaiah', 'gtirumalaiah', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345743', 'fac@gmail.com'),
(67, '70ECE20', 'P.Sivakalyani', 'psivakalyani', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345744', 'fac@gmail.com'),
(68, '70ECE21', 'M.Sreenath', 'msreenath', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345745', 'fac@gmail.com'),
(69, '70ECE22', 'M.Hanumanthu', 'mhanumanthu', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345746', 'fac@gmail.com'),
(70, '70ECE23', 'K.Mahesh Babu', 'kmaheshbabu', 'm', 'Asst. Prof.', 'ECE', 'B.Tech.', '12345747', 'fac@gmail.com'),
(71, '70ECE24', 'Shaik Fayaz Begum', 'shaikfayazbegum', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345748', 'fac@gmail.com'),
(72, '70ECE25', 'Shaik Karimullah', 'shaikkarimullah', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345749', 'fac@gmail.com'),
(73, '70ECE26', 'B.Sekhar', 'bsekhar', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345750', 'fac@gmail.com'),
(74, '70ECE27', 'C.Pakkiraiah', 'cpakkiraiah', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345751', 'fac@gmail.com'),
(75, '70ECE28', 'K.Ramanjaneyulu', 'kramanjaneyulu', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345752', 'fac@gmail.com'),
(76, '70ECE29', 'G.Sudha Kiran', 'gsudhakiran', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345753', 'fac@gmail.com'),
(77, '70ECE30', 'B B Shabharinath', 'bbshabharinath', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345754', 'fac@gmail.com'),
(78, '70ECE31', 'S.Nazeer Hussain', 'snazeerhussain', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345755', 'fac@gmail.com'),
(79, '70ECE32', 'S.Siva Kumar', 'ssivakumar', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345756', 'fac@gmail.com'),
(80, '70ECE33', 'B.Lakshmi Prasanna', 'blakshmiprasanna', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345757', 'fac@gmail.com'),
(81, '70ECE34', 'N.Bala Dastagiri', 'nbaladastagiri', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345758', 'fac@gmail.com'),
(82, '70ECE35', 'M.Sai Sarath Kumar', 'msaisarathkumar', 'm', 'Asst. Prof.', 'ECE', 'M.Tech.', '12345759', 'fac@gmail.com'),
(83, '70ECE36', 'K.Lakshmi Priyanka', 'klakshmipriyanka', 'm', 'Asst.Prof', 'ECE', 'M.Tech.', '12345760', 'fac@gmail.com'),
(84, '70EEE01', 'M.Padmalalitha', 'mpadmalalitha', 'm', 'Professor', 'EEE', 'M.Tech, Ph.D', '12345761', 'fac@gmail.com'),
(85, '70EEE02', 'O.Hemakesavulu', 'ohemakesavulu', 'm', 'Asso. Prof.', 'EEE', 'M.Tech', '12345762', 'fac@gmail.com'),
(86, '70EEE03', 'B.Murali Mohan', 'bmuralimohan', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345763', 'fac@gmail.com'),
(87, '70EEE04', 'P.B.Chennaiah', 'pbchennaiah', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345764', 'fac@gmail.com'),
(88, '70EEE05', 'P.Bhaskara Prasad', 'pbhaskaraprasad', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345765', 'fac@gmail.com'),
(89, '70EEE06', 'K.Harinath Reddy', 'kharinathreddy', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345766', 'fac@gmail.com'),
(90, '70EEE07', 'S.Sarada', 'ssarada', 'm', 'Asst. Prof.', 'EEE', 'M.Tech ', '12345767', 'fac@gmail.com'),
(91, '70EEE08', 'P.Suresh Babu', 'psureshbabu', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345768', 'fac@gmail.com'),
(92, '70EEE09', 'S.Anupama', 'sanupama', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345769', 'fac@gmail.com'),
(93, '70EEE10', 'C.Ganesh', 'cganesh', 'm', 'Asst. prof.', 'EEE', 'M.Tech.', '12345770', 'fac@gmail.com'),
(94, '70EEE11', 'S.Muqathiar Ali', 'smuqathiarali', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345771', 'fac@gmail.com'),
(95, '70EEE12', 'R.Madan Mohan', 'rmadanmohan', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345772', 'fac@gmail.com'),
(96, '70EEE13', 'M.Pala Prasad Reddy', 'mpalaprasadreddy', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345773', 'fac@gmail.com'),
(97, '70EEE14', 'S.Mahaboob Basha', 'smahaboobbasha', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345774', 'fac@gmail.com'),
(98, '70EEE15', 'M.Ramesh', 'mramesh', 'm', 'Asst. Prof', 'EEE', 'M.Tech.', '12345775', 'fac@gmail.com'),
(99, '70EEE16', 'Ch.Lenin Babu', 'chleninbabu', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345776', 'fac@gmail.com'),
(100, '70EEE17', 'N.Sreeramula Reddy', 'nsreeramulareddy', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345777', 'fac@gmail.com'),
(101, '70EEE18', 'L.Baya Reddy', 'lbayareddy', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345778', 'fac@gmail.com'),
(102, '70EEE19', 'S.Sanjeeva Rayudu', 'ssanjeevarayudu', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345779', 'fac@gmail.com'),
(103, '70EEE20', 'G.Venkatesh', 'gvenkatesh', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345780', 'fac@gmail.com'),
(104, '70EEE21', 'D.Sai Krishna Kanth', 'dsaikrishnakanth', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345781', 'fac@gmail.com'),
(105, '70EEE22', 'S.Srikanth Deekshit', 'ssrikanthdeekshit', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345782', 'fac@gmail.com'),
(106, '70EEE23', 'K.Sreedhar', 'ksreedhar', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345783', 'fac@gmail.com'),
(107, '70EEE24', 'M.Sai Sandeep', 'msaisandeep', 'm', 'Asst. Prof.', 'EEE', 'M.Tech.', '12345784', 'fac@gmail.com'),
(108, '70HS01', 'Dr.M.C.RAJU', 'drmcraju', 'm', 'Asso. Prof.', 'HS', 'M.Sc, M.Phil , Ph.D., M.Tech', '12345785', 'fac@gmail.com'),
(109, '70HS02', 'L.Harikrishna', 'lharikrishna', 'm', 'Asst. Prof.', 'HS', 'M.Sc, M.Phil., \nPh.D\n', '12345786', 'fac@gmail.com'),
(110, '70HS03', 'N.Ananda Reddy', 'nanandareddy', 'm', 'Asst. Prof.', 'HS', 'M.Sc, M.Phil., \nPh.D\n', '12345787', 'fac@gmail.com'),
(111, '70HS04', 'L.Obulapathi', 'lobulapathi', 'm', 'Asst. Prof.', 'HS', 'M.Sc., M.Phil. M.Tech.Ph.D', '12345788', 'fac@gmail.com'),
(112, '70HS05', 'B.Bala Nagendra Prasad', 'bbalanagendraprasad', 'm', 'Asst. Prof.', 'HS', 'M.A., M.Phil. \nPh.D..  PGCTE, PGDTE,\n', '12345789', 'fac@gmail.com'),
(113, '70HS06', 'M.Praveena', 'mpraveena', 'm', 'Asst. Prof.', 'HS', 'M.A., M.Phil. ', '12345790', 'fac@gmail.com'),
(114, '70HS07', 'V.Ravi Kumar', 'vravikumar', 'm', 'Asst. Prof.', 'HS', 'M.Sc., M.Phil, Ph.D', '12345791', 'fac@gmail.com'),
(115, '70HS08', 'S.Rama Tulasi', 'sramatulasi', 'm', 'Asst. Prof.', 'HS', 'M.Sc. ', '12345792', 'fac@gmail.com'),
(116, '70HS09', 'B.Jaheer', 'bjaheer', 'm', 'Asst. Prof.', 'HS', 'M.A.', '12345793', 'fac@gmail.com'),
(117, '70HS10', 'P.Vijaya Kumar', 'pvijayakumar', 'm', 'Asst. Prof.', 'HS', 'M.A.', '12345794', 'fac@gmail.com'),
(118, '70HS11', 'Smd Mastan Saheb', 'smdmastansaheb', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345795', 'fac@gmail.com'),
(119, '70HS12', 'Shaik Iliyas Ali', 'shaikiliyasali', 'm', 'Asst. Prof.', 'HS', 'M.A.', '12345796', 'fac@gmail.com'),
(120, '70HS13', 'P.Suneetha Naidu', 'psuneethanaidu', 'm', 'Asst. Prof.', 'HS', 'M.A.', '12345797', 'fac@gmail.com'),
(121, '70HS14', 'J.Siva Krishna', 'jsivakrishna', 'm', 'Asst. Prof', 'HS', 'M.Sc.', '12345798', 'fac@gmail.com'),
(122, '70HS15', 'S.Harinath Babu', 'sharinathbabu', 'm', 'Asst. Prof', 'HS', 'M.Sc.', '12345799', 'fac@gmail.com'),
(123, '70HS16', 'S.Harinath Reddy', 'sharinathreddy', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345800', 'fac@gmail.com'),
(124, '70HS17', 'M.Uma Maheswar', 'mumamaheswar', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345801', 'fac@gmail.com'),
(125, '70HS18', 'C C Mohan Reddy', 'ccmohanreddy', 'm', 'Asst. Prof', 'HS', 'M.Sc.', '12345802', 'fac@gmail.com'),
(126, '70HS19', 'P.Chandra Reddy', 'pchandrareddy', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345803', 'fac@gmail.com'),
(127, '70HS20', 'M.Parvathi', 'mparvathi', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345804', 'fac@gmail.com'),
(128, '70HS21', 'Dr. P.Roja', 'drproja', 'm', 'Asst. Prof.', 'HS', 'M.Sc.Ph.D', '12345805', 'fac@gmail.com'),
(129, '70HS22', 'P.Sreelatha', 'psreelatha', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345806', 'fac@gmail.com'),
(130, '70HS23', 'D.Sathees Raju', 'dsatheesraju', 'm', 'Asst. Prof.', 'HS', 'M.A.', '12345807', 'fac@gmail.com'),
(131, '70HS24', 'S.Pramod Kumar', 'spramodkumar', 'm', 'Asst. Prof', 'HS', 'M.A.', '12345808', 'fac@gmail.com'),
(132, '70HS25', 'C.Divya', 'cdivya', 'm', 'Asst. Prof.', 'HS', 'M.A.', '12345809', 'fac@gmail.com'),
(133, '70HS26', 'D.V Ravi Kumar', 'dvravikumar', 'm', 'Asst. Prof', 'HS', 'M.Sc., Ph.D.', '12345810', 'fac@gmail.com'),
(134, '70HS27', 'M.Naga Raja Kumar', 'mnagarajakumar', 'm', 'Asst. Prof.', 'HS', 'M.A.', '12345811', 'fac@gmail.com'),
(135, '70HS28', 'Ch.Srinivasulu', 'chsrinivasulu', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345812', 'fac@gmail.com'),
(136, '70HS29', 'A.Subramanyam', 'asubramanyam', 'm', 'Asst. Prof', 'HS', 'M.Sc.', '12345813', 'fac@gmail.com'),
(137, '70HS30', 'Dr.V.Vishnu Vardhan', 'drvvishnuvardhan', 'm', 'Asst.Prof', 'HS', 'M.Sc., Ph.D.', '12345814', 'fac@gmail.com'),
(138, '70HS31', 'A.C.Guru Hari Chandanbabu', 'acguruharichandanbabu', 'm', 'Asst.Prof', 'HS', 'M.A.', '12345815', 'fac@gmail.com'),
(139, '70HS32', 'S.Satyam', 'ssatyam', 'm', 'Asst.Prof', 'HS', 'M.Sc.', '12345816', 'fac@gmail.com'),
(140, '70HS33', 'Shaik Mohammed Ghouse', 'shaikmohammedghouse', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345817', 'fac@gmail.com'),
(141, '70HS34', 'K.Ramesh Krishna', 'krameshkrishna', 'm', 'Asst. Prof.', 'HS', 'M.Sc.', '12345818', 'fac@gmail.com'),
(142, '70HS35', 'Dr.K.Janardhan', 'drkjanardhan', 'm', 'Asst. Prof.', 'HS', 'M.Sc, Ph.D.', '12345819', 'fac@gmail.com'),
(143, '70HS36', 'B.Sreenivasulu', 'bsreenivasulu', 'm', 'Asst.Prof', 'HS', 'M.Sc.', '12345820', 'fac@gmail.com'),
(144, '70HS37', 'N.Veera Mohan Reddy', 'nveeramohanreddy', 'm', 'Asst.Prof.', 'HS', 'M.Sc.', '12345821', 'fac@gmail.com'),
(145, '70HS38', 'G.Raja Rao', 'grajarao', 'm', 'Asst.prof.', 'HS', 'M.Sc.', '12345822', 'fac@gmail.com'),
(146, '70CIT01', 'M.Subba Rao', 'msubbarao', 'm', 'Professor', 'CIT', 'M.Tech. (Ph.D)', '12345823', 'fac@gmail.com'),
(147, '70CIT02', 'D.Siva Sankar Reddy', 'dsivasankarreddy', 'm', 'Asso. Prof.', 'CIT', 'M.C.A., M.E.', '12345824', 'fac@gmail.com'),
(148, '70CIT03', 'T.Hari Krishna', 'tharikrishna', 'm', 'Asst. Prof.', 'CIT', 'M.Tech.', '12345825', 'fac@gmail.com'),
(149, '70CIT04', 'B.Pandu Ranga raju', 'bpandurangaraju', 'm', 'Asst. Prof.', 'CIT', 'M.Sc.(CS),M.Tech.', '12345826', 'fac@gmail.com'),
(150, '70CIT05', 'M.Sankara Prasanna Kumar', 'msankaraprasannakumar', 'm', 'Asst. Prof.', 'CIT', 'M.Tech.', '12345827', 'fac@gmail.com'),
(151, '70CIT06', 'K.Suresh', 'ksuresh', 'm', 'Asst. Prof.', 'CIT', 'M.Tech.', '12345828', 'fac@gmail.com'),
(152, '70CIT07', 'S.Chenna Reddy', 'schennareddy', 'm', 'Librarian', 'CIT', 'MLISc', '12345829', 'fac@gmail.com'),
(153, '70CIT08', 'K.Arun Kumar', 'karunkumar', 'm', 'Asst. Prof.', 'CIT', 'M.Tech.', '12345830', 'fac@gmail.com'),
(154, '70CIT09', 'K.Ramana', 'kramana', 'm', 'Asst. Prof.', 'CIT', 'M.Tech.', '12345831', 'fac@gmail.com'),
(155, '70CIT10', 'M.Lakshmi Tayaramma', 'mlakshmitayaramma', 'm', 'Asst. Prof.', 'CIT', 'M.Tech.', '12345832', 'fac@gmail.com'),
(156, '70CIT11', 'Mallela.Rajesh', 'mallelarajesh', 'm', 'Asst. prof.', 'CIT', 'M. Tech.', '12345833', 'fac@gmail.com'),
(157, '70CIT12', 'Pavuluri.Sri Latha', 'pavulurisrilatha', 'm', 'Asst. Prof.', 'CIT', 'M.Tech.', '12345834', 'fac@gmail.com'),
(158, '70CIT13', 'V.Parameswar Reddy', 'vparameswarreddy', 'm', 'Asst. Prof', 'CIT', 'M.Tech.', '12345835', 'fac@gmail.com'),
(159, '70CIT14', 'S.Ashok Kumar', 'sashokkumar', 'm', 'Asst. Prof', 'CIT', 'M.Tech.', '12345836', 'fac@gmail.com'),
(160, '70MBA01', 'M.Rajesh', 'mrajesh', 'm', 'Asso. Prof.', 'MBA', 'M.B.A., Ph.D', '12345837', 'fac@gmail.com'),
(161, '70MBA02', 'V.Mouneswari', 'vmouneswari', 'm', 'Asst. Prof.', 'MBA', 'M.B.A.', '12345838', 'fac@gmail.com'),
(162, '70MBA03', 'N.Venkata Ramana', 'nvenkataramana', 'm', 'Asst. Prof.', 'MBA', 'M.B.A.', '12345839', 'fac@gmail.com'),
(163, '70MBA04', 'K.Subba Reddy', 'ksubbareddy', 'm', 'Asst. Prof.', 'MBA', 'M.B.A.', '12345840', 'fac@gmail.com'),
(164, '70MBA05', 'K.Bhaskar', 'kbhaskar', 'm', 'Asst. Prof.', 'MBA', 'M.B.A.', '12345841', 'fac@gmail.com'),
(165, '70MBA06', 'B.Subhan', 'bsubhan', 'm', 'Asst. Prof.', 'MBA', 'M.B.A.', '12345842', 'fac@gmail.com'),
(166, '70MBA07', 'V.Bhagyamma', 'vbhagyamma', 'm', 'Asst. Prof.', 'MBA', 'M.B.A.', '12345843', 'fac@gmail.com'),
(167, '70MBA08', 'S.Partha Saradhi', 'sparthasaradhi', 'm', 'Asst. Prof.', 'MBA', 'M.B.A.', '12345844', 'fac@gmail.com'),
(168, '70MBA09', 'V.Vedavathi', 'vvedavathi', 'm', 'Asst.Prof.', 'MBA', 'M.B.A.', '12345845', 'fac@gmail.com'),
(169, '70MBA10', 'P.Venkata Subbaiah', 'pvenkatasubbaiah', 'm', 'Asst.Prof.', 'MBA', 'M.B.A.', '12345846', 'fac@gmail.com'),
(170, '70MCA01', 'N.Mallikarjuna Rao', 'nmallikarjunarao', 'm', 'Professor', 'MCA', 'M.C.A, M.Phil, \nM.Tech. Ph.D\n', '12345847', 'fac@gmail.com'),
(171, '70MCA02', 'V.Sathyendra Kumar', 'vsathyendrakumar', 'm', 'Asst. Prof.', 'MCA', 'MCA, M.Tech.', '12345848', 'fac@gmail.com'),
(172, '70MCA03', 'C.Sasidhar', 'csasidhar', 'm', 'Asst. Prof.', 'MCA', 'M.C.A., M.Tech.', '12345849', 'fac@gmail.com'),
(173, '70MCA04', 'P.Swathi', 'pswathi', 'm', 'Asst. Prof.', 'MCA', 'M.C.A.', '12345850', 'fac@gmail.com'),
(174, '70MCA05', 'P.Kavitha', 'pkavitha', 'm', 'Asst. Prof.', 'MCA', 'M.Sc.IT', '12345851', 'fac@gmail.com'),
(175, '70MCA06', 'N.Narasimha Prasad', 'nnarasimhaprasad', 'm', 'Asst. Prof.', 'MCA', 'M.C.A.', '12345852', 'fac@gmail.com'),
(176, '70MEC01', 'G.Prabhakara Rao', 'gprabhakararao', 'm', 'Director', 'MEC', 'B.E.(HONS), M.Tech., Ph.D, MISTE', '12345853', 'fac@gmail.com'),
(177, '70MEC02', 'N.Siva Rami Reddy', 'nsivaramireddy', 'm', 'Professor', 'MEC', 'M.Tech.', '12345854', 'fac@gmail.com'),
(178, '70MEC03', 'P.Madar Valli', 'pmadarvalli', 'm', 'Professor', 'MEC', 'M.Tech., Ph.D.', '12345855', 'fac@gmail.com'),
(179, '70MEC04', 'K.L.Narasimhamu', 'klnarasimhamu', 'm', 'Asso. Prof.', 'MEC', 'M.E.', '12345856', 'fac@gmail.com'),
(180, '70MEC05', 'A.Hemantha Kumar', 'ahemanthakumar', 'm', 'Asso. Prof.', 'MEC', 'M.Tech.', '12345857', 'fac@gmail.com'),
(181, '70MEC06', 'M.Maruthi Prasad', 'mmaruthiprasad', 'm', 'Asso. Prof.', 'MEC', 'M.Tech.', '12345858', 'fac@gmail.com'),
(182, '70MEC07', 'H.Suresh Babu Rao', 'hsureshbaburao', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345859', 'fac@gmail.com'),
(183, '70MEC08', 'R.V.N.R.Surya Prakash', 'rvnrsuryaprakash', 'm', 'Asst. Prof.', 'MEC', 'M.E.', '12345860', 'fac@gmail.com'),
(184, '70MEC09', 'K.Nagamani', 'knagamani', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345861', 'fac@gmail.com'),
(185, '70MEC10', 'M.Dasthagiri', 'mdasthagiri', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345862', 'fac@gmail.com'),
(186, '70MEC11', 'B.santosh Kumar', 'bsantoshkumar', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345863', 'fac@gmail.com'),
(187, '70MEC12', 'P.Ravindranath Reddy', 'pravindranathreddy', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345864', 'fac@gmail.com'),
(188, '70MEC13', 'C.Ramajaneyulu', 'cramajaneyulu', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345865', 'fac@gmail.com'),
(189, '70MEC14', 'G.Suresh Babu', 'gsureshbabu', 'm', 'Asst. Prof', 'MEC', 'M.Tech.', '12345866', 'fac@gmail.com'),
(190, '70MEC15', 'V.Venkatesh', 'vvenkatesh', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345867', 'fac@gmail.com'),
(191, '70MEC16', 'R.K.Sanga Mitra', 'rksangamitra', 'm', 'Asst. Prof.', 'MEC', 'B.Tech.', '12345868', 'fac@gmail.com'),
(192, '70MEC17', 'B.Venkatesh', 'bvenkatesh', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345869', 'fac@gmail.com'),
(193, '70MEC18', 'N.Keerthi', 'nkeerthi', 'm', 'Asst. Prof', 'MEC', 'M.Tech.', '12345870', 'fac@gmail.com'),
(194, '70MEC19', 'T.Nishkala', 'tnishkala', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345871', 'fac@gmail.com'),
(195, '70MEC20', 'N.Deepthi', 'ndeepthi', 'm', 'Asst. Prof', 'MEC', 'M.Tech.', '12345872', 'fac@gmail.com'),
(196, '70MEC21', 'K.Ajay Kumar Reddy', 'kajaykumarreddy', 'm', 'Asst. Prof', 'MEC', 'M.Tech.', '12345873', 'fac@gmail.com'),
(197, '70MEC22', 'Shaik Inayath', 'shaikinayath', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345874', 'fac@gmail.com'),
(198, '70MEC23', 'K.Venkata Chalapathi', 'kvenkatachalapathi', 'm', 'Asst. Prof.', 'MEC', 'B.Tech.', '12345875', 'fac@gmail.com'),
(199, '70MEC24', 'B.Ashok Kumar', 'bashokkumar', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345876', 'fac@gmail.com'),
(200, '70MEC25', 'M.Suneetha', 'msuneetha', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345877', 'fac@gmail.com'),
(201, '70MEC26', 'N.Kishore Kumar', 'nkishorekumar', 'm', 'Asst. Prof', 'MEC', 'M.Tech.', '12345878', 'fac@gmail.com'),
(202, '70MEC27', 'D.Vishnu Vardhan Reddy', 'dvishnuvardhanreddy', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345879', 'fac@gmail.com'),
(203, '70MEC28', 'G.Venkata Ajay Kumar', 'gvenkataajaykumar', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345880', 'fac@gmail.com'),
(204, '70MEC29', 'S.Nagendra', 'snagendra', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345881', 'fac@gmail.com'),
(205, '70MEC30', 'C.Thirupathiah', 'cthirupathiah', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345882', 'fac@gmail.com'),
(206, '70MEC31', 'N.Jayakrishna', 'njayakrishna', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345883', 'fac@gmail.com'),
(207, '70MEC32', 'E.Jaya Kiran Reddy', 'ejayakiranreddy', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345884', 'fac@gmail.com'),
(208, '70MEC33', 'O Y Venkata Subba Reddy', 'oyvenkatasubbareddy', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345885', 'fac@gmail.com'),
(209, '70MEC34', 'N.Nagaraju', 'nnagaraju', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345886', 'fac@gmail.com'),
(210, '70MEC35', 'P.Deepthi', 'pdeepthi', 'm', 'Place. Off.', 'MEC', 'MBA', '12345887', 'fac@gmail.com'),
(211, '70MEC36', 'P.Salonica Sravani', 'psalonicasravani', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345888', 'fac@gmail.com'),
(212, '70MEC37', 'N.Glory Ujwala', 'ngloryujwala', 'm', 'Asst. Prof.', 'MEC', 'B.Tech.', '12345889', 'fac@gmail.com'),
(213, '70MEC38', 'S.Vijaya Kumar Reddy', 'svijayakumarreddy', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345890', 'fac@gmail.com'),
(214, '70MEC39', 'S M Saleem Uddin', 'smsaleemuddin', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345891', 'fac@gmail.com'),
(215, '70MEC40', 'M.Lokanath', 'mlokanath', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345892', 'fac@gmail.com'),
(216, '70MEC41', 'M.Madhu Sudhan Reddy', 'mmadhusudhanreddy', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345893', 'fac@gmail.com'),
(217, '70MEC42', 'A.Bhargav', 'abhargav', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345894', 'fac@gmail.com'),
(218, '70MEC43', 'M.Bala Theja', 'mbalatheja', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345895', 'fac@gmail.com'),
(219, '70MEC44', 'P.Meramma', 'pmeramma', 'm', 'Asst. Prof.', 'MEC', 'M.Tech.', '12345896', 'fac@gmail.com'),
(220, '70MEC45', 'P.Sree Lakshmi', 'psreelakshmi', 'm', 'Asst. Prof.', 'MEC', 'B.Tech.', '12345897', 'fac@gmail.com'),
(221, '70MEC46', 'S.Ramesh Babu', 'srameshbabu', 'm', 'Asst. Prof', 'MEC', 'M.Tech.', '12345898', 'fac@gmail.com'),
(222, '70MEC47', 'Y.Poorna Chandra Sekhar', 'ypoornachandrasekhar', 'm', 'Asst. Prof', 'MEC', 'M.Tech.', '12345899', 'fac@gmail.com'),
(223, '70MEC48', 'M.Veera Raghunatha Reddy', 'mveeraraghunathareddy', 'm', 'Asst.Prof.', 'MEC', 'M.Tech.', '12345900', 'fac@gmail.com'),
(224, '70MEC49', 'G.Amarnath', 'gamarnath', 'm', 'Asst.Prof.', 'MEC', 'M.Tech.', '12345901', 'fac@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `emp_leaves`
--

CREATE TABLE `emp_leaves` (
  `id` int(11) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `empcls` double DEFAULT NULL,
  `empels` double DEFAULT NULL,
  `empvac` double DEFAULT NULL,
  `empml` double DEFAULT NULL,
  `emplop` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_leaves`
--

INSERT INTO `emp_leaves` (`id`, `empid`, `empcls`, `empels`, `empvac`, `empml`, `emplop`) VALUES
(1, '70CIV01', 15, 15, 28, 0, 0),
(2, '70CIV02', 15, 15, 28, 0, 0),
(3, '70CIV03', 15, 15, 28, 0, 0),
(4, '70CIV04', 15, 15, 28, 0, 0),
(5, '70CIV05', 15, 15, 28, 0, 0),
(6, '70CIV06', 15, 15, 28, 0, 0),
(7, '70CIV07', 15, 15, 28, 0, 0),
(8, '70CIV08', 15, 15, 28, 0, 0),
(9, '70CIV09', 15, 15, 28, 0, 0),
(10, '70CIV10', 15, 15, 28, 0, 0),
(11, '70CIV11', 15, 15, 28, 0, 0),
(12, '70CIV12', 15, 15, 28, 0, 0),
(13, '70CIV13', 15, 15, 28, 0, 0),
(14, '70CIV14', 15, 15, 28, 0, 0),
(15, '70CSE01', 15, 15, 28, 0, 0),
(16, 'aits051001', 15, 15, 28, 0, 0),
(17, 'aits051002', 15, 15, 28, 0, 0),
(18, 'aits051003', 15, 15, 28, 0, 0),
(19, 'aits051004', 15, 15, 28, 0, 0),
(20, 'aits051005', 15, 15, 28, 0, 0),
(21, 'aits051006', 15, 15, 28, 0, 0),
(22, 'aits051007', 15, 15, 28, 0, 0),
(23, 'aits051008', 15, 15, 28, 0, 0),
(24, 'aits051009', 15, 15, 28, 0, 0),
(25, 'aits051010', 15, 15, 28, 0, 0),
(26, 'aits051011', 15, 15, 28, 0, 0),
(27, 'aits051012', 15, 15, 28, 0, 0),
(28, 'aits051013', 15, 15, 28, 0, 0),
(29, 'aits051014', 15, 15, 28, 0, 0),
(30, 'aits051015', 15, 15, 28, 0, 0),
(31, 'aits051016', 15, 15, 28, 0, 0),
(32, 'aits051017', 15, 15, 28, 0, 0),
(33, 'aits051018', 15, 15, 28, 0, 0),
(34, 'aits051019', 15, 15, 28, 0, 0),
(35, 'aits051020', 15, 15, 28, 0, 0),
(36, 'aits051021', 15, 15, 28, 0, 0),
(37, 'aits051022', 15, 15, 28, 0, 0),
(38, 'aits051023', 15, 15, 28, 0, 0),
(39, 'aits051024', 15, 15, 28, 0, 0),
(40, 'aits051025', 15, 15, 28, 0, 0),
(41, 'aits051026', 15, 15, 28, 0, 0),
(42, 'aits051027', 15, 15, 28, 0, 0),
(43, 'aits051028', 15, 15, 28, 0, 0),
(44, 'aits051029', 15, 15, 28, 0, 0),
(45, 'aits051030', 15, 15, 28, 0, 0),
(46, 'aits051031', 15, 15, 28, 0, 0),
(47, 'aits051032', 15, 15, 28, 0, 0),
(48, 'aits051033', 15, 15, 28, 0, 0),
(49, 'aits051034', 15, 15, 28, 0, 0),
(50, 'aits051035', 15, 15, 28, 0, 0),
(51, 'aits051036', 15, 15, 28, 0, 0),
(52, 'aits051037', 15, 15, 28, 0, 0),
(53, 'aits051038', 15, 15, 28, 0, 0),
(54, 'aits051039', 15, 15, 28, 0, 0),
(55, 'aits051040', 15, 15, 28, 0, 0),
(56, 'aits051041', 15, 15, 28, 0, 0),
(57, 'aits051042', 15, 15, 28, 0, 0),
(58, 'aits051043', 15, 15, 28, 0, 0),
(59, 'aits051044', 15, 15, 28, 0, 0),
(60, 'aits051045', 15, 15, 28, 0, 0),
(61, 'aits051046', 15, 15, 28, 0, 0),
(62, 'aits051047', 15, 15, 28, 0, 0),
(63, 'aits051048', 15, 15, 28, 0, 0),
(64, 'aits051049', 15, 15, 28, 0, 0),
(65, 'aits051050', 15, 15, 28, 0, 0),
(66, '70ECE19', 15, 15, 28, 0, 0),
(67, '70ECE20', 15, 15, 28, 0, 0),
(68, '70ECE21', 15, 15, 28, 0, 0),
(69, '70ECE22', 15, 15, 28, 0, 0),
(70, '70ECE23', 15, 15, 28, 0, 0),
(71, '70ECE24', 15, 15, 28, 0, 0),
(72, '70ECE25', 15, 15, 28, 0, 0),
(73, '70ECE26', 15, 15, 28, 0, 0),
(74, '70ECE27', 15, 15, 28, 0, 0),
(75, '70ECE28', 15, 15, 28, 0, 0),
(76, '70ECE29', 15, 15, 28, 0, 0),
(77, '70ECE30', 15, 15, 28, 0, 0),
(78, '70ECE31', 15, 15, 28, 0, 0),
(79, '70ECE32', 15, 15, 28, 0, 0),
(80, '70ECE33', 15, 15, 28, 0, 0),
(81, '70ECE34', 15, 15, 28, 0, 0),
(82, '70ECE35', 15, 15, 28, 0, 0),
(83, '70ECE36', 15, 15, 28, 0, 0),
(84, '70EEE01', 15, 15, 28, 0, 0),
(85, '70EEE02', 15, 15, 28, 0, 0),
(86, '70EEE03', 15, 15, 28, 0, 0),
(87, '70EEE04', 15, 15, 28, 0, 0),
(88, '70EEE05', 15, 15, 28, 0, 0),
(89, '70EEE06', 15, 15, 28, 0, 0),
(90, '70EEE07', 15, 15, 28, 0, 0),
(91, '70EEE08', 15, 15, 28, 0, 0),
(92, '70EEE09', 15, 15, 28, 0, 0),
(93, '70EEE10', 15, 15, 28, 0, 0),
(94, '70EEE11', 15, 15, 28, 0, 0),
(95, '70EEE12', 15, 15, 28, 0, 0),
(96, '70EEE13', 15, 15, 28, 0, 0),
(97, '70EEE14', 15, 15, 28, 0, 0),
(98, '70EEE15', 15, 15, 28, 0, 0),
(99, '70EEE16', 15, 15, 28, 0, 0),
(100, '70EEE17', 15, 15, 28, 0, 0),
(101, '70EEE18', 15, 15, 28, 0, 0),
(102, '70EEE19', 15, 15, 28, 0, 0),
(103, '70EEE20', 15, 15, 28, 0, 0),
(104, '70EEE21', 15, 15, 28, 0, 0),
(105, '70EEE22', 15, 15, 28, 0, 0),
(106, '70EEE23', 15, 15, 28, 0, 0),
(107, '70EEE24', 15, 15, 28, 0, 0),
(108, '70HS01', 15, 15, 28, 0, 0),
(109, '70HS02', 15, 15, 28, 0, 0),
(110, '70HS03', 15, 15, 28, 0, 0),
(111, '70HS04', 15, 15, 28, 0, 0),
(112, '70HS05', 15, 15, 28, 0, 0),
(113, '70HS06', 15, 15, 28, 0, 0),
(114, '70HS07', 15, 15, 28, 0, 0),
(115, '70HS08', 15, 15, 28, 0, 0),
(116, '70HS09', 15, 15, 28, 0, 0),
(117, '70HS10', 15, 15, 28, 0, 0),
(118, '70HS11', 15, 15, 28, 0, 0),
(119, '70HS12', 15, 15, 28, 0, 0),
(120, '70HS13', 15, 15, 28, 0, 0),
(121, '70HS14', 15, 15, 28, 0, 0),
(122, '70HS15', 15, 15, 28, 0, 0),
(123, '70HS16', 15, 15, 28, 0, 0),
(124, '70HS17', 15, 15, 28, 0, 0),
(125, '70HS18', 15, 15, 28, 0, 0),
(126, '70HS19', 15, 15, 28, 0, 0),
(127, '70HS20', 15, 15, 28, 0, 0),
(128, '70HS21', 15, 15, 28, 0, 0),
(129, '70HS22', 15, 15, 28, 0, 0),
(130, '70HS23', 15, 15, 28, 0, 0),
(131, '70HS24', 15, 15, 28, 0, 0),
(132, '70HS25', 15, 15, 28, 0, 0),
(133, '70HS26', 15, 15, 28, 0, 0),
(134, '70HS27', 15, 15, 28, 0, 0),
(135, '70HS28', 15, 15, 28, 0, 0),
(136, '70HS29', 15, 15, 28, 0, 0),
(137, '70HS30', 15, 15, 28, 0, 0),
(138, '70HS31', 15, 15, 28, 0, 0),
(139, '70HS32', 15, 15, 28, 0, 0),
(140, '70HS33', 15, 15, 28, 0, 0),
(141, '70HS34', 15, 15, 28, 0, 0),
(142, '70HS35', 15, 15, 28, 0, 0),
(143, '70HS36', 15, 15, 28, 0, 0),
(144, '70HS37', 15, 15, 28, 0, 0),
(145, '70HS38', 15, 15, 28, 0, 0),
(146, '70CIT01', 15, 15, 28, 0, 0),
(147, '70CIT02', 15, 15, 28, 0, 0),
(148, '70CIT03', 15, 15, 28, 0, 0),
(149, '70CIT04', 15, 15, 28, 0, 0),
(150, '70CIT05', 15, 15, 28, 0, 0),
(151, '70CIT06', 15, 15, 28, 0, 0),
(152, '70CIT07', 15, 15, 28, 0, 0),
(153, '70CIT08', 15, 15, 28, 0, 0),
(154, '70CIT09', 15, 15, 28, 0, 0),
(155, '70CIT10', 15, 15, 28, 0, 0),
(156, '70CIT11', 15, 15, 28, 0, 0),
(157, '70CIT12', 15, 15, 28, 0, 0),
(158, '70CIT13', 15, 15, 28, 0, 0),
(159, '70CIT14', 15, 15, 28, 0, 0),
(160, '70MBA01', 15, 15, 28, 0, 0),
(161, '70MBA02', 15, 15, 28, 0, 0),
(162, '70MBA03', 15, 15, 28, 0, 0),
(163, '70MBA04', 15, 15, 28, 0, 0),
(164, '70MBA05', 15, 15, 28, 0, 0),
(165, '70MBA06', 15, 15, 28, 0, 0),
(166, '70MBA07', 15, 15, 28, 0, 0),
(167, '70MBA08', 15, 15, 28, 0, 0),
(168, '70MBA09', 15, 15, 28, 0, 0),
(169, '70MBA10', 15, 15, 28, 0, 0),
(170, '70MCA01', 15, 15, 28, 0, 0),
(171, '70MCA02', 15, 15, 28, 0, 0),
(172, '70MCA03', 15, 15, 28, 0, 0),
(173, '70MCA04', 15, 15, 28, 0, 0),
(174, '70MCA05', 15, 15, 28, 0, 0),
(175, '70MCA06', 15, 15, 28, 0, 0),
(176, '70MEC01', 15, 15, 28, 0, 0),
(177, '70MEC02', 15, 15, 28, 0, 0),
(178, '70MEC03', 15, 15, 28, 0, 0),
(179, '70MEC04', 15, 15, 28, 0, 0),
(180, '70MEC05', 15, 15, 28, 0, 0),
(181, '70MEC06', 15, 15, 28, 0, 0),
(182, '70MEC07', 15, 15, 28, 0, 0),
(183, '70MEC08', 15, 15, 28, 0, 0),
(184, '70MEC09', 15, 15, 28, 0, 0),
(185, '70MEC10', 15, 15, 28, 0, 0),
(186, '70MEC11', 15, 15, 28, 0, 0),
(187, '70MEC12', 15, 15, 28, 0, 0),
(188, '70MEC13', 15, 15, 28, 0, 0),
(189, '70MEC14', 15, 15, 28, 0, 0),
(190, '70MEC15', 15, 15, 28, 0, 0),
(191, '70MEC16', 15, 15, 28, 0, 0),
(192, '70MEC17', 15, 15, 28, 0, 0),
(193, '70MEC18', 15, 15, 28, 0, 0),
(194, '70MEC19', 15, 15, 28, 0, 0),
(195, '70MEC20', 15, 15, 28, 0, 0),
(196, '70MEC21', 15, 15, 28, 0, 0),
(197, '70MEC22', 15, 15, 28, 0, 0),
(198, '70MEC23', 15, 15, 28, 0, 0),
(199, '70MEC24', 15, 15, 28, 0, 0),
(200, '70MEC25', 15, 15, 28, 0, 0),
(201, '70MEC26', 15, 15, 28, 0, 0),
(202, '70MEC27', 15, 15, 28, 0, 0),
(203, '70MEC28', 15, 15, 28, 0, 0),
(204, '70MEC29', 15, 15, 28, 0, 0),
(205, '70MEC30', 15, 15, 28, 0, 0),
(206, '70MEC31', 15, 15, 28, 0, 0),
(207, '70MEC32', 15, 15, 28, 0, 0),
(208, '70MEC33', 15, 15, 28, 0, 0),
(209, '70MEC34', 15, 15, 28, 0, 0),
(210, '70MEC35', 15, 15, 28, 0, 0),
(211, '70MEC36', 15, 15, 28, 0, 0),
(212, '70MEC37', 15, 15, 28, 0, 0),
(213, '70MEC38', 15, 15, 28, 0, 0),
(214, '70MEC39', 15, 15, 28, 0, 0),
(215, '70MEC40', 15, 15, 28, 0, 0),
(216, '70MEC41', 15, 15, 28, 0, 0),
(217, '70MEC42', 15, 15, 28, 0, 0),
(218, '70MEC43', 15, 15, 28, 0, 0),
(219, '70MEC44', 15, 15, 28, 0, 0),
(220, '70MEC45', 15, 15, 28, 0, 0),
(221, '70MEC46', 15, 15, 28, 0, 0),
(222, '70MEC47', 15, 15, 28, 0, 0),
(223, '70MEC48', 15, 15, 28, 0, 0),
(224, '70MEC49', 15, 15, 28, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_offices`
--

CREATE TABLE `emp_offices` (
  `id` int(11) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `emptype` varchar(255) DEFAULT NULL,
  `emppan` varchar(255) DEFAULT NULL,
  `empaadhar` varchar(255) DEFAULT NULL,
  `empacno` bigint(20) DEFAULT NULL,
  `empbasic` double DEFAULT NULL,
  `empagp` double DEFAULT NULL,
  `empspl` double DEFAULT NULL,
  `empdoj` date DEFAULT NULL,
  `empdop` date DEFAULT NULL,
  `empinc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_offices`
--

INSERT INTO `emp_offices` (`id`, `empid`, `emptype`, `emppan`, `empaadhar`, `empacno`, `empbasic`, `empagp`, `empspl`, `empdoj`, `empdop`, `empinc`) VALUES
(1, '70CIV01', 'Scale', 'AOJPS5408K', '579829594544', 176310100035003, 55184, 10000, 23744, '0000-00-00', '0000-00-00', '0000-00-00'),
(2, '70CIV02', 'Scale', '', '204858009597', 176310100043844, 20626, 7000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(3, '70CIV03', 'Cons', '', '869006114617', 176310100035128, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(4, '70CIV04', 'cons', 'CPKPP9658E', '765058943338', 176310100035137, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(5, '70CIV05', 'cons', '', '637720395856', 176310100034873, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(6, '70CIV06', 'cons', '', '356203291557', 176310100043163, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(7, '70CIV07', 'cons', '', '', 176310100044162, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(8, '70CIV08', 'cons', '', '675709130721', 176310100044852, 15000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(9, '70CIV09', 'cons', '', '', 176310100045471, 12000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(10, '70CIV10', 'cons', '', '', 176310100018680, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(11, '70CIV11', 'cons', '', '', 176310100044861, 18000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(12, '70CIV12', 'cons', '', '', 176310100050561, 8129, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(13, '70CIV13', 'cons', '', '', 176310100050552, 10839, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(14, '70CIV14', 'cons', '', '', 176310100050589, 8129, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(15, '70CSE01', 'Scale', 'AELPA2443N', '864305194844', 176310100000025, 49652, 10000, 17818, '0000-00-00', '0000-00-00', '0000-00-00'),
(16, '70CSE02', 'SCale', 'ASXPM4946J', '377858625767', 176310100007125, 19040, 6000, 21912, '0000-00-00', '0000-00-00', '0000-00-00'),
(17, '70CSE03', 'Scale', 'AYRPK5888K', '402745962502', 176310100006658, 19040, 6000, 6058.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(18, '70CSE04', 'Scale', 'AUYPR1079E', '476698400375', 176310100001079, 17602, 6000, 6973.2, '0000-00-00', '0000-00-00', '0000-00-00'),
(19, '70CSE05', 'Scale', 'AJFPJ3413L', '', 176310100007046, 17602, 6000, 6973.2, '0000-00-00', '0000-00-00', '0000-00-00'),
(20, '70CSE06', 'Scale', 'BGNPK7681R', '519178377033', 176310100007055, 18310, 6000, 3736.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(21, '70CSE07', 'SCale', 'AMRPR7187E', '', 176310100007231, 18310, 6000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(22, '70CSE08', 'Scale', 'ATMPG1353R', '216322112266', 176310100007161, 17602, 6000, 4737.4, '0000-00-00', '0000-00-00', '0000-00-00'),
(23, '70CSE09', 'Scale', 'AYKPK3366R', '', 176310100006755, 19040, 6000, 2704.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(24, '70CSE10', 'Scale', 'BQRPS9795N', '865927161947', 176310100006481, 17602, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(25, '70CSE11', 'Scale', 'AGUPL9057A', '503181608782', 176310100006454, 17602, 6000, 2501.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(26, '70CSE12', 'Scale', 'AJZPV0095Q', '474639120029', 176310100006199, 18310, 6000, 265.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(27, '70CSE13', 'Scale', 'ALPZA4989J', '355761541311', 176310100007134, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(28, '70CSE14', 'Scale', 'AZDPR8536L', '648945062039', 176310100006995, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(29, '70CSE15', 'Scale', 'AMJPN8464G', '551142960838', 176310100007143, 15600, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(30, '70CSE16', 'Scale', 'ABHPZ5051C', '459533867529', 176310100017946, 15600, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(31, '70CSE17', 'cons', 'AJUPG4578J', '350110339197', 176310100034943, 50000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(32, '70CSE18', 'cons', 'AHVPN9937B', '332217792028', 176310100006870, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(33, '70CSE19', 'cons', 'AWBPM2637A', '788099647019', 176310100001477, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(34, '70CSE20', 'cons', 'AVOPA1838P', '842638774391', 176310100007426, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(35, '70CSE21', 'Cons', 'BRTPP6206Q', '', 176310100008276, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(36, '70CSE22', 'cons', 'FZJPS0766J', '929654402212', 176310100017973, 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(37, '70CSE23', 'cons', 'EZMPS0163M', '775338579903', 176310100017982, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(38, '70CSE24', 'cons', 'BCNPR5421A', '708635138426', 176310100031830, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(39, '70CSE25', 'cons', 'CBPPK1122D', '514039508396', 176310100034785, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(40, '70CSE26', 'Cons', 'ATXPC5779L', '465481224301', 176310100034800, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(41, '70CSE27', 'cons', '', '', 176310100044205, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(42, '70CSE28', 'cons', '', '', 176310100001219, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(43, '70CSE29', 'cons', '', '', 176310100044339, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(44, '70CSE30', 'cons', '', '', 176310100044409, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(45, '70CSE31', 'cons', '', '', 176310100050543, 10323, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(46, '70CSE32', 'cons', '', '', 176310100050534, 9032, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(47, '70CSE33', 'cons', '', '', 176010100021648, 9032, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(48, '70ECE01', 'Scale', 'AHGPR1036E', '644953611949', 176310100001963, 41703, 9000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(49, '70ECE02', 'Scale', 'AMUPP2382G', '206539593098', 176310100007417, 19821, 6000, 24264.6, '0000-00-00', '0000-00-00', '0000-00-00'),
(50, '70ECE03', 'Scale', 'AWXPK1249C', '203983628820', 176310100001264, 19821, 6000, 23619.3, '0000-00-00', '0000-00-00', '0000-00-00'),
(51, '70ECE04', 'Scale', 'AETPN4001K', '574362676857', 176310100001866, 19040, 6000, 14407.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(52, '70ECE05', 'Scale', 'BWCPS0621J', '469241721229', 176310100002005, 18310, 6000, 3736.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(53, '70ECE06', 'Scale', 'ANBPJ6175F', '731355785123', 176310100003767, 18310, 6000, 3736.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(54, '70ECE07', 'Scale', 'APHPR2038H', '297876863974', 176310100007365, 18310, 6000, 3736.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(55, '70ECE08', 'Scale', 'BBIPP5238F', '630163828542', 176310100002139, 19040, 6000, 3736.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(56, '70ECE09', 'Scale', 'AWKPM6414G', '745905310876', 176310100001981, 18310, 6000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(57, '70ECE10', 'Scale', 'BCEPM2273E', '578210854494', 176310100004881, 18310, 6000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(58, '70ECE11', 'Scale', 'BFYPP9268M', '351192307077', 176310100000919, 18310, 6000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(59, '70ECE12', 'Scale', 'AIFPC2820B', '818756038546', 176310100006463, 18310, 6000, 2501.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(60, '70ECE13', 'Scale', 'AXLPK2824J', '265114307527', 176310100005668, 16915, 6000, 120, '0000-00-00', '0000-00-00', '0000-00-00'),
(61, '70ECE14', 'Scale', 'DGLPS2791L', '844248745910', 176310100006074, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(62, '70ECE15', 'Scale', 'BYCPK2028P', '325528970953', 176310100006320, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(63, '70ECE16', 'Scale', 'BMLPK4309L', '306458936412', 176310100000964, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(64, '70ECE17', 'Scale', 'ANBPC2968F', '756840161291', 176310100001990, 15600, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(65, '70ECE18', 'Scale', 'ATNPK1782F', '878179355691', 176310100007879, 15600, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(66, '70ECE19', 'cons', 'AOXPG3729H', '529105841742', 176310100006162, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(67, '70ECE20', 'cons', 'BYMPK9669N', '402986582948', 176310100006524, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(68, '70ECE21', 'cons', 'BUEPM8166L', '728734139447', 176310100006302, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(69, '70ECE22', 'cons', 'ACBPH0015P', '523166417482', 176310100006764, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(70, '70ECE23', 'Cons', 'BYAPK4394N', '425468560342', 176310100001431, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(71, '70ECE24', 'cons', 'EKIPS5056N', '928019120733', 176310100005783, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(72, '70ECE25', 'Cons', 'CDWPS7494D', '219597737921', 176310100007833, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(73, '70ECE26', 'Cons', 'AWBPB5386K', '474516393409', 176310100008221, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(74, '70ECE27', 'cons', 'AVNPC5697H', '800065986646', 176310100018024, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(75, '70ECE28', 'cons', 'BCAPR0270A', '808788285286', 176310100008504, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(76, '70ECE29', 'cons', 'BBVPG8797F', '599441382961', 176310100018015, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(77, '70ECE30', 'cons', 'CIJPS8964E', '905750573281', 176310100034712, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(78, '70ECE31', 'cons', 'AGIPH9349H', '262155281253', 176310100034688, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(79, '70ECE32', 'cons', '', '321238933509', 176310100034882, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(80, '70ECE33', 'Cons', 'BQTP3901M', '519068219824', 176310100034828, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(81, '70ECE34', 'cons', 'AODPN4041F', '479193376275', 176310100035012, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(82, '70ECE35', 'cons', '', '', 176310100044719, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(83, '70ECE36', 'cons', '', '', 124710100003688, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(84, '70EEE01', 'Scale', 'ALOPM6581H', '624091113295', 176310100001945, 46228, 10000, 20507, '0000-00-00', '0000-00-00', '0000-00-00'),
(85, '70EEE02', 'Scale', 'AAMP04441K', '531924688785', 176310100000511, 19040, 6000, 21236.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(86, '70EEE03', 'Scale', 'AH1PB3768M', '298980587993', 176310100006719, 18310, 6000, 3736.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(87, '70EEE04', 'Scale', 'BFFPP4379L', '257019346115', 176310100000584, 19821, 6000, 3822.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(88, '70EEE05', 'Scale', 'BBIPP4523K', '877997960146', 176310100002023, 18310, 6000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(89, '70EEE06', 'Scale', 'AFYPH7858E', '860547546054', 176310100000520, 17602, 6000, 2501.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(90, '70EEE07', 'Scale', 'DEHPS7746B', '655882868110', 176310100000575, 17602, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(91, '70EEE08', 'scale', 'BKVPB2297N', '353693720151', 176310100000760, 17602, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(92, '70EEE09', 'Scale', 'BNBPS9745R', '684449866690', 176310100000557, 18310, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(93, '70EEE10', 'Scale', 'ARFPC5616G', '939487557772', 176310100007842, 16915, 6000, 120, '0000-00-00', '0000-00-00', '0000-00-00'),
(94, '70EEE11', 'Scale', 'CIHPS3956G', '319218522374', 176310100008027, 16915, 6000, 120, '0000-00-00', '0000-00-00', '0000-00-00'),
(95, '70EEE12', 'Scale', 'BJ0PM2590P', '347216638224', 176310100000618, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(96, '70EEE13', 'Scale', 'AYYPP2374E', '590635727491', 176310100034837, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(97, '70EEE14', 'cons', 'BPIPB6373R', '385361395107', 176310100018088, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(98, '70EEE15', 'Cons', 'BFEPR3873J', '211707473823', 176310100034767, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(99, '70EEE16', 'Cons', 'AKKPC9114H', '640267369134', 176310100034794, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(100, '70EEE17', 'Cons', 'AMQPN7785G', '768261679196', 176310100034916, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(101, '70EEE18', 'Cons', 'BVNPB3818C', '805883399046', 176310100034819, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(102, '70EEE19', 'Cons', 'EFCPS5628H', '535305218398', 176310100034989, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(103, '70EEE20', 'cons', '', '', 176310100044320, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(104, '70EEE21', 'cons', '', '', 176310100005710, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(105, '70EEE22', 'cons', '', '', 176310100044427, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(106, '70EEE23', 'cons', '', '', 176310100002175, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(107, '70EEE24', 'cons', '', '', 176310100044481, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(108, '70HS01', 'Scale', 'AYVPM5128L', '608484496948', 176310100006922, 23188, 8000, 17212.1, '0000-00-00', '0000-00-00', '0000-00-00'),
(109, '70HS02', 'Scale', 'ADXPL0640D', '426676104367', 176310100000937, 21455, 7000, 4638.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(110, '70HS03', 'Scale', 'AJXPN7447E', '944512257521', 176310100006366, 19821, 6000, 5045.1, '0000-00-00', '0000-00-00', '0000-00-00'),
(111, '70HS04', 'Scale', 'AAJPO0774C', '289746978095', 176310100000955, 21455, 7000, 3878.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(112, '70HS05', 'Scale', 'ARVPB2346J', '465234950995', 176310100006357, 19821, 7000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(113, '70HS06', 'Scale', 'AYBPM6431E', '569783638313', 176310100002096, 17602, 6000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(114, '70HS07', 'cons', 'AZMPR5138D', '706268890845', 176310100006515, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(115, '70HS08', 'cons', 'AZEPR3405K', '423462005910', 176310100001440, 21000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(116, '70HS09', 'cons', 'BNHPB4099P', '686541474139', 176310100001194, 21000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(117, '70HS10', 'cons', '--', '528258913622', 176310100000788, 21000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(118, '70HS11', 'Cons', 'BJJPM2366J', '921478651625', 176310100001343, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(119, '70HS12', 'Cons', 'BIEPS2653A', '673311468761', 176310100001015, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(120, '70HS13', 'Cons', '--', '304126894730', 176310100001237, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(121, '70HS14', 'cons', 'AUWPJ9000H', '309418635759', 176310100008902, 18000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(122, '70HS15', 'cons', 'BAQPB3165G', '752056474871', 176310100008920, 23000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(123, '70HS16', 'cons', 'ACLPH4949L', '528874196311', 176310100008878, 23000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(124, '70HS17', 'cons', 'BNBPM6829C', '908668980891', 176310100018662, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(125, '70HS18', 'cons', 'AIAPC2621H', '811478995917', 176310100018617, 21000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(126, '70HS19', 'cons', 'AUQPP8189F', '784344295530', 176310100018671, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(127, '70HS20', 'cons', '--', '701834290150', 176310100018778, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(128, '70HS21', 'cons', 'AZBPP8448B', '234332986750', 176310100018769, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(129, '70HS22', 'cons', 'DKVPS8306D', '610802289558', 176310100019388, 16000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(130, '70HS23', 'Cons', 'ANAPD5344F', '659055942396', 176310100036765, 21000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(131, '70HS24', 'Cons', '--', '436452803690', 176310100036808, 16000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(132, '70HS25', 'Cons', 'AYLPC8834B', '590823605410', 176310100037551, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(133, '70HS26', 'Cons', 'ALYPD7494G', '634399400016', 176310100037445, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(134, '70HS27', 'cons', '', '', 176310100044986, 16000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(135, '70HS28', 'cons', '', '', 176310100045222, 16000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(136, '70HS29', 'cons', '', '', 176310100045189, 12000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(137, '70HS30', 'cons', '', '', 176310100045277, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(138, '70HS31', 'cons', '', '', 176310100045161, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(139, '70HS32', 'cons', '', '', 176310100045596, 16000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(140, '70HS33', 'cons', '', '', 176310100000672, 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(141, '70HS34', 'cons', '', '', 176310100045329, 25000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(142, '70HS35', 'cons', '', '', 124710100009521, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(143, '70HS36', 'cons', '', '', 176310100045268, 18000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(144, '70HS37', 'cons', '', '', 146010011001814, 25000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(145, '70HS38', 'cons', '', '', 176310100045231, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(146, '70CIT01', 'Scale', 'ALPPM0180M', '755405529164', 176010100017627, 41703, 9000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(147, '70CIT02', 'Scale', 'ANGPR7008G', '451903647878', 176310100006773, 19040, 6000, 21236.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(148, '70CIT03', 'Scale', 'AHNPT9286H', '270925620823', 176310100006579, 19040, 6000, 6058.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(149, '70CIT04', 'Scale', 'APFPB7628R', '723358579036', 176310100007073, 17602, 6000, 6973.2, '0000-00-00', '0000-00-00', '0000-00-00'),
(150, '70CIT05', 'Scale', 'AOQPM8791J', '750329152278', 176310100005950, 18310, 6000, 3736.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(151, '70CIT06', 'scale', 'AUCPK3751C', '521484590472', 176310100006117, 18310, 6000, 3619.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(152, '70CIT07', 'Scale', 'AQVPC6205A', '', 176310100003299, 18310, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(153, '70CIT08', 'Scale', 'ALQPA5937M', '', 176310100001893, 18310, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(154, '70CIT09', 'Scale', 'AZDPR8838F', '500405962140', 176310100005871, 17602, 6000, 2501.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(155, '70CIT10', 'Scale', 'BFEPM8448C', '360295375488', 176310100008009, 15600, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(156, '70CIT11', 'cons', 'AZDPR8531P', '262393427484', 176310100006418, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(157, '70CIT12', 'cons', 'DFHPS2658R', '837152728193', 176310100006490, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(158, '70CIT13', 'cons', '', '', 176310100045046, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(159, '70CIT14', 'cons', '', '', 176310100045037, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(160, '70MBA01', 'Scale', 'ANGPR5222G', '705795070056', 176310100006126, 21455, 7000, 14411.9, '0000-00-00', '0000-00-00', '0000-00-00'),
(161, '70MBA02', 'cons', 'ASFPV1299M', '269152225677', 176310100002254, 18000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(162, '70MBA03', 'Cons', 'AMCPV8463A', '933998985845', 176310100006913, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(163, '70MBA04', 'Cons', '--', '493352567425', 176310100007037, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(164, '70MBA05', 'Cons', 'AWQPB1419A', '855368607304', 176310100006597, 21000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(165, '70MBA06', 'Cons', 'DEHPS7749Q', '570535631139', 176310100006904, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(166, '70MBA07', 'Cons', 'BCAPB1948M', '421112624026', 176310100007107, 21000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(167, '70MBA08', 'cons', '', '', 176310100017593, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(168, '70MBA09', 'cons', '', '', 176310100049264, 12000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(169, '70MBA10', 'cons', '', '', 176310100049714, 14000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(170, '70MCA01', 'Scale', 'AGPPR1461F', '636875078270', 176310100001103, 44791, 9000, 6212.3, '0000-00-00', '0000-00-00', '0000-00-00'),
(171, '70MCA02', 'Scale', 'AENPV4739E', '816353231163', 176310100006551, 17602, 6000, 2501.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(172, '70MCA03', 'Scale', 'AMLPC0136C', '770338468258', 176310100006171, 17602, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(173, '70MCA04', 'cons', 'ATIPP5427F', '432775710579', 176310100006278, 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(174, '70MCA05', 'Cons', 'BWZPK7763C', '688447820703', 176310100007222, 25000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(175, '70MCA06', 'Cons', 'AFOPN9861M', '718878712911', 176310100006153, 23000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(176, '70MEC01', 'Scale', 'ACVPG8051G', '342249265426', 176310100006047, 75000, 5000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(177, '70MEC02', 'Scale', 'AUQPP8189F', '784344295530', 176310100001954, 44791, 9000, 5245.5, '0000-00-00', '0000-00-00', '0000-00-00'),
(178, '70MEC03', 'Scale', 'ACSPP8302J', '632657194260', 176310100035544, 61229, 10000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(179, '70MEC04', 'Scale', 'AOQPK1097M', '777666301666', 176310100000812, 19821, 6000, 20204.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(180, '70MEC05', 'Scale', 'AGTPA6523F', '495447520190', 176310100001112, 19821, 6000, 20204.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(181, '70MEC06', 'Scale', 'ASKPM8915A', '837516042888', 176310100000900, 19040, 6000, 15082.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(182, '70MEC07', 'Scale', 'ACUPH2957F', '487689926243', 176310100007347, 19040, 6000, 4940.7, '0000-00-00', '0000-00-00', '0000-00-00'),
(183, '70MEC08', 'Scale', 'AMTPR6364H', '863474016834', 48010027000544, 17602, 6000, 6973.2, '0000-00-00', '0000-00-00', '0000-00-00'),
(184, '70MEC09', 'Scale', 'AMJPN8467F', '498008121667', 176310100007204, 19040, 6000, 1501.2, '0000-00-00', '0000-00-00', '0000-00-00'),
(185, '70MEC10', 'Scale', 'BACPD9795A', '362703030550', 176310100001811, 17602, 6000, 1383.8, '0000-00-00', '0000-00-00', '0000-00-00'),
(186, '70MEC11', 'Scale', 'ANOPB6380K', '231144185792', 176310100006977, 16915, 6000, 120, '0000-00-00', '0000-00-00', '0000-00-00'),
(187, '70MEC12', 'Scale', 'AQXPP1241M', '750909445904', 176310100007116, 16248, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(188, '70MEC13', 'Scale', 'AZHPR9818D', '764577337159', 176310100006737, 15600, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(189, '70MEC14', 'Scale', 'ALXPG4891R', '577330264025', 176310100008753, 15600, 6000, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(190, '70MEC15', 'cons', 'AJIPV1968K', '335496640981', 176310100006700, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(191, '70MEC16', 'cons', 'BDTPR0606N', '815968029979', 176310100007268, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(192, '70MEC17', 'cons', 'BFQPB3535K', '881975369223', 176310100050358, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(193, '70MEC18', 'cons', 'ARVPN9689A', '933917561083', 176310100013001, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(194, '70MEC19', 'cons', 'AODPN4298L', '735663334066', 176310100015337, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(195, '70MEC20', 'cons', 'ARVPN9688B', '279580769310', 176310100015328, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(196, '70MEC21', 'cons', 'AVHPA8103G', '575453673220', 176310100010299, 30000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(197, '70MEC22', 'cons', 'ACKPI1029F', '493783655486', 48010100041828, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(198, '70MEC23', 'Cons', 'BXFPK3907F', '820029068870', 104010100029631, 17807, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(199, '70MEC24', 'cons', 'APPPA5361L', '885743585187', 176310100018592, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(200, '70MEC25', 'cons', 'CACPM0941C', '702538620138', 176310100018626, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(201, '70MEC26', 'cons', 'BITPK5638S', '201343807866', 176310100018644, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(202, '70MEC27', 'cons', 'BAPPD1602K', '248070536207', 103210100034183, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(203, '70MEC28', 'Cons', 'AQOLG6117C', '589421327547', 48010100052879, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(204, '70MEC29', 'Cons', 'AHBPN1619G', '438445632578', 176310100034730, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(205, '70MEC30', 'Cons', 'AHCPT2541A', '427126186755', 176310100035076, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(206, '70MEC31', 'Cons', 'AIKPN5629A', '430789869128', 156310100085415, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(207, '70MEC32', 'Cons', '', '', 140610100000317, 18000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(208, '70MEC33', 'Cons', '', '443995407629', 176310100001176, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(209, '70MEC34', 'Cons', '', '860945646980', 48010023000877, 22000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(210, '70MEC35', 'Cons', 'AOQPP5637Q', '632248578454', 176310100037117, 70000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(211, '70MEC36', 'cons', 'FJMPS2975E', '981217061239', 176310100008018, 24000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(212, '70MEC37', 'cons', '', '586440731733', 48010015001356, 12000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(213, '70MEC38', 'cons', '', '', 176310100044375, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(214, '70MEC39', 'cons', '', '', 154010100030691, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(215, '70MEC40', 'cons', '', '', 176310100044393, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(216, '70MEC41', 'cons', '', '', 124710100076392, 16000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(217, '70MEC42', 'cons', '', '', 176310100044108, 18000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(218, '70MEC43', 'cons', '', '', 176310100044551, 18000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(219, '70MEC44', 'cons', '', '', 176310100044560, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(220, '70MEC45', 'cons', '', '', 176310100044870, 3161, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(221, '70MEC46', 'cons', '', '', 176310100045125, 26000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(222, '70MEC47', 'cons', '', '', 176310100045116, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(223, '70MEC48', 'cons', '', '', 176310100045408, 20000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
(224, '70MEC49', 'cons', '', '', 176310100045286, 28000, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `facsubjects`
--

CREATE TABLE `facsubjects` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `clsid` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `empid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factts`
--

CREATE TABLE `factts` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `clsid` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `pno` int(11) DEFAULT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentassignmentmarks`
--

CREATE TABLE `studentassignmentmarks` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `assignmentno` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `COno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentclasses`
--

CREATE TABLE `studentclasses` (
  `id` int(11) NOT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `stuclsid` varchar(255) DEFAULT NULL,
  `stucoun` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentexternalmarks`
--

CREATE TABLE `studentexternalmarks` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `examtype` varchar(255) DEFAULT NULL,
  `examdate` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `q1q2` int(11) DEFAULT NULL,
  `q3q4` int(11) DEFAULT NULL,
  `q5q6` int(11) DEFAULT NULL,
  `q7q8` int(11) DEFAULT NULL,
  `q9q10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentinternalmarks`
--

CREATE TABLE `studentinternalmarks` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `midno` int(11) DEFAULT NULL,
  `midtotal` int(11) DEFAULT NULL,
  `q1q2` int(11) DEFAULT NULL,
  `q3q4` int(11) DEFAULT NULL,
  `q5q6` int(11) DEFAULT NULL,
  `q7q8` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentlabdtdmarks`
--

CREATE TABLE `studentlabdtdmarks` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `labdate` date DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `COnos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentlabexternalmarks`
--

CREATE TABLE `studentlabexternalmarks` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `Endmarks` int(11) DEFAULT NULL,
  `CO1` int(11) DEFAULT NULL,
  `CO2` int(11) DEFAULT NULL,
  `CO3` int(11) DEFAULT NULL,
  `CO4` int(11) DEFAULT NULL,
  `CO5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentlabinternalmarks`
--

CREATE TABLE `studentlabinternalmarks` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `midno` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `COnos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentmarks`
--

CREATE TABLE `studentmarks` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `sem` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `examtype` varchar(255) DEFAULT NULL,
  `examdate` date DEFAULT NULL,
  `internal` int(11) DEFAULT NULL,
  `External` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `ExamRes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `stuno` varchar(255) DEFAULT NULL,
  `stuname` varchar(255) DEFAULT NULL,
  `stufname` varchar(255) DEFAULT NULL,
  `stumname` varchar(255) DEFAULT NULL,
  `stugender` varchar(255) DEFAULT NULL,
  `studob` date DEFAULT NULL,
  `stuaddr` varchar(255) DEFAULT NULL,
  `studept` varchar(255) DEFAULT NULL,
  `stuphno` bigint(20) DEFAULT NULL,
  `stuemail` varchar(255) DEFAULT NULL,
  `stuperphone` bigint(20) DEFAULT NULL,
  `studoj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `acy` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `subcode` varchar(255) DEFAULT NULL,
  `subname` varchar(255) DEFAULT NULL,
  `co1` varchar(255) DEFAULT NULL,
  `co2` varchar(255) DEFAULT NULL,
  `co3` varchar(255) DEFAULT NULL,
  `co4` varchar(255) DEFAULT NULL,
  `co5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `un` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `un`, `pwd`, `utype`) VALUES
(1, '70CIV01', '70CIV01', 'f'),
(2, '70CIV02', '70CIV02', 'f'),
(3, '70CIV03', '70CIV03', 'f'),
(4, '70CIV04', '70CIV04', 'f'),
(5, '70CIV05', '70CIV05', 'f'),
(6, '70CIV06', '70CIV06', 'f'),
(7, '70CIV07', '70CIV07', 'f'),
(8, '70CIV08', '70CIV08', 'f'),
(9, '70CIV09', '70CIV09', 'f'),
(10, '70CIV10', '70CIV10', 'f'),
(11, '70CIV11', '70CIV11', 'f'),
(12, '70CIV12', '70CIV12', 'f'),
(13, '70CIV13', '70CIV13', 'f'),
(14, '70CIV14', '70CIV14', 'f'),
(15, '70CSE01', '70CSE01', 'f'),
(16, 'aits051001', 'aits051001', 'f'),
(17, 'aits051002', 'aits051002', 'f'),
(18, 'aits051003', 'aits051003', 'f'),
(19, 'aits051004', 'aits051004', 'f'),
(20, 'aits051005', 'aits051005', 'f'),
(21, 'aits051006', 'aits051006', 'f'),
(22, 'aits051007', 'aits051007', 'f'),
(23, 'aits051008', 'aits051008', 'f'),
(24, 'aits051009', 'aits051009', 'f'),
(25, 'aits051010', 'aits051010', 'f'),
(26, 'aits051011', 'aits051011', 'f'),
(27, 'aits051012', 'aits051012', 'f'),
(28, 'aits051013', 'aits051013', 'f'),
(29, 'aits051014', 'aits051014', 'f'),
(30, 'aits051015', 'aits051015', 'f'),
(31, 'aits051016', 'aits051016', 'f'),
(32, 'aits051017', 'aits051017', 'f'),
(33, 'aits051018', 'aits051018', 'f'),
(34, 'aits051019', 'aits051019', 'f'),
(35, 'aits051020', 'aits051020', 'f'),
(36, 'aits051021', 'aits051021', 'f'),
(37, 'aits051022', 'aits051022', 'f'),
(38, 'aits051023', 'aits051023', 'f'),
(39, 'aits051024', 'aits051024', 'f'),
(40, 'aits051025', 'aits051025', 'f'),
(41, 'aits051026', 'aits051026', 'f'),
(42, 'aits051027', 'aits051027', 'f'),
(43, 'aits051028', 'aits051028', 'f'),
(44, 'aits051029', 'aits051029', 'f'),
(45, 'aits051030', 'aits051030', 'f'),
(46, 'aits051031', 'aits051031', 'f'),
(47, 'aits051032', 'aits051032', 'f'),
(48, 'aits051033', 'aits051033', 'f'),
(49, 'aits051034', 'aits051034', 'f'),
(50, 'aits051035', 'aits051035', 'f'),
(51, 'aits051036', 'aits051036', 'f'),
(52, 'aits051037', 'aits051037', 'f'),
(53, 'aits051038', 'aits051038', 'f'),
(54, 'aits051039', 'aits051039', 'f'),
(55, 'aits051040', 'aits051040', 'f'),
(56, 'aits051041', 'aits051041', 'f'),
(57, 'aits051042', 'aits051042', 'f'),
(58, 'aits051043', 'aits051043', 'f'),
(59, 'aits051044', 'aits051044', 'f'),
(60, 'aits051045', 'aits051045', 'f'),
(61, 'aits051046', 'aits051046', 'f'),
(62, 'aits051047', 'aits051047', 'f'),
(63, 'aits051048', 'aits051048', 'f'),
(64, 'aits051049', 'aits051049', 'f'),
(65, 'aits051050', 'aits051050', 'f'),
(66, '70ECE19', '70ECE19', 'f'),
(67, '70ECE20', '70ECE20', 'f'),
(68, '70ECE21', '70ECE21', 'f'),
(69, '70ECE22', '70ECE22', 'f'),
(70, '70ECE23', '70ECE23', 'f'),
(71, '70ECE24', '70ECE24', 'f'),
(72, '70ECE25', '70ECE25', 'f'),
(73, '70ECE26', '70ECE26', 'f'),
(74, '70ECE27', '70ECE27', 'f'),
(75, '70ECE28', '70ECE28', 'f'),
(76, '70ECE29', '70ECE29', 'f'),
(77, '70ECE30', '70ECE30', 'f'),
(78, '70ECE31', '70ECE31', 'f'),
(79, '70ECE32', '70ECE32', 'f'),
(80, '70ECE33', '70ECE33', 'f'),
(81, '70ECE34', '70ECE34', 'f'),
(82, '70ECE35', '70ECE35', 'f'),
(83, '70ECE36', '70ECE36', 'f'),
(84, '70EEE01', '70EEE01', 'f'),
(85, '70EEE02', '70EEE02', 'f'),
(86, '70EEE03', '70EEE03', 'f'),
(87, '70EEE04', '70EEE04', 'f'),
(88, '70EEE05', '70EEE05', 'f'),
(89, '70EEE06', '70EEE06', 'f'),
(90, '70EEE07', '70EEE07', 'f'),
(91, '70EEE08', '70EEE08', 'f'),
(92, '70EEE09', '70EEE09', 'f'),
(93, '70EEE10', '70EEE10', 'f'),
(94, '70EEE11', '70EEE11', 'f'),
(95, '70EEE12', '70EEE12', 'f'),
(96, '70EEE13', '70EEE13', 'f'),
(97, '70EEE14', '70EEE14', 'f'),
(98, '70EEE15', '70EEE15', 'f'),
(99, '70EEE16', '70EEE16', 'f'),
(100, '70EEE17', '70EEE17', 'f'),
(101, '70EEE18', '70EEE18', 'f'),
(102, '70EEE19', '70EEE19', 'f'),
(103, '70EEE20', '70EEE20', 'f'),
(104, '70EEE21', '70EEE21', 'f'),
(105, '70EEE22', '70EEE22', 'f'),
(106, '70EEE23', '70EEE23', 'f'),
(107, '70EEE24', '70EEE24', 'f'),
(108, '70HS01', '70HS01', 'f'),
(109, '70HS02', '70HS02', 'f'),
(110, '70HS03', '70HS03', 'f'),
(111, '70HS04', '70HS04', 'f'),
(112, '70HS05', '70HS05', 'f'),
(113, '70HS06', '70HS06', 'f'),
(114, '70HS07', '70HS07', 'f'),
(115, '70HS08', '70HS08', 'f'),
(116, '70HS09', '70HS09', 'f'),
(117, '70HS10', '70HS10', 'f'),
(118, '70HS11', '70HS11', 'f'),
(119, '70HS12', '70HS12', 'f'),
(120, '70HS13', '70HS13', 'f'),
(121, '70HS14', '70HS14', 'f'),
(122, '70HS15', '70HS15', 'f'),
(123, '70HS16', '70HS16', 'f'),
(124, '70HS17', '70HS17', 'f'),
(125, '70HS18', '70HS18', 'f'),
(126, '70HS19', '70HS19', 'f'),
(127, '70HS20', '70HS20', 'f'),
(128, '70HS21', '70HS21', 'f'),
(129, '70HS22', '70HS22', 'f'),
(130, '70HS23', '70HS23', 'f'),
(131, '70HS24', '70HS24', 'f'),
(132, '70HS25', '70HS25', 'f'),
(133, '70HS26', '70HS26', 'f'),
(134, '70HS27', '70HS27', 'f'),
(135, '70HS28', '70HS28', 'f'),
(136, '70HS29', '70HS29', 'f'),
(137, '70HS30', '70HS30', 'f'),
(138, '70HS31', '70HS31', 'f'),
(139, '70HS32', '70HS32', 'f'),
(140, '70HS33', '70HS33', 'f'),
(141, '70HS34', '70HS34', 'f'),
(142, '70HS35', '70HS35', 'f'),
(143, '70HS36', '70HS36', 'f'),
(144, '70HS37', '70HS37', 'f'),
(145, '70HS38', '70HS38', 'f'),
(146, '70CIT01', '70CIT01', 'f'),
(147, '70CIT02', '70CIT02', 'f'),
(148, '70CIT03', '70CIT03', 'f'),
(149, '70CIT04', '70CIT04', 'f'),
(150, '70CIT05', '70CIT05', 'f'),
(151, '70CIT06', '70CIT06', 'f'),
(152, '70CIT07', '70CIT07', 'f'),
(153, '70CIT08', '70CIT08', 'f'),
(154, '70CIT09', '70CIT09', 'f'),
(155, '70CIT10', '70CIT10', 'f'),
(156, '70CIT11', '70CIT11', 'f'),
(157, '70CIT12', '70CIT12', 'f'),
(158, '70CIT13', '70CIT13', 'f'),
(159, '70CIT14', '70CIT14', 'f'),
(160, '70MBA01', '70MBA01', 'f'),
(161, '70MBA02', '70MBA02', 'f'),
(162, '70MBA03', '70MBA03', 'f'),
(163, '70MBA04', '70MBA04', 'f'),
(164, '70MBA05', '70MBA05', 'f'),
(165, '70MBA06', '70MBA06', 'f'),
(166, '70MBA07', '70MBA07', 'f'),
(167, '70MBA08', '70MBA08', 'f'),
(168, '70MBA09', '70MBA09', 'f'),
(169, '70MBA10', '70MBA10', 'f'),
(170, '70MCA01', '70MCA01', 'f'),
(171, '70MCA02', '70MCA02', 'f'),
(172, '70MCA03', '70MCA03', 'f'),
(173, '70MCA04', '70MCA04', 'f'),
(174, '70MCA05', '70MCA05', 'f'),
(175, '70MCA06', '70MCA06', 'f'),
(176, '70MEC01', '70MEC01', 'f'),
(177, '70MEC02', '70MEC02', 'f'),
(178, '70MEC03', '70MEC03', 'f'),
(179, '70MEC04', '70MEC04', 'f'),
(180, '70MEC05', '70MEC05', 'f'),
(181, '70MEC06', '70MEC06', 'f'),
(182, '70MEC07', '70MEC07', 'f'),
(183, '70MEC08', '70MEC08', 'f'),
(184, '70MEC09', '70MEC09', 'f'),
(185, '70MEC10', '70MEC10', 'f'),
(186, '70MEC11', '70MEC11', 'f'),
(187, '70MEC12', '70MEC12', 'f'),
(188, '70MEC13', '70MEC13', 'f'),
(189, '70MEC14', '70MEC14', 'f'),
(190, '70MEC15', '70MEC15', 'f'),
(191, '70MEC16', '70MEC16', 'f'),
(192, '70MEC17', '70MEC17', 'f'),
(193, '70MEC18', '70MEC18', 'f'),
(194, '70MEC19', '70MEC19', 'f'),
(195, '70MEC20', '70MEC20', 'f'),
(196, '70MEC21', '70MEC21', 'f'),
(197, '70MEC22', '70MEC22', 'f'),
(198, '70MEC23', '70MEC23', 'f'),
(199, '70MEC24', '70MEC24', 'f'),
(200, '70MEC25', '70MEC25', 'f'),
(201, '70MEC26', '70MEC26', 'f'),
(202, '70MEC27', '70MEC27', 'f'),
(203, '70MEC28', '70MEC28', 'f'),
(204, '70MEC29', '70MEC29', 'f'),
(205, '70MEC30', '70MEC30', 'f'),
(206, '70MEC31', '70MEC31', 'f'),
(207, '70MEC32', '70MEC32', 'f'),
(208, '70MEC33', '70MEC33', 'f'),
(209, '70MEC34', '70MEC34', 'f'),
(210, '70MEC35', '70MEC35', 'f'),
(211, '70MEC36', '70MEC36', 'f'),
(212, '70MEC37', '70MEC37', 'f'),
(213, '70MEC38', '70MEC38', 'f'),
(214, '70MEC39', '70MEC39', 'f'),
(215, '70MEC40', '70MEC40', 'f'),
(216, '70MEC41', '70MEC41', 'f'),
(217, '70MEC42', '70MEC42', 'f'),
(218, '70MEC43', '70MEC43', 'f'),
(219, '70MEC44', '70MEC44', 'f'),
(220, '70MEC45', '70MEC45', 'f'),
(221, '70MEC46', '70MEC46', 'f'),
(222, '70MEC47', '70MEC47', 'f'),
(223, '70MEC48', '70MEC48', 'f'),
(224, '70MEC49', '70MEC49', 'f'),
(225, 'csehod', 'csehod', 'hod'),
(226, 'ecehod', 'ecehod', 'hod'),
(227, 'eeehod', 'eeehod', 'hod'),
(228, 'ithod', 'ithod', 'hod'),
(229, 'mehod', 'mehod', 'hod'),
(230, 'cehod', 'cehod', 'hod'),
(231, 'mbahod', 'mbahod', 'hod'),
(232, 'mcahod', 'mcahod', 'hod'),
(233, 'hshod', 'hshod', 'hod'),
(234, 'ce', 'ce', 'ex'),
(235, 'office', 'offoce', 'o'),
(236, 'principal', 'peincipal', 'p'),
(237, 'ao', 'ao', 'ao'),
(238, 'as', 'as', 'as');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_deds`
--
ALTER TABLE `emp_deds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_infos`
--
ALTER TABLE `emp_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_leaves`
--
ALTER TABLE `emp_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_offices`
--
ALTER TABLE `emp_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facsubjects`
--
ALTER TABLE `facsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factts`
--
ALTER TABLE `factts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentassignmentmarks`
--
ALTER TABLE `studentassignmentmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentclasses`
--
ALTER TABLE `studentclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentexternalmarks`
--
ALTER TABLE `studentexternalmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentinternalmarks`
--
ALTER TABLE `studentinternalmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentlabdtdmarks`
--
ALTER TABLE `studentlabdtdmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentlabexternalmarks`
--
ALTER TABLE `studentlabexternalmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentlabinternalmarks`
--
ALTER TABLE `studentlabinternalmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentmarks`
--
ALTER TABLE `studentmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_deds`
--
ALTER TABLE `emp_deds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_infos`
--
ALTER TABLE `emp_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `emp_leaves`
--
ALTER TABLE `emp_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `emp_offices`
--
ALTER TABLE `emp_offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `facsubjects`
--
ALTER TABLE `facsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factts`
--
ALTER TABLE `factts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentassignmentmarks`
--
ALTER TABLE `studentassignmentmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentclasses`
--
ALTER TABLE `studentclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentexternalmarks`
--
ALTER TABLE `studentexternalmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentinternalmarks`
--
ALTER TABLE `studentinternalmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentlabdtdmarks`
--
ALTER TABLE `studentlabdtdmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentlabexternalmarks`
--
ALTER TABLE `studentlabexternalmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentlabinternalmarks`
--
ALTER TABLE `studentlabinternalmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentmarks`
--
ALTER TABLE `studentmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
