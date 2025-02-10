-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('adarsh', 'adarsh@123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into the table
INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(1, 1, 'Yashika', 'Jain', 'Female', 'yashika.jain24@gmail.com', '8765432190', 'Dr. Hansraj Hathi', 650, '2024-11-25', '09:30:00', 1, 0),
(2, 2, 'Mehansh', 'Masih', 'Male', 'mehansh.masih10@gmail.com', '7896541230', 'Dr. Nitin Sharma', 700, '2024-12-05', '11:00:00', 0, 1),
(3, 3, 'Saksham', 'Chawla', 'Male', 'saksham.chawla34@gmail.com', '9876543210', 'Dr. Sunil Jain', 900, '2024-12-19', '15:00:00', 0, 1),
(4, 4, 'Ashwini', 'Bisen', 'Female', 'ashwini.bisen56@gmail.com', '8899001122', 'Dr. Hansraj Hathi', 500, '2024-12-30', '18:00:00', 1, 1),
(5, 5, 'Palak', 'Singh', 'Female', 'palak.singh98@gmail.com', '7788990011', 'Dr. Nitin Sharma', 750, '2025-01-08', '10:30:00', 1, 1),
(6, 6, 'Aadish', 'Parate', 'Male', 'aadish.parate72@gmail.com', '9900112233', 'Dr. Sunil Jain', 550, '2025-01-15', '16:00:00', 0, 1),
(7, 7, 'Harish', 'Gandhi', 'Male', 'harish.gandhi23@gmail.com', '6677889900', 'Dr. Nitin Sharma', 600, '2025-01-22', '09:00:00', 1, 1),
(8, 8, 'Pratik', 'Chandak', 'Male', 'pratik.chandak45@gmail.com', '9988776655', 'Dr. Hansraj Hathi', 700, '2025-01-25', '19:30:00', 1, 0),
(9, 9, 'Nibodh', 'Jajoo', 'Male', 'nibodh.jajoo88@gmail.com', '7788665544', 'Dr. Sunil Jain', 550, '2025-01-28', '13:00:00', 1, 0),
(10, 10, 'Ashwini', 'Bisen', 'Female', 'ashwini.bisen56@gmail.com', '8899001122', 'Dr. Nitin Sharma', 700, '2025-01-30', '15:00:00', 1, 1),
(11, 11, 'Palak', 'Singh', 'Female', 'palak.singh98@gmail.com', '7788990011', 'Dr. Hansraj Hathi', 800, '2025-01-31', '12:00:00', 1, 1),
(12, 12, 'Yashika', 'Jain', 'Female', 'yashika.jain24@gmail.com', '8765432190', 'Dr. Sunil Jain', 450, '2025-01-31', '14:30:00', 1, 1);
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Yashika Jain', 'yashika.jain24@gmail.com', '8765432190', 'Hey Admin'),
('Mehansh Masih', 'mehansh.masih10@gmail.com', '7896541230', 'Good Job'),
('Saksham Chawla', 'saksham.chawla34@gmail.com', '9876543210', 'How can I reach you?'),
('Ashwini Bisen', 'ashwini.bisen56@gmail.com', '8899001122', 'Love your site'),
('Palak Singh', 'palak.singh98@gmail.com', '7788990011', 'Want some coffee?'),
('Aadish Parate', 'aadish.parate72@gmail.com', '9900112233', 'Good service'),
('Harish Gandhi', 'harish.gandhi23@gmail.com', '6677889900', 'Love your service'),
('Pratik Chandak', 'pratik.chandak45@gmail.com', '9988776655', 'Love your service. Thank you!'),
('Nibodh Jajoo', 'nibodh.jajoo88@gmail.com', '7788665544', 'I love your service!');
-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Hansraj Hathi', 'hansraj123', 'hansraj.hathi@gmail.com', 'General', 650),
('Nitin Sharma', 'nitin123', 'nitin.sharma@gmail.com', 'Cardiologist', 700),
('Sunil Jain', 'sunil123', 'sunil.jain@gmail.com', 'Pediatrician', 750);
-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Yashika', 'Jain', 'Female', 'yashika.jain24@gmail.com', '8765432190', 'yashika123', 'yashika123'),
(2, 'Mehansh', 'Masih', 'Male', 'mehansh.masih10@gmail.com', '7896541230', 'mehansh123', 'mehansh123'),
(3, 'Saksham', 'Chawla', 'Male', 'saksham.chawla34@gmail.com', '9876543210', 'saksham123', 'saksham123'),
(4, 'Ashwini', 'Bisen', 'Female', 'ashwini.bisen56@gmail.com', '8899001122', 'ashwini123', 'ashwini123'),
(5, 'Palak', 'Singh', 'Female', 'palak.singh98@gmail.com', '7788990011', 'palak123', 'palak123'),
(6, 'Aadish', 'Parate', 'Male', 'aadish.parate72@gmail.com', '9900112233', 'aadish123', 'aadish123'),
(7, 'Harish', 'Gandhi', 'Male', 'harish.gandhi23@gmail.com', '6677889900', 'harish123', 'harish123'),
(8, 'Pratik', 'Chandak', 'Male', 'pratik.chandak45@gmail.com', '9988776655', 'pratik123', 'pratik123'),
(9, 'Nibodh', 'Jajoo', 'Male', 'nibodh.jajoo88@gmail.com', '7788665544', 'nibodh123', 'nibodh123'),
(10, 'Ankita', 'Sharma', 'Female', 'ankita.sharma29@gmail.com', '8799887766', 'ankita123', 'ankita123'),
(11, 'Rishabh', 'Verma', 'Male', 'rishabh.verma55@gmail.com', '9988771122', 'rishabh123', 'rishabh123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Hansraj Hathi', 1, 101, 'Yashika', 'Jain', '2024-12-27', '15:00:00', 'Cough', 'None', 'Take 1 teaspoon of Benadryl before bedtime'),
('Nitin Sharma', 2, 102, 'Mehansh', 'Masih', '2025-01-10', '10:00:00', 'Severe Fever', 'Dust Allergy', 'Take bed rest and Paracetamol twice daily'),
('Sunil Jain', 3, 103, 'Saksham', 'Chawla', '2024-12-28', '14:30:00', 'Migraine', 'Lactose Intolerance', 'Take ibuprofen as needed and avoid bright lights'),
('Hansraj Hathi', 4, 104, 'Ashwini', 'Bisen', '2024-11-25', '10:00:00', 'Skin Rash', 'Pollen Allergy', 'Apply hydrocortisone cream twice daily'),
('Nitin Sharma', 5, 105, 'Palak', 'Singh', '2025-01-02', '11:00:00', 'Sore Throat', 'None', 'Gargle with warm salt water and take lozenges as needed'),
('Sunil Jain', 6, 106, 'Aadish', 'Parate', '2024-12-29', '13:00:00', 'Back Pain', 'None', 'Perform light stretches daily and take a pain reliever if necessary'),
('Hansraj Hathi', 7, 107, 'Harish', 'Gandhi', '2025-01-15', '16:00:00', 'Cold', 'Dust Allergy', 'Take steam inhalation twice daily and antihistamines as needed'),
('Nitin Sharma', 8, 108, 'Pratik', 'Chandak', '2024-11-30', '09:30:00', 'Fatigue', 'None', 'Ensure 7-8 hours of sleep and stay hydrated'),
('Sunil Jain', 9, 109, 'Nibodh', 'Jajoo', '2025-01-07', '12:00:00', 'High Blood Pressure', 'None', 'Take prescribed antihypertensive medication daily'),
('Hansraj Hathi', 10, 110, 'Ankita', 'Sharma', '2024-12-20', '10:00:00', 'Anemia', 'Iron Allergy', 'Consume iron supplements (allergy-friendly) with vitamin C-rich foods'),
('Nitin Sharma', 11, 111, 'Rishabh', 'Verma', '2025-01-05', '15:00:00', 'Diabetes', 'None', 'Maintain a low-sugar diet and take metformin as prescribed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
