-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 30, 2022 alle 17:09
-- Versione del server: 10.4.25-MariaDB
-- Versione PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progetto_tec_web`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `airline`
--

CREATE TABLE `airline` (
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `continent` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `flight`
--

CREATE TABLE `flight` (
  `destination` int(11) NOT NULL,
  `airline` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `destination` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `image_activity`
--

CREATE TABLE `image_activity` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `activity` int(11) NOT NULL,
  `is_cover` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `image_airline`
--

CREATE TABLE `image_airline` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `airline` varchar(100) NOT NULL,
  `is_cover` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `image_destination`
--

CREATE TABLE `image_destination` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `alt` varchar(200) NOT NULL,
  `destination` int(11) NOT NULL,
  `is_cover` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `image_hotel`
--

CREATE TABLE `image_hotel` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `hotel` int(11) NOT NULL,
  `is_cover` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `offers`
--

CREATE TABLE `offers` (
  `destination` int(11) NOT NULL,
  `activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipant`
--

CREATE TABLE `partecipant` (
  `document_type` varchar(50) NOT NULL,
  `document_number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` enum('M','W','U') NOT NULL DEFAULT 'U',
  `date_of_birth` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `purchase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `payment_method`
--

CREATE TABLE `payment_method` (
  `card_number` varchar(16) NOT NULL,
  `cvc` varchar(3) NOT NULL,
  `expiration` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `moment` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(50) NOT NULL,
  `card` varchar(16) NOT NULL,
  `destination` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `travel`
--

CREATE TABLE `travel` (
  `destination` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `userprofile`
--

CREATE TABLE `userprofile` (
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` enum('M','W','U') NOT NULL DEFAULT 'U',
  `date_of_birth` date NOT NULL,
  `pw_hash` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `permission` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`name`);

--
-- Indici per le tabelle `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`destination`,`airline`),
  ADD KEY `airline` (`airline`);

--
-- Indici per le tabelle `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination` (`destination`);

--
-- Indici per le tabelle `image_activity`
--
ALTER TABLE `image_activity`
  ADD PRIMARY KEY (`id`,`activity`),
  ADD KEY `activity` (`activity`);

--
-- Indici per le tabelle `image_airline`
--
ALTER TABLE `image_airline`
  ADD PRIMARY KEY (`id`,`airline`),
  ADD KEY `airline` (`airline`);

--
-- Indici per le tabelle `image_destination`
--
ALTER TABLE `image_destination`
  ADD PRIMARY KEY (`id`,`destination`),
  ADD KEY `destination` (`destination`);

--
-- Indici per le tabelle `image_hotel`
--
ALTER TABLE `image_hotel`
  ADD PRIMARY KEY (`id`,`hotel`),
  ADD KEY `hotel` (`hotel`);

--
-- Indici per le tabelle `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`destination`,`activity`),
  ADD KEY `activity` (`activity`);

--
-- Indici per le tabelle `partecipant`
--
ALTER TABLE `partecipant`
  ADD PRIMARY KEY (`document_type`,`document_number`),
  ADD KEY `purchase` (`purchase`);

--
-- Indici per le tabelle `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`card_number`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `card` (`card`),
  ADD KEY `destination` (`destination`,`start_date`,`end_date`);

--
-- Indici per le tabelle `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`destination`,`start_date`,`end_date`);

--
-- Indici per le tabelle `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `image_activity`
--
ALTER TABLE `image_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `image_airline`
--
ALTER TABLE `image_airline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `image_destination`
--
ALTER TABLE `image_destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `image_hotel`
--
ALTER TABLE `image_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`airline`) REFERENCES `airline` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_activity`
--
ALTER TABLE `image_activity`
  ADD CONSTRAINT `image_activity_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_airline`
--
ALTER TABLE `image_airline`
  ADD CONSTRAINT `image_airline_ibfk_1` FOREIGN KEY (`airline`) REFERENCES `airline` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_destination`
--
ALTER TABLE `image_destination`
  ADD CONSTRAINT `image_destination_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_hotel`
--
ALTER TABLE `image_hotel`
  ADD CONSTRAINT `image_hotel_ibfk_1` FOREIGN KEY (`hotel`) REFERENCES `hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offers_ibfk_2` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `partecipant`
--
ALTER TABLE `partecipant`
  ADD CONSTRAINT `partecipant_ibfk_1` FOREIGN KEY (`purchase`) REFERENCES `purchase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `payment_method_ibfk_1` FOREIGN KEY (`username`) REFERENCES `userprofile` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`username`) REFERENCES `userprofile` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`card`) REFERENCES `payment_method` (`card_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`destination`,`start_date`,`end_date`) REFERENCES `travel` (`destination`, `start_date`, `end_date`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
