-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2015 at 03:28 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `datatables_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatables_demo`
--

CREATE TABLE IF NOT EXISTS `datatables_demo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) NOT NULL DEFAULT '',
  `last_name` varchar(250) NOT NULL DEFAULT '',
  `position` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `office` varchar(250) NOT NULL DEFAULT '',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `age` int(8) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `extn` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `datatables_demo`
--

INSERT INTO `datatables_demo` (`id`, `first_name`, `last_name`, `position`, `email`, `office`, `start_date`, `age`, `salary`, `extn`) VALUES
(1, 'Tiger', 'Nixon', 'System Architect', 't.nixon@datatables.net', 'Edinburgh', '2011-04-25 00:00:00', 61, 320800, '5421'),
(2, 'Garrett', 'Winters', 'Accountant', 'g.winters@datatables.net', 'Tokyo', '2011-07-25 00:00:00', 63, 170750, '8422'),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'a.cox@datatables.net', 'San Francisco', '2009-01-12 00:00:00', 66, 86000, '1562'),
(4, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'c.kelly@datatables.net', 'Edinburgh', '2012-03-29 00:00:00', 22, 433060, '6224'),
(5, 'Airi', 'Satou', 'Accountant', 'a.satou@datatables.net', 'Tokyo', '2008-11-28 00:00:00', 33, 162700, '5407'),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'b.williamson@datatables.net', 'New York', '2012-12-02 00:00:00', 61, 372000, '4804'),
(7, 'Herrod', 'Chandler', 'Sales Assistant', 'h.chandler@datatables.net', 'San Francisco', '2012-08-06 00:00:00', 59, 137500, '9608'),
(8, 'Rhona', 'Davidson', 'Integration Specialist', 'r.davidson@datatables.net', 'Tokyo', '2010-10-14 00:00:00', 55, 327900, '6200'),
(9, 'Colleen', 'Hurst', 'Javascript Developer', 'c.hurst@datatables.net', 'San Francisco', '2009-09-15 00:00:00', 39, 205500, '2360'),
(10, 'Sonya', 'Frost', 'Software Engineer', 's.frost@datatables.net', 'Edinburgh', '2008-12-13 00:00:00', 23, 103600, '1667'),
(11, 'Jena', 'Gaines', 'Office Manager', 'j.gaines@datatables.net', 'London', '2008-12-19 00:00:00', 30, 90560, '3814'),
(12, 'Quinn', 'Flynn', 'Support Lead', 'q.flynn@datatables.net', 'Edinburgh', '2013-03-03 00:00:00', 22, 342000, '9497'),
(13, 'Charde', 'Marshall', 'Regional Director', 'c.marshall@datatables.net', 'San Francisco', '2008-10-16 00:00:00', 36, 470600, '6741'),
(14, 'Haley', 'Kennedy', 'Senior Marketing Designer', 'h.kennedy@datatables.net', 'London', '2012-12-18 00:00:00', 43, 313500, '3597'),
(15, 'Tatyana', 'Fitzpatrick', 'Regional Director', 't.fitzpatrick@datatables.net', 'London', '2010-03-17 00:00:00', 19, 385750, '1965'),
(16, 'Michael', 'Silva', 'Marketing Designer', 'm.silva@datatables.net', 'London', '2012-11-27 00:00:00', 66, 198500, '1581'),
(17, 'Paul', 'Byrd', 'Chief Financial Officer (CFO)', 'p.byrd@datatables.net', 'New York', '2010-06-09 00:00:00', 64, 725000, '3059'),
(18, 'Gloria', 'Little', 'Systems Administrator', 'g.little@datatables.net', 'New York', '2009-04-10 00:00:00', 59, 237500, '1721'),
(19, 'Bradley', 'Greer', 'Software Engineer', 'b.greer@datatables.net', 'London', '2012-10-13 00:00:00', 41, 132000, '2558'),
(20, 'Dai', 'Rios', 'Personnel Lead', 'd.rios@datatables.net', 'Edinburgh', '2012-09-26 00:00:00', 35, 217500, '2290'),
(21, 'Jenette', 'Caldwell', 'Development Lead', 'j.caldwell@datatables.net', 'New York', '2011-09-03 00:00:00', 30, 345000, '1937'),
(22, 'Yuri', 'Berry', 'Chief Marketing Officer (CMO)', 'y.berry@datatables.net', 'New York', '2009-06-25 00:00:00', 40, 675000, '6154'),
(23, 'Caesar', 'Vance', 'Pre-Sales Support', 'c.vance@datatables.net', 'New York', '2011-12-12 00:00:00', 21, 106450, '8330'),
(24, 'Doris', 'Wilder', 'Sales Assistant', 'd.wilder@datatables.net', 'Sidney', '2010-09-20 00:00:00', 23, 85600, '3023'),
(25, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'a.ramos@datatables.net', 'London', '2009-10-09 00:00:00', 47, 1200000, '5797'),
(26, 'Gavin', 'Joyce', 'Developer', 'g.joyce@datatables.net', 'Edinburgh', '2010-12-22 00:00:00', 42, 92575, '8822'),
(27, 'Jennifer', 'Chang', 'Regional Director', 'j.chang@datatables.net', 'Singapore', '2010-11-14 00:00:00', 28, 357650, '9239'),
(28, 'Brenden', 'Wagner', 'Software Engineer', 'b.wagner@datatables.net', 'San Francisco', '2011-06-07 00:00:00', 28, 206850, '1314'),
(29, 'Fiona', 'Green', 'Chief Operating Officer (COO)', 'f.green@datatables.net', 'San Francisco', '2010-03-11 00:00:00', 48, 850000, '2947'),
(30, 'Shou', 'Itou', 'Regional Marketing', 's.itou@datatables.net', 'Tokyo', '2011-08-14 00:00:00', 20, 163000, '8899'),
(31, 'Michelle', 'House', 'Integration Specialist', 'm.house@datatables.net', 'Sidney', '2011-06-02 00:00:00', 37, 95400, '2769'),
(32, 'Suki', 'Burks', 'Developer', 's.burks@datatables.net', 'London', '2009-10-22 00:00:00', 53, 114500, '6832'),
(33, 'Prescott', 'Bartlett', 'Technical Author', 'p.bartlett@datatables.net', 'London', '2011-05-07 00:00:00', 27, 145000, '3606'),
(34, 'Gavin', 'Cortez', 'Team Leader', 'g.cortez@datatables.net', 'San Francisco', '2008-10-26 00:00:00', 22, 235500, '2860'),
(35, 'Martena', 'Mccray', 'Post-Sales support', 'm.mccray@datatables.net', 'Edinburgh', '2011-03-09 00:00:00', 46, 324050, '8240'),
(36, 'Unity', 'Butler', 'Marketing Designer', 'u.butler@datatables.net', 'San Francisco', '2009-12-09 00:00:00', 47, 85675, '5384'),
(37, 'Howard', 'Hatfield', 'Office Manager', 'h.hatfield@datatables.net', 'San Francisco', '2008-12-16 00:00:00', 51, 164500, '7031'),
(38, 'Hope', 'Fuentes', 'Secretary', 'h.fuentes@datatables.net', 'San Francisco', '2010-02-12 00:00:00', 41, 109850, '6318'),
(39, 'Vivian', 'Harrell', 'Financial Controller', 'v.harrell@datatables.net', 'San Francisco', '2009-02-14 00:00:00', 62, 452500, '9422'),
(40, 'Timothy', 'Mooney', 'Office Manager', 't.mooney@datatables.net', 'London', '2008-12-11 00:00:00', 37, 136200, '7580'),
(41, 'Jackson', 'Bradshaw', 'Director', 'j.bradshaw@datatables.net', 'New York', '2008-09-26 00:00:00', 65, 645750, '1042'),
(42, 'Olivia', 'Liang', 'Support Engineer', 'o.liang@datatables.net', 'Singapore', '2011-02-03 00:00:00', 64, 234500, '2120'),
(43, 'Bruno', 'Nash', 'Software Engineer', 'b.nash@datatables.net', 'London', '2011-05-03 00:00:00', 38, 163500, '6222'),
(44, 'Sakura', 'Yamamoto', 'Support Engineer', 's.yamamoto@datatables.net', 'Tokyo', '2009-08-19 00:00:00', 37, 139575, '9383'),
(45, 'Thor', 'Walton', 'Developer', 't.walton@datatables.net', 'New York', '2013-08-11 00:00:00', 61, 98540, '8327'),
(46, 'Finn', 'Camacho', 'Support Engineer', 'f.camacho@datatables.net', 'San Francisco', '2009-07-07 00:00:00', 47, 87500, '2927'),
(47, 'Serge', 'Baldwin', 'Data Coordinator', 's.baldwin@datatables.net', 'Singapore', '2012-04-09 00:00:00', 64, 138575, '8352'),
(48, 'Zenaida', 'Frank', 'Software Engineer', 'z.frank@datatables.net', 'New York', '2010-01-04 00:00:00', 63, 125250, '7439'),
(49, 'Zorita', 'Serrano', 'Software Engineer', 'z.serrano@datatables.net', 'San Francisco', '2012-06-01 00:00:00', 56, 115000, '4389'),
(50, 'Jennifer', 'Acosta', 'Junior Javascript Developer', 'j.acosta@datatables.net', 'Edinburgh', '2013-02-01 00:00:00', 43, 75650, '3431'),
(51, 'Cara', 'Stevens', 'Sales Assistant', 'c.stevens@datatables.net', 'New York', '2011-12-06 00:00:00', 46, 145600, '3990'),
(52, 'Hermione', 'Butler', 'Regional Director', 'h.butler@datatables.net', 'London', '2011-03-21 00:00:00', 47, 356250, '1016'),
(53, 'Lael', 'Greer', 'Systems Administrator', 'l.greer@datatables.net', 'London', '2009-02-27 00:00:00', 21, 103500, '6733'),
(54, 'Jonas', 'Alexander', 'Developer', 'j.alexander@datatables.net', 'San Francisco', '2010-07-14 00:00:00', 30, 86500, '8196'),
(55, 'Shad', 'Decker', 'Regional Director', 's.decker@datatables.net', 'Edinburgh', '2008-11-13 00:00:00', 51, 183000, '6373'),
(56, 'Michael', 'Bruce', 'Javascript Developer', 'm.bruce@datatables.net', 'Singapore', '2011-06-27 00:00:00', 29, 183000, '5384'),
(57, 'Donna', 'Snider', 'Customer Support', 'd.snider@datatables.net', 'New York', '2011-01-25 00:00:00', 27, 112000, '4226');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
