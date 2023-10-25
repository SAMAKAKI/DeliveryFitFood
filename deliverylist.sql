-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 25, 2023 at 05:29 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deliverylist`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategory`
--

CREATE TABLE `kategory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategory`
--

INSERT INTO `kategory` (`id`, `name`) VALUES
(4, 'Breakfast'),
(1, 'Burgers'),
(3, 'Pizza'),
(2, 'Sushi');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `nationaly` varchar(255) NOT NULL,
  `imageUrl` text NOT NULL,
  `kategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `nationaly`, `imageUrl`, `kategory`) VALUES
(1, 'Burger Shop', '15-25 min, $25 min sum', 'American, Turkish', 'https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/l-intro-1662064407.jpg', 'Burgers'),
(2, 'Sushi Shop', '10-30 min, $15 min sum', 'China, Japan, Vietnam', 'https://ocdn.eu/images/pulscms/YmE7MDA_/365aa5c36797ae8f646950c0f233525d.jpg', 'Sushi'),
(3, 'Pizza Shop', '25-60 min, $35 min sum', 'Italy', 'https://ocdn.eu/pulscms-transforms/1/oP-k9kpTURBXy83ZmI0ZjU3MmYxNDhlMDI5NTUxODQ4MDg0OTM4ZTVmMC5qcGeTlQMAzKHNFEDNC2STCaYxMDE4ZmUGkwXNBLDNAnbeAAGhMAE/domowa-pizza.jpg', 'Pizza'),
(4, 'Breakfast Shop', '5-10 min, $5 min sum', 'American, Italian, Chinese, Ukrainian, Polish', 'https://www.tastingtable.com/img/gallery/breakfast-recipes/l-intro-1651937325.jpg', 'Breakfast');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategory`
--
ALTER TABLE `kategory`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategory` (`kategory`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`kategory`) REFERENCES `kategory` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
