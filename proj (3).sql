-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 04:16 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Barca` (IN `PLAYER_POSITION` VARCHAR(255), IN `JERSEY_NO` INT)  BEGIN
 DECLARE PLAYER,NEW_POSITION TEXT;
 DECLARE NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE,JERSEY_NUMBER INTEGER;
 DECLARE exit_loop BOOLEAN DEFAULT FALSE;
 DECLARE book_cursor CURSOR FOR SELECT Name,Position,Rating,Wage,Age,Release_Clause FROM replacements;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
 OPEN book_cursor;
 SELECT * FROM replacements WHERE Position=NEW_POSITION ORDER BY Rating DESC;
 SET JERSEY_NUMBER=JERSEY_NO;
 book_loop: LOOP

  FETCH FROM book_cursor INTO PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   IF exit_loop THEN
  LEAVE book_loop;
 END IF;
 IF NEW_POSITION=PLAYER_POSITION  THEN
   
   SELECT PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   INSERT INTO players(Jersey,Name1,Country,Club,Rating,Wage,Position,Age,Form,Release_Clause) VALUES (JERSEY_NUMBER,PLAYER,'IND','FC Barcelona',NEW_RATING,NEW_WAGE,NEW_POSITION,NEW_AGE,'9',NEW_CLAUSE);
   DELETE FROM replacements WHERE Name =PLAYER;
   LEAVE book_loop;
   END IF;
  END LOOP book_loop;

  
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Bayern` (IN `PLAYER_POSITION` VARCHAR(255), IN `JERSEY_NO` INT)  BEGIN
 DECLARE PLAYER,NEW_POSITION TEXT;
 DECLARE NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE,JERSEY_NUMBER INTEGER;
 DECLARE exit_loop BOOLEAN DEFAULT FALSE;
 DECLARE book_cursor CURSOR FOR SELECT Name,Position,Rating,Wage,Age,Release_Clause FROM replacements;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
 OPEN book_cursor;
 SELECT * FROM replacements WHERE Position=NEW_POSITION ORDER BY Rating DESC;
 SET JERSEY_NUMBER=JERSEY_NO;
 book_loop: LOOP

  FETCH FROM book_cursor INTO PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   IF exit_loop THEN
  LEAVE book_loop;
 END IF;
 IF NEW_POSITION=PLAYER_POSITION  THEN
   SELECT PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   INSERT INTO players(Jersey,Name1,Country,Club,Rating,Wage,Position,Age,Form,Release_Clause) VALUES (JERSEY_NUMBER,PLAYER,'IND','FC Bayern Munchen',NEW_RATING,NEW_WAGE,NEW_POSITION,NEW_AGE,'9',NEW_CLAUSE);
   DELETE FROM replacements WHERE Name =PLAYER;
   LEAVE book_loop;
   END IF;
  END LOOP book_loop;

  
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Chelsea1` (IN `PLAYER_POSITION` VARCHAR(255), IN `JERSEY_NO` INT)  BEGIN
 DECLARE PLAYER,NEW_POSITION TEXT;
 DECLARE NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE,JERSEY_NUMBER INTEGER;
 DECLARE exit_loop BOOLEAN DEFAULT FALSE;
 DECLARE book_cursor CURSOR FOR SELECT Name,Position,Rating,Wage,Age,Release_Clause FROM replacements;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
 OPEN book_cursor;
 SELECT * FROM replacements WHERE Position=NEW_POSITION ORDER BY Rating DESC;
 SET JERSEY_NUMBER =JERSEY_NO;
 book_loop: LOOP

  FETCH FROM book_cursor INTO PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   IF exit_loop THEN
  LEAVE book_loop;
 END IF;
 IF NEW_POSITION=PLAYER_POSITION  THEN
   SELECT PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   INSERT INTO players(Jersey,Name1,Country,Club,Rating,Wage,Position,Age,Form,Release_Clause) VALUES (JERSEY_NUMBER,PLAYER,'IND','Chelsea FC',NEW_RATING,NEW_WAGE,NEW_POSITION,NEW_AGE,'0',NEW_CLAUSE);
   DELETE FROM replacements WHERE Name =PLAYER;
   LEAVE book_loop;
   END IF;
  END LOOP book_loop;

  
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Juve` (IN `PLAYER_POSITION` VARCHAR(255))  BEGIN
 DECLARE PLAYER,NEW_POSITION TEXT;
 DECLARE NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE INTEGER;
 DECLARE exit_loop BOOLEAN DEFAULT FALSE;
 DECLARE book_cursor CURSOR FOR SELECT Name,Position,Rating,Wage,Age,Release_Clause FROM replacements;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
 OPEN book_cursor;
 SELECT * FROM replacements WHERE Position=NEW_POSITION ORDER BY Rating DESC;
 
 book_loop: LOOP

  FETCH FROM book_cursor INTO PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   IF exit_loop THEN
  LEAVE book_loop;
 END IF;
 IF NEW_POSITION=PLAYER_POSITION  THEN
   SELECT PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
   INSERT INTO players(Name1,Country,Club,Rating,Wage,Position,Age,Form,Release_Clause) VALUES (PLAYER,'IND','Juventus FC',NEW_RATING,NEW_WAGE,NEW_POSITION,NEW_AGE,'9',NEW_CLAUSE);
   DELETE FROM replacements WHERE Name =PLAYER;
   LEAVE book_loop;
   END IF;
  END LOOP book_loop;

  
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `manutd` (IN `PLAYER_POSITION` VARCHAR(255), IN `LIMIT1` INT, IN `LIMIT2` INT)  BEGIN
 DECLARE PLAYER,NEW_POSITION TEXT;
 DECLARE NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE INTEGER;
 DECLARE exit_loop BOOLEAN DEFAULT FALSE;
 DECLARE book_cursor CURSOR FOR SELECT Name,Position,Rating,Wage,Age,Release_Clause FROM replacements;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
 OPEN book_cursor;
 
 book_loop: LOOP
  FETCH FROM book_cursor INTO PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE,NEW_AGE,NEW_CLAUSE;
  IF exit_loop THEN
  LEAVE book_loop;
 END IF;
 IF NEW_POSITION=PLAYER_POSITION AND NEW_WAGE>=LIMIT1 AND NEW_WAGE<=LIMIT2 THEN
 
   SELECT PLAYER,NEW_POSITION,NEW_RATING,NEW_WAGE;
   INSERT INTO players(Name1,Country,Club,Rating,Wage,Position,Age,Form,Release_Clause) VALUES (PLAYER,"ARG",'Manchester United FC',NEW_RATING,NEW_WAGE,NEW_POSITION,NEW_AGE,'9',NEW_CLAUSE);
   DELETE FROM replacements WHERE Name =PLAYER;
   END IF;
   END LOOP book_loop;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `Name` varchar(255) NOT NULL,
  `Motto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`Name`, `Motto`) VALUES
('Chelsea FC', 'Keep the blue flag flying high'),
('FC Barcelona', 'Mes que un club'),
('FC Bayern Munchen ', 'Mia San Mia'),
('Juventus FC', 'Vincere non E\' importante E L\'unica cosa che conta'),
('Manchester United FC', 'Glory Glory Man Utd');

-- --------------------------------------------------------

--
-- Table structure for table `empd`
--

CREATE TABLE `empd` (
  `eid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `dj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `empd1`
--

CREATE TABLE `empd1` (
  `eid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `dj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Current_club` varchar(255) NOT NULL,
  `Release_clause` int(11) NOT NULL,
  `Interested_club` varchar(255) NOT NULL,
  `Acc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `Name`, `Current_club`, `Release_clause`, `Interested_club`, `Acc`) VALUES
(1, 'Marcos Alonso', 'Juventus FC', 125000, 'Chelsea FC', 1),
(2, 'Gerard Pique', 'FC Barcelona', 155000, 'Chelsea FC', 1),
(3, 'Gerard Pique', 'FC Barcelona', 155000, 'Chelsea FC', 1),
(4, 'Sami Khedira', 'Juventus FC', 125000, 'Chelsea FC', 1),
(5, 'Cristiano Ronaldo', 'Chelsea FC', 230000, 'Chelsea FC', 1),
(6, 'Lionel Messi', 'FC Barcelona', 250000, 'Chelsea FC', 0),
(7, 'Marcos Alonso', 'Chelsea FC', 125000, 'FC Barcelona', 1);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `Position` varchar(20) NOT NULL,
  `Jersey` int(11) NOT NULL,
  `Name1` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Club` varchar(20) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Form` int(11) DEFAULT NULL,
  `Wage` int(11) DEFAULT NULL,
  `Release_Clause` int(11) NOT NULL,
  `Img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`Position`, `Jersey`, `Name1`, `Country`, `Club`, `Age`, `Rating`, `Form`, `Wage`, `Release_Clause`, `Img`) VALUES
