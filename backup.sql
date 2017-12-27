-- MySQL dump 10.13  Distrib 5.7.20, for osx10.9 (x86_64)
--
-- Host: localhost    Database: goldensun
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `name` varchar(20) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `PP` int(11) DEFAULT NULL,
  `ATT` int(11) DEFAULT NULL,
  `DEF` int(11) DEFAULT NULL,
  `AGI` int(11) DEFAULT NULL,
  `LCK` int(11) DEFAULT NULL,
  `venus` int(11) DEFAULT NULL,
  `mars` int(11) DEFAULT NULL,
  `jupiter` int(11) DEFAULT NULL,
  `mercury` int(11) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('Squire',110,80,110,100,110,100,5,NULL,NULL,NULL,'basic'),('Knight',130,90,120,110,120,100,7,NULL,NULL,NULL,'basic'),('Gallant',150,100,130,120,130,100,9,NULL,NULL,NULL,'basic'),('Lord',170,110,140,130,140,100,11,NULL,NULL,NULL,'basic'),('Slayer',190,120,150,140,150,100,13,NULL,NULL,NULL,'basic'),('Water Seer',90,130,90,100,80,130,NULL,NULL,NULL,5,'basic'),('Scribe',100,140,100,110,90,130,NULL,NULL,NULL,7,'basic'),('Cleric',120,150,110,120,100,130,NULL,NULL,NULL,9,'basic'),('Paragon',140,160,120,130,110,130,NULL,NULL,NULL,11,'basic'),('Angel',160,170,130,140,120,130,NULL,NULL,NULL,13,'basic'),('Guard',110,80,100,110,70,100,NULL,5,NULL,NULL,'basic'),('Soldier',130,90,110,120,80,100,NULL,7,NULL,NULL,'basic'),('Warrior',150,100,120,130,90,100,NULL,9,NULL,NULL,'basic'),('Champion',170,110,130,140,100,100,NULL,11,NULL,NULL,'basic'),('Hero',190,120,140,150,110,100,NULL,13,NULL,NULL,'basic'),('Wind Seer',80,140,80,90,130,110,NULL,NULL,5,NULL,'basic'),('Magician',90,150,90,100,140,110,NULL,NULL,7,NULL,'basic'),('Mage',110,160,100,110,150,110,NULL,NULL,9,NULL,'basic'),('Magister',130,170,110,120,160,110,NULL,NULL,11,NULL,'basic'),('Sorcerer',150,180,120,130,170,110,NULL,NULL,13,NULL,'basic'),('Mariner',110,90,100,100,90,120,NULL,NULL,NULL,5,'lostage'),('Privateer',130,100,110,110,100,120,NULL,NULL,NULL,7,'lostage'),('Commander',150,110,120,120,110,120,NULL,NULL,NULL,9,'lostage'),('Captain',170,120,130,130,120,120,NULL,NULL,NULL,11,'lostage'),('Admiral',190,130,140,140,130,120,NULL,NULL,NULL,13,'lostage'),('Flame User',100,120,100,100,120,90,NULL,5,NULL,NULL,'lostage'),('Witch',110,130,110,110,130,90,NULL,7,NULL,NULL,'lostage'),('Hex',130,140,120,120,140,90,NULL,9,NULL,NULL,'lostage'),('Fire Master',150,150,130,130,150,90,NULL,11,NULL,NULL,'lostage'),('Justice',170,160,140,140,160,90,NULL,13,NULL,NULL,'lostage'),('Swordsman (E)',100,90,110,110,90,120,5,NULL,NULL,0,'mercury'),('Defender (E)',120,100,120,120,100,120,5,NULL,NULL,2,'mercury'),('Cavalier (E)',140,110,130,130,110,120,5,NULL,NULL,4,'mercury'),('Guardian',170,130,140,140,130,120,6,NULL,NULL,6,'mercury'),('Protector',190,140,150,150,140,120,7,NULL,NULL,7,'mercury'),('Swordsman (F)',100,90,110,110,90,120,NULL,5,NULL,0,'mercury'),('Defender (F)',120,100,120,120,100,120,NULL,5,NULL,2,'mercury'),('Cavalier (F)',140,110,130,130,110,120,NULL,5,NULL,4,'mercury'),('Luminier',170,130,140,140,130,120,NULL,6,NULL,6,'mercury'),('Radiant',190,140,150,150,140,120,NULL,7,NULL,7,'mercury'),('Dragoon',160,130,140,140,110,130,3,3,NULL,3,'mercury'),('Templar',180,140,150,150,120,130,4,4,NULL,4,'mercury'),('Paladin',200,150,160,160,130,130,4,4,NULL,5,'mercury'),('Apprentice',100,120,110,100,120,90,5,NULL,0,NULL,'jupiter'),('Illusionist (E)',120,130,120,110,130,90,5,NULL,2,NULL,'jupiter'),('Enchanter (E)',140,140,130,120,140,90,5,NULL,4,NULL,'jupiter'),('Conjurer (E)',170,160,140,130,160,90,6,NULL,6,NULL,'jupiter'),('War Adept (E)',190,170,150,140,170,90,7,NULL,7,NULL,'jupiter'),('Page',100,120,110,100,120,90,NULL,5,0,NULL,'jupiter'),('Illusionist (F)',120,130,120,110,130,90,NULL,5,2,NULL,'jupiter'),('Enchanter (F)',140,140,130,120,140,90,NULL,5,4,NULL,'jupiter'),('Conjurer (F)',170,160,140,130,160,90,NULL,6,6,NULL,'jupiter'),('War Adept (F)',190,170,150,140,170,90,NULL,7,7,NULL,'jupiter'),('Ninja',160,140,150,120,170,80,3,3,3,NULL,'jupiter'),('Disciple',180,150,160,130,180,80,4,4,4,NULL,'jupiter'),('Master',200,160,170,140,190,80,4,4,5,NULL,'jupiter'),('Seer (W)',90,130,90,90,110,100,0,NULL,NULL,5,'venus'),('Diviner (W)',110,140,100,100,120,100,2,NULL,NULL,5,'venus'),('Shaman (W)',120,150,110,110,130,100,4,NULL,NULL,5,'venus'),('Druid (W)',150,170,130,130,150,100,6,NULL,NULL,6,'venus'),('Oracle (W)',170,180,140,140,160,100,7,NULL,NULL,7,'venus'),('Seer (A)',90,130,90,90,110,100,0,NULL,5,NULL,'venus'),('Diviner (A)',110,140,100,100,120,100,2,NULL,5,NULL,'venus'),('Shaman (A)',120,150,110,110,130,100,4,NULL,5,NULL,'venus'),('Druid (A)',150,170,130,130,150,100,6,NULL,6,NULL,'venus'),('Oracle (A)',170,180,140,140,160,100,7,NULL,7,NULL,'venus'),('Medium',130,170,120,120,150,90,3,NULL,3,3,'venus'),('Conjurer (D)',150,180,130,130,160,90,4,NULL,4,4,'venus'),('Dark Mage (D)',170,190,140,140,170,90,5,NULL,4,4,'venus'),('Pilgrim (W)',90,120,90,100,120,120,NULL,0,NULL,5,'mars'),('Wanderer (W)',110,130,100,110,130,120,NULL,2,NULL,5,'mars'),('Ascetic (W)',120,140,110,120,140,120,NULL,4,NULL,5,'mars'),('Water Monk',150,160,130,140,160,120,NULL,6,NULL,6,'mars'),('Guru (W)',170,170,140,150,170,120,NULL,7,NULL,7,'mars'),('Pilgrim (A)',90,120,90,100,120,120,NULL,0,5,NULL,'mars'),('Wanderer (A)',110,130,100,110,130,120,NULL,2,5,NULL,'mars'),('Ascetic (A)',120,140,110,120,140,120,NULL,4,5,NULL,'mars'),('Fire Monk',150,160,130,140,160,120,NULL,6,6,NULL,'mars'),('Guru (A)',170,170,140,150,170,120,NULL,7,7,NULL,'mars'),('Ranger',130,160,120,120,160,120,NULL,3,3,3,'mars'),('Bard',150,170,130,130,170,120,NULL,4,4,4,'mars'),('Warlock',170,180,140,140,180,120,NULL,5,4,4,'mars'),('Brute',100,70,120,90,110,70,1,1,NULL,NULL,'venus+mars'),('Ruffian',120,80,130,100,120,70,2,2,NULL,NULL,'venus+mars'),('Savage',140,90,140,110,130,70,4,4,NULL,NULL,'venus+mars'),('Barbarian',160,100,150,120,140,70,5,5,NULL,NULL,'venus+mars'),('Berserker',180,110,160,130,150,70,6,6,NULL,NULL,'venus+mars'),('Chaos Lord',200,120,170,140,160,70,7,7,NULL,NULL,'venus+mars'),('Samurai',190,130,150,140,140,90,4,4,3,NULL,'venus+mars'),('Ronin',210,140,160,150,150,90,5,5,4,NULL,'venus+mars'),('Hermit',80,140,80,90,130,120,NULL,NULL,1,1,'jupiter+mercury'),('Elder',90,150,90,100,140,120,NULL,NULL,2,2,'jupiter+mercury'),('Scholar',110,160,100,110,150,120,NULL,NULL,4,4,'jupiter+mercury'),('Savant',130,170,110,120,160,120,NULL,NULL,5,5,'jupiter+mercury'),('Sage',150,180,120,130,170,120,NULL,NULL,6,6,'jupiter+mercury'),('Wizard',170,190,130,140,180,120,NULL,NULL,7,7,'jupiter+mercury'),('White Mage',150,180,130,130,150,130,3,NULL,4,4,'jupiter+mercury'),('Pure Mage',170,190,140,140,160,130,4,NULL,5,5,'jupiter+mercury'),('Pierrot',100,80,100,110,130,120,0,0,0,0,'item'),('Harlequin',130,100,110,120,140,120,1,1,1,1,'item'),('Punchinello',160,110,130,130,150,120,2,2,2,2,'item'),('Acrobat',190,120,140,140,160,120,3,3,3,3,'item'),('Tamer',100,70,110,120,90,80,0,0,0,0,'item'),('Trainer',130,90,120,130,100,80,1,1,1,1,'item'),('Beastkeeper',160,100,140,140,110,80,2,2,2,2,'item'),('Beast Lord',190,110,150,150,120,80,3,3,3,3,'item'),('Dark Mage (I)',80,140,80,90,140,90,0,0,0,0,'item'),('Crypt Lord',100,160,100,110,150,90,1,1,1,1,'item'),('Necrolyte',130,170,120,120,160,90,2,2,2,2,'item'),('Necromage',160,190,130,130,170,90,3,3,3,3,'item');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djinni`
--

DROP TABLE IF EXISTS `djinni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djinni` (
  `name` varchar(20) DEFAULT NULL,
  `game` int(11) DEFAULT NULL,
  `element` varchar(7) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `PP` int(11) DEFAULT NULL,
  `ATT` int(11) DEFAULT NULL,
  `DEF` int(11) DEFAULT NULL,
  `AGI` int(11) DEFAULT NULL,
  `LCK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djinni`
--

LOCK TABLES `djinni` WRITE;
/*!40000 ALTER TABLE `djinni` DISABLE KEYS */;
INSERT INTO `djinni` VALUES ('Flint',1,'venus',8,4,3,0,0,0),('Granite',1,'venus',9,0,0,2,2,1),('Quartz',1,'venus',10,3,0,0,3,0),('Vine',1,'venus',12,4,0,3,0,1),('Sap',1,'venus',10,0,3,0,0,1),('Ground',1,'venus',9,3,0,0,3,0),('Bane',1,'venus',12,0,4,0,0,0),('Echo',2,'venus',9,4,3,0,0,0),('Iron',2,'venus',11,0,0,2,3,0),('Steel',2,'venus',9,0,4,2,0,1),('Mud',2,'venus',10,4,0,0,3,0),('Flower',2,'venus',12,4,0,0,0,0),('Meld',2,'venus',9,0,0,0,4,1),('Petra',2,'venus',11,0,0,3,0,0),('Salt',2,'venus',9,5,0,0,0,1),('Geode',2,'venus',12,0,6,0,0,0),('Mold',2,'venus',8,0,4,0,2,1),('Crystal',2,'venus',10,5,0,2,0,0),('Fizz',1,'mercury',9,4,0,3,0,0),('Sleet',1,'mercury',12,0,3,0,0,1),('Mist',1,'mercury',11,0,4,0,0,0),('Spritz',1,'mercury',8,4,0,0,3,0),('Hail',1,'mercury',9,0,4,0,0,1),('Tonic',1,'mercury',8,3,0,2,0,2),('Dew',1,'mercury',13,4,0,0,4,0),('Fog',2,'mercury',9,0,0,2,2,1),('Sour',2,'mercury',8,4,3,0,0,0),('Spring',2,'mercury',11,5,0,0,0,0),('Shade',2,'mercury',9,0,0,3,0,2),('Chill',2,'mercury',10,3,0,2,0,0),('Steam',2,'mercury',10,0,5,0,0,0),('Rime',2,'mercury',10,6,0,0,0,0),('Gel',2,'mercury',9,0,5,0,2,0),('Eddy',2,'mercury',9,0,0,0,3,2),('Balm',2,'mercury',13,4,0,0,0,0),('Serac',2,'mercury',12,0,3,0,0,0),('Forge',1,'mars',10,0,2,0,2,2),('Fever',1,'mars',8,0,3,0,2,0),('Corona',1,'mars',12,3,0,3,0,1),('Scorch',1,'mars',8,0,3,0,0,0),('Ember',1,'mars',9,4,0,2,2,0),('Flash',1,'mars',14,3,0,2,0,0),('Torch',1,'mars',9,0,3,0,0,1),('Cannon',2,'mars',10,0,3,0,0,0),('Spark',2,'mars',11,6,0,0,0,0),('Kindle',2,'mars',8,0,5,0,0,1),('Char',2,'mars',9,0,2,0,2,1),('Coal',2,'mars',11,3,0,0,3,0),('Reflux',2,'mars',9,0,0,3,0,2),('Core',2,'mars',8,0,4,2,0,0),('Tinder',2,'mars',12,5,0,0,0,0),('Shine',2,'mars',9,0,3,3,2,0),('Fury',2,'mars',12,4,0,0,0,0),('Fugue',2,'mars',11,4,0,2,0,0),('Gust',1,'jupiter',9,0,2,0,2,0),('Breeze',1,'jupiter',12,5,0,2,0,1),('Zephyr',1,'jupiter',11,3,0,0,2,1),('Smog',1,'jupiter',9,0,3,0,0,0),('Kite',1,'jupiter',8,4,0,0,3,0),('Squall',1,'jupiter',10,0,5,0,0,0),('Luff',1,'jupiter',11,5,0,2,0,1),('Breath',2,'jupiter',9,0,0,3,4,0),('Blitz',2,'jupiter',10,4,3,0,0,0),('Ether',2,'jupiter',8,4,0,0,3,2),('Waft',2,'jupiter',11,0,4,0,0,0),('Haze',2,'jupiter',10,0,0,2,3,2),('Wheeze',2,'jupiter',9,3,5,0,0,0),('Aroma',2,'jupiter',11,0,0,0,3,2),('Whorl',2,'jupiter',9,0,4,2,0,0),('Gasp',2,'jupiter',12,5,0,0,0,0),('Lull',2,'jupiter',11,6,0,0,0,0),('Gale',2,'jupiter',10,0,0,0,5,3);
/*!40000 ALTER TABLE `djinni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_agi`
--

DROP TABLE IF EXISTS `goal_agi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_agi` (
  `name` varchar(10) DEFAULT NULL,
  `l0` int(11) DEFAULT NULL,
  `l19` int(11) DEFAULT NULL,
  `l39` int(11) DEFAULT NULL,
  `l59` int(11) DEFAULT NULL,
  `l79` int(11) DEFAULT NULL,
  `l99` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_agi`
