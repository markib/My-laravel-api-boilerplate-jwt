-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2016 at 09:49 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venue`
--

-- --------------------------------------------------------

--
-- Table structure for table `message_box_type`
--

CREATE TABLE `message_box_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_09_19_094040_create_message_box_type_table', 0),
('2016_09_19_094040_create_tbl_booking_table', 0),
('2016_09_19_094040_create_tbl_booking_details_table', 0),
('2016_09_19_094040_create_tbl_countries_table', 0),
('2016_09_19_094040_create_tbl_district_table', 0),
('2016_09_19_094040_create_tbl_menu_items_table', 0),
('2016_09_19_094040_create_tbl_message_box_table', 0),
('2016_09_19_094040_create_tbl_messages_table', 0),
('2016_09_19_094040_create_tbl_provinces_table', 0),
('2016_09_19_094040_create_tbl_zones_table', 0),
('2016_09_19_094040_create_user_info_table', 0),
('2016_09_19_094040_create_user_types_table', 0),
('2016_09_19_094040_create_user_venue_table', 0),
('2016_09_19_094040_create_users_table', 0),
('2016_09_19_094040_create_venue_menu_items_table', 0),
('2016_09_19_094040_create_venue_type_table', 0),
('2016_09_19_094040_create_venues_table', 0),
('2016_09_19_094042_add_foreign_keys_to_tbl_booking_table', 0),
('2016_09_19_094042_add_foreign_keys_to_tbl_booking_details_table', 0),
('2016_09_19_094042_add_foreign_keys_to_tbl_district_table', 0),
('2016_09_19_094042_add_foreign_keys_to_tbl_message_box_table', 0),
('2016_09_19_094042_add_foreign_keys_to_tbl_provinces_table', 0),
('2016_09_19_094042_add_foreign_keys_to_tbl_zones_table', 0),
('2016_09_19_094042_add_foreign_keys_to_user_info_table', 0),
('2016_09_19_094042_add_foreign_keys_to_user_venue_table', 0),
('2016_09_19_094042_add_foreign_keys_to_users_table', 0),
('2016_09_19_094042_add_foreign_keys_to_venue_menu_items_table', 0),
('2016_09_19_094042_add_foreign_keys_to_venues_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `no_of_person` int(11) NOT NULL,
  `total_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_details`
--

CREATE TABLE `tbl_booking_details` (
  `item_id` int(11) NOT NULL,
  `rate` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `name`, `code`) VALUES
(1, 'Nepal', 'np'),
(2, 'China', 'cn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `name`, `code`, `zone_id`) VALUES
(1, 'Kathmandu', 'Ktm', 1),
(2, 'Lalitpur', 'Ltp', 1),
(3, 'Bhaktapur', 'Bkt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_items`
--

CREATE TABLE `tbl_menu_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_messages`
--

CREATE TABLE `tbl_messages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message_box`
--

CREATE TABLE `tbl_message_box` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `box_type_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinces`
--

CREATE TABLE `tbl_provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_provinces`
--

INSERT INTO `tbl_provinces` (`id`, `name`, `code`, `country_id`) VALUES
(1, 'Province-1', 'p1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zones`
--

CREATE TABLE `tbl_zones` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_zones`
--

INSERT INTO `tbl_zones` (`id`, `name`, `code`, `province_id`) VALUES
(1, 'Bagmati', 'Bg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `nationality_id` varchar(32) DEFAULT NULL,
  `phone_no` varchar(32) NOT NULL,
  `mobile_no` varchar(32) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `locality` varchar(32) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `identity_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`) VALUES
(1, 'admin'),
(2, 'manager'),
(3, 'client');

-- --------------------------------------------------------

--
-- Table structure for table `user_venue`
--

CREATE TABLE `user_venue` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `established_date` date NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `phone_no_2` varchar(255) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `locality` varchar(32) NOT NULL,
  `space_area` varchar(225) NOT NULL,
  `person_capacity` varchar(225) NOT NULL,
  `venue_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `venue_menu_items`
--

CREATE TABLE `venue_menu_items` (
  `id` int(11) NOT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `menu_item_id` int(11) DEFAULT NULL,
  `price` float NOT NULL,
  `price_per` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `venue_type`
--

CREATE TABLE `venue_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message_box_type`
--
ALTER TABLE `message_box_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venuee2` (`venue_id`),
  ADD KEY `fk_userss2` (`user_id`);

--
-- Indexes for table `tbl_booking_details`
--
ALTER TABLE `tbl_booking_details`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_booking` (`booking_id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_zone` (`zone_id`);

--
-- Indexes for table `tbl_menu_items`
--
ALTER TABLE `tbl_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message_box`
--
ALTER TABLE `tbl_message_box`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_types2` (`user_id`),
  ADD KEY `fk_box` (`box_type_id`),
  ADD KEY `fk_message` (`message_id`);

--
-- Indexes for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_country` (`country_id`);

--
-- Indexes for table `tbl_zones`
--
ALTER TABLE `tbl_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_provinces` (`province_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_type` (`user_type_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_country2` (`country_id`),
  ADD KEY `fk_province2` (`province_id`),
  ADD KEY `fk_zone2` (`zone_id`),
  ADD KEY `fk_district2` (`district_id`),
  ADD KEY `fk_users2` (`user_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_venue`
--
ALTER TABLE `user_venue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userr` (`user_id`),
  ADD KEY `fk_venuee` (`venue_id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venue_type` (`venue_type_id`),
  ADD KEY `fk_country3` (`country_id`),
  ADD KEY `fk_province3` (`province_id`),
  ADD KEY `fk_zone3` (`zone_id`),
  ADD KEY `fk_district3` (`district_id`);

--
-- Indexes for table `venue_menu_items`
--
ALTER TABLE `venue_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venue` (`venue_id`),
  ADD KEY `fk_menu` (`menu_item_id`);

--
-- Indexes for table `venue_type`
--
ALTER TABLE `venue_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message_box_type`
--
ALTER TABLE `message_box_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_booking_details`
--
ALTER TABLE `tbl_booking_details`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_menu_items`
--
ALTER TABLE `tbl_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_message_box`
--
ALTER TABLE `tbl_message_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_zones`
--
ALTER TABLE `tbl_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_venue`
--
ALTER TABLE `user_venue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venue_menu_items`
--
ALTER TABLE `venue_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venue_type`
--
ALTER TABLE `venue_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD CONSTRAINT `fk_userss2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venuee2` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_booking_details`
--
ALTER TABLE `tbl_booking_details`
  ADD CONSTRAINT `fk_booking` FOREIGN KEY (`booking_id`) REFERENCES `tbl_booking` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD CONSTRAINT `fk_zone` FOREIGN KEY (`zone_id`) REFERENCES `tbl_zones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_message_box`
--
ALTER TABLE `tbl_message_box`
  ADD CONSTRAINT `fk_box` FOREIGN KEY (`box_type_id`) REFERENCES `message_box_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_message` FOREIGN KEY (`message_id`) REFERENCES `tbl_messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_types2` FOREIGN KEY (`user_id`) REFERENCES `user_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  ADD CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `tbl_countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_zones`
--
ALTER TABLE `tbl_zones`
  ADD CONSTRAINT `fk_provinces` FOREIGN KEY (`province_id`) REFERENCES `tbl_zones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_type` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `fk_country2` FOREIGN KEY (`country_id`) REFERENCES `tbl_countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_district2` FOREIGN KEY (`district_id`) REFERENCES `tbl_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_province2` FOREIGN KEY (`province_id`) REFERENCES `tbl_provinces` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zone2` FOREIGN KEY (`zone_id`) REFERENCES `tbl_zones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_venue`
--
ALTER TABLE `user_venue`
  ADD CONSTRAINT `fk_userr` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venuee` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `venues`
--
ALTER TABLE `venues`
  ADD CONSTRAINT `fk_country3` FOREIGN KEY (`country_id`) REFERENCES `tbl_countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_district3` FOREIGN KEY (`district_id`) REFERENCES `tbl_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_province3` FOREIGN KEY (`province_id`) REFERENCES `tbl_provinces` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venue_type` FOREIGN KEY (`venue_type_id`) REFERENCES `venue_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zone3` FOREIGN KEY (`zone_id`) REFERENCES `tbl_zones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `venue_menu_items`
--
ALTER TABLE `venue_menu_items`
  ADD CONSTRAINT `fk_menu` FOREIGN KEY (`menu_item_id`) REFERENCES `tbl_menu_items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venue` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