('GK', 101, 'Kepa Arrizabalaga', 'ESP', 'Chelsea FC', 23, 83, 6, 70000, 120000, 'che/kepa.jpg'),
('DF', 102, 'Antonio Rudiger', 'GER', 'Chelsea FC', 25, 82, 6, 70000, 120000, 'che/rudi.jpg'),
('DF', 103, 'Marcos Alonso', 'ESP', 'FC Barcelona', 27, 84, 8, 75000, 125000, 'che/alonso.jpg'),
('MF', 104, 'Cesc Fabregas', 'ESP', 'Chelsea FC', 31, 84, 3, 75000, 125000, 'che/fabre.jpg'),
('MF', 105, 'Jorginho Frello', 'ITA', 'Chelsea FC', 26, 83, 6, 70000, 120000, 'che/jorginho.jpg'),
('MF', 107, 'N\'golo Kante', 'FRA', 'Chelsea FC', 27, 88, 8, 110000, 160000, 'che/ngolo.jpg'),
('MF', 108, 'Ross Barkley', 'ENG', 'Chelsea FC', 24, 80, 5, 65000, 115000, 'che/barkley.jpg'),
('FW', 109, 'Romelu Lukaku', 'BEL', 'Chelsea FC', 25, 86, 6, 110000, 160000, 'mu/lukaku.jpg'),
('FW', 110, 'Lionel Messi', 'ARG', 'FC Barcelona', 31, 94, 10, 200000, 250000, 'bar/messi.jpg'),
('MF', 111, 'Pedro Rodriguez', 'ESP', 'Chelsea FC', 31, 84, 8, 0, 135000, 'che/pedro.jpg'),
('MF', 112, 'Ruben Loftus Cheek', 'ENG', 'Chelsea FC', 22, 78, 2, 60000, 110000, 'che/rlc.jpg'),
('GK', 113, 'Wilfried Cabellro', 'ARG', 'Chelsea FC', 36, 78, 2, 55000, 105000, 'che/willy.jpg'),
('DF', 115, 'Victor Moses', 'NIG', 'Chelsea FC', 27, 81, 4, 70000, 120000, 'che/moes.jpg'),
('MF', 117, 'Danny Drinkwater', 'ENG', 'Chelsea FC', 28, 79, 1, 60000, 110000, 'che/danny.jpg'),
('FW', 118, 'Olivier Giroud', 'FRA', 'Chelsea FC', 31, 83, 5, 90000, 140000, 'che/giroo.jpg'),
('FW', 122, 'Willian de Borges', 'BRA', 'Chelsea FC', 30, 87, 8, 105000, 155000, 'che/willian.jpg'),
('MF', 123, 'Emre Can', 'GER', 'Chelsea FC', 24, 85, 3, 80000, 130000, 'juv/can.jpg'),
('DF', 127, 'Andreas Christensen', 'DEN', 'Chelsea FC', 22, 79, 2, 65000, 115000, 'che/christensen.jpg'),
('DF', 128, 'Cesar Azpilicueta', 'ESP', 'Chelsea FC', 29, 86, 7, 80000, 130000, 'che/azpi.jpg'),
('FW', 129, 'Alvaro Morata', 'ESP', 'Chelsea FC', 25, 84, 3, 85000, 135000, 'che/morata.jpg'),
('GK', 133, 'Sahil Sehgallison', 'IND', 'Chelsea FC', 20, 91, 0, 90000, 85000, ''),
('FW', 145, 'RUPESH', 'IND', 'Chelsea FC', 31, 79, 0, 80000, 85000, ''),
('FW', 147, 'Waykol Giroud', 'IND', 'Chelsea FC', 26, 89, 0, 80000, 100000, ''),
('GK', 201, 'Marc Andre ter Stege', 'GER', 'FC Barcelona', 26, 89, 8, 85000, 135000, 'bar/terstegen.jpg'),
('DF', 202, 'Nelson Semedo', 'POR', 'FC Barcelona', 24, 83, 6, 70000, 120000, 'bar/semedo.jpg'),
('DF', 203, 'Gerard Pique', 'ESP', 'Chelsea FC', 31, 87, 7, 105000, 155000, 'bar/pique.jpg'),
('MF', 204, 'Ivan Rakitic', 'CRO', 'FC Barcelona', 30, 86, 7, 85000, 135000, 'bar/rakitic.jpg'),
('MF', 205, 'Sergio Busquets', 'ESP', 'FC Barcelona', 30, 86, 8, 85000, 135000, 'bar/busi.jpg'),
('MF', 206, 'Denis Suarez', 'ESP', 'FC Barcelona', 24, 82, 2, 60000, 110000, 'bar/denis.jpg'),
('MF', 207, 'Phillipe Coutinho', 'BRA', 'FC Barcelona', 26, 88, 8, 110000, 160000, 'bar/coutinho.jpg'),
('MF', 208, 'Arthur Melo', 'BRA', 'FC Barcelona', 22, 82, 5, 60000, 110000, 'bar/arthur.jpg'),
('FW', 209, 'Luis Suarez', 'URU', 'FC Barcelona', 31, 92, 9, 125000, 175000, 'bar/suarez.jpg'),
('FW', 210, 'Eden Hazard', 'BEL', 'FC Barcelona', 27, 91, 9, 120000, 170000, 'che/hazard.jpg'),
('FW', 211, 'Ousmane Dembele', 'FRA', 'FC Barcelona', 21, 86, 9, 130000, 180000, 'bar/dembele.jpg'),
('MF', 212, 'Rafinha Alcantra', 'BRA', 'FC Barcelona', 25, 83, 3, 60000, 110000, 'bar/rafinha.jpg'),
('GK', 213, 'Jasper Cillesen', 'NED', 'FC Barcelona', 29, 84, 1, 70000, 120000, 'bar/cillesen.jpg'),
('FW', 214, 'Malcom Oliveira', 'BRA', 'FC Barcelona', 21, 83, 4, 75000, 125000, 'bar/malcom.jpg'),
('DF', 215, 'Clemen Lenglet', 'FRA', 'FC Barcelona', 23, 83, 2, 70000, 120000, 'bar/lenglet.jpg'),
('DF', 218, 'Jordi Alba', 'ESP', 'FC Barcelona', 29, 87, 8, 90000, 140000, 'bar/alba.jpg'),
('MF', 220, 'Sergi Roberto', 'ESP', 'FC Barcelona', 26, 84, 6, 75000, 125000, 'bar/roberto.jpg'),
('MF', 222, 'Arturo Vidal', 'CHI', 'FC Barcelona', 31, 86, 6, 80000, 130000, 'bar/vidal.jpg'),
('DF', 223, 'Samuel Umtiti', 'FRA', 'FC Barcelona', 24, 86, 8, 85000, 135000, 'bar/umtiti.jpg'),
('DF', 224, 'Thomas Vermalaen', 'BEL', 'FC Barcelona', 32, 81, 1, 65000, 115000, 'bar/verma.jpg'),
('GK', 301, 'Mattia Perin', 'ITA', 'Juventus FC', 25, 76, 1, 55000, 105000, 'juv/perin.jpg'),
('DF', 303, 'Giorgio Chiellini', 'ITA', 'Juventus FC', 34, 86, 6, 90000, 140000, 'juv/chiellini.jpg'),
('DF', 304, 'Medhi Benatia', 'MOR', 'Juventus FC', 31, 84, 6, 70000, 120000, 'juv/medhi.jpg'),
('MF', 305, 'Miralem Pjanic', 'BOS', 'Juventus FC', 28, 87, 7, 95000, 145000, 'juv/pjanic.jpg'),
('MF', 306, 'Sami Khedira', 'GER', 'Chelsea FC', 31, 85, 7, 75000, 125000, 'juv/khedira.jpg'),
('FW', 307, 'Cristiano Ronaldo', 'POR', 'Chelsea FC', 33, 94, 9, 180000, 230000, 'juv/cr7.jpg'),
('FW', 309, 'Robert Lewandowaki', 'POL', 'Juventus FC', 30, 91, 8, 105000, 155000, 'bay/lewa.jpg'),
('FW', 310, 'Paulo Dybala', 'ARG', 'Juventus FC', 24, 89, 9, 120000, 170000, 'juv/dybala.jpg'),
('MF', 311, 'Douglas Costa', 'BRA', 'Juventus FC', 28, 86, 7, 90000, 140000, 'juv/douglas.jpg'),
('DF', 312, 'Alex Sandro', 'BRA', 'Juventus FC', 27, 88, 7, 90000, 140000, 'juv/sandro.jpg'),
('MF', 314, 'Blaise Matuidi', 'FRA', 'Juventus FC', 31, 84, 5, 70000, 120000, 'juv/matuidi.jpg'),
('DF', 315, 'Andrea Barzagli', 'ITA', 'Juventus FC', 37, 86, 6, 85000, 135000, 'juv/barzagli.jpg'),
('FW', 316, 'Juan Cuadrado', 'COL', 'Juventus FC', 30, 85, 5, 85000, 135000, 'juv/cuadrado.jpg'),
('FW', 317, 'Mario Mandzukic', 'CRO', 'Juventus FC', 32, 87, 9, 105000, 155000, 'juv/mario.jpg'),
('MF', 318, 'Moise Kean', 'ITA', 'Juventus FC', 18, 74, 1, 45000, 95000, 'juv/kean.jpg'),
('DF', 319, 'Leonardo Bonucci', 'ITA', 'Juventus FC', 31, 85, 5, 75000, 125000, 'juv/bonucci.jpg'),
('GK', 322, 'Wojciech Szczesny', 'POL', 'Juventus FC', 28, 81, 4, 65000, 115000, 'juv/juvegk.jpg'),
('DF', 324, 'Daniele Rugani', 'ITA', 'Juventus FC', 24, 81, 4, 60000, 110000, 'juv/rugani.jpg'),
('MF', 330, 'Rodrigo Bentancur', 'URU', 'Juventus FC', 21, 82, 4, 65000, 115000, 'juv/bentancur.jpg'),
('MF', 333, 'Federico Bernardesch', 'ITA', 'Juventus FC', 24, 80, 2, 65000, 115000, 'juv/berna.jpg'),
('GK', 401, 'Manuel Neuer', 'GER', 'FC Bayern Munchen ', 32, 91, 8, 110000, 160000, 'bay/neuer.jpg'),
('FW', 402, 'Sandro Wagner', 'GER', 'FC Bayern Munchen ', 30, 83, 6, 70000, 120000, 'bay/wagner.jpg'),
('DF', 404, 'Niklas Sule', 'GER', 'FC Bayern Munchen ', 23, 83, 6, 80000, 130000, 'bay/sule.jpg'),
('DF', 405, 'Matt Hummels', 'GER', 'FC Bayern Munchen ', 29, 87, 5, 90000, 140000, 'bay/mats.jpg'),
('MF', 406, 'Thiago Alcantra', 'ESP', 'FC Bayern Munchen ', 27, 86, 6, 90000, 140000, 'bay/thiago.jpg'),
('MF', 407, 'Frank Ribery', 'FRA', 'FC Bayern Munchen ', 35, 84, 6, 90000, 140000, 'bay/ribery.jpg'),
('MF', 408, 'Javier Martinez', 'ESP', 'FC Bayern Munchen ', 30, 85, 5, 80000, 130000, 'bay/javi.jpg'),
('FW', 410, 'Arjen Robben', 'NED', 'FC Bayern Munchen ', 34, 86, 6, 95000, 145000, 'bay/robben.jpg'),
('MF', 411, 'James Rodriguez', 'COL', 'FC Bayern Munchen ', 27, 87, 7, 110000, 160000, 'bay/james.jpg'),
('GK', 413, 'Sergio Romero', 'ARG', 'FC Bayern Munchen', 31, 82, 2, 70000, 120000, 'mu/romero.jpg'),
('DF', 417, 'Jerome Boateng', 'GER', 'FC Bayern Munchen ', 30, 85, 4, 85000, 135000, 'bay/boateng.jpg'),
('MF', 418, 'Leon Goretzka', 'GER', 'FC Bayern Munchen ', 23, 81, 4, 70000, 120000, 'bay/leon.jpg'),
('MF', 424, 'Corentin Tolliso', 'FRA', 'FC Bayern Munchen ', 24, 83, 4, 75000, 125000, 'bay/tolliso.jpg'),
('FW', 425, 'Thomas Muller', 'GER', 'FC Bayern Munchen ', 29, 88, 9, 100000, 150000, 'bay/muller.jpg'),
('GK', 426, 'Sven Ulreich', 'GER', 'FC Bayern Munchen ', 30, 84, 5, 75000, 125000, 'bay/sven.jpg'),
('DF', 427, 'David Alaba', 'AUT', 'FC Bayern Munchen ', 26, 83, 6, 80000, 130000, 'bay/alaba.jpg'),
('MF', 429, 'Kingsley Coman', 'FRA', 'FC Bayern Munchen ', 22, 84, 5, 80000, 130000, 'bay/coman.jpg'),
('DF', 430, 'Rafael Ferreira', 'BRA', 'FC Bayern Munchen ', 33, 83, 5, 75000, 125000, 'bay/rafael.jpg'),
('DF', 432, 'Joshua Kimmich', 'GER', 'FC Bayern Munchen ', 23, 86, 7, 90000, 140000, 'bay/kimmich.jpg'),
('MF', 435, 'Renato Sanches', 'POR', 'FC Bayern Munchen ', 21, 78, 3, 70000, 120000, 'bay/renato.jpg'),
('FW', 458, 'Iago Aspas', 'IND', 'Chelsea FC', 28, 83, 0, 85000, 105000, ''),
('GK', 501, 'David de Gea', 'ESP', 'Manchester United FC', 27, 90, 7, 110000, 160000, 'mu/degea.jpg'),
('DF', 503, 'Eric Bailly', 'IVC', 'Manchester United FC', 24, 83, 6, 75000, 125000, 'mu/bailly.jpg'),
('DF', 504, 'Phil Jones', 'ENG', 'Manchester United FC', 26, 79, 1, 70000, 120000, 'mu/jones.jpg'),
('MF', 506, 'Paul Pogba', 'FRA', 'Manchester United FC', 25, 88, 8, 115000, 165000, 'mu/pogba.jpg'),
('MF', 508, 'Juan Mata', 'ESP', 'Manchester United FC', 30, 84, 4, 85000, 135000, 'mu/mata.jpg'),
('FW', 510, 'Marcus Rashford', 'ENG', 'Manchester United FC', 20, 83, 6, 90000, 140000, 'mu/rashford.jpg'),
('FW', 511, 'Anthony Martial', 'FRA', 'Manchester United FC', 22, 84, 2, 85000, 135000, 'mu/martial.jpg'),
('DF', 512, 'Chris Smallling', 'ENG', 'Manchester United FC', 28, 81, 4, 70000, 120000, 'mu/smalling.jpg'),
('MF', 514, 'Jesse Lingard', 'ENG', 'Manchester United FC', 25, 82, 5, 85000, 135000, 'mu/jlingz.jpg'),
('MF', 517, 'Fredrico Santos', 'BRA', 'Manchester United FC', 25, 81, 6, 80000, 130000, 'mu/fred.jpg'),
('DF', 518, 'Ashley Young', 'ENG', 'Manchester United FC', 33, 81, 1, 75000, 125000, 'mu/young.jpg'),
('MF', 521, 'Ander Herrera', 'ESP', 'Manchester United FC', 29, 82, 2, 70000, 120000, 'mu/herrera.jpg'),
('DF', 523, 'Luke Shaw', 'ENG', 'Manchester United FC', 23, 80, 8, 65000, 115000, 'mu/shaw.jpg'),
('DF', 525, 'Antonio Valencia', 'ECU', 'Manchester United FC', 33, 84, 5, 80000, 130000, 'mu/valencia.jpg'),
('MF', 527, 'Marouane Fellaini', 'BEL', 'Manchester United FC', 30, 80, 4, 75000, 125000, 'mu/fellaini.jpg'),
('DF', 530, 'David Luiz', 'BRA', 'Manchester United FC', 31, 85, 5, 75000, 125000, 'che/luiz.jpg'),
('MF', 531, 'Nemanja Matic', 'SRB', 'Manchester United FC', 30, 84, 3, 80000, 130000, 'mu/matic.jpg'),
('MF', 539, 'Scott McTominay', 'SCO', 'Manchester United FC', 21, 78, 1, 60000, 110000, 'mu/scott.jpg'),
('GK', 888, 'NIKHIL', 'IND', 'Chelsea FC', 21, 89, 0, 60000, 85000, ''),
('GK', 999, 'Jignesh Iyyer', 'IND', 'Chelsea FC', 31, 81, 0, 70000, 90000, '');