--

LOCK TABLES `goal_agi` WRITE;
/*!40000 ALTER TABLE `goal_agi` DISABLE KEYS */;
INSERT INTO `goal_agi` VALUES ('Isaac',8,86,163,241,318,396),('Garet',6,76,144,212,281,349),('Ivan',11,91,173,255,337,419),('Mia',7,80,152,224,296,369),('Felix',7,83,158,232,307,382),('Jenna',8,85,162,238,315,392),('Sheba',10,88,168,248,328,407),('Piers',6,78,148,218,289,359);
/*!40000 ALTER TABLE `goal_agi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_att`
--

DROP TABLE IF EXISTS `goal_att`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_att` (
  `name` varchar(10) DEFAULT NULL,
  `l0` int(11) DEFAULT NULL,
  `l19` int(11) DEFAULT NULL,
  `l39` int(11) DEFAULT NULL,
  `l59` int(11) DEFAULT NULL,
  `l79` int(11) DEFAULT NULL,
  `l99` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_att`
--

LOCK TABLES `goal_att` WRITE;
/*!40000 ALTER TABLE `goal_att` DISABLE KEYS */;
INSERT INTO `goal_att` VALUES ('Isaac',13,86,162,237,313,388),('Garet',11,83,156,228,301,373),('Ivan',8,76,144,211,277,344),('Mia',9,79,150,220,289,359),('Felix',13,87,164,240,316,392),('Jenna',10,81,153,224,295,366),('Sheba',8,78,147,215,283,351),('Piers',11,82,155,226,298,370);
/*!40000 ALTER TABLE `goal_att` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_def`
--

DROP TABLE IF EXISTS `goal_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_def` (
  `name` varchar(10) DEFAULT NULL,
  `l0` int(11) DEFAULT NULL,
  `l19` int(11) DEFAULT NULL,
  `l39` int(11) DEFAULT NULL,
  `l59` int(11) DEFAULT NULL,
  `l79` int(11) DEFAULT NULL,
  `l99` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_def`
--

LOCK TABLES `goal_def` WRITE;
/*!40000 ALTER TABLE `goal_def` DISABLE KEYS */;
INSERT INTO `goal_def` VALUES ('Isaac',6,38,69,102,134,166),('Garet',8,41,75,110,144,179),('Ivan',4,35,65,95,124,155),('Mia',5,37,68,100,131,163),('Felix',6,38,70,103,135,168),('Jenna',5,37,69,101,132,165),('Sheba',4,36,66,98,128,159),('Piers',7,39,72,106,139,173);
/*!40000 ALTER TABLE `goal_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_hp`
--

DROP TABLE IF EXISTS `goal_hp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_hp` (
  `name` varchar(10) DEFAULT NULL,
  `l0` int(11) DEFAULT NULL,
  `l19` int(11) DEFAULT NULL,
  `l39` int(11) DEFAULT NULL,
  `l59` int(11) DEFAULT NULL,
  `l79` int(11) DEFAULT NULL,
  `l99` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_hp`
--

LOCK TABLES `goal_hp` WRITE;
/*!40000 ALTER TABLE `goal_hp` DISABLE KEYS */;
INSERT INTO `goal_hp` VALUES ('Isaac',30,182,334,486,638,790),('Garet',33,191,351,510,670,830),('Ivan',28,166,304,442,581,719),('Mia',29,173,317,462,606,751),('Felix',32,187,342,498,654,810),('Jenna',29,177,326,474,622,770),('Sheba',28,169,311,452,593,735),('Piers',30,184,337,491,644,798);
/*!40000 ALTER TABLE `goal_hp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_lck`
--

DROP TABLE IF EXISTS `goal_lck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_lck` (
  `name` varchar(10) DEFAULT NULL,
  `luck` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_lck`
--

LOCK TABLES `goal_lck` WRITE;
/*!40000 ALTER TABLE `goal_lck` DISABLE KEYS */;
INSERT INTO `goal_lck` VALUES ('Isaac',3),('Garet',2),('Ivan',4),('Mia',5),('Felix',2),('Jenna',4),('Sheba',5),('Piers',3);
/*!40000 ALTER TABLE `goal_lck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_pp`
--

DROP TABLE IF EXISTS `goal_pp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_pp` (
  `name` varchar(10) DEFAULT NULL,
  `l0` int(11) DEFAULT NULL,
  `l19` int(11) DEFAULT NULL,
  `l39` int(11) DEFAULT NULL,
  `l59` int(11) DEFAULT NULL,
  `l79` int(11) DEFAULT NULL,
  `l99` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_pp`
--

LOCK TABLES `goal_pp` WRITE;
/*!40000 ALTER TABLE `goal_pp` DISABLE KEYS */;
INSERT INTO `goal_pp` VALUES ('Isaac',20,80,130,170,210,250),('Garet',18,76,124,162,200,238),('Ivan',24,92,150,196,242,288),('Mia',23,90,146,190,235,280),('Felix',19,78,127,166,205,244),('Jenna',21,85,138,180,223,265),('Sheba',24,91,148,193,238,284),('Piers',19,79,129,168,208,248);
/*!40000 ALTER TABLE `goal_pp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_elemental`
--

DROP TABLE IF EXISTS `stats_elemental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats_elemental` (
  `name` varchar(10) DEFAULT NULL,
  `main` varchar(7) DEFAULT NULL,
  `venuspower` int(11) DEFAULT NULL,
  `venusresist` int(11) DEFAULT NULL,
  `mercurypower` int(11) DEFAULT NULL,
  `mercuryresist` int(11) DEFAULT NULL,
  `marspower` int(11) DEFAULT NULL,
  `marsresist` int(11) DEFAULT NULL,
  `jupiterpower` int(11) DEFAULT NULL,
  `jupiterresist` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats_elemental`
--

LOCK TABLES `stats_elemental` WRITE;
/*!40000 ALTER TABLE `stats_elemental` DISABLE KEYS */;
INSERT INTO `stats_elemental` VALUES ('Isaac','venus',79,89,78,88,76,86,77,87),('Garet','mars',76,86,77,87,79,89,78,88),('Ivan','jupiter',77,87,76,86,78,88,79,89),('Mia','mercury',78,88,79,89,77,87,76,86),('Felix','venus',79,89,78,88,76,86,77,87),('Jenna','mars',76,86,77,87,79,89,78,88),('Sheba','jupiter',77,87,76,86,78,88,79,89),('Piers','mercury',78,88,79,89,77,87,76,86);
/*!40000 ALTER TABLE `stats_elemental` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-27  9:41:58
