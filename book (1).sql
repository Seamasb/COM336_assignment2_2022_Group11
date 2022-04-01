-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 08:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book id` int(10) NOT NULL,
  `Author` char(30) NOT NULL,
  `Genre` char(15) NOT NULL,
  `Title` char(25) NOT NULL,
  `Description` char(255) NOT NULL,
  `stock` int(15) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book id`, `Author`, `Genre`, `Title`, `Description`, `stock`, `Price`) VALUES
(1, 'Stephen King', 'Horror', 'IT', 'seven children as they are terrorized by an evil entity that exploits the fears of its victims to disguise itself while hunting its prey', 50, 10),
(2, 'Stephen King', 'Horror', 'The Shinning', 'husband Jack, wife Wendy, and their five-year-old son, Danny. Jack is hired as the caretaker of the remote Overlook Hotel for the winter offseason.', 50, 10),
(3, 'Stephen King', 'Horror', 'Salems Lot', 'A novelist and a young horror fan attempt to save a small New England town which has been invaded by vampires.', 50, 10),
(4, 'Stephen King', 'Horror', 'Carrie', 'Friendless, bullied high-school girl who uses her newly discovered telekinetic powers to exact revenge on those who torment her.', 50, 10),
(5, 'Stephen	 King', 'Horror', 'Pet Sematary', 'Louis Creed discovers a mysterious burial ground hidden deep in the woods near the family', 50, 10),
(6, 'Stephen King', 'Horror', 'The mist', 'The Mist is a psychological horror novella by American author Stephen King. First published by Viking Press in 1980 as part of the Dark Forces anthology', 50, 10),
(7, 'Stephen King', 'Horror', 'Doctor Sleep', 'Dan Torrance must protect a young girl with similar powers from a cult known as The True Knot', 50, 10),
(8, 'Stephen King', 'Horror', 'Christine', 'Christine is a horror novel by American writer Stephen King', 50, 10),
(9, 'Stephen King', 'Horror', 'The Outsider', 'The Outsider is a horror novel by the American author Stephen King. The novel was published by Scribner', 50, 10),
(10, 'Stephen King', 'Horror', 'The Institute', 'Luke Ellis is kidnapped by intruders and awakens in the Institute', 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer No` int(5) NOT NULL,
  `user id` int(20) NOT NULL,
  `Phone No` int(20) NOT NULL,
  `Email Address` varchar(35) NOT NULL,
  `First name` varchar(25) NOT NULL,
  `Last name` varchar(25) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer No`, `user id`, `Phone No`, `Email Address`, `First name`, `Last name`, `Password`, `DOB`, `Address`) VALUES
(1, 0, 77212673, 'john@email.com', 'John', 'Hutchman', 'password1', '1/1/86', '1 Derry Road'),
(2, 0, 77212674, 'gary@email.com', 'Gary', 'Anderson', 'password2', '1/2/87', '17 Magee'),
(3, 0, 77212675, 'seamas@email.com', 'Seamas', 'Barton', 'password3', '1/3/88', '2 belfast road'),
(4, 0, 77212676, 'johnG@email.com', 'John', 'Giannopoulos', 'password4', '1/4/89', '5 derry road'),
(5, 0, 77212677, 'michael@email.com', 'Michael', 'McArdle', 'password5', '1/5/90', '6 magee'),
(6, 0, 77212678, 'conor@email.com', 'Conor', 'Gallagher', 'password6', '1/6/91', '7 creggan');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `Delivery No` int(5) NOT NULL,
  `Customer No` int(5) NOT NULL,
  `Delivery Status` varchar(15) NOT NULL,
  `Phone No` int(20) NOT NULL,
  `Order No` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`Delivery No`, `Customer No`, `Delivery Status`, `Phone No`, `Order No`) VALUES
(1, 1, 'In progress', 77212673, 1),
(2, 2, 'Est 2 days', 77212674, 2),
(3, 3, 'Delivered', 77212675, 3),
(4, 4, 'In progress', 77212676, 4),
(5, 5, 'Delivered', 77212677, 5),
(6, 6, 'In Progress', 77212678, 6);

