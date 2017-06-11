-- Adminer 4.1.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `sp17_NewsCategories`;
CREATE TABLE `sp17_NewsCategories` (
  `CategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Category` varchar(120) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp17_NewsCategories` (`CategoryID`, `Category`, `Description`) VALUES
(1,	'Science',	'This is the Science category!'),
(2,	'Religion',	'This is the Religion category'),
(3,	'Sports',	'This is the Sports category');

DROP TABLE IF EXISTS `sp17_NewsFeeds`;
CREATE TABLE `sp17_NewsFeeds` (
  `FeedID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FeedTitle` varchar(120) DEFAULT NULL,
  `CategoryID` int(10) unsigned NOT NULL,
  `Description` text,
  `URL` text,
  PRIMARY KEY (`FeedID`),
  INDEX catID (`CategoryID`),
  FOREIGN KEY (`CategoryID`)
        REFERENCES sp17_NewsCategories(`CategoryID`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sp17_NewsFeeds` (`FeedID`, `FeedTitle`, `CategoryID`, `Description`, `URL`) VALUES
(1,	'Genealogy',	1,	'This feed from Google News contains genealogy stories.',	'https://news.google.com/news?q=genealogy&output=rss'),
(2,	'Global Warming',	1,	'This feed contains stories about global warming',	'https://news.google.com/news?q=global+warming&output=rss'),
(3,	'NASA',	1,	'This feed contains stories about NASA',	'https://news.google.com/news?cf=all&hl=en&pz=1&ned=us&q=NASA&output=rss'),
(4,	'Islam',	2,	'This feed has stories about Islam',	'https://news.google.com/news?cf=all&hl=en&pz=1&ned=us&q=islam&output=rss'),
(5,	'Buddhism',	2,	'This feed is stories about Buddhism',	'https://news.google.com/news?cf=all&hl=en&pz=1&ned=us&q=buddhism&output=rss'),
(6,	'Hinduism',	2,	'This feed is from Google News and contains stories about Hinduism',	'https://news.google.com/news?cf=all&hl=en&pz=1&ned=us&q=hinduism&output=rss'),
(7,	'NBA',	3,	'This feed contains sports stories about NBA',	'https://news.google.com/news?cf=all&hl=en&pz=1&ned=us&q=nba&output=rss'),
(8,	'WNBA',	3,	'This feed contains stories about WNBA',	'https://news.google.com/news?cf=all&hl=en&pz=1&ned=us&q=wnba&output=rss'),
(9,	'Sounders FC',	3,	'This is a sports feed about Seattle Sounders FC',	'https://news.google.com/news?cf=all&hl=en&pz=1&ned=us&q=sounders+FC&output=rss');

-- 2017-06-01 23:38:56