-- --------------------------------------------------------

--
-- Table structure for table `replacements`
--

CREATE TABLE `replacements` (
  `Position` varchar(20) NOT NULL,
  `Jersey` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Club` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Wage` int(11) NOT NULL,
  `Release_Clause` int(11) NOT NULL,
  `Image` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replacements`
--

INSERT INTO `replacements` (`Position`, `Jersey`, `Name`, `Country`, `Club`, `Age`, `Rating`, `Wage`, `Release_Clause`, `Image`) VALUES
('MF', 42, 'Takashi Ingale', 'JPN', 'Yokohama FC', 22, 81, 65000, 85000, 'sct.png'),
('DF', 54, 'Kieran Trippier', 'ENG', 'Spurs FC', 26, 76, 80000, 100000, 'sct.png'),
('MF', 62, 'Andreas Pocchetino', 'ITA', 'Napoli FC', 25, 84, 75000, 95000, 'sct.png'),
('DF', 72, 'sanket', 'IND', 'CND', 23, 72, 20000, 50000, NULL),
('MF', 79, 'Aayush Fellaini', 'COL', 'Sparta Praha FC', 26, 88, 75000, 95000, 'sct.png'),
('DF', 86, 'Yashmin Wavhic', 'CRO', 'Dynamo Zagreb FC', 22, 79, 70000, 90000, 'sct.png'),
('FW', 88, 'Chandrakant', 'IND', 'CND', 21, 89, 80000, 100000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scouts`
--

CREATE TABLE `scouts` (
  `Name` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Club` varchar(20) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Work Experience` int(11) NOT NULL,
  `Wage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scouts`
--

INSERT INTO `scouts` (`Name`, `Country`, `Club`, `Rating`, `Work Experience`, `Wage`) VALUES
('Julian Speroni', 'ARG', 'Chelsea FC', 8, 11, 30000),
('Phillipe de Gorginho', 'BRA', 'Juventus FC', 9, 15, 40000),
('Callum Wilson', 'CAN', 'FC Bayern Munchen', 9, 16, 40000),
('Lewis Cork', 'CAN', 'Juventus FC', 8, 13, 30000),
('Artur Boruc', 'CHI', 'Chelsea FC', 9, 15, 40000),
('Mkhaya Ntini', 'COL', 'FC Bayern Munchen', 9, 13, 30000),
('Joel Ward', 'CRO', 'Chelsea FC', 8, 15, 35000),
('Scott Dann', 'ENG', 'Chelsea FC', 9, 13, 40000),
('Simon Francis', 'ENG', 'Manchester United FC', 8, 15, 30000),
('Diego Rico', 'ESP', 'Chelsea FC', 9, 14, 35000),
('Fernando Llorente', 'ESP', 'FC Bayern Munchen', 8, 12, 35000),
('Julian Lopetgui', 'ESP', 'Juventus FC', 10, 19, 50000),
('Max Meyer', 'FRA', 'FC Barcelona', 9, 15, 40000),
('Olivier Varane', 'FRA', 'Manchester United FC', 8, 14, 35000),
('Martin Schweinstiger', 'GER', 'FC Barcelona', 10, 20, 50000),
('Antonio Wagner', 'GER', 'Juventus FC', 9, 17, 40000),
('Gylfi Siggurdson', 'ICE', 'Manchester United FC', 8, 13, 35000),
('Sameer Oberoi', 'IND', 'FC Barcelona', 9, 14, 35000),
('Jose Perroti', 'ITA', 'Juventus FC', 8, 10, 35000),
('Jose Perroti', 'ITA', 'Manchester United FC', 9, 16, 45000),
('Shinji Okazaki', 'JPN', 'FC Barcelona', 8, 12, 40000),
('Jordan Ayew', 'RSA', 'FC Barcelona', 8, 11, 30000),
('Milinkovic Savic', 'SRB', 'FC Bayern Munchen', 8, 15, 40000),
('Kagiso Rabada', 'UGA', 'Manchester United FC', 9, 15, 40000),
('Steven Clarke', 'USA', 'FC Bayern Munchen', 9, 15, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(255) NOT NULL,
  `Password` int(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Club` varchar(255) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Id` int(11) DEFAULT NULL,
  `OK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Password`, `Name`, `Club`, `Age`, `Id`, `OK`) VALUES
('admin@email.com', 7777, NULL, '', NULL, NULL, 0),
('Sarri@email.com', 4398, 'Sarri', 'Chelsea FC', 57, 1, 1),
('sahil@email.com', 8888, 'saah', 'FC Barcelona', 55, 2, 1),
('Conte@email.com', 1101, 'Conte', 'FC Bayern Munchen', 50, 5, 1),
('Allegri@email.com', 1311, 'Allegri', 'Juventus FC', 51, 3, 1),
('saaa', 8888, 'Waykole', 'Manchester United FC', 0, 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Jersey`),
  ADD KEY `fk_Club` (`Club`);

--
-- Indexes for table `replacements`
--
ALTER TABLE `replacements`
  ADD PRIMARY KEY (`Jersey`,`Club`);

--
-- Indexes for table `scouts`
--
ALTER TABLE `scouts`
  ADD PRIMARY KEY (`Country`,`Club`),
  ADD KEY `Club` (`Club`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Club`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `fk_Club` FOREIGN KEY (`Club`) REFERENCES `club` (`Name`);

--
-- Constraints for table `scouts`
--
ALTER TABLE `scouts`
  ADD CONSTRAINT `scouts_ibfk_1` FOREIGN KEY (`Club`) REFERENCES `club` (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
