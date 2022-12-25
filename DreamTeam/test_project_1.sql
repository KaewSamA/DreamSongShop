-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2021 at 08:14 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_project_1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_songs` (IN `Name` VARCHAR(50), IN `Artist` VARCHAR(50), IN `Cate` VARCHAR(50))  MODIFIES SQL DATA
    DETERMINISTIC
BEGIN
INSERT INTO songs_table (`Song`,`Artist`,`Category`) VALUES (@Name,@Artist,@Cate);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `history_buy`
--

CREATE TABLE `history_buy` (
  `User` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Songs` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Quantity` int(255) DEFAULT NULL,
  `Adress` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int(255) DEFAULT NULL,
  `transport` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `history_buy`
--

INSERT INTO `history_buy` (`User`, `Songs`, `Quantity`, `Adress`, `Price`, `transport`) VALUES
('user1', 'Rap God', 3, 'AdressOne', 150, ''),
('user1', 'One Love', 1, '', 480, ''),
('user1', 'One Love', 3, 'AdressOne', 70, 'EMS'),
('user1', 'Forgt about dre', 2, 'Adress 1', 250, 'Normal'),
('admin1234', 'Closer', 1, 'Adress 1', 500, 'Normal'),
('admin1234', 'Still D.R.E.', 4, '', 580, 'EMS'),
('admin1234', 'Do The Reggae', 3, '', 70, 'EMS'),
('admin1234', 'Packing up my blues', 7, 'dadad', 3830, 'EMS'),
('admin1234', 'Bilog na Naman ang Buwan', 4, 'adadad', 100, 'EMS'),
('user1', 'Smells Like Teen spirit', 1, '', 200, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `signin_table`
--

CREATE TABLE `signin_table` (
  `ID` int(11) NOT NULL,
  `Username` char(12) DEFAULT NULL,
  `Password` char(12) DEFAULT NULL,
  `adressL1` char(100) DEFAULT NULL,
  `adressL2` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signin_table`
--

INSERT INTO `signin_table` (`ID`, `Username`, `Password`, `adressL1`, `adressL2`) VALUES
(1, 'user1', '1234', NULL, NULL),
(2, 'user2', '1234', 'aaaaa', 'aaaaa'),
(3, 'user3', '1234', 'aaa', ''),
(4, 'admin1234', '1234', 'dadad', 'adadad'),
(5, 'admin1', '1234', 'aaa', '');

-- --------------------------------------------------------

--
-- Table structure for table `songs_table`
--

CREATE TABLE `songs_table` (
  `Song` char(255) DEFAULT NULL,
  `Artist` char(255) DEFAULT NULL,
  `Category` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs_table`
--

INSERT INTO `songs_table` (`Song`, `Artist`, `Category`, `Price`) VALUES
('Back in black', 'AC/DC', 'Rock', 200),
('High way to hell', 'AC/DC', 'Rock', 200),
('Come As You Are', 'Nirvana', 'Rock', 200),
('Smells Like Teen spirit', 'Nirvana', 'Rock', 200),
('Lose yourself', 'Eminem', 'Rap', 150),
('Rap God', 'Eminem', 'Rap', 150),
('Forgt about dre', 'Dr.dre', 'Rap', 150),
('Still D.R.E.', 'Dr.dre', 'Rap', 150),
('Every Breath You take', 'Karen Souza', 'Jazz', 300),
('Get Lucky', 'Karen Souza', 'Jazz', 300),
('All Blues', 'Miles Davis', 'Jazz', 300),
('Blue In Green', 'Miles Davis', 'Jazz', 300),
('Levels', 'Avicii', 'EDM', 500),
('Waiting For Love', 'Avicii', 'EDM', 500),
('Closer', 'The Chainsmonkers', 'EDM', 500),
('Paris', 'The Chainsmonkers', 'EDM', 500),
('Take Me Home, Country Roads', 'John Denver', 'Country', 250),
('Thank God I am A Country Boy', 'John Denver', 'Country', 250),
('What is Your Country Song', 'Thomas Rhett', 'Country', 250),
('Country Again', 'Thomas Rhett', 'Country', 250),
('One Love', 'Bob Marley', 'Reggae', 30),
('Is This Love', 'Bob Marley', 'Reggae', 30),
('Bilog na Naman ang Buwan', 'Tropical Depression', 'Reggae', 30),
('Do The Reggae', 'Tropical Depression', 'Reggae', 30),
('Minuetto & Trio', 'Franz Joseph Haydn', 'Classic', 700),
('Surprise', 'Franz Joseph Haydn', 'Classic', 700),
('Lacrimosa', 'Mozart', 'Classic', 700),
('Requiem', 'Mozart', 'Classic', 700),
('Cross Road Blues', 'Robert Johnson', 'Blues', 550),
('Me and the Devil Blues', 'Robert Johnson', 'Blues', 550),
('I Got The Blues', 'Sam Myers', 'Blues', 550),
('Packing up my blues', 'Sam Myers', 'Blues', 550);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signin_table`
--
ALTER TABLE `signin_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signin_table`
--
ALTER TABLE `signin_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
