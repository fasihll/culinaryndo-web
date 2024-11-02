-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 02:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbculinary`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL,
  `foodsId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `foodsId`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '8', '1', '2023-12-13 02:06:07', '2023-12-13 02:06:07'),
(2, '3', '3', '2024-09-14 14:00:51', '2024-09-14 14:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `image`, `title`, `description`, `latitude`, `longitude`, `createdAt`, `updatedAt`) VALUES
(1, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/soto.jpg', 'Soto', 'Soto comes from Indonesia, specifically from the north coast of Java. This dish has been around since the 19th century, and is thought to originate from a soup dish brought by Chinese traders to Java. Soto is usually made from chicken, beef or goat stock mixed with various vegetables, such as vermicelli, bean sprouts, cabbage and spring onions.', '-6.994440891655246', '110.43240411009688', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(2, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/sate-ayam.jpg', 'Sate', 'Sate comes from Indonesia, specifically from Ponorogo, East Java. This dish has been around since the 15th century, and is thought to have originated from a kebab dish brought by Arab traders to Java which was made from meat cut into small pieces and skewered in such a way with coconut leaf or bamboo bone sticks, then grilled using charcoal embers. wood. Satay is served with various kinds of spices depending on the variation of satay recipe.', '-7.798270525687068', '110.40221150785578', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(3, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/rendang.jpg', 'Rendang', 'Rendang is a typical Minangkabau dish, West Sumatra made from beef cooked with coconut milk and spices. Rendang has a rich and savory taste, with a tender meat texture and a deep black color.', '-7.7634481', '110.3837337', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(4, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/rawon.jpg', 'Rawon', 'Rawon is a typical Indonesian soup dish originating from East Java, especially the Surabaya and Malang areas. Rawon is made from beef stock cooked with kluwek, resulting in a dark black sauce. Rawon is usually served with thinly sliced beef, bean sprouts, spring onions and white rice.', '-7.974039990490596', '112.63836387902329', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(5, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/pempek.jpg', 'Pempek', 'Pempek is a typical dish from Palembang, South Sumatra. Pempek is made from a mixture of sago flour, mackerel fish and spices. Pempek is usually served with cuko sauce made from brown sugar, tamarind and cayenne pepper.', '-2.9559062615940337', '104.74747586503926', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(6, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/nasi_goreng.jpg', 'Nasi Goreng', 'Nasi goreng is a popular Indonesian dish made from fried rice, typically served with kecap manis (sweet soy sauce), eggs, and vegetables. It is a dish that originated in the Indonesian archipelago, and is now popular throughout the world. The dish is made with rice, vegetables, meat, and spices, and is then fried until crispy. Nasi goreng can be served as a main course or as a side dish.', '-6.183341724018061', '106.82614875646496', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(7, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/gudeg.jpg', 'Gudeg', 'Gudeg is a traditional Javanese dish from Yogyakarta and Central Java, Indonesia. It is made from young jackfruit simmered in coconut milk and palm sugar over many hours, and is typically served with steamed rice, chicken, and hard-boiled eggs. Gudeg is a popular dish in Javanese cuisine, and is often served at special occasions such as weddings and birthdays. It is also a popular street food, and can be found in many restaurants and food stalls throughout Yogyakarta and Central Java.', '-7.790986128735004', '110.36457603457332', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(8, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/gado-gado.jpg', 'Gado Gado', 'Gado-gado is a traditional Indonesian salad made with a variety of vegetables, such as lettuce, cucumber, carrot, bean sprouts, and potatoes, served with a peanut sauce. It is a popular dish in Indonesia and can be found in many different regions of the country. Gado-gado is believed to have originated in Java, Indonesia, and is thought to have been influenced by a variety of cultures, including Chinese, Dutch, and Indian. The dish is typically served with lontong, which is a type of steamed rice cake. It can also be served with other side dishes, such as tempeh, tahu, and kerupuk. Gado-gado is typically served with lontong, which is a type of steamed rice cake. It can also be served with other side dishes, such as tempeh, tahu, and kerupuk. The peanut sauce is the key ingredient in gado-gado. It is made with peanuts, chili peppers, garlic, and other spices. The sauce is typically served warm or cold. Gado-gado is a delicious and nutritious dish that is perfect for a light lunch or dinner. It is also a popular dish at festivals and celebrations.', '-6.17744079467393', '106.81647051137107', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(9, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/ayam_betutu.jpeg', 'Bebek Betutu', 'Bebek betutu is a traditional Indonesian dish that originated from Bali. It is made with a whole duck that has been marinated in a mixture of spices, including turmeric, shallots, garlic, ginger, chili peppers, and kaffir lime leaves. The duck is then wrapped in banana leaves and roasted over an open fire for several hours. The result is a duck that is tender, flavorful, and has a rich, smoky flavor. Bebek betutu is often served with rice, sambal, and other side dishes. It is a popular dish for special occasions, such as weddings and festivals.', '-6.237419244422858', '106.79440662934788', '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(10, 'https://storage.googleapis.com/culinaryndo/gambar%20makanan/bakso.jpg', 'Bakso', 'Bakso is believed to have originated from China and was introduced to Indonesia by Chinese immigrants. The name bakso is derived from the Hokkien Chinese word bak-so which means minced meat. Bakso is typically made from minced beef, but it can also be made from other meats such as chicken, pork, or fish. The minced meat is mixed with tapioca flour, eggs, and spices to form a dough. The dough is then shaped into meatballs and boiled in a pot of broth. Bakso is typically served in a bowl of hot broth with other ingredients such as noodles, vegetables, and fried onions. It can also be served as a snack or appetizer. Bakso is a popular dish in Indonesia and can be found in many restaurants and food stalls. It is a delicious and affordable meal that is enjoyed by people of all ages.', '-7.778598810241295', '110.40242095089765', '2023-12-13 02:05:12', '2023-12-13 02:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `foodsId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20231202082201-create-user.js'),
('20231209074141-create-foods.js'),
('20231209080722-create-bookmarks.js'),
('20231209081208-create-histories.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `urlImage` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `urlImage`, `createdAt`, `updatedAt`) VALUES
(1, 'Light', 'Dark', 'darknotlight@gmail.com', '$2b$10$CHiXnTp4BTOwBfywU8lJyeaKEVUYSwvDB33ZLuolv3iLbhenFbRcy', NULL, '2023-12-13 02:05:12', '2023-12-13 02:05:12'),
(2, 'mylife', 'mlf', 'mylife@gmail.com', '$2b$10$JrSXhSpBS06C/LyfXUKfF.QempvhS27i8nfIZVVvVZrg0XbleGSKi', NULL, '2023-12-13 02:05:44', '2023-12-13 02:05:44'),
(3, 'ilham ilham', 'dfaalt', 'ilham@gmail.com', '$2b$10$UAVO7l7heiO2Oy6jXQhaVOZ1IzQ/.6P711XLXgeSNbrAPk7eCBlMG', NULL, '2024-09-14 04:51:46', '2024-09-14 14:03:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
