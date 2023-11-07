-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 07, 2023 at 10:25 PM
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
  `kategory` varchar(100) NOT NULL,
  `dateCreate` datetime DEFAULT NULL,
  `fullDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `nationaly`, `imageUrl`, `kategory`, `dateCreate`, `fullDescription`) VALUES
(1, 'Burger Shop', '15-25 min, $25 min sum', 'American, Turkish', 'https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/l-intro-1662064407.jpg', 'Burgers', '2023-10-29 13:40:00', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(2, 'Sushi Shop', '10-30 min, $15 min sum', 'China, Japan, Vietnam', 'https://ocdn.eu/images/pulscms/YmE7MDA_/365aa5c36797ae8f646950c0f233525d.jpg', 'Sushi', '2023-10-10 13:45:00', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(3, 'Pizza Shop', '25-60 min, $35 min sum', 'Italy', 'https://ocdn.eu/pulscms-transforms/1/oP-k9kpTURBXy83ZmI0ZjU3MmYxNDhlMDI5NTUxODQ4MDg0OTM4ZTVmMC5qcGeTlQMAzKHNFEDNC2STCaYxMDE4ZmUGkwXNBLDNAnbeAAGhMAE/domowa-pizza.jpg', 'Pizza', '2023-10-29 13:30:00', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(4, 'Breakfast Shop', '5-10 min, $5 min sum', 'American, Italian, Chinese, Ukrainian, Polish', 'https://www.tastingtable.com/img/gallery/breakfast-recipes/l-intro-1651937325.jpg', 'Breakfast', '2023-10-29 13:38:00', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(5, 'Burgers Paradise', '25-35 min, $15 min sum', 'American, Turkish', 'https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/l-intro-1662064407.jpg', 'Burgers', '2023-10-29 21:38:05', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(6, 'Sushi God', '5-35 min, $55 min sum', 'China, Japan, Vietnam', 'https://ocdn.eu/images/pulscms/YmE7MDA_/365aa5c36797ae8f646950c0f233525d.jpg', 'Sushi', '2023-10-29 21:41:11', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(7, 'Pizza Hut', '25-55 min, $25 min sum', 'Italy, Franch', 'https://ocdn.eu/pulscms-transforms/1/oP-k9kpTURBXy83ZmI0ZjU3MmYxNDhlMDI5NTUxODQ4MDg0OTM4ZTVmMC5qcGeTlQMAzKHNFEDNC2STCaYxMDE4ZmUGkwXNBLDNAnbeAAGhMAE/domowa-pizza.jpg', 'Pizza', '2023-10-29 21:41:11', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(8, 'Breakfast Time', '5-7 min, $25 min sum', 'American, Italian, Chinese, Ukrainian, Polish', 'https://www.tastingtable.com/img/gallery/breakfast-recipes/l-intro-1651937325.jpg', 'Breakfast', '2023-10-29 21:41:11', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(9, 'King of Burgers', '29-40 min, $17 min sum', 'American', 'https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/l-intro-1662064407.jpg', 'Burgers', '2023-11-03 17:48:37', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(10, 'King of King', '20-30 min, $35 min sum', 'American', 'https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/l-intro-1662064407.jpg', 'Burgers', '2023-11-03 17:48:37', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(11, 'Knife and Fork', '10-20 min, $29 min sum', 'American', 'https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/l-intro-1662064407.jpg', 'Burgers', '2023-11-03 17:48:37', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?'),
(12, 'Chinese Burgers', '35-50 min, $17 min sum', 'American, Chinese', 'https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/l-intro-1662064407.jpg', 'Burgers', '2023-11-03 17:48:37', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aut fugiat aperiam adipisci ea eius incidunt, numquam laborum vitae magnam odit deleniti doloremque totam rem amet deserunt doloribus, iure eos minus?');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