-- --------------------------------------------------------

--
-- Table structure for table `order items`
--

CREATE TABLE `order items` (
  `Order No` int(5) NOT NULL,
  `Book id` int(10) NOT NULL,
  `Quanitiy` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order items`
--

INSERT INTO `order items` (`Order No`, `Book id`, `Quanitiy`) VALUES
(1, 1, 3),
(2, 4, 1),
(3, 10, 2),
(4, 7, 1),
(5, 6, 1),
(6, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `Order No` int(5) NOT NULL,
  `Customer No` int(5) NOT NULL,
  `Phone No` int(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Delivery No` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`Order No`, `Customer No`, `Phone No`, `Address`, `Delivery No`) VALUES
(1, 1, 77212673, '1 Derry Road', 1),
(2, 2, 77212674, '17 Magee', 2),
(3, 3, 77212675, '2 Belfast Road', 3),
(4, 4, 77212676, '5 Derry Road', 4),
(5, 5, 77212677, '6 Magee', 5),
(6, 6, 77212678, '7 Creggan', 6);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Book id` int(10) NOT NULL,
  `Customer No` int(5) NOT NULL,
  `Reviews` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Book id`, `Customer No`, `Reviews`) VALUES
(1, 1, 'This book was amazing. I read it over 2 weeks after work in bed, in the pitch black, home alone, and despite setting myself a curfew of 12 o\'clock, I found myself reading well into the early hours in the morning'),
(1, 2, 'IT is a great story, I will prefer the movie rather than the book, it will give you the real creep in 2020s'),
(2, 1, 'Afer reading Salem\'s Lot not once but twice, I\'d say it\'s definitly worth the read'),
(3, 3, 'A very good read, found it much more interesting than I thought I would'),
(4, 4, 'Really good. In particular, the zombie cat a zombie by any other name.....'),
(6, 5, 'Ive read some terrible kindle editions of original books by Stephen King and although this is different and not as good as the original, it\'s still a good read'),
(7, 5, 'read this and then watched the movie,,,,forgotten both already,,,,if Stephen wanted this to measure up with \'the shining it didnt'),
(8, 4, 'Quite enjoyed this. Simple story, easy to follow, yeah not a bad read. Passes the time away quite nicely actually.One person found this helpful'),
(9, 6, 'Like so many other thriller writers, King has slipped into the crime genre and lost some of his magic. I have bought all his work until now in the hope he will return to his fantasy roots, but so far I\'ve been disappointed'),
(10, 5, 'My favourite part is always when the converging stories meet and merge together to deliver shock and awesomeness.Thank you Mr King');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer No`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`Delivery No`),
  ADD UNIQUE KEY `Customer No` (`Customer No`);

--
-- Indexes for table `order items`
--
ALTER TABLE `order items`
  ADD PRIMARY KEY (`Order No`),
  ADD KEY `Book id` (`Book id`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD UNIQUE KEY `Order No` (`Order No`),
  ADD UNIQUE KEY `Customer No` (`Customer No`),
  ADD UNIQUE KEY `Delivery No` (`Delivery No`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD UNIQUE KEY `Book id` (`Book id`,`Customer No`),
  ADD KEY `Customer No` (`Customer No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Customer No`) REFERENCES `ordertable` (`Customer No`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`Customer No`) REFERENCES `deliveries` (`Customer No`);

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`Delivery No`) REFERENCES `ordertable` (`Delivery No`);

--
-- Constraints for table `order items`
--
ALTER TABLE `order items`
  ADD CONSTRAINT `order items_ibfk_1` FOREIGN KEY (`Book id`) REFERENCES `book` (`Book id`),
  ADD CONSTRAINT `order items_ibfk_2` FOREIGN KEY (`Order No`) REFERENCES `ordertable` (`Order No`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`Book id`) REFERENCES `book` (`Book id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`Customer No`) REFERENCES `customer` (`Customer No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
