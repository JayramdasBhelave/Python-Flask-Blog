-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 02:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '12345678', 'first post', '2022-07-16 00:41:17', 'firstpost@gmail.com'),
(2, 'Second Post', '98876554', 'Second post', '2022-07-16 01:20:36', 'secondpost@gmail.com'),
(3, 'admin', '1234567890', 'admin', '2022-07-16 11:19:01', 'admin@admin.com'),
(4, 'jay', '1234567890', 'jay', NULL, 'it@admin.com'),
(5, 'jay', '1234567890', 'jay', '2022-07-16 11:22:47', 'it@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets learn about stock market', 'this is first post', 'first-post', 'JB article is about the total shares in a business. For individual units of corporate stock, see Share (finance). For \"capital stock\" as an input to production, see Physical capital. For the goods and materials a business holds, see Inventory.', 'post-bg1.jpg', '2022-07-17 15:09:55'),
(2, 'This is second post.', 'this is coolest post ever', 'second-post', 'If we wanted to have more lines in our prefix list we\'d have to create another variable, and then another one, and so on. We not only have to add these new items to our data structure, templates would also have to have all of these new variables included individually. This is not maintainable, consumes a lot of time and is very error prone.', 'post-bg.jpg', '2022-07-17 10:08:31'),
(3, 'Looping Over Dictionaries', 'Let\'s now see how we can loop over dictionaries. We will again use for loop construct, remember, that\'s all we\'ve got!', 'third-post', 'We can use the same syntax we used for iterating over elements of the list but here we\'ll iterate over dictionary keys. To retrieve value assigned to the key we need to use subscript, i.e. [], notation.\r\n\r\nOne advantage of using dictionaries over lists is that we can use names of elements as a reference, this makes retrieving objects and their values much easier.\r\n\r\nSay we used list to represent our collection of interfaces:', 'post-bg.jpg', '2022-07-17 10:18:23'),
(4, 'Conditionals And Tests', 'Now that we\'re done with loops it\'s time to move on to conditionals.', 'four-post', 'Jinja2 implements one type of conditional statement, the if statement. For branching out we can use elif and else.\r\n\r\nConditionals in Jinja2 can be used in a few different ways. We\'ll now have a look at some use cases and how they combine with other language features.', 'post-bg.jpg', '2022-07-17 10:19:37'),
(5, 'Comparisons', 'First thing we look at is comparing values with conditionals, these make use of ==, !=, >, >=, <, <= operators. These are pretty standard but I will show some examples nonetheless.\r\n\r\n', 'five-post', 'One common scenario where comparison is used is varying command syntax based on the version, or vendor, of the installed OS. For instance some time ago Arista had to change a number of commands due to the lawsuit and we could use a simple if statement to make sure our templates work with all of the EOS versions:\r\n\r\n', 'post-bg.jpg', '2022-07-17 10:20:29'),
(6, 'Logical Operators', 'No implementation of conditionals would be complete without logical operators. Jinja2 provides these in the form of and, or and not.', 'six-post', 'There is not an awful lot to talk about here so here\'s just a short example showing all of these in action:\r\n\r\n(venv) przemek@quasar:~/nauto/jinja/python$ python j2_render.py \\\r\n-t templates/if-logic-ops.j2 -f vars/if-logic-ops.yml', 'post-bg.jpg', '2022-07-17 10:21:33'),
(7, 'hi', 'hale', 'new-content', 'content', 'jb', '2022-07-17 14:42:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
