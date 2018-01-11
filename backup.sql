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
-- Table structure for table `armor`
--

DROP TABLE IF EXISTS `armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armor` (
  `id` smallint(6) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `game` tinyint(1) DEFAULT NULL,
  `buy` int(11) DEFAULT '0',
  `sell` int(11) DEFAULT '0',
  `type` varchar(11) DEFAULT NULL,
  `cursed` tinyint(1) DEFAULT '0',
  `DEF` int(11) DEFAULT '0',
  `useeffect` varchar(20) DEFAULT NULL,
  `buffs` varchar(20) DEFAULT NULL,
  `forgedby` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (75,'Leather Armor',1,240,180,'armor',0,12,NULL,NULL,NULL),(76,'Psynergy Armor',1,1000,750,'armor',0,21,NULL,NULL,NULL),(77,'Chain Mail',1,2000,1500,'armor',0,25,NULL,NULL,NULL),(78,'Armored Shell',1,3600,2700,'armor',0,30,NULL,NULL,NULL),(79,'Plate Mail',1,4400,3300,'armor',0,33,NULL,NULL,NULL),(80,'Steel Armor',1,4900,3675,'armor',0,36,NULL,NULL,NULL),(81,'Spirit Armor',1,4000,3000,'armor',0,32,NULL,NULL,NULL),(82,'Dragon Scales',1,17000,12750,'armor',0,44,NULL,NULL,NULL),(83,'Demon Mail',1,17000,12750,'armor',1,50,NULL,NULL,NULL),(84,'Asura\'s Armor',1,15000,11250,'armor',0,42,NULL,NULL,NULL),(85,'Spiked Armor',1,14000,10500,'armor',0,34,NULL,NULL,NULL),(89,'Cotton Shirt',1,20,15,'clothing',0,3,NULL,NULL,NULL),(90,'Travel Vest',1,49,37,'clothing',0,7,NULL,NULL,NULL),(91,'Fur Coat',1,400,300,'clothing',0,16,NULL,NULL,NULL),(92,'Adept\'s Clothes',1,849,637,'clothing',0,18,NULL,NULL,NULL),(93,'Elven Shirt',1,1700,1275,'clothing',0,22,NULL,NULL,NULL),(94,'Silver Vest',1,3200,2400,'clothing',0,28,NULL,NULL,NULL),(95,'Water Jacket',1,3000,2250,'clothing',0,30,NULL,NULL,NULL),(96,'Storm Gear',1,9800,7350,'clothing',0,42,NULL,NULL,NULL),(97,'Kimono',1,2800,2100,'clothing',0,25,NULL,NULL,NULL),(98,'Ninja Garb',1,6900,5175,'clothing',0,36,NULL,NULL,NULL),(103,'One-Piece Dress',1,24,18,'robe',0,4,NULL,NULL,NULL),(104,'Travel Robe',1,200,150,'robe',0,10,NULL,NULL,NULL),(105,'Silk Robe',1,1400,1050,'robe',0,20,NULL,NULL,NULL),(106,'China Dress',1,1600,1200,'robe',0,19,NULL,NULL,NULL),(107,'Jerkin',1,2400,1800,'robe',0,26,NULL,NULL,NULL),(108,'Cocktail Dress',1,4000,3000,'robe',0,29,NULL,NULL,NULL),(109,'Blessed Robe',1,7000,5250,'robe',0,36,NULL,NULL,NULL),(110,'Magical Cassock',1,9000,6750,'robe',0,39,NULL,NULL,NULL),(111,'Mysterious Robe',2,36500,27375,'robe',0,48,NULL,NULL,NULL),(112,'Feathered Robe',1,14000,10500,'robe',0,45,NULL,NULL,NULL),(113,'Oracle\'s Robe',1,13500,10125,'robe',0,43,NULL,NULL,NULL),(118,'Wooden Shield',1,40,30,'shield',0,6,NULL,NULL,NULL),(119,'Bronze Shield',1,500,375,'shield',0,14,NULL,NULL,NULL),(120,'Iron Shield',1,1200,900,'shield',0,20,NULL,NULL,NULL),(121,'Knight\'s Shield',1,3000,2250,'shield',0,28,NULL,NULL,NULL),(122,'Mirrored Shield',1,5200,3900,'shield',0,39,NULL,NULL,NULL),(123,'Dragon Shield',1,2400,1800,'shield',0,26,NULL,NULL,NULL),(124,'Earth Shield',1,4100,3075,'shield',0,31,NULL,NULL,NULL),(127,'Padded Gloves',1,10,7,'gloves',0,2,NULL,NULL,NULL),(128,'Leather Gloves',1,220,165,'gloves',0,10,NULL,NULL,NULL),(129,'Gauntlets',1,1600,1200,'gloves',0,23,NULL,NULL,NULL),(130,'Vambrace',1,1800,1350,'gloves',0,27,NULL,NULL,NULL),(131,'War Gloves',1,4000,3000,'gloves',0,32,NULL,NULL,NULL),(132,'Spirit Gloves',1,5200,3900,'gloves',0,34,NULL,NULL,NULL),(133,'Battle Gloves',1,2100,1575,'gloves',0,26,NULL,NULL,NULL),(134,'Aura Gloves',1,6500,4875,'gloves',0,36,NULL,NULL,NULL),(136,'Leather Armlet',1,180,135,'bracelet',0,7,NULL,NULL,NULL),(137,'Armlet',1,900,675,'bracelet',0,17,NULL,NULL,NULL),(138,'Heavy Armlet',1,2000,1500,'bracelet',0,25,NULL,NULL,NULL),(139,'Silver Armlet',1,4000,3000,'bracelet',0,30,NULL,NULL,NULL),(140,'Spirit Armlet',1,9000,6750,'bracelet',0,38,NULL,NULL,NULL),(141,'Virtuous Armlet',1,7000,5250,'bracelet',0,35,NULL,NULL,NULL),(142,'Guardian Armlet',1,2600,1950,'bracelet',0,27,NULL,NULL,NULL),(145,'Open Helm',1,180,135,'helmet',0,9,NULL,NULL,NULL),(146,'Bronze Helm',1,600,450,'helmet',0,14,NULL,NULL,NULL),(147,'Iron Helm',1,1600,1200,'helmet',0,20,NULL,NULL,NULL),(148,'Steel Helm',1,3100,2325,'helmet',0,27,NULL,NULL,NULL),(149,'Silver Helm',1,3900,2925,'helmet',0,30,NULL,NULL,NULL),(150,'Knight\'s Helm',1,4600,3450,'helmet',0,33,NULL,NULL,NULL),(151,'Warrior\'s Helm',1,10000,7500,'helmet',0,35,NULL,NULL,NULL),(152,'Adept\'s Helm',1,3700,2775,'helmet',0,29,NULL,NULL,NULL),(156,'Leather Cap',1,30,22,'hat',0,3,NULL,NULL,NULL),(157,'Wooden Cap',1,400,300,'hat',0,10,NULL,NULL,NULL),(158,'Mail Cap',1,2000,1500,'hat',0,23,NULL,NULL,NULL),(159,'Jeweled Crown',1,4000,3000,'hat',0,35,NULL,NULL,NULL),(160,'Ninja Hood',1,2800,2100,'hat',0,28,NULL,NULL,NULL),(161,'Lucky Cap',1,5200,3900,'hat',0,33,NULL,NULL,NULL),(162,'Thunder Crown',1,7500,5625,'hat',1,40,NULL,NULL,NULL),(163,'Prophet\'s Hat',1,4600,3450,'hat',0,30,NULL,NULL,NULL),(164,'Lure Cap',1,3000,2250,'hat',0,20,NULL,NULL,NULL),(166,'Circlet',1,120,90,'circlet',0,6,NULL,NULL,NULL),(167,'Silver Circlet',1,1300,975,'circlet',0,16,NULL,NULL,NULL),(168,'Guardian Circlet',1,3400,2550,'circlet',0,25,NULL,NULL,NULL),(169,'Platinum Circlet',1,4200,3150,'circlet',0,29,NULL,NULL,NULL),(170,'Mythril Circlet',1,7000,5250,'circlet',0,34,NULL,NULL,NULL),(171,'Glittering Tiara',1,3600,2700,'circlet',0,27,NULL,NULL,NULL),(250,'Mythril Shirt',1,2900,2175,'shirt',0,10,NULL,NULL,NULL),(251,'Silk Shirt',1,1800,1350,'shirt',0,6,NULL,NULL,NULL),(252,'Running Shirt',1,400,300,'shirt',0,1,NULL,NULL,NULL),(256,'Hyper Boots',1,2400,1800,'boots',0,4,NULL,NULL,NULL),(257,'Quick Boots',1,2100,1575,'boots',0,3,NULL,NULL,NULL),(258,'Fur Boots',1,1200,900,'boots',0,2,NULL,NULL,NULL),(259,'Turtle Boots',1,600,450,'boots',0,3,NULL,NULL,NULL),(328,'Planet Armor',2,4800,3600,'armor',0,36,NULL,NULL,NULL),(329,'Dragon Mail',2,9700,7275,'armor',0,44,NULL,NULL,NULL),(330,'Chronos Mail',2,13100,9825,'armor',0,47,NULL,NULL,NULL),(331,'Stealth Armor',2,14000,10500,'armor',1,48,NULL,NULL,NULL),(332,'Xylion Armor',2,22500,16875,'armor',0,50,NULL,NULL,NULL),(333,'Ixion Mail',2,1300,975,'armor',0,26,NULL,NULL,NULL),(334,'Phantasmal Mail',2,5800,4350,'armor',0,38,NULL,NULL,NULL),(335,'Erebus Armor',2,9000,6750,'armor',0,43,NULL,NULL,NULL),(336,'Valkyrie Mail',2,25500,19125,'armor',0,53,NULL,NULL,NULL),(338,'Faery Vest',2,6900,5175,'clothing',0,38,NULL,NULL,NULL),(339,'Mythril Clothes',2,14900,11175,'clothing',0,49,NULL,NULL,NULL),(340,'Full Metal Vest',2,1100,825,'clothing',0,21,NULL,NULL,NULL),(341,'Wild Coat',2,4000,3000,'clothing',0,37,NULL,NULL,NULL),(342,'Floral Dress',2,6600,4950,'clothing',0,38,NULL,NULL,NULL),(343,'Festival Coat',2,2800,2100,'clothing',0,28,NULL,NULL,NULL),(344,'Erinyes Tunic',2,10400,7800,'clothing',0,45,NULL,NULL,NULL),(345,'Triton\'s Ward',2,16200,12150,'clothing',0,47,NULL,NULL,NULL),(347,'Dragon Robe',2,8900,6675,'robe',0,42,NULL,NULL,NULL),(348,'Ardagh Robe',2,9900,7425,'robe',0,44,NULL,NULL,NULL),(349,'Muni Robe',2,6300,4725,'robe',0,39,NULL,NULL,NULL),(350,'Aeolian Cossack',2,11400,8550,'robe',0,46,NULL,NULL,NULL),(351,'Iris Robe',2,16600,12450,'robe',0,47,NULL,NULL,NULL),(353,'Luna Shield',2,3900,2925,'shield',0,33,NULL,NULL,NULL),(354,'Dragon Shield',2,7400,5550,'shield',0,42,NULL,NULL,NULL),(355,'Flame Shield',2,8600,6450,'shield',0,44,NULL,NULL,NULL),(356,'Terra Shield',2,11200,8400,'shield',1,48,NULL,NULL,NULL),(357,'Cosmos Shield',2,12200,9150,'shield',0,49,NULL,NULL,NULL),(358,'Fujin Shield',2,1400,1050,'shield',0,23,NULL,NULL,NULL),(359,'Aegis Shield',2,6700,5025,'shield',0,41,NULL,NULL,NULL),(361,'Aerial Gloves',2,5400,4050,'gloves',0,37,NULL,NULL,NULL),(362,'Titan Gloves',2,8100,6075,'gloves',0,43,NULL,NULL,NULL),(363,'Big Bang Gloves',2,10200,7650,'gloves',0,47,NULL,NULL,NULL),(364,'Crafted Gloves',2,4600,3450,'gloves',0,35,NULL,NULL,NULL),(365,'Riot Gloves',2,10400,7800,'gloves',0,45,NULL,NULL,NULL),(366,'Spirit Gloves',2,7200,5400,'gloves',0,40,NULL,NULL,NULL),(368,'Clear Bracelet',2,3500,2625,'bracelet',0,31,NULL,NULL,NULL),(369,'Mythril Armlet',2,9700,7275,'bracelet',0,46,NULL,NULL,NULL),(370,'Bone Armlet',2,3000,2250,'bracelet',0,30,NULL,NULL,NULL),(371,'Jester\'s Armlet',2,5100,3825,'bracelet',0,39,NULL,NULL,NULL),(372,'Leda\'s Armlet',2,5800,4350,'bracelet',0,38,NULL,NULL,NULL),(374,'Dragon Helm',2,8900,6675,'helmet',0,42,NULL,NULL,NULL),(375,'Mythril Helm',2,11400,8550,'helmet',0,44,NULL,NULL,NULL),(376,'Fear Helm',2,12800,9600,'helmet',1,48,NULL,NULL,NULL),(377,'Millenium Helm',2,11400,8550,'helmet',0,45,NULL,NULL,NULL),(378,'Viking Helm',2,4000,3000,'helmet',0,30,NULL,NULL,NULL),(379,'Gloria Helm',2,13800,10350,'helmet',0,49,NULL,NULL,NULL),(380,'Minerva Helm',2,8700,6525,'helmet',0,43,NULL,NULL,NULL),(382,'Floating Hat',2,5700,4275,'hat',0,34,NULL,NULL,NULL),(383,'Nurse\'s Cap',2,1200,900,'hat',0,18,NULL,NULL,NULL),(384,'Thorn Crown',2,3300,2475,'hat',0,28,NULL,NULL,NULL),(385,'Otafuku Mask',2,3900,2925,'hat',0,31,NULL,NULL,NULL),(386,'Hiotoko Mask',2,6600,4950,'hat',0,33,NULL,NULL,NULL),(387,'Crown of Glory',2,7400,5550,'hat',0,40,NULL,NULL,NULL),(388,'Alastor\'s Hood',2,11800,8850,'hat',0,47,NULL,NULL,NULL),(390,'Pure Circlet',2,3700,2775,'circlet',0,29,NULL,NULL,NULL),(391,'Astral Circlet',2,4600,3450,'circlet',0,32,NULL,NULL,NULL),(392,'Psychic Circlet',2,8800,6600,'circlet',0,39,NULL,NULL,NULL),(393,'Demon Circlet',2,15800,11850,'circlet',1,50,NULL,NULL,NULL),(394,'Clarity Circlet',2,1500,1125,'circlet',0,21,NULL,NULL,NULL),(395,'Brilliant Circlet',2,6100,4575,'circlet',0,36,NULL,NULL,NULL),(396,'Berserker Band',2,13700,10275,'circlet',0,46,NULL,NULL,NULL),(398,'Divine Camisole',2,2700,2025,'shirt',0,10,NULL,NULL,NULL),(399,'Herbed Shirt',2,1900,1425,'shirt',0,7,NULL,NULL,NULL),(400,'Golden Shirt',2,2400,1800,'shirt',0,12,NULL,NULL,NULL),(401,'Casual Shirt',2,50,37,'shirt',0,3,NULL,NULL,NULL),(402,'Leather Boots',2,270,202,'boots',0,6,NULL,NULL,NULL),(403,'Dragon Boots',2,4200,3150,'boots',0,13,NULL,NULL,NULL),(404,'Safety Boots',2,700,525,'boots',0,12,NULL,NULL,NULL),(405,'Knight\'s Greave',2,2700,2025,'boots',0,8,NULL,NULL,NULL),(406,'Silver Greave',2,3800,2850,'boots',0,11,NULL,NULL,NULL),(407,'Ninja Sandals',2,2000,1500,'boots',0,5,NULL,NULL,NULL),(408,'Golden Boots',2,4400,3300,'boots',0,30,NULL,NULL,NULL);
/*!40000 ALTER TABLE `armor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `name` varchar(20) NOT NULL,
  `venus` tinyint(4) DEFAULT NULL,
  `mars` tinyint(4) DEFAULT NULL,
  `jupiter` tinyint(4) DEFAULT NULL,
  `mercury` tinyint(4) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `upgrades` varchar(250) DEFAULT NULL,
  `family` varchar(20) DEFAULT NULL,
  `HP` decimal(2,1) DEFAULT NULL,
  `PP` decimal(2,1) DEFAULT NULL,
  `ATT` decimal(2,1) DEFAULT NULL,
  `DEF` decimal(2,1) DEFAULT NULL,
  `AGI` decimal(2,1) DEFAULT NULL,
  `LCK` decimal(2,1) DEFAULT NULL,
  `familyrank` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('Acrobat',3,3,3,3,'item',NULL,'Pierrot',1.9,1.2,1.4,1.4,1.6,1.2,4),('Admiral',NULL,NULL,NULL,13,'lostage',NULL,'Mariner',1.9,1.3,1.4,1.4,1.3,1.2,5),('Angel',NULL,NULL,NULL,13,'basic',NULL,'Water Seer',1.6,1.7,1.3,1.4,1.2,1.3,5),('Apprentice',5,NULL,0,NULL,'jupiter','1:Delude, 6:Gaia, 9:Weaken, 11:Astral Blast, 14:Sleep, 17:Haunt, 20:Curse, 24:Mother Gaia, 25:Enfeeble, 31:Drain, 39:Psy Drain, 54:Grand Gaia','Apprentice',1.0,1.2,1.1,1.0,1.2,0.9,1),('Ascetic (A)',NULL,4,5,NULL,'mars','6:Ward, 8:Volcano, 22:Eruption, 24:Resist, 48:Pyroclasm','Pilgrim (A)',1.2,1.4,1.1,1.2,1.4,1.2,3),('Ascetic (W)',NULL,4,NULL,5,'mars','8:Volcano, 9:Wish, 22:Eruption, 24:Wish Well, 46:Pure Wish, 48:Pyroclasm','Pilgrim (W)',1.2,1.4,1.1,1.2,1.4,1.2,3),('Barbarian',5,5,NULL,NULL,'venus+mars',NULL,'Brute',1.6,1.0,1.5,1.2,1.4,0.7,4),('Bard',NULL,4,4,4,'mars',NULL,'Ranger',1.5,1.7,1.3,1.3,1.7,1.2,2),('Beast Lord',3,3,3,3,'item','[Dinox:Troll], [Faery:Weird Nymph], [Chimera:Macetail], [Elder Wood:Estre Wood], [Gryphon:Minotaur], [Lich:Phoenix], [Blue Dragon:Fire Dragon], [Living Armor:Ghost Soldier], 24:Succubus, 38:Manticore','Tamer',1.9,1.1,1.5,1.5,1.2,0.8,4),('Beastkeeper',2,2,2,2,'item','[Orc:Dinox], [Pixie:Faery], [Cerberus:Chimera], [Harpy:Gryphon], [Grand Golem:Blue Dragon], [Wyvern:Living Armor], 15:Elder Wood, 28:Lich','Tamer',1.6,1.0,1.4,1.4,1.1,0.8,3),('Berserker',6,6,NULL,NULL,'venus+mars','[Planet Diver:Planetary]','Brute',1.8,1.1,1.6,1.3,1.5,0.7,5),('Brute',1,1,NULL,NULL,'venus+mars','1:Growth, 6:Blast(Nova), 12:Mad Growth, 13:Planet Diver, 16:Nova, 17:Haunt, 24:Curse, 28:Wild Growth, 29:Condemn, 40:Supernova','Brute',1.0,0.7,1.2,0.9,1.1,0.7,1),('Captain',NULL,NULL,NULL,11,'lostage','[Diamond Dust:Diamond Berg]','Mariner',1.7,1.2,1.3,1.3,1.2,1.2,4),('Cavalier (E)',5,NULL,NULL,4,'mercury','8:Wish, 22:Wish Well, 46:Pure Wish','Swordsman (E)',1.4,1.1,1.3,1.3,1.1,1.2,3),('Cavalier (F)',NULL,5,NULL,4,'mercury','8:Wish, 22:Wish Well, 46:Pure Wish','Swordsman (F)',1.4,1.1,1.3,1.3,1.1,1.2,3),('Champion',NULL,11,NULL,NULL,'basic','[Heat Wave:Liquifier]','Guard',1.7,1.1,1.3,1.4,1.0,1.0,4),('Chaos Lord',7,7,NULL,NULL,'venus+mars',NULL,'Brute',2.0,1.2,1.7,1.4,1.6,0.7,6),('Cleric',NULL,NULL,NULL,9,'basic','8:Wish, 22:Wish Well, 46:Pure Wish','Water Seer',1.2,1.5,1.1,1.2,1.0,1.3,3),('Commander',NULL,NULL,NULL,9,'lostage',NULL,'Mariner',1.5,1.1,1.2,1.2,1.1,1.2,3),('Conjurer (D)',4,NULL,4,4,'venus',NULL,'Medium',1.5,1.8,1.3,1.3,1.6,0.9,2),('Conjurer (E)',6,NULL,6,NULL,'jupiter','[Astral Blast:Thunder Mine]','Apprentice',1.7,1.6,1.4,1.3,1.6,0.9,4),('Conjurer (F)',NULL,6,6,NULL,'jupiter','[Astral Blast:Thunder Mine]','Page',1.7,1.6,1.4,1.3,1.6,0.9,4),('Crypt Lord',1,1,1,1,'item',NULL,'Dark Mage (I)',1.0,1.6,1.0,1.1,1.5,0.9,2),('Dark Mage (D)',5,NULL,4,4,'venus',NULL,'Medium',1.7,1.9,1.4,1.4,1.7,0.9,3),('Dark Mage (I)',0,0,0,0,'item','1:Call Zombie, 9:Raging Heat, 17:Haunt, 19:Revive, 20:Fire Puppet, 22:Fiery Abyss, 24:Curse, 29:Condemn, 31:Drain, 33:Poison Flow, 39:Psy Drain, 53:Dire Inferno','Dark Mage (I)',0.8,1.4,0.8,0.9,1.4,0.9,1),('Defender (E)',5,NULL,NULL,2,'mercury','1:Ply, 6:Avoid, 16:Ply Well, 34:Pure Ply','Swordsman (E)',1.2,1.0,1.2,1.2,1.0,1.2,2),('Defender (F)',NULL,5,NULL,2,'mercury','1:Ply, 6:Avoid. 16:Ply Well, 34:Pure Ply','Swordsman (F)',1.2,1.0,1.2,1.2,1.0,1.2,2),('Disciple',4,4,4,NULL,'jupiter','[Death Plunge:Death Leap]','Ninja',1.8,1.5,1.6,1.3,1.8,0.8,2),('Diviner (A)',2,NULL,5,NULL,'venus',NULL,'Seer (A)',1.1,1.4,1.0,1.0,1.2,1.0,2),('Diviner (W)',2,NULL,NULL,5,'venus',NULL,'Seer (W)',1.1,1.4,1.0,1.0,1.2,1.0,2),('Dragoon',3,3,NULL,3,'mercury','1:Ply, 2:Blast, 4:Thorn, 5:Cure Poison, 6:Avoid, 8:Wish, 10:Mad Blast, 11:Cutting Edge, 13:Restore, 16:Ply Well, 17:Briar, 22:Wish Well, 27:Fiery Blast, 34:Pure Ply, 36:Nettle, 46:Pure Wish','Dragoon',1.6,1.3,1.4,1.4,1.1,1.3,1),('Druid (A)',6,NULL,6,NULL,'venus',NULL,'Seer (A)',1.5,1.7,1.3,1.3,1.5,1.0,4),('Druid (W)',6,NULL,NULL,6,'venus',NULL,'Seer (W)',1.5,1.7,1.3,1.3,1.5,1.0,4),('Elder',NULL,NULL,2,2,'jupiter+mercury',NULL,'Hermit',0.9,1.5,0.9,1.0,1.4,1.2,2),('Enchanter (E)',5,NULL,4,NULL,'jupiter','5:Impact, 6:Ward, 21:High Impact, 22:Resist','Apprentice',1.4,1.4,1.3,1.2,1.4,0.9,3),('Enchanter (F)',NULL,5,4,NULL,'jupiter','3:Guard, 5:Impact, 15:Protect, 21:High Impact','Page',1.4,1.4,1.3,1.2,1.4,0.9,3),('Fire Master',NULL,11,NULL,NULL,'lostage',NULL,'Flame User',1.5,1.5,1.3,1.3,1.5,0.9,4),('Fire Monk',NULL,6,6,NULL,'mars',NULL,'Pilgrim (A)',1.5,1.6,1.3,1.4,1.6,1.2,4),('Flame User',NULL,5,NULL,NULL,'lostage','1:Flare, 5:Fume, 6:Flare Wall, 7:Beam, 10:Impair, 18:Flare Storm, 21:Cycle Beam, 23:Debilitate, 26:Serpent Fume, 41:Searing Beam, 47:Dragon Fume','Flame User',1.0,1.2,1.0,1.0,1.2,0.9,1),('Gallant',9,NULL,NULL,NULL,'basic','7:Gaia, 19:Revive, 24:Mother Gaia, 54:Grand Gaia','Squire',1.5,1.0,1.3,1.2,1.3,1.0,3),('Guard',NULL,5,NULL,NULL,'basic','1:Flare, 4:Fire, 6:Flare Wall, 8:Volcano, 12:Heat Wave, 14:Fireball, 18:Flare Storm, 22:Eruption, 36:Inferno, 48:Pyroclasm','Guard',1.1,0.8,1.0,1.1,0.7,1.0,1),('Guardian',6,NULL,NULL,6,'mercury','[Cutting Edge:Plume Edge]','Swordsman (E)',1.7,1.3,1.4,1.4,1.3,1.2,4),('Guru (A)',NULL,7,7,NULL,'mars',NULL,'Pilgrim (A)',1.7,1.7,1.4,1.5,1.7,1.2,5),('Guru (W)',NULL,7,NULL,7,'mars',NULL,'Pilgrim (W)',1.7,1.7,1.4,1.5,1.7,1.2,5),('Harlequin',1,1,1,1,'item',NULL,'Pierrot',1.3,1.0,1.1,1.2,1.4,1.2,2),('Hermit',NULL,NULL,1,1,'jupiter+mercury','1:Impact, 6:Prism, 8:Plasma, 18:Bind, 21:High Impact, 22:Hail Prism, 26:Shine Plasma, 31:Drain, 30:Break, 39:Psy Drain, 50:Spark Plasma, 52:Freeze Prism','Hermit',0.8,1.4,0.8,0.9,1.3,1.2,1),('Hero',NULL,13,NULL,NULL,'basic',NULL,'Guard',1.9,1.2,1.4,1.5,1.1,1.0,5),('Hex',NULL,9,NULL,NULL,'lostage','9:Aura, 16:Healing Aura, 33:Cool Aura','Flame User',1.3,1.4,1.2,1.2,1.4,0.9,3),('Illusionist (E)',5,NULL,2,NULL,'jupiter',NULL,'Apprentice',1.2,1.3,1.2,1.1,1.3,0.9,2),('Illusionist (F)',NULL,5,2,NULL,'jupiter',NULL,'Page',1.2,1.3,1.2,1.1,1.3,0.9,2),('Justice',NULL,13,NULL,NULL,'lostage',NULL,'Flame User',1.7,1.6,1.4,1.4,1.6,0.9,5),('Knight',7,NULL,NULL,NULL,'basic',NULL,'Squire',1.3,0.9,1.2,1.1,1.2,1.0,2),('Lord',11,NULL,NULL,NULL,'basic','[Ragnarok:Odyssey]','Squire',1.7,1.1,1.4,1.3,1.4,1.0,4),('Luminier',NULL,6,NULL,6,'mercury','[Cutting Edge:Plume Edge]','Swordsman (F)',1.7,1.3,1.4,1.4,1.3,1.2,4),('Mage',NULL,NULL,9,NULL,'basic','6:Ward, 22:Resist','Wind Seer',1.1,1.6,1.0,1.1,1.5,1.1,3),('Magician',NULL,NULL,7,NULL,'basic','5:Impact, 21:High Impact','Wind Seer',0.9,1.5,0.9,1.0,1.4,1.1,2),('Magister',NULL,NULL,11,NULL,'basic',NULL,'Wind Seer',1.3,1.7,1.1,1.2,1.6,1.1,4),('Mariner',NULL,NULL,NULL,5,'lostage','1:Frost, 2:Ply, 4:Cool, 5:Cure Poison, 8:Tundra, 12:Diamond Dust, 13:Restore, 17:Ply Well, 21:Supercool, 24:Glacier, 30:Break, 35:Pure Ply, 48:Megacool','Mariner',1.1,0.9,1.0,1.0,0.9,1.2,1),('Master',4,4,5,NULL,'jupiter',NULL,'Ninja',2.0,1.6,1.7,1.4,1.9,0.8,3),('Medium',3,NULL,3,3,'venus','1:Bolt, 2:Froth, 3:Cure, 6:Flash Bolt, 10:Cure Well, 14:Froth Sphere, 17:Haunt, 19:Revive, 20:Curse, 22:Blue Bolt, 26:Potent Cure, 29:Condemn, 31:Drain, 36:Psy Drain, 40:Froth Spiral','Medium',1.3,1.7,1.2,1.2,1.5,0.9,1),('Necrolyte',2,2,2,2,'item','26:Call Demon','Dark Mage (I)',1.3,1.7,1.2,1.2,1.6,0.9,3),('Necromage',3,3,3,3,'item','47:Call Dullahan','Dark Mage (I)',1.6,1.9,1.3,1.3,1.7,0.9,4),('Ninja',3,3,3,NULL,'jupiter','1:Gale, 4:Punji, 6:Fire Bomb, 7:Mist, 8:Thunderclap, 12:Death Plunge, 15:Punji Trap, 16:Cluster Bomb, 18:Typhoon, 21:Shuriken, 26:Thunderbolt, 31:Annihilation, 36:Punji Strike, 40:Carpet Bomb, 44:Hurricane, 50:Thunderhead','Ninja',1.6,1.4,1.5,1.2,1.7,0.8,1),('Oracle (A)',7,NULL,7,NULL,'venus',NULL,'Seer (A)',1.7,1.8,1.4,1.4,1.6,1.0,5),('Oracle (W)',7,NULL,NULL,7,'venus',NULL,'Seer (W)',1.7,1.8,1.4,1.4,1.6,1.0,5),('Page',NULL,5,0,NULL,'jupiter','1:Delude, 6:Ward, 8:Volcano, 9:Weaken, 11:Astral Blast, 14:Sleep, 22:Resist, 24:Eruption, 25:Enfeeble, 31:Drain, 39:Psy Drain, 48:Pyroclasm','Page',1.0,1.2,1.1,1.0,1.2,0.9,1),('Paladin',4,4,NULL,5,'mercury',NULL,'Dragoon',2.0,1.5,1.6,1.6,1.3,1.3,3),('Paragon',NULL,NULL,NULL,11,'basic',NULL,'Water Seer',1.4,1.6,1.2,1.3,1.1,1.3,4),('Pierrot',0,0,0,0,'item','3:Baffle Card, 5:Juggle, 6:Avoid, 8:Sword Card, 10:Sabre Dance, 13:Flame Card, 15:Sleep Card, 17:Heat Juggle, 22:Fire Breath, 25:Thunder Card, 27:Death Card, 33:Bramble Card, 37:Fiery Juggle, 46:Frost Card','Pierrot',1.0,0.8,1.0,1.1,1.3,1.2,1),('Pilgrim (A)',NULL,0,5,NULL,'mars','1:Slash, 9:Plasma, 10:Wind Slash, 18:Bind, 26:Shine Plasma, 30:Sonic Slash, 33:Drain, 41:Psy Drain, 50:Spark Plasma','Pilgrim (A)',0.9,1.2,0.9,1.0,1.2,1.2,1),('Pilgrim (W)',NULL,0,NULL,5,'mars','1:Douse, 5:Cure Poison, 6:Prism, 12:Drench, 13:Restore, 20:Hail Prism, 30:Deluge, 34:Break, 52:Freeze Prism','Pilgrim (W)',0.9,1.2,0.9,1.0,1.2,1.2,1),('Privateer',NULL,NULL,NULL,7,'lostage','6:Avoid','Mariner',1.3,1.0,1.1,1.1,1.0,1.2,2),('Protector',7,NULL,NULL,7,'mercury',NULL,'Swordsman (E)',1.9,1.4,1.5,1.5,1.4,1.2,5),('Punchinello',2,2,2,2,'item','29:Backstab ','Pierrot',1.6,1.1,1.3,1.3,1.5,1.2,3),('Pure Mage',4,NULL,5,5,'jupiter+mercury',NULL,'White Mage',1.7,1.9,1.4,1.4,1.6,1.3,2),('Radiant',NULL,7,NULL,7,'mercury',NULL,'Swordsman (F)',1.9,1.4,1.5,1.5,1.4,1.2,5),('Ranger',NULL,3,3,3,'mars','1:Slash, 2:Douse, 6:Ward, 8:Volcano, 10:Wind Slash, 12:Drench, 18:Bind, 22:Eruption, 24:Resist, 30:Sonic Slash, 30:Deluge, 33:Drain, 34:Break, 41:Psy Drain, 48:Pyroclasm','Ranger',1.3,1.6,1.2,1.2,1.6,1.2,1),('Ronin',5,5,4,NULL,'venus+mars','[Dragon Cloud:Epicenter], [Demon Night:Thorny Grave], [Helm Splitter:Skull Splitter]','Samurai',2.1,1.4,1.6,1.5,1.5,0.9,2),('Ruffian',2,2,NULL,NULL,'venus+mars',NULL,'Brute',1.2,0.8,1.3,1.0,1.2,0.7,2),('Sage',NULL,NULL,6,6,'jupiter+mercury',NULL,'Hermit',1.5,1.8,1.2,1.3,1.7,1.2,5),('Samurai',4,4,3,NULL,'venus+mars','3:Guardian, 5:Demon Spear, 6:Rockfall, 8:Lava Shower, 10:Magic Shell, 12:Dragon Cloud, 15:Protector, 18:Demon Night, 21:Angel Spear, 24:Rockslide, 24:Molten Bath, 27:Magic Shield, 33:Helm Splitter, 40:Quick Strike, 48:Magma Storm, 54:Avalanche','Samurai',1.9,1.3,1.5,1.4,1.4,0.9,1),('Savage',4,4,NULL,NULL,'venus+mars','7:Spire, 9:Impair, 19:Revive, 20:Clay Spire, 23:Debilitate, 42:Stone Spire','Brute',1.4,0.9,1.4,1.1,1.3,0.7,3),('Savant',NULL,NULL,5,5,'jupiter+mercury',NULL,'Hermit',1.3,1.7,1.1,1.2,1.6,1.2,4),('Scholar',NULL,NULL,4,4,'jupiter+mercury','12:Wish, 24:Wish Well, 46:Pure Wish','Hermit',1.1,1.6,1.0,1.1,1.5,1.2,3),('Scribe',NULL,NULL,NULL,7,'basic',NULL,'Water Seer',1.0,1.4,1.0,1.1,0.9,1.3,2),('Seer (A)',0,NULL,5,NULL,'venus','1:Cure, 2:Bolt, 3:Growth, 6:Flash Bolt, 10:Cure Well, 12:Mad Growth, 18:Bind, 22:Blue Bolt, 26:Potent Cure, 29:Wild Growth, 31:Drain, 39:Psy Drain','Seer (A)',0.9,1.3,0.9,0.9,1.1,1.0,1),('Seer (W)',0,NULL,NULL,5,'venus','1:Cure, 2:Froth, 3:Growth, 5:Cure Poison, 10:Cure Well, 12:Mad Growth, 13:Restore, 14:Froth Sphere, 26:Potent Cure, 29:Wild Growth, 30:Break, 40:Froth Spiral','Seer (W)',0.9,1.3,0.9,0.9,1.1,1.0,1),('Shaman (A)',4,NULL,5,NULL,'venus','7:Ward, 19:Revive, 23:Resist','Seer (A)',1.2,1.5,1.1,1.1,1.3,1.0,3),('Shaman (W)',4,NULL,NULL,5,'venus','8:Wish, 19:Revive, 22:Wish Well, 46:Pure Wish','Seer (W)',1.2,1.5,1.1,1.1,1.3,1.0,3),('Slayer',13,NULL,NULL,NULL,'basic',NULL,'Squire',1.9,1.2,1.5,1.4,1.5,1.0,5),('Soldier',NULL,7,NULL,NULL,'basic',NULL,'Guard',1.3,0.9,1.1,1.2,0.8,1.0,2),('Sorcerer',NULL,NULL,13,NULL,'basic',NULL,'Wind Seer',1.5,1.8,1.2,1.3,1.7,1.1,5),('Squire',5,NULL,NULL,NULL,'basic','1:Cure, 2:Quake, 4:Earthquake, 6:Spire, 10:Cure Well, 13:Ragnarok, 14:Quake Sphere, 20:Clay Spire, 26:Potent Cure, 42:Stone Spire','Squire',1.1,0.8,1.1,1.0,1.1,1.0,1),('Swordsman (E)',5,NULL,NULL,0,'mercury','4:Thorn, 5:Cure Poison, 11:Cutting Edge, 13:Restore, 14:Briar, 19:Revive, 30:Break, 36:Nettle','Swordsman (E)',1.0,0.9,1.1,1.1,0.9,1.2,1),('Swordsman (F)',NULL,5,NULL,0,'mercury','2:Blast, 3:Guard, 5:Cure Poison, 10:Mad Blast, 11:Cutting Edge, 13:Restore, 15:Protect, 28:Fiery Blast, 30:Break','Swordsman (F)',1.0,0.9,1.1,1.1,0.9,1.2,1),('Tamer',0,0,0,0,'item','1:Wild Wolf, 5:Cure Poison, 6:Impact, 10:Whiplash, 10:Salamander, 13:Restore, 20:Emu, 22:High Impact, 45:Roc','Tamer',1.0,0.7,1.1,1.2,0.9,0.8,1),('Templar',4,4,NULL,4,'mercury','[Cutting Edge:Plume Edge]','Dragoon',1.8,1.4,1.5,1.5,1.2,1.3,2),('Trainer',1,1,1,1,'item','[Wild Wolf:Orc], [Salamander:Cerberus], [Emu:Harpy], [Roc:Wyvern], 7:Pixie, 32:Grand Golem','Tamer',1.3,0.9,1.2,1.3,1.0,0.8,2),('Wanderer (A)',NULL,2,5,NULL,'mars',NULL,'Pilgrim (A)',1.1,1.3,1.0,1.1,1.3,1.2,2),('Wanderer (W)',NULL,2,NULL,5,'mars',NULL,'Pilgrim (W)',1.1,1.3,1.0,1.1,1.3,1.2,2),('War Adept (E)',7,NULL,7,NULL,'jupiter',NULL,'Apprentice',1.9,1.7,1.5,1.4,1.7,0.9,5),('War Adept (F)',NULL,7,7,NULL,'jupiter',NULL,'Page',1.9,1.7,1.5,1.4,1.7,0.9,5),('Warlock',NULL,5,4,4,'mars',NULL,'Ranger',1.7,1.8,1.4,1.4,1.8,1.2,3),('Warrior',NULL,9,NULL,NULL,'basic','3:Guard, 9:Impair, 15:Protect, 26:Debilitate','Guard',1.5,1.0,1.2,1.3,0.9,1.0,3),('Water Monk',NULL,6,NULL,6,'mars',NULL,'Pilgrim (W)',1.5,1.6,1.3,1.4,1.6,1.2,4),('Water Seer',NULL,NULL,NULL,5,'basic','1:Ply, 2:Frost, 4:Ice, 5:Cure Poison, 9:Tundra, 13:Restore, 16:Ply Well, 17:Ice Horn, 24:Glacier, 30:Break, 34:Pure Ply, 42:Ice Missile','Water Seer',0.9,1.3,0.9,1.0,0.8,1.3,1),('White Mage',3,NULL,4,4,'jupiter+mercury','1:Cure Poison, 6:Prism, 8:Plasma, 9:Ward, 11:Dull, 12:Wish, 13:Restore, 17:Revive, 22:Hail Prism, 24:Wish Well, 26:Shine Plasma, 31:Resist, 37:Blunt, 46:Spark Plasma, 46:Pure Wish, 52:Freeze Prism','White Mage',1.5,1.8,1.3,1.3,1.5,1.3,1),('Wind Seer',NULL,NULL,5,NULL,'basic','1:Whirlwind, 4:Ray, 8:Plasma, 12:Sleep, 14:Storm Ray, 17:Bind, 18:Tornado, 26:Shine Plasma, 36:Destruct Ray, 44:Tempest, 50:Spark Plasma','Wind Seer',0.8,1.4,0.8,0.9,1.3,1.1,1),('Witch',NULL,7,NULL,NULL,'lostage',NULL,'Flame User',1.1,1.3,1.1,1.1,1.3,0.9,2),('Wizard',NULL,NULL,7,7,'jupiter+mercury',NULL,'Hermit',1.7,1.9,1.3,1.4,1.8,1.2,6);
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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster` (
  `name` varchar(30) DEFAULT NULL,
  `game` tinyint(1) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `hpregen` int(11) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `ppregen` int(11) DEFAULT NULL,
  `ATT` int(11) DEFAULT NULL,
  `DEF` int(11) DEFAULT NULL,
  `AGI` int(11) DEFAULT NULL,
  `LCK` int(11) DEFAULT NULL,
  `turns` int(11) DEFAULT NULL,
  `venuspower` int(11) DEFAULT NULL,
  `mercurypower` int(11) DEFAULT NULL,
  `marspower` int(11) DEFAULT NULL,
  `jupiterpower` int(11) DEFAULT NULL,
  `venusresist` int(11) DEFAULT NULL,
  `mercuryresist` int(11) DEFAULT NULL,
  `marsresist` int(11) DEFAULT NULL,
  `jupiterresist` int(11) DEFAULT NULL,
  `abilities` varchar(300) DEFAULT NULL,
  `reward` varchar(100) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
INSERT INTO `monster` VALUES ('Ruffian',2,29,0,0,0,24,6,11,3,1,100,100,100,100,100,100,100,100,'Attack','5 EXP , 5 Coins , Herb (ICC 1)','(0) (1)'),('Punch Ant',2,26,0,0,0,26,8,6,2,1,95,85,90,85,48,48,25,48,'Attack','5 EXP , 6 Coins , Smoke Bomb (ICC 6)','(2) (3) (4)'),('Giant Bat',2,32,0,0,0,30,6,22,1,1,95,95,95,110,127,72,48,7,'Attack, Sonic Wave','6 EXP , 6 Coins , Herb (ICC 5)','(3) (4) (5)'),('Wild Wolf',2,45,0,0,0,34,8,13,4,1,100,80,70,80,48,48,25,72,'Attack, Fatal Fang','7 EXP , 7 Coins , Herb (ICC 5)','(3) (4) (5) (7)'),('Mimic #1',2,207,0,12,0,47,12,23,15,1,95,100,75,105,100,127,25,152,'Attack, Slash, Debilitate, Sleep, Psy Drain','64 EXP , 46 Coins , Game Ticket (ICC 1)','(4)'),('Angle Worm',2,37,0,0,0,40,9,14,1,1,95,85,90,85,48,48,25,48,'Attack, Angle Spike','12 EXP , 10 Coins , Elixir (ICC 6)','(4) (5) (6) (7)'),('Amaze',2,39,0,0,0,36,10,18,2,1,100,95,95,95,48,100,72,7,'Attack, Rumble','5 EXP , 6 Coins , Oil Drop (ICC 5)','(4)'),('Mercury Djinni (Fog)',2,165,0,14,0,32,6,22,6,1,95,125,75,95,100,193,25,100,'Attack, Frost, Douse, Flee','28 EXP , 85 Coins , No Item','(4)'),('Chestbeater',2,155,0,0,0,44,11,20,24,1,100,80,70,80,48,48,25,72,'Attack, Claw Attack, Beat Dance','40 EXP , 28 Coins , Nut (ICC 1)','(4)'),('Ghost',2,56,0,6,0,38,12,12,2,1,100,95,95,95,48,100,72,7,'Attack, Impair, Rumble','9 EXP , 9 Coins , Oil Drop (ICC 5)','(5) (6)'),('Jupiter Djinni (Breath)',2,267,0,24,0,65,17,50,8,1,80,95,95,120,25,100,100,193,'Attack, Bolt, Ray, Slash, Whirlwind, Flee','109 EXP , 126 Coins , No Item','(5)'),('Skeleton',2,60,0,0,0,46,14,18,1,1,100,95,80,80,25,127,72,48,'Attack, Bone Charge','10 EXP , 11 Coins , Herb (ICC 5)','(6) (7)'),('Mini-Goblin',2,62,0,0,0,61,16,25,5,1,100,85,85,85,100,72,72,48,'Attack','25 EXP , 28 Coins , Sleep Bomb (ICC 5)','(6) (7) (8)'),('Rat Soldier',2,69,0,0,0,56,13,19,2,1,85,100,85,85,72,100,48,72,'Attack, Flee','17 EXP , 19 Coins , Smoke Bomb (ICC 5)','(6a) (7) (8)'),('Mars Djinni (Cannon)',2,151,0,14,0,34,6,20,6,1,95,75,125,95,100,25,193,100,'Attack, Flare, Blast, Flee','24 EXP , 81 Coins , No Item','(6)'),('Troll',2,101,10,0,0,73,16,14,1,1,100,80,70,80,48,48,25,72,'Attack, Brute Force','30 EXP , 34 Coins , Nut (ICC 6)','(7) (8) (9)'),('Will Head',2,54,0,0,0,42,10,10,1,1,100,95,80,80,25,127,72,48,'Attack, Mystic Flame','9 EXP , 10 Coins , Smoke Bomb (ICC 6)','(7)'),('Rat',2,49,0,0,0,52,27,15,1,1,100,80,70,80,48,48,25,72,'Attack, Fortify','14 EXP , 17 Coins , Herb (ICC 6)','(7)'),('Venus Djinni (Iron)',2,223,0,20,0,49,12,37,7,1,120,95,95,80,193,100,100,25,'Attack, Quake, Growth, Flee','73 EXP , 96 Coins , No Item','(7)'),('Drone Bee',2,63,0,0,0,68,19,36,2,1,90,90,95,105,100,48,48,7,'Attack, Numbing Sting','19 EXP , 28 Coins , Elixir (ICC 5)','(8)'),('Kobold',2,77,0,0,0,80,17,47,7,1,100,85,85,85,100,72,72,48,'Attack, Defend','40 EXP , 45 Coins , Oil Drop (ICC 5)','(9) (10) (13)'),('Dino',2,82,0,0,0,84,23,35,8,1,110,95,95,90,152,100,100,48,'Attack, Power Bite','40 EXP , 39 Coins , Herb (ICC 5)','(9) (10) (13)'),('Momonga',2,53,0,0,0,66,16,51,4,1,95,95,95,110,127,72,48,7,'Attack, Quick Slash','29 EXP , 31 Coins , Weasel\'s Claw (ICC 6)','(9) (10)'),('Mercury Djinni (Sour)',2,291,0,26,0,75,19,57,9,1,95,125,75,95,100,193,25,100,'Attack, Frost, Ice, Douse, Froth, Cool, Flee','130 EXP , 152 Coins , No Item','(9)'),('Emu',2,98,0,0,0,89,21,46,9,1,95,95,95,110,127,72,48,7,'Attack, Claw Slash','53 EXP , 51 Coins , Sacred Feather (ICC 6)','(10) (13)'),('Spider',2,69,0,0,0,75,22,22,1,1,95,85,90,85,48,48,25,48,'Attack, Spider Web','25 EXP , 32 Coins , Antidote (ICC 5)','(10)'),('Jupiter Djinni (Blitz)',2,870,0,81,0,276,84,239,27,1,80,95,95,120,25,100,100,193,'Attack, Blue Bolt, Destruct Ray, Spark Plasma, Sonic Slash, Tempest, Flee','1000 EXP , 660 Coins , No Item','(10)'),('King Scorpion',2,1064,0,0,0,101,32,39,40,1,95,85,90,85,72,72,48,100,'Attack, Defend, Poison Tail, Sand Breath, Desert Gasp, Twin Shear, Paralytail','440 EXP , 228 Coins , Vial (ICC 1)','(10)'),('Gnome',2,85,0,5,0,73,15,38,3,1,85,85,100,85,72,48,100,72,'Attack, Flare, Bolt, Guard, Flee','29 EXP , 40 Coins , Oil Drop (ICC 6)','(10a)'),('Briggs',2,984,0,0,0,129,29,76,42,1,100,100,100,100,100,100,100,100,'Attack, Defend, Echo Cut','333 EXP , 891 Coins , Vial (ICC 1)','(11)'),('Sea Fighter',2,197,0,0,0,119,28,61,26,1,100,100,100,100,100,100,100,100,'Attack, Echo Cut','89 EXP , 130 Coins , No Item','(11)'),('Ooze',2,72,0,0,0,72,19,30,1,1,95,125,75,95,48,127,7,48,'Attack, Sticky Goo, Speed Surge','26 EXP , 40 Coins , Herb (ICC 5)','(12)'),('Harpy',2,105,0,0,0,104,25,46,4,1,95,95,95,110,127,72,48,7,'Attack, Shriek','38 EXP , 53 Coins , Elixir (ICC 5)','(12) (13)'),('Ghoul',2,99,0,0,0,93,20,16,1,1,100,95,80,80,25,72,7,48,'Attack, Cannibal Fang','34 EXP , 42 Coins , Antidote (ICC 5)','(12) (13)'),('Mimic #2',2,431,0,36,0,126,33,77,16,1,95,100,75,105,100,127,25,152,'Attack, Tundra, Debilitate, Sleep, Psy Drain','272 EXP , 241 Coins , Lucky Medal (ICC 1)','(13)'),('Creeper',2,89,0,6,0,79,19,29,2,1,100,95,95,95,48,100,72,7,'Attack, Frost, Douse','32 EXP , 38 Coins , Weasel\'s Claw (ICC 6)','(13a)'),('Mummy',2,113,0,0,0,116,30,44,8,1,100,95,80,80,25,72,7,48,'Attack, Vanish Claw','72 EXP , 102 Coins , Elixir (ICC 6)','(13a)'),('Wolfkin Cub',2,115,0,0,0,136,32,79,5,1,85,100,85,85,72,100,48,72,'Attack, Ur Flash','82 EXP , 95 Coins , Nut (ICC 6)','(14) (15)'),('Wyvern Chick',2,124,0,0,0,128,36,76,6,1,95,95,95,110,127,72,48,7,'Attack, Fire Breath','83 EXP , 76 Coins , Weasel\'s Claw (ICC 6)','(14) (15)'),('Flash Ant',2,76,0,0,0,119,38,62,3,1,95,85,90,85,48,48,25,48,'Attack, Flash Punch','61 EXP , 71 Coins , Elixir (ICC 6)','(14) (15)'),('Wild Gorilla',2,130,0,0,0,122,32,76,5,1,100,80,70,80,48,48,25,72,'Attack, Ransack, Beat Dance','77 EXP , 80 Coins , Bramble Seed (ICC 6)','(14) (16)'),('Mars Djinni (Kindle)',2,403,0,37,0,114,29,90,11,1,95,75,125,95,100,25,193,100,'Attack, Flare Wall, Mad Blast, Blast, Fume, Beam, Flee','228 EXP , 273 Coins , No Item','(14)'),('Bone Fighter',2,122,0,0,0,131,35,52,3,1,100,95,80,80,25,127,72,48,'Attack, Undead Sword','51 EXP , 63 Coins , Sleep Bomb (ICC 6)','(15) (17) (18)'),('Death Head',2,128,0,15,0,130,31,47,3,1,100,95,80,80,25,127,72,48,'Attack, Slash, Impair','55 EXP , 73 Coins , Nut (ICC 5)','(15) (17) (18)'),('Mad Mole',2,96,0,0,0,119,22,36,1,1,100,80,70,80,48,48,25,72,'Attack, Mad Spatter','39 EXP , 60 Coins , Bramble Seed (ICC 5)','(15)'),('Mercury Djinni (Chill)',2,414,0,37,0,124,31,96,12,1,95,125,75,95,100,193,25,100,'Attack, Tundra, Ice, Prism, Drench, Cool, Flee','234 EXP , 282 Coins , No Item','(15)'),('Pixie',2,75,0,30,0,135,31,112,27,1,95,95,95,110,175,100,72,25,'Attack, Wind Slash, Sleep, Bind','96 EXP , 127 Coins , Nut (ICC 4)','(16)'),('Assassin',2,129,0,0,0,150,35,84,13,1,100,85,85,85,127,100,100,72,'Attack, Poison Sting','97 EXP , 131 Coins , Antidote (ICC 5)','(16)'),('Dirge',2,91,0,0,0,122,32,60,2,1,95,95,95,110,127,72,48,7,'Attack, Flying Attack','47 EXP , 61 Coins , Nut (ICC 5)','(16)'),('Jupiter Djinni (Waft)',2,440,0,40,0,134,34,104,13,1,80,95,95,120,25,100,100,193,'Attack, Flash Bolt, Storm Ray, Plasma, Wind Slash, Whirlwind, Flee','255 EXP , 309 Coins , No Item','(16)'),('Doomsayer',2,107,0,30,0,148,31,77,21,1,100,85,85,85,127,100,100,72,'Attack, Clay Spire, Curse, Condemn','107 EXP , 173 Coins , Oil Drop (ICC 6)','(17) (18)'),('Salamander',2,212,0,18,0,158,49,50,6,1,95,75,125,95,100,25,193,100,'Attack, Fireball, Blast, Guard, Fire Breath','84 EXP , 190 Coins , Oil Drop (ICC 5)','(17) (18)'),('Spirit',2,116,0,11,0,114,30,48,6,1,100,95,95,95,48,100,72,7,'Attack, Ice, Douse','49 EXP , 67 Coins , Crystal Powder (ICC 6)','(17) (18)'),('Mimic #3',2,536,0,50,0,177,43,110,17,1,95,100,75,105,100,127,25,152,'Attack, Tornado, Debilitate, Sleep, Psy Drain','400 EXP , 380 Coins , Hard Nut (ICC 1)','(17)'),('Red Demon',2,228,0,10,0,173,43,90,26,1,100,85,85,85,127,100,100,72,'Attack, Mad Growth, Vital Moon','129 EXP , 154 Coins , Staff of Anubis (ICC 7)','(17a) (18)'),('Venus Djinni (Steel)',2,466,0,46,0,143,37,116,16,1,120,95,95,80,193,100,100,25,'Attack, Quake Sphere, Spire, Gaia, Mad Growth, Briar, Flee','279 EXP , 340 Coins , No Item','(17)'),('Venus Djinni (Mud)',2,500,0,44,0,153,41,122,15,1,120,95,95,80,193,100,100,25,'Attack, Quake Sphere, Spire, Gaia, Mad Growth, Briar, Flee','360 EXP , 358 Coins , No Item','(18)'),('Mad Plant #1',2,449,0,0,0,181,41,87,19,1,105,100,80,70,48,100,7,72,'Attack, Poisonous Bite','321 EXP , 347 Coins , Game Ticket (ICC 1)','(18)'),('Bandit',2,346,0,0,0,200,41,98,34,1,80,80,80,80,72,72,72,72,'Attack, Slice, Threaten','136 EXP , 183 Coins , No Item','(19)'),('Thief',2,212,0,0,0,196,38,87,26,1,80,80,80,80,72,72,72,72,'Attack, Threaten, Tremble, Stand Ready','115 EXP , 169 Coins , No Item','(19)'),('Aqua Jelly',2,225,0,5,0,161,33,78,7,1,95,125,75,95,48,127,7,48,'Attack, Douse, Poisonous Bite, Electric Bite','96 EXP , 99 Coins , Sleep Bomb (ICC 6)','(20)'),('Aqua Hydra',2,2776,0,70,0,173,38,63,44,1,95,115,85,95,100,175,25,100,'Attack, Drench, Triple Chomp, Raging Flood, Rising Venom, Slaver','963 EXP , 1612 Coins , Vial (ICC 1)','(20)'),('Seabird',2,133,0,0,0,166,31,110,9,1,95,95,95,110,127,72,48,7,'Attack, Wing Beat','106 EXP , 114 Coins , Sacred Feather (ICC 6)','(21)'),('Urchin Beast',2,89,0,0,0,163,54,101,6,1,95,85,90,85,72,72,48,100,'Attack, Beast Needle','93 EXP , 79 Coins , Antidote (ICC 5)','(21)'),('Fighter Bee',2,116,0,0,0,155,38,74,2,1,90,90,95,105,100,48,48,7,'Attack, Numbing Sting, Ally Search','67 EXP , 90 Coins , Elixir (ICC 6)','(21)'),('Calamar',2,104,0,0,0,130,34,46,1,1,95,125,75,95,48,127,7,48,'Attack, Electric Bite, Ally Search','59 EXP , 79 Coins , Elixir (ICC 5)','(21)'),('Merman',2,162,0,0,0,184,46,93,10,1,85,100,85,85,100,127,72,100,'Attack, Hydro Slash','134 EXP , 139 Coins , Crystal Powder (ICC 6)','(21)'),('Numb Ant',2,101,0,0,0,172,57,91,4,1,95,85,90,85,48,48,25,48,'Attack, Flash Punch, Formic Acid','111 EXP , 111 Coins , Bramble Seed (ICC 6)','(22)'),('Death Cap',2,117,0,0,0,159,19,90,5,1,105,100,80,70,48,100,7,72,'Attack, Sleep Star','48 EXP , 56 Coins , Sleep Bomb (ICC 6)','(22) (23)'),('Alec Goblin',2,147,0,0,0,190,48,91,7,1,100,85,85,85,100,72,72,48,'Attack','126 EXP , 146 Coins , Smoke Bomb (ICC 6)','(22)'),('Mad Vermin',2,131,0,0,0,164,22,67,2,1,100,80,70,80,48,48,25,72,'Attack, Onslaught','55 EXP , 80 Coins , Herb (ICC 6)','(22) (23) (27a)'),('Dire Wolf',2,155,0,0,0,186,44,101,6,1,100,80,70,80,48,48,25,72,'Attack, Ice Breath, Fatal Fang','118 EXP , 114 Coins , Weasel\'s Claw (ICC 6)','(22) (23)'),('Undead',2,165,0,0,0,180,27,58,1,1,100,95,80,80,25,72,7,48,'Attack, Decompose, Ally Search','74 EXP , 90 Coins , Antidote (ICC 5)','(22) (23)'),('Ravager',2,189,0,0,0,185,47,60,2,1,100,80,70,80,48,48,25,72,'Attack, Bear Claw','90 EXP , 95 Coins , Elixir (ICC 6)','(22)'),('Ghost Mage',2,161,0,19,0,168,43,86,9,1,100,95,95,95,48,100,72,7,'Attack, Spire, Whirlwind, Haunting','80 EXP , 110 Coins , Bramble Seed (ICC 5)','(22) (23)'),('Faery',2,105,0,30,0,182,46,150,27,1,95,95,95,110,175,100,72,25,'Attack, Wind Slash, Tornado, Sleep, Psy Drain','172 EXP , 175 Coins , Nut (ICC 3)','(23) (24) (29)'),('Cave Troll',2,212,20,0,0,199,45,44,3,1,100,80,70,80,48,48,25,72,'Attack, Brute Force','106 EXP , 134 Coins , Nut (ICC 5)','(23)'),('Mad Plant #2',2,518,0,0,0,227,56,104,19,1,105,100,80,70,48,100,7,72,'Attack, Poisonous Bite','507 EXP , 409 Coins , Lucky Medal (ICC 1)','(23)'),('Venus Djinni (Flower)',2,590,0,53,0,182,51,149,18,1,120,95,95,80,193,100,100,25,'Attack, Quake Sphere, Clay Spire, Mother Gaia, Mad Growth, Briar, Flee','519 EXP , 432 Coins , No Item','(23)'),('Man o\' War',2,137,0,0,0,193,42,70,1,1,95,125,75,95,48,127,7,48,'Attack, Poison Ink','55 EXP , 87 Coins , Antidote (ICC 6)','(24) (29)'),('Roc',2,245,0,0,0,214,50,116,17,1,95,95,95,110,175,100,72,25,'Attack, Wing Flutter','238 EXP , 193 Coins , Vial (ICC 5)','(24) (29)'),('Virago',2,185,0,0,0,199,47,89,4,1,95,95,95,110,127,72,48,7,'Attack, Banshee Howl','87 EXP , 120 Coins , Elixir (ICC 5)','(24) (29)'),('Lizard Fighter',2,212,0,0,0,204,61,60,2,1,85,100,85,85,100,127,72,100,'Attack, Water Breath','89 EXP , 124 Coins , Nut (ICC 5)','(24a)'),('Sea Dragon',2,270,0,0,0,231,68,90,14,1,95,115,85,95,100,175,25,100,'Attack, Water Breath','257 EXP , 194 Coins , Unicorn Ring (ICC 7)','(24a)'),('Mimic #4',2,676,0,62,0,240,66,145,17,1,95,100,75,105,100,127,25,152,'Attack, Wild Growth, Debilitate, Sleep, Psy Drain','760 EXP , 531 Coins , Potion (ICC 1)','(24)'),('Mercury Djinni (Steam)',2,620,0,56,0,192,54,159,19,1,95,125,75,95,100,193,25,100,'Attack, Glacier, Ice Horn, Hail Prism, Froth Sphere, Supercool, Flee','571 EXP , 457 Coins , No Item','(24)'),('Needle Egg',2,119,0,0,0,234,94,147,7,1,95,85,90,85,72,72,48,100,'Attack, Poison Sting','214 EXP , 110 Coins , Antidote (ICC 5)','(25) (26)'),('Squirrelfang',2,130,0,0,0,229,59,168,6,1,95,95,95,110,127,72,48,7,'Attack, Quick Slash','176 EXP , 131 Coins , Elixir (ICC 6)','(25) (26) (30) (44)'),('Dinox',2,172,0,0,0,264,82,116,10,1,110,95,95,90,152,100,100,48,'Attack, Terrible Bite','239 EXP , 166 Coins , Nut (ICC 5)','(25) (26) (30) (44)'),('Jupiter Djinni (Wheeze)',2,740,0,68,0,234,70,197,23,1,80,95,95,120,25,100,100,193,'Attack, Blue Bolt, Destruct Ray, Shine Plasma, Sonic Slash, Tornado, Flee','781 EXP , 556 Coins , No Item','(25)'),('Minotaurus',2,268,0,0,0,276,84,123,18,1,110,95,95,90,152,100,100,48,'Attack, Power Crush','318 EXP , 207 Coins , Tartarus Axe (ICC 7)','(26) (30)'),('Living Armor',2,201,0,0,0,266,99,90,21,1,100,95,95,95,72,152,100,25,'Attack, Defend, Power Crush','320 EXP , 205 Coins , Water of Life (ICC 8)','(26) (30)'),('Harridan',2,231,0,29,0,261,66,118,8,1,95,95,95,110,175,100,72,25,'Attack, Wind Slash, Banshee Howl, Crazy Voice','150 EXP , 164 Coins , Nut (ICC 6)','(26) (30) (43) (44)'),('Stone Soldier',2,211,0,14,0,327,137,140,6,1,95,75,125,95,100,25,193,100,'Attack, Mad Blast, Dynamite, Headbutt','278 EXP , 164 Coins , Elixir (ICC ?)','(26a) (43) (44)'),('Magicore',2,321,0,34,0,253,74,109,11,1,95,85,115,95,100,25,175,100,'Attack, Nova, Sleep, Bind, Poison Tail','169 EXP , 208 Coins , Aura Gloves (ICC 8)','(26a) (44)'),('Mars Djinni (Reflux)',2,756,0,69,0,231,68,199,23,1,95,75,125,95,100,25,193,100,'Attack, Inferno, Eruption, Fiery Blast, Supernova, Serpent Fume, Flee','794 EXP , 563 Coins , No Item','(26)'),('Wight',2,192,0,0,0,205,55,54,2,1,100,95,80,80,25,72,7,48,'Attack, Rotten Blood, Decompose','92 EXP , 115 Coins , Elixir (ICC 5)','(27) (28)'),('Fire Worm',2,97,0,0,0,211,49,94,4,1,95,85,90,85,48,48,25,48,'Attack, Fire Breath, Angle Spike','158 EXP , 113 Coins , Oil Drop (ICC 6)','(27) (28)'),('Clay Gargoyle',2,304,0,21,0,319,150,100,7,1,100,100,100,95,48,100,100,127,'Attack, Mother Gaia, Guard, Ice Breath','307 EXP , 170 Coins , Potion (ICC 7)','(27) (28)'),('Golem',2,266,0,0,0,217,57,40,2,1,120,95,95,80,193,100,100,25,'Attack, Forcible Arm','105 EXP , 161 Coins , Vial (ICC 7)','(27) (28)'),('Gnome Mage',2,162,0,24,0,179,50,108,8,1,85,85,85,100,48,72,72,100,'Attack, Fireball, Flash Bolt, Delude','86 EXP , 126 Coins , Crystal Powder (ICC 5)','(27) (28)'),('Dread Hound',2,252,0,0,0,211,56,90,13,1,95,85,115,95,100,25,175,100,'Attack, Fire Breath, Wicked Howl, Double Fang','116 EXP , 176 Coins , Prophet\'s Hat (ICC 7)','(27a) (28)'),('Wood Walker',2,230,0,21,0,213,75,94,24,1,105,100,80,70,72,175,25,100,'Attack, Mad Growth, Briar','242 EXP , 201 Coins , Bramble Seed (ICC 5)','(27a) (30) (28)'),('Mimic #5',2,707,0,64,0,251,71,153,18,1,95,100,75,105,100,127,25,152,'Attack, Sonic Slash, Debilitate, Sleep, Curse, Psy Drain','840 EXP , 531 Coins , Game Ticket (ICC 1)','(27)'),('Mad Plant #3',2,566,0,0,0,254,65,114,20,1,105,100,80,70,48,100,7,72,'Attack, Poisonous Bite, Maneater','630 EXP , 451 Coins , Potion (ICC 1)','(27)'),('Serpent',2,3536,2430,160,0,249,76,135,46,3,110,95,95,90,152,100,100,48,'Attack, Quake Sphere, Briar, Cure Well, Black Ice, Toxic Breath, Mighty Press','1995 EXP , 2898 Coins , No Item','(27)'),('Gressil',2,175,0,30,0,243,70,145,30,1,100,85,85,85,127,100,100,72,'Attack, Nova, Curse','259 EXP , 208 Coins , Otafuku Mask (ICC 7)','(28)'),('Avimander',2,3792,0,87,0,281,89,94,41,2,95,85,115,95,100,25,175,100,'Attack, Fiery Blast, Guard, Impair, Fire Breath, Star Mine, Heat Stun','2176 EXP , 1330 Coins , Potion (ICC 1)','(31)'),('Poseidon',2,4905,0,162,0,302,100,185,47,2,95,115,85,95,100,175,25,100,'Attack, Ice Missile, Deluge, Ply Well, Typhoon Blow, Ocean Fist, Watery Grave, Counter-rush','2930 EXP , 3762 Coins , Psy Crystal (ICC 1)','(32)'),('Hydra',2,276,0,0,0,288,82,102,12,1,95,115,85,95,100,175,25,100,'Attack, Triple Chomp, Slaver','408 EXP , 317 Coins , Antidote (ICC 5)','(33) (40)'),('Gillman',2,234,0,0,0,291,89,142,11,1,85,100,85,85,100,127,72,100,'Attack, Hydro Slash','330 EXP , 210 Coins , Crystal Powder (ICC 6)','(33)'),('Seafowl',2,191,0,0,0,262,61,168,10,1,95,95,95,110,127,72,48,7,'Attack, Wing Beat','261 EXP , 172 Coins , Sacred Feather (ICC 6)','(33)'),('Vile Dirge',2,173,0,0,0,228,56,120,2,1,95,95,95,110,127,72,48,7,'Attack, Wing Beat, Flying Attack','75 EXP , 98 Coins , Weasel\'s Claw (ICC 5)','(33)'),('Spiral Shell',2,155,0,0,0,268,92,117,9,1,95,85,90,85,72,72,48,100,'Attack, Poison Gel','236 EXP , 129 Coins , Elixir (ICC 6)','(33) (40)'),('Turtle Dragon',2,340,0,0,0,305,100,117,15,1,95,115,85,95,100,175,25,100,'Attack, Aqua Breath','424 EXP , 251 Coins , Blessed Mace (ICC 8)','(33) (40) (43)'),('Wolfkin',2,213,0,0,0,309,89,174,9,1,85,100,85,85,72,100,48,72,'Attack, Shriek, Ur Flash','337 EXP , 219 Coins , Weasel\'s Claw (ICC 5)','(34) (35) (37)'),('Wargold',2,202,0,0,0,303,78,181,9,1,100,85,85,85,100,72,72,48,'Attack, Defend, Doublestep','321 EXP , 226 Coins , Oil Drop (ICC 5)','(34) (35) (37)'),('Slayer',2,220,0,0,0,300,90,158,14,1,100,85,85,85,127,100,100,72,'Attack, Poison Sting, Kill Sting','344 EXP , 254 Coins , Sleep Bomb (ICC 6)','(34) (35)'),('Pteranodon',2,242,0,0,0,291,100,166,8,1,95,95,95,110,127,72,48,7,'Attack, Ice Breath, Banshee Howl','341 EXP , 174 Coins , Nut (ICC 5)','(34) (35) (37)'),('Talon Runner',2,228,0,0,0,303,88,159,11,1,95,95,95,110,127,72,48,7,'Attack, Mega Slash','367 EXP , 215 Coins , Bramble Seed (ICC 6)','(34) (35)'),('Mars Djinni (Core)',2,840,0,79,0,264,80,226,26,1,95,75,125,95,100,25,193,100,'Attack, Inferno, Pyroclasm, Supernova, Serpent Fume, Searing Beam, Flee','946 EXP , 642 Coins , No Item','(34)'),('Venus Djinni (Petra)',2,830,0,77,0,260,79,227,26,1,120,95,95,80,193,100,100,25,'Attack, Quake Sphere, Stone Spire, Mother Gaia, Wild Growth, Briar, Flee','937 EXP , 631 Coins , No Item','(34)'),('Wild Gryphon',2,297,0,33,0,367,111,215,18,1,90,95,95,110,152,110,72,48,'Attack, Bind, Wing Stroke, Twin Beaks','487 EXP , 320 Coins , Feathered Robe (ICC 8)','(35)'),('Mercury Djinni (Eddy)',2,860,0,80,0,270,83,237,27,1,95,125,75,95,100,193,25,100,'Attack, Ice Missile, Freeze Prism, Deluge, Froth Spiral, Megacool, Flee','989 EXP , 656 Coins , No Item','(35)'),('Navampa',2,735,0,0,0,368,100,156,17,1,80,80,80,80,90,90,90,90,'Attack, Defend','398 EXP , 267 Coins , No Item','(35)'),('Azart',2,365,0,0,0,328,66,134,10,1,80,80,80,80,90,90,90,90,'Attack, Defend','355 EXP , 232 Coins , No Item','(35)'),('Satrage',2,485,0,0,0,342,74,145,13,1,80,80,80,80,90,90,90,90,'Attack, Defend','378 EXP , 249 Coins , No Item','(35)'),('Moapa',2,3042,0,0,0,354,120,181,40,1,100,100,100,100,100,100,100,100,'Attack, Bosca Hit','1670 EXP , 2460 Coins , No Item','(36)'),('Knight',2,1954,0,0,0,321,106,143,36,1,100,100,100,100,100,100,100,100,'Attack, Strong Hit','835 EXP , 205 Coins , No Item','(36)'),('Nightmare',2,258,0,28,0,287,89,138,13,1,85,85,85,100,72,100,100,127,'Attack, Fireball, Shine Plasma, Bind, Heartrender','241 EXP , 198 Coins , Healing Ring (ICC 7)','(37)'),('Mole Mage',2,199,0,14,0,265,47,74,4,1,100,80,70,80,48,48,25,72,'Attack, Mad Growth, Mad Spatter, Worms','191 EXP , 132 Coins , Antidote (ICC 6)','(37)'),('Mad Plant #4',2,730,0,0,0,358,103,174,21,1,105,100,80,70,48,100,7,72,'Attack, Poisonous Bite, Electric Bite, Maneater','1121 EXP , 594 Coins , Lucky Pepper (ICC 1)','(37)'),('Jupiter Djinni (Gasp)',2,191,0,22,0,31,7,25,7,1,80,95,95,120,25,100,100,193,'Attack, Flash Bolt, Ray, Plasma, Wind Slash, Whirlwind, Flee','64 EXP , 69 Coins , No Item','(37)'),('Wyvern',2,340,0,0,0,339,108,149,21,1,95,95,95,110,175,100,72,25,'Attack, Fire Breath','469 EXP , 284 Coins , Aeolian Cassock (ICC 7)','(38)'),('Foul Mummy',2,238,0,0,0,320,100,118,10,1,100,95,80,80,25,72,7,48,'Attack, Crusher Grip','376 EXP , 297 Coins , Potion (ICC 7)','(38)'),('Devil Scorpion',2,181,0,0,0,308,121,126,6,1,95,85,90,85,72,72,48,100,'Attack, Poison Tail, Sand Breath, Twin Shear','284 EXP , 180 Coins , Antidote (ICC 4)','(38)'),('Macetail',2,284,0,28,0,327,105,110,9,1,95,85,115,95,100,25,175,100,'Attack, Guard, Heat Stun','426 EXP , 248 Coins , Vial (ICC 7)','(38)'),('Ghost Army',2,250,0,18,0,342,136,133,25,1,100,95,95,95,72,152,100,25,'Attack, Sonic Slash, Pike Assault','454 EXP , 254 Coins , Mist Potion (ICC 7)','(38)'),('Blue Dragon',2,408,0,0,0,349,121,133,23,1,95,115,85,95,100,175,25,100,'Attack, Ice Breath','490 EXP , 297 Coins , Rising Mace (ICC 7)','(38)'),('Mad Plant #5',2,726,0,0,0,352,99,152,20,1,105,100,80,70,48,100,7,72,'Attack, Poisonous Bite, Maneater','1065 EXP , 594 Coins , Mint (ICC 1)','(38)'),('Mimic #6',2,907,0,78,0,349,108,204,18,1,95,100,75,105,100,127,25,152,'Attack, Ice Missile, Debilitate, Sleep, Curse, Condemn, Psy Drain','1420 EXP , 700 Coins , Psy Crystal (ICC 1)','(38)'),('Jupiter Djinni (Whorl)',2,852,0,78,0,273,84,233,27,1,80,95,95,120,25,100,100,193,'Attack, Blue Bolt, Destruct Ray, Spark Plasma, Sonic Slash, Tempest, Flee','965 EXP , 643 Coins , No Item','(38)'),('Karst',2,3186,0,320,0,354,107,235,50,1,100,95,105,100,127,72,175,100,'Attack, Fiery Blast, Supernova, Healing Aura, Break, Death Scythe, Djinnfest, Heat Kiss','2813 EXP , 5280 Coins , Dark Matter (ICC 1)','(38)'),('Agatio',2,4248,0,280,0,377,114,178,46,1,100,90,110,100,100,72,175,127,'Attack, Eruption, Debilitate, Rolling Flame, Rising Dragon, Meteor Blow, Cage, Stun Muscle','3000 EXP , 3740 Coins , No Item','(38)'),('Karst (vs All)',2,3186,0,320,0,354,107,235,50,1,100,95,105,100,127,72,175,100,'Attack, Fiery Blast, Supernova, Healing Aura, Break, Death Scythe, Djinnfest, Heat Kiss','2813 EXP , 5280 Coins , Dark Matter (ICC 1)','(38)'),('Agatio (vs All)',2,4248,0,280,0,377,114,178,46,1,100,90,110,100,100,72,175,127,'Attack, Eruption, Debilitate, Rolling Flame, Rising Dragon, Meteor Blow, Cage, Stun Muscle','3000 EXP , 3740 Coins , No Item','(38)'),('Karst (vs 2/3)',2,3186,0,320,0,354,107,235,50,1,100,95,105,100,127,72,175,100,'Attack, Fiery Blast, Supernova, Healing Aura, Break, Death Scythe, Djinnfest, Heat Kiss','2813 EXP , 5280 Coins , Dark Matter (ICC 1)','(38)'),('Agatio (vs 2/3)',2,4248,0,280,0,377,114,178,46,1,100,90,110,100,100,72,175,127,'Attack, Eruption, Debilitate, Rolling Flame, Rising Dragon, Meteor Blow, Cage, Stun Muscle','3000 EXP , 3740 Coins , No Item','(38)'),('Raging Rock',2,1350,0,48,0,294,90,121,18,1,95,85,115,95,100,25,175,100,'Attack, Flare Storm, Guard, Impair, Bind, Fire Breath, Rabid Fang, Mad Dash','465 EXP , 800 Coins , Potion (ICC 1)','(39)'),('Lich',2,187,0,30,0,305,81,146,22,1,100,85,85,85,127,100,100,72,'Attack, Nettle, Haunt, Curse, Condemn','401 EXP , 330 Coins , Psy Crystal (ICC 8)','(39)'),('Little Death',2,222,0,40,0,335,108,191,30,1,100,85,85,85,127,100,100,72,'Attack, Supernova, Curse, Condemn','420 EXP , 273 Coins , Hiotoko Mask (ICC 7)','(39)'),('Phoenix',2,281,0,80,0,344,112,243,31,2,95,75,125,95,100,25,193,100,'Attack, Inferno, Fiery Blast, Supernova, Flee, Regen Dance, Fire Dance','3750 EXP , 286 Coins , Water of Life (ICC 7)','(39) (40)'),('Wise Gryphon',2,179,0,6,0,241,105,104,5,1,95,75,125,95,48,7,127,48,'Attack, Blast, Mad Blast, Dynamite, Headbutt','98 EXP , 98 Coins , Elixir (ICC 6)','(39)'),('Lesser Demon',2,410,0,44,0,374,119,178,28,1,100,85,85,85,127,100,100,72,'Attack, Stone Spire, Vital Moon','511 EXP , 304 Coins , Rune Blade (ICC 8)','(38a)'),('Grand Chimera',2,313,0,48,0,336,109,168,27,1,95,85,115,95,100,25,175,100,'Attack, Eruption, Rabid Fang, Mad Dash, Recovery, Fire Breath','396 EXP , 300 Coins , Mist Potion (ICC 7)','(38a) (40)'),('Mimic #7',2,936,0,80,0,364,114,210,18,1,95,100,75,105,100,127,25,152,'Attack, Stone Spire, Debilitate, Sleep, Curse, Condemn, Psy Drain','1500 EXP , 726 Coins , Apple (ICC 1)','(39)'),('Mars Djinni (Fury)',2,950,0,89,0,304,95,267,30,1,95,75,125,95,100,25,193,100,'Attack, Pyroclasm, Dragon Fume, Searing Beam, Flee, Fiery Juggle, Dire Inferno','1145 EXP , 731 Coins , No Item','(39)'),('Raptor',2,366,0,0,0,354,96,180,19,1,95,95,95,110,175,100,72,25,'Attack, Wing Stroke, Twin Beaks','521 EXP , 295 Coins , No Item','(41)'),('Doodle Bug',2,202,0,22,0,329,109,173,12,1,95,85,115,95,100,25,175,100,'Attack, Wild Growth, Briar, Sonic Wave','417 EXP , 176 Coins , Smoke Bomb (ICC 6)','(41)'),('Minos Warrior',2,353,0,0,0,397,130,164,20,1,110,95,95,90,152,100,100,48,'Attack, Power Crush, Sack','525 EXP , 276 Coins , Clotho\'s Distaff (ICC 7)','(41)'),('Devil Frog',2,282,0,0,0,347,102,173,15,1,95,115,85,95,100,175,25,100,'Attack, Acid Breath, Rotten Blood, Thrash','417 EXP , 248 Coins , Elixir (ICC 6)','(41)'),('Fire Bird',2,303,0,98,0,376,124,259,32,2,95,75,125,95,100,25,193,100,'Attack, Inferno, Supernova, Searing Beam, Flee, Regen Dance, Fire Dance','5838 EXP , 304 Coins , Water of Life (ICC 7)','(41)'),('Aka Manah',2,479,0,70,0,405,129,187,32,1,85,100,85,85,100,127,72,100,'Attack, Freeze Prism, Curse, Human Hunt, Demon Eye','546 EXP , 318 Coins , Gloria Helm (ICC 8)','(41)'),('Mercury Djinni (Balm)',2,940,0,88,0,300,94,261,30,1,95,125,75,95,100,193,25,100,'Attack, Ice Missile, Freeze Prism, Deluge, Froth Spiral, Megacool, Flee','1112 EXP , 720 Coins , No Item','(41)'),('Mimic #8',2,1008,0,84,0,397,126,224,18,1,95,100,75,105,100,127,25,152,'Attack, Spark Plasma, Debilitate, Sleep, Curse, Condemn, Psy Drain','1668 EXP , 772 Coins , Cookie (ICC 1)','(41)'),('Flame Dragon (Small)',2,5348,0,320,4,389,134,215,55,1,95,85,115,95,100,25,175,100,'Attack, Fiery Blast, Supernova, Healing Aura, Break, Flame Breath, Djinnfest, Heat Kiss','2502 EXP , 1872 Coins , Psy Crystal (ICC 1)','(41)'),('Flame Dragon (Big)',2,5724,0,250,4,400,137,158,48,1,95,85,115,95,100,25,175,100,'Attack, Flame Breath, Rolling Flame, Rising Dragon, Meteor Blow, Cage, Stun Muscle','2502 EXP , 1521 Coins , No Item','(41)'),('Mars Djinni (Fugue)',2,243,0,22,0,79,20,42,7,1,80,95,95,120,25,100,100,193,'Attack, Flash Bolt, Ray, Plasma, Wind Slash, Whirlwind, Flee','88 EXP , 100 Coins , No Item','(41)'),('Minos Knight',2,454,0,0,0,517,170,175,21,1,110,95,95,90,152,100,100,48,'Attack, Power Crush, Sack','577 EXP , 294 Coins , Riot Gloves (ICC 8)','(42)'),('Sand Scorpion',2,259,0,12,0,457,185,147,7,1,95,85,90,85,72,72,48,100,'Attack, Curse, Desert Gasp, Twin Shear','366 EXP , 207 Coins , Star Dust (ICC 7)','(42)'),('Winged Lizard',2,337,0,0,0,452,160,202,9,1,95,95,95,110,127,72,48,7,'Attack, Fire Breath, Banshee Howl','467 EXP , 212 Coins , Dragon Skin (ICC 7)','(42)'),('Soul Army',2,356,0,54,0,508,207,156,26,1,100,95,95,95,72,152,100,25,'Attack, Destruct Ray, Tempest, Pike Assault','586 EXP , 299 Coins , Mythril Silver (ICC 8)','(42)'),('Fire Dragon',2,648,0,40,0,513,178,166,35,1,95,85,115,95,100,25,175,100,'Attack, Dragon Fume, Fire Breath','641 EXP , 354 Coins , Atropos\' Rod (ICC 8)','(42)'),('Venus Djinni (Crystal)',2,990,0,94,0,309,97,280,33,1,120,95,95,80,193,100,100,25,'Attack, Stone Spire, Grand Gaia, Wild Growth, Nettle, Thorny Grave, Flee','1211 EXP , 764 Coins , No Item','(42)'),('Valukar',2,12960,0,0,0,550,175,206,46,2,95,85,105,95,100,60,175,100,'Attack, Stun Jip, Djinn Stun, Crucible','8702 EXP , 4980 Coins , No Item','(42)'),('Earth Golem',2,298,0,0,0,299,114,70,5,1,120,95,95,80,193,100,100,25,'Attack, Truncheon Fist','218 EXP , 183 Coins , Giant Axe (ICC 8)','(43)'),('Cannibal Ghoul',2,249,0,0,0,274,82,80,4,1,100,95,80,80,25,72,7,48,'Attack, Cannibal Fang, Decompose, Ally Search','194 EXP , 160 Coins , Antidote (ICC 6)','(43)'),('Pyrodra',2,384,0,0,0,451,125,125,14,1,95,115,85,95,100,175,25,100,'Attack, Fire Breath, Triple Chomp, Rising Venom','568 EXP , 387 Coins , Salamander Tail (ICC 7)','(42a)'),('Great Seagull',2,266,0,0,0,411,93,206,12,1,95,95,95,110,127,72,48,7,'Attack, Wing Flutter','363 EXP , 211 Coins , Sylph Feather (ICC 7)','(42a)'),('Ocean Dragon',2,473,0,32,0,478,154,143,16,1,95,115,85,95,100,175,25,100,'Attack, Deluge, Chill Breath','590 EXP , 307 Coins , Triton\'s Ward (ICC 8)','(42a)'),('Sea Hedgehog',2,177,0,0,0,402,160,188,8,1,95,85,90,85,72,72,48,100,'Attack, Stun Sting','319 EXP , 145 Coins , Potion (ICC 6)','(42a)'),('Puppet Warrior',2,310,0,0,0,469,180,125,22,1,100,95,95,95,72,152,100,25,'Attack, Defend, Power Crush','555 EXP , 283 Coins , Psy Crystal (ICC 7)','(42a)'),('Gillman Lord',2,284,0,0,0,456,136,174,13,1,85,100,85,85,100,127,72,100,'Attack, Hydro Slash','459 EXP , 257 Coins , Tear Stone (ICC 7)','(42a)'),('Mimic #9',2,879,0,76,0,333,103,196,18,1,95,100,75,105,100,127,25,152,'Attack, Nettle, Debilitate, Sleep, Curse, Psy Drain','1336 EXP , 677 Coins , Power Bread (ICC 1)','(43)'),('Jupiter Djinni (Gale)',2,980,0,92,0,309,97,277,31,1,80,95,95,120,25,100,100,193,'Attack, Destruct Ray, Spark Plasma, Sonic Slash, Tempest, Flee','1197 EXP , 756 Coins , No Item','(43)'),('Star Magician',2,7486,0,560,0,460,139,268,52,2,90,105,85,95,130,180,72,150,'Attack, Megacool, Spark Plasma, Mystic Call, Mine Ball','7866 EXP , 5566 Coins , No Item','(43)'),('Refresh Ball',2,360,0,43,10,317,124,136,36,1,95,115,85,95,100,175,25,100,'Attack, Cure Poison, Restore, Earnest Ply','448 EXP , 278 Coins , No Item','(43)'),('Guardian Ball',2,520,0,43,0,317,127,292,33,1,110,95,95,90,152,100,100,48,'Defend, Guard Aura','439 EXP , 289 Coins , No Item','(43)'),('Thunder Ball',2,280,0,43,10,329,123,219,30,1,90,95,95,110,48,100,100,152,'Attack, Flash Bolt, Storm Ray, Shine Plasma','296 EXP , 243 Coins , No Item','(43)'),('Anger Ball',2,460,0,43,0,357,125,173,27,1,95,85,115,95,100,25,175,100,'Attack, Angry Mine','387 EXP , 30 Coins , No Item','(43)'),('Venus Djinni (Meld)',2,710,0,65,0,221,65,187,22,1,120,95,95,80,193,100,100,25,'Attack, Quake Sphere, Clay Spire, Mother Gaia, Wild Growth, Nettle, Flee','729 EXP , 531 Coins , No Item','(44)'),('Chimera Worm',2,251,0,22,0,452,133,152,5,1,95,85,90,85,48,48,25,48,'Attack, Briar, Angle Spike','359 EXP , 179 Coins , Water of Life (ICC 6)','(45)'),('Druj',2,672,0,66,0,549,197,205,33,1,85,100,85,85,100,127,72,100,'Attack, Megacool, Psy Drain, Human Hunt, Demon Eye','627 EXP , 348 Coins , Berserker Band (ICC 8)','(45)'),('Wonder Bird',2,424,0,102,0,510,190,285,34,3,95,75,125,95,100,25,193,100,'Attack, Pyroclasm, Supernova, Searing Beam, Flee, Regen Dance, Fire Dance','8622 EXP , 333 Coins , Dark Matter (ICC 8)','(45)'),('Cruel Dragon',2,636,0,65,0,539,216,162,26,1,95,115,85,95,100,175,25,100,'Attack, Freeze Prism, Ice Breath','661 EXP , 358 Coins , Tisiphone Edge (ICC 9)','(45)'),('Mercury Djinni (Serac)',2,920,0,86,0,290,90,257,29,1,95,125,75,95,100,193,25,100,'Attack, Ice Missile, Freeze Prism, Froth Spiral, Megacool, Flee','1093 EXP , 706 Coins , No Item','(45)'),('Sentinel',2,8736,200,780,30,608,216,171,54,3,100,130,120,110,72,193,127,152,'Attack, Searing Beam, Blue Bolt, Destruct Ray, Spark Plasma, Guard, Break, Armor Crush','10538 EXP , 6144 Coins , No Item','(45)'),('Bombander',2,548,0,110,0,541,224,141,10,1,95,85,115,95,100,25,175,100,'Attack, Fiery Blast, Supernova, Dragon Fume, Heat Stun','624 EXP , 325 Coins , Golem Core (ICC 7)','(46)'),('Sky Dragon',2,657,0,111,0,562,232,191,22,1,95,95,95,110,175,100,72,25,'Attack, Spark Plasma, Storm Breath, Poison Flow','686 EXP , 358 Coins , Orihalcon (ICC 8)','(46)'),('Mad Demon',2,745,0,96,4,567,234,213,29,1,100,85,85,85,127,100,100,72,'Attack, Grand Gaia, Condemn, Thorny Grave, Vital Moon','671 EXP , 363 Coins , Lachesis\' Rule (ICC 9)','(46)'),('Grave Wight',2,460,0,20,0,530,213,151,11,1,100,95,80,80,25,72,7,48,'Attack, Haunt, Crusher Grip','551 EXP , 379 Coins , Psy Crystal (ICC 6)','(46)'),('Dullahan',2,16000,200,300,100,676,269,241,59,3,110,100,100,100,150,190,130,110,'Attack, Bind, Haunt, Curse, Condemn, Break, Charon, Formina Sage, True Collide, Djinn Storm, Element Swap','15600 EXP , 6775 Coins , No Item','(46)');
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psynergy`
--

DROP TABLE IF EXISTS `psynergy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psynergy` (
  `name` varchar(20) DEFAULT NULL,
  `element` varchar(7) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `attackrange` tinyint(1) DEFAULT NULL,
  `effect` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psynergy`
--

LOCK TABLES `psynergy` WRITE;
/*!40000 ALTER TABLE `psynergy` DISABLE KEYS */;
INSERT INTO `psynergy` VALUES ('Aura','mars',50,'curative',7,0,NULL),('Healing Aura','mars',100,'curative',11,0,NULL),('Cool Aura','mars',200,'curative',16,0,NULL),('Cure','venus',70,'curative',3,1,NULL),('Cure Well','venus',150,'curative',7,1,NULL),('Potent Cure','venus',300,'curative',10,1,NULL),('Ply','mercury',100,'curative',4,1,NULL),('Ply Well','mercury',200,'curative',8,1,NULL),('Pure Ply','mercury',1000,'curative',12,1,NULL),('Wish','mercury',80,'curative',9,0,NULL),('Wish Well','mercury',160,'curative',13,0,NULL),('Pure Wish','mercury',400,'curative',20,0,NULL),('Cure Poison','mercury',NULL,'curative',2,1,'Remove \'Poison Deadly Poison\''),('Restore','mercury',NULL,'curative',3,1,'Remove temporary Statuses'),('Revive','venus',NULL,'curative',15,1,'Revive \'Downed\' to 100% Max HP'),('Quake','venus',12,'standard',4,2,NULL),('Earthquake','venus',35,'standard',7,3,NULL),('Quake Sphere','venus',65,'standard',15,4,NULL),('Growth','venus',25,'standard',4,1,'Puzzle Solving Psynergy'),('Mad Growth','venus',60,'standard',10,2,NULL),('Wild Growth','venus',110,'standard',19,3,NULL),('Thorn','venus',35,'standard',6,2,NULL),('Briar','venus',70,'standard',11,2,NULL),('Nettle','venus',140,'standard',23,3,NULL),('Spire','venus',40,'standard',5,1,NULL),('Clay Spire','venus',85,'standard',13,2,NULL),('Stone Spire','venus',160,'standard',22,2,NULL),('Gaia','venus',40,'standard',7,2,NULL),('Mother Gaia','venus',100,'standard',17,3,NULL),('Grand Gaia','venus',200,'standard',32,3,NULL),('Frost','mercury',20,'standard',5,2,'Puzzle Solving Psynergy'),('Tundra','mercury',45,'standard',8,2,NULL),('Glacier','mercury',100,'standard',15,2,NULL),('Douse','mercury',25,'standard',5,2,'Puzzle Solving Psynergy'),('Drench','mercury',60,'standard',10,2,NULL),('Deluge','mercury',120,'standard',20,3,NULL),('Froth','mercury',28,'standard',5,2,NULL),('Froth Sphere','mercury',65,'standard',12,3,NULL),('Froth Spiral','mercury',150,'standard',31,4,NULL),('Ice','mercury',35,'standard',5,1,NULL),('Ice Horn','mercury',70,'standard',11,2,NULL),('Ice Missile','mercury',160,'standard',23,2,NULL),('Cool','mercury',35,'standard',6,2,NULL),('Supercool','mercury',80,'standard',14,3,NULL),('Megacool','mercury',180,'standard',33,4,NULL),('Prism','mercury',40,'standard',7,2,NULL),('Hail Prism','mercury',90,'standard',16,3,NULL),('Freeze Prism','mercury',190,'standard',32,3,NULL),('Flare','mars',15,'standard',4,2,NULL),('Flare Wall','mars',40,'standard',7,2,NULL),('Flare Storm','mars',80,'standard',12,2,NULL),('Blast','mars',25,'standard',5,2,NULL),('Mad Blast','mars',50,'standard',9,2,NULL),('Fiery Blast','mars',110,'standard',19,3,NULL),('Fire','mars',35,'standard',6,2,NULL),('Fireball','mars',65,'standard',12,3,NULL),('Inferno','mars',140,'standard',23,3,NULL),('Blast(Nova)','mars',40,'standard',7,2,NULL),('Nova','mars',70,'standard',13,3,NULL),('Supernova','mars',150,'standard',31,4,NULL),('Beam','mars',45,'standard',7,2,NULL),('Cycle Beam','mars',80,'standard',14,3,NULL),('Searing Beam','mars',170,'standard',36,4,NULL),('Volcano','mars',45,'standard',6,1,NULL),('Eruption','mars',90,'standard',14,2,NULL),('Pyroclasm','mars',180,'standard',29,3,NULL),('Fume','mars',50,'standard',6,1,NULL),('Serpent Fume','mars',130,'standard',14,1,NULL),('Dragon Fume','mars',230,'standard',35,1,NULL),('Bolt','jupiter',20,'standard',4,1,NULL),('Flash Bolt','jupiter',40,'standard',7,2,NULL),('Blue Bolt','jupiter',90,'standard',14,2,NULL),('Slash','jupiter',25,'standard',4,1,NULL),('Wind Slash','jupiter',50,'standard',9,2,NULL),('Sonic Slash','jupiter',120,'standard',20,3,NULL),('Ray','jupiter',35,'standard',6,2,NULL),('Storm Ray','jupiter',65,'standard',10,2,NULL),('Destruct Ray','jupiter',150,'standard',21,2,NULL),('Whirlwind','jupiter',20,'standard',5,2,'Puzzle Solving Psynergy'),('Tornado','jupiter',80,'standard',14,3,NULL),('Tempest','jupiter',160,'standard',27,3,NULL),('Plasma','jupiter',45,'standard',8,2,NULL),('Shine Plasma','jupiter',100,'standard',18,3,NULL),('Spark Plasma','jupiter',180,'standard',37,4,NULL),('Impact','jupiter',NULL,'boost',7,1,'+25% Attack : 50% Max'),('High Impact','jupiter',NULL,'boost',12,0,'+12.5% Attack : 50% Max'),('Guard','mars',NULL,'boost',3,1,'+25% Defense : 50% Max'),('Protect','mars',NULL,'boost',5,0,'+12.5% Defense : 50% Max'),('Ward','jupiter',NULL,'boost',3,1,'+40 Resistance : 80 Max'),('Resist','jupiter',NULL,'boost',5,0,'+20 Resistance : 80 Max'),('Dull','jupiter',NULL,'reduction',6,1,'-25% Attack : 50% Max'),('Blunt','jupiter',NULL,'reduction',11,2,'-12.5% Attack : 50% Max'),('Impair','mars',NULL,'reduction',4,1,'-25% Defense : 50% Max'),('Debilitate','mars',NULL,'reduction',6,2,'-12.5% Defense : 50% Max'),('Weaken','jupiter',NULL,'reduction',4,1,'-40 Resistance : 80 Max'),('Enfeeble','jupiter',NULL,'reduction',6,2,'-20 Resistance : 80 Max'),('Drain','jupiter',50,'hp',3,1,'Heal 100% Damage as HP'),('Psy Drain','jupiter',15,'pp',0,1,'Drain 100% PP instead of HP'),('Haunt','venus',NULL,'status',5,2,'Inflict \'Haunt\''),('Curse','venus',NULL,'status',6,1,'Inflict \'Countdown\''),('Condemn','venus',NULL,'status',8,1,'Inflict \'Downed\''),('Bind','jupiter',NULL,'status',4,1,'Inflict \'Psynergy Seal\''),('Delude','jupiter',NULL,'status',4,2,'Inflict \'Delusion\''),('Sleep','jupiter',NULL,'status',5,2,'Inflict \'Sleep\''),('Break','mercury',NULL,'reduction',5,0,'Remove positive attributes'),('Ragnarok','venus',35,'additive',7,1,NULL),('Cutting Edge','mercury',32,'additive',5,1,NULL),('Diamond Dust','mercury',34,'additive',6,1,NULL),('Heat Wave','mars',33,'additive',6,1,NULL),('Planet Diver','mars',36,'additive',7,1,NULL),('Astral Blast','jupiter',32,'additive',5,1,NULL),('Oddysey','venus',95,'additive',18,1,NULL),('Plume Edge','mercury',80,'additive',15,1,NULL),('Diamond Berg','mercury',92,'additive',17,1,NULL),('Liquifier','mars',90,'additive',17,1,NULL),('Planetary','mars',98,'additive',19,1,NULL),('Thunder Mine','jupiter',85,'additive',16,1,NULL),('Punji','venus',45,'standard',7,2,NULL),('Punji Trap','venus',85,'standard',13,2,NULL),('Punji Strike','venus',150,'standard',24,3,NULL),('Fire Bomb','mars',35,'standard',5,2,NULL),('Cluster Bomb','mars',65,'standard',11,3,NULL),('Carpet Bomb','mars',130,'standard',29,4,NULL),('Gale','jupiter',18,'standard',3,2,'Puzzle Solving Psynergy'),('Typhoon','jupiter',75,'standard',12,3,NULL),('Hurricane','jupiter',150,'standard',25,3,NULL),('Thunderclap','jupiter',50,'standard',9,2,NULL),('Thunderbolt','jupiter',110,'standard',19,3,NULL),('Thunderstorm','jupiter',190,'standard',39,4,NULL),('Mist','jupiter',NULL,'status',4,2,'Inflict \'Delusion\''),('Shuriken','jupiter',80,'multiplicative',8,2,NULL),('Annihilation','venus',150,'multiplicative',18,1,'Inflict \'Downed\''),('Death Plunge','jupiter',40,'additive',14,1,'Inflict \'Stun\''),('Death Leap','jupiter',110,'additive',22,1,'Inflict \'Stun\''),('Lava Shower','mars',40,'standard',4,1,NULL),('Molten Bath','mars',70,'standard',12,2,NULL),('Magma Storm','mars',120,'standard',27,3,NULL),('Rockfall','venus',30,'standard',5,2,NULL),('Rockslide','venus',90,'standard',15,3,NULL),('Avalanche','venus',160,'standard',30,3,NULL),('Demon Spear','jupiter',NULL,'boost',7,1,'+25% Attack : 50% Max'),('Angel Spear','jupiter',NULL,'boost',12,0,'+12.5% Attack : 50% Max'),('Guardian','mars',NULL,'boost',3,1,'+25% Defense : 50% Max'),('Protector','mars',NULL,'boost',5,0,'+12.5% Defense : 50% Max'),('Magic Shell','jupiter',NULL,'boost',3,1,'+40 Resistance : 80 Max'),('Magic Shield','jupiter',NULL,'boost',5,0,'+20 Resistance : 80 Max'),('Quick Strike','jupiter',180,'multiplicative',12,1,NULL),('Dragon Cloud','mars',80,'standard',6,1,NULL),('Demon Night','venus',60,'standard',12,2,'Inflict \'Haunt\''),('Helm Splitter','venus',30,'additive',8,1,'Inflict \'Downed\''),('Epicenter','mars',210,'standard',33,1,NULL),('Thorny Grave','venus',170,'standard',24,2,'Inflict \'Haunt\''),('Skull Splitter','venus',30,'additive',8,1,'Inflict \'Downed\''),('Sabre Dance','venus',150,'multiplicative',7,1,NULL),('Backstab','jupiter',35,'additive',16,1,'Inflict \'Downed\''),('Fire Breath','mars',85,'diminishing',13,2,NULL),('Juggle','mars',40,'standard',7,2,NULL),('Heat Juggle','mars',75,'standard',13,3,NULL),('Fiery Juggle','mars',150,'standard',25,3,NULL),('Flame Card','mars',60,'standard',11,2,NULL),('Thunder Card','jupiter',100,'standard',17,2,NULL),('Bramble Card','venus',130,'standard',22,2,NULL),('Frost Card','mercury',175,'standard',28,2,NULL),('Baffle Card','jupiter',NULL,'status',4,2,'Inflict \'Delusion\''),('Sword Card','mars',NULL,'reduction',6,1,'-25% Attack : 50% Max'),('Sleep Card','jupiter',NULL,'status',5,2,'Inflict \'Sleep\''),('Death Card','venus',NULL,'status',8,1,'Inflict \'Downed\''),('Whiplash','jupiter',140,'multiplicative',6,1,NULL),('Wild Wolf',NULL,30,'additive',3,1,NULL),('Salamander','mars',45,'diminishing',7,2,NULL),('Emu','jupiter',75,'additive',10,1,NULL),('Roc',NULL,140,'additive',22,1,NULL),('Orc',NULL,35,'additive',3,1,NULL),('Pixie','mercury',115,'curative',5,1,NULL),('Cerberus','mars',50,'diminishing',7,2,NULL),('Harpy','jupiter',80,'additive',10,1,NULL),('Grand Golem','mars',120,'diminishing',17,3,NULL),('Wyvern','venus',150,'additive',22,1,NULL),('Dinox','venus',40,'additive',3,1,NULL),('Faery','mercury',120,'curative',5,1,NULL),('Chimera','mars',55,'diminishing',7,2,NULL),('Elder Wood','mercury',170,'curative',14,0,NULL),('Gryphon','jupiter',85,'additive',10,1,'Sometimes Hits for 2x Damage'),('Lich','venus',NULL,'curative',10,1,'Revive \'Downed\' to 100% Max HP'),('Blue Dragon','mercury',130,'diminishing',17,3,NULL),('Living Armor','venus',130,'additive',17,1,NULL),('Troll','venus',45,'additive',3,1,NULL),('Weird Nymph','mercury',125,'curative',5,1,NULL),('Macetail','mars',60,'diminishing',7,2,NULL),('Estre Wood','mercury',180,'curative',14,0,NULL),('Minotaur','venus',90,'additive',10,1,NULL),('Succubus','mercury',250,'curative',9,1,NULL),('Phoenix','mars',NULL,'curative',10,1,'Revive \'Downed\' to 100% Max HP'),('Fire Dragon','mars',140,'diminishing',17,3,NULL),('Manticore','mars',300,'curative',18,0,NULL),('Ghost Soldier','jupiter',170,'additive',22,1,'Pierce 50% Defense'),('Call Zombie','mercury',40,'additive',5,1,NULL),('Call Demon','venus',190,'multiplicative',13,1,'May do [Target\'s HP - 1] Dam instd.'),('Call Dullahan','jupiter',300,'multiplicative',21,1,NULL),('Raging Heat','mars',45,'standard',9,3,NULL),('Fiery Abyss','mars',90,'standard',18,3,NULL),('Dire Inferno','mars',200,'standard',32,4,NULL),('Poison Flow','jupiter',125,'standard',28,3,'Inflict \'Deadly Poison\''),('Fire Puppet','venus',NULL,'status',7,2,'Inflict \'Stun\'');
/*!40000 ALTER TABLE `psynergy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_elemental`
--

DROP TABLE IF EXISTS `stats_elemental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats_elemental` (
  `name` varchar(10) DEFAULT NULL,
  `element` varchar(7) DEFAULT NULL,
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

--
-- Table structure for table `summon`
--

DROP TABLE IF EXISTS `summon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `summon` (
  `name` varchar(20) DEFAULT NULL,
  `element` varchar(7) DEFAULT NULL,
  `base` int(11) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `mercury` tinyint(4) DEFAULT NULL,
  `venus` tinyint(4) DEFAULT NULL,
  `jupiter` tinyint(4) DEFAULT NULL,
  `mars` tinyint(4) DEFAULT NULL,
  `effect` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summon`
--

LOCK TABLES `summon` WRITE;
/*!40000 ALTER TABLE `summon` DISABLE KEYS */;
INSERT INTO `summon` VALUES ('Venus','venus',30,3,0,1,0,0,NULL),('Ramses','venus',60,6,0,2,0,0,NULL),('Cybele','venus',120,9,0,3,0,0,NULL),('Judgment','venus',240,12,0,4,0,0,NULL),('Zagan','venus',50,6,0,1,0,1,NULL),('Haures','venus',270,15,0,3,0,2,NULL),('Charon','venus',500,30,0,8,2,0,NULL),('Mercury','mercury',30,3,1,0,0,0,NULL),('Nereid','mercury',60,6,2,0,0,0,NULL),('Neptune','mercury',120,9,3,0,0,0,NULL),('Boreas','mercury',240,12,4,0,0,0,NULL),('Moloch','mercury',100,9,2,0,1,0,NULL),('Coatlicue','mercury',100,NULL,3,0,3,0,NULL),('Azul','mercury',330,21,4,3,0,0,NULL),('Mars','mars',30,3,0,0,0,1,NULL),('Kirin','mars',60,6,0,0,0,2,NULL),('Tiamat','mars',120,9,0,0,0,3,NULL),('Meteor','mars',240,12,0,0,0,4,NULL),('Megaera','mars',40,6,0,0,1,1,NULL),('Ulysses','mars',160,12,2,0,0,2,NULL),('Daedalus','mars',100,7,0,3,0,4,NULL),('<Missile>','mars',250,15,NULL,NULL,NULL,NULL,NULL),('Iris','mars',800,40,4,0,0,9,NULL),('Jupiter','jupiter',30,3,0,0,1,0,NULL),('Atlanta','jupiter',60,6,0,0,2,0,NULL),('Procne','jupiter',120,9,0,0,3,0,NULL),('Thor','jupiter',240,12,0,0,4,0,NULL),('Flora','jupiter',80,9,0,1,2,0,NULL),('Eclipse','jupiter',300,15,2,0,3,0,NULL),('Catastrophe','jupiter',400,24,0,0,5,3,NULL);
/*!40000 ALTER TABLE `summon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon`
--

DROP TABLE IF EXISTS `weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `game` tinyint(1) DEFAULT NULL,
  `buy` int(11) DEFAULT NULL,
  `sell` int(11) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `cursed` tinyint(1) DEFAULT NULL,
  `ATT` int(11) DEFAULT NULL,
  `unleash` varchar(20) DEFAULT NULL,
  `unleashrate` decimal(3,2) DEFAULT NULL,
  `unleasheffect` varchar(50) DEFAULT NULL,
  `useeffect` varchar(20) DEFAULT NULL,
  `buffs` varchar(20) DEFAULT NULL,
  `attacktype` varchar(20) DEFAULT NULL,
  `forgedby` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES (1,'Long Sword',1,200,150,'long blade',0,14,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(2,'Broad Sword',1,1000,750,'long blade',0,40,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(3,'Claymore',1,4000,3000,'long blade',0,70,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(4,'Great Sword',1,7000,5250,'long blade',0,90,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(5,'Shamshir',1,10000,7500,'long blade',0,99,'Acid Bath',0.35,NULL,NULL,NULL,'physical',NULL),(6,'Silver Blade',1,12000,9000,'long blade',0,108,'Aqua Sock',0.35,NULL,NULL,NULL,'physical',NULL),(7,'Fire Brand',1,23400,17550,'long blade',0,176,'Purgatory',0.35,NULL,NULL,NULL,'mars',NULL),(8,'Arctic Blade',1,2600,1950,'long blade',0,55,'Blizzard',0.35,NULL,NULL,NULL,'physical',NULL),(9,'Gaia Blade',1,17000,12750,'long blade',0,135,'Titan Sword',0.35,NULL,NULL,NULL,'physical',NULL),(10,'Sol Blade',1,31200,23400,'long blade',0,200,'Meggido',0.35,NULL,NULL,NULL,'physical',NULL),(11,'Muramasa',1,13600,10200,'long blade',1,126,'Demon Fire',0.35,NULL,NULL,NULL,'physical',NULL),(15,'Machete',1,30,22,'light blade',0,6,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(16,'Short Sword',1,120,90,'light blade',0,8,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(17,'Hunter\'s Sword',1,520,390,'light blade',0,28,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(18,'Battle Rapier',1,2900,2175,'light blade',0,58,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(19,'Master Rapier',1,6800,5100,'light blade',0,86,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(20,'Ninja Blade',1,8800,6600,'light blade',0,94,'Cyclone Attack',0.35,NULL,NULL,NULL,'physical',NULL),(21,'Swift Sword',1,9400,7050,'light blade',0,104,'Sonic Smash',0.35,NULL,NULL,NULL,'physical',NULL),(22,'Elven Rapier',1,2200,1650,'light blade',0,44,'Vorpal Slash',0.35,'+16dam',NULL,NULL,'jupiter',NULL),(23,'Assassin Blade',1,7800,5850,'light blade',0,90,'Mortal Danger',0.35,NULL,NULL,NULL,'physical',NULL),(24,'Mystery Blade',1,6400,4800,'light blade',0,84,'Life Nourish',0.35,NULL,NULL,NULL,'physical',NULL),(25,'Kikuichimonji',1,13400,10050,'light blade',0,128,'Asura',0.35,NULL,NULL,NULL,'physical',NULL),(26,'Masamune',1,16400,12300,'light blade',0,161,'Rising Dragon',0.40,NULL,NULL,NULL,'physical',NULL),(27,'Bandit\'s Sword',1,700,525,'light blade',0,12,'Rapid Smash',0.35,NULL,NULL,NULL,'physical',NULL),(31,'Battle Axe',1,280,210,'axe',0,24,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(32,'Broad Axe',1,1400,1050,'axe',0,50,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(33,'Great Axe',1,5200,3900,'axe',0,80,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(34,'Dragon Axe',1,10300,7725,'axe',0,100,'Heat Mirage',0.35,NULL,NULL,NULL,'physical',NULL),(35,'Giant Axe',1,14000,10500,'axe',0,114,'Meltdown',0.35,NULL,NULL,NULL,'physical',NULL),(36,'Vulcan Axe',1,4600,3450,'axe',0,76,'Barrage',0.35,NULL,NULL,NULL,'mars',NULL),(37,'Burning Axe',1,7500,5625,'axe',0,84,'Broil',0.35,NULL,NULL,NULL,'mars',NULL),(38,'Demon Axe',1,16000,12000,'axe',1,132,'Poison Cloud',0.35,NULL,NULL,NULL,'physical',NULL),(43,'Mace',1,80,60,'mace',0,6,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(44,'Heavy Mace',1,500,375,'mace',0,26,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(45,'Battle Mace',1,2600,1950,'mace',0,56,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(46,'War Mace',1,6200,4650,'mace',0,84,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(47,'Righteous Mace',1,8400,6300,'mace',0,112,'Blinding Smog',0.35,NULL,NULL,NULL,'physical',NULL),(48,'Grievous Mace',1,7000,5250,'mace',0,88,'Terra Strike',0.35,NULL,NULL,NULL,'physical',NULL),(49,'Blessed Mace',1,14500,10875,'mace',0,126,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(50,'Wicked Mace',1,13800,10350,'mace',1,130,'Poison Death',0.35,NULL,NULL,NULL,'physical',NULL),(55,'Wooden Stick',1,40,30,'staff',0,4,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(56,'Magic Rod',1,380,285,'staff',0,16,'Murk',0.35,NULL,NULL,NULL,'physical',NULL),(57,'Witch\'s Wand',1,860,645,'staff',0,32,'Stun Voltage',0.35,NULL,NULL,NULL,'physical',NULL),(58,'Blessed Ankh',1,1600,1200,'staff',0,46,'Psyphon Seal',0.35,NULL,NULL,NULL,'physical',NULL),(59,'Psynergy Rod',1,3800,2850,'staff',0,64,'Psy Leech',0.35,NULL,NULL,NULL,'physical',NULL),(60,'Frost Wand',1,5400,4050,'staff',0,76,'Frost Bite',0.35,NULL,NULL,NULL,'physical',NULL),(61,'Angelic Ankh',1,6400,4800,'staff',0,83,'Life Leech',0.35,NULL,NULL,NULL,'physical',NULL),(62,'Demonic Staff',1,10000,7500,'staff',1,92,'Bad Omen',0.35,NULL,NULL,NULL,'physical',NULL),(63,'Crystal Rod',1,13400,10050,'staff',0,106,'Drown',0.35,NULL,NULL,NULL,'physical',NULL),(64,'Zodiac Wand',1,11400,8550,'staff',0,102,'Shining Star',0.35,NULL,NULL,NULL,'physical',NULL),(65,'Shaman\'s Rod',1,NULL,NULL,'staff',0,10,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(272,'Huge Sword',2,14000,10500,'long blade',0,155,'Heavy Divide',0.35,NULL,NULL,NULL,'physical','Golem Core'),(273,'Mythril Blade',2,14600,10950,'long blade',0,160,'Lethe Albion',0.35,NULL,NULL,NULL,'physical','Mythril Silver'),(274,'Levatine',2,19700,14775,'long blade',0,173,'Radient Fire',0.35,NULL,NULL,NULL,'physical','Mythril Silver'),(275,'Darksword',2,24200,18150,'long blade',1,210,'Acheron\'s Grief',0.35,NULL,NULL,NULL,'physical','Dark Matter'),(276,'Excalibur',2,29200,21900,'long blade',0,180,'Legend',0.35,NULL,NULL,NULL,'physical','Orihalcon'),(277,'Robber\'s Blade',2,7600,5700,'long blade',0,101,'Shred',0.35,NULL,NULL,NULL,'physical',NULL),(278,'Soul Brand',2,11600,8700,'long blade',0,141,'Soul Shatter',0.35,NULL,NULL,NULL,'physical',NULL),(279,'Storm Brand',2,3900,2925,'long blade',0,60,'Hurricane',0.35,NULL,NULL,NULL,'physical',NULL),(280,'Hestia Blade',2,12900,9675,'long blade',0,145,'Crucible Fire',0.35,NULL,NULL,NULL,'physical',NULL),(281,'Lightning Sword',2,11400,8550,'long blade',0,134,'Flash Edge',0.35,NULL,NULL,NULL,'physical',NULL),(282,'Rune Blade',2,15000,11250,'long blade',0,162,'Void Beam',0.35,NULL,NULL,NULL,'physical',NULL),(283,'Cloud Brand',2,11800,8850,'long blade',0,130,'Raiden\'s Wrath',0.40,NULL,NULL,NULL,'physical',NULL),(285,'Sylph Rapier',2,10100,7575,'light blade',0,124,'Mad Zephyr',0.35,NULL,NULL,NULL,'jupiter','Sylph Feather'),(286,'Burning Sword',2,14600,10950,'light blade',0,157,'Blaze Rush',0.35,NULL,NULL,NULL,'mars','Salamander Tail'),(287,'Pirate\'s Sword',2,2000,1500,'light blade',0,34,'Dreamtide',0.35,NULL,NULL,NULL,'physical',NULL),(288,'Corsair\'s Edge',2,6300,4725,'light blade',0,90,'Lunar Slash',0.35,NULL,NULL,NULL,'physical',NULL),(289,'Pirate\'s Sabre',2,10600,7950,'light blade',0,136,'Scorpionfish',0.35,NULL,NULL,NULL,'physical',NULL),(290,'Hypnos\' Sword',2,2900,2175,'light blade',0,49,'Moon Air',0.35,NULL,NULL,NULL,'physical',NULL),(291,'Mist Sabre',2,8600,6450,'light blade',0,110,'Searing Fog',0.35,NULL,NULL,NULL,'physical',NULL),(292,'Phaeton\'s Blade',2,13600,10200,'light blade',0,151,'Light Surge',0.35,NULL,NULL,NULL,'physical',NULL),(293,'Tisiphone Edge',2,23000,17250,'light blade',0,178,'Vengeance',0.35,NULL,NULL,NULL,'physical',NULL),(295,'Apollo\'s Axe',2,15200,11400,'axe',0,158,'Flare Burst',0.35,NULL,NULL,NULL,'mars','Salamander Tail'),(296,'Gaia\'s Axe',2,16400,12300,'axe',0,163,'Mother Earth',0.35,NULL,NULL,NULL,'physical','Golem Core'),(297,'Stellar Axe',2,19700,14775,'axe',0,171,'Supernova',0.35,NULL,NULL,NULL,'physical','Orihalcon'),(298,'Captain\'s Axe',2,6800,5100,'axe',0,95,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(299,'Viking Axe',2,11000,8250,'axe',0,137,'Stun Bolt',0.35,NULL,NULL,NULL,'physical',NULL),(300,'Disk Axe',2,4700,3525,'axe',0,76,'Power Drive',0.35,NULL,NULL,NULL,'physical',NULL),(301,'Themis\' Axe',2,1900,1425,'axe',0,30,'Stone Justice',0.35,NULL,NULL,NULL,'physical',NULL),(302,'Mighty Axe',2,11900,8925,'axe',0,142,'Heat Shatter',0.35,NULL,NULL,NULL,'physical',NULL),(303,'Tartarus Axe',2,10800,8100,'axe',0,127,'Vein Tap',0.35,NULL,NULL,NULL,'physical',NULL),(305,'Comet Mace',2,8000,6000,'mace',0,105,'Ice Crush',0.35,NULL,NULL,NULL,'physical','Star Dust'),(306,'Tungsten Mace',2,14700,11025,'mace',0,159,'Hammersphere',0.35,NULL,NULL,NULL,'physical','Golem Core'),(307,'Demon Mace',2,9200,6900,'mace',0,115,'Evil Eye',0.35,NULL,NULL,NULL,'physical',NULL),(308,'Hagbone Mace',2,8400,6300,'mace',0,108,'Wyrd Curse',0.35,NULL,NULL,NULL,'physical',NULL),(309,'Blow Mace',2,2800,2100,'mace',0,45,'Boost Hack',0.35,NULL,NULL,NULL,'physical',NULL),(310,'Rising Mace',2,13900,10425,'mace',0,152,'High Vitals',0.35,NULL,NULL,NULL,'physical',NULL),(311,'Thanatos Mace',2,10400,7800,'mace',0,125,'Heartbreak',0.35,NULL,NULL,NULL,'physical',NULL),(313,'Cloud Wand',2,7000,5250,'staff',0,98,'Stun Cloud',0.35,NULL,NULL,NULL,'physical','Tear Stone'),(314,'Salamander Rod',2,14300,10725,'staff',0,156,'Fire Dance',0.35,NULL,NULL,NULL,'physical','Salamander Tail'),(315,'Nebula Wand',2,15200,11400,'staff',0,165,'Reverse Star',0.35,NULL,NULL,NULL,'physical','Orihalcon'),(316,'Dracomace',2,10700,8025,'staff',0,128,'Aging Gas',0.35,NULL,NULL,NULL,'physical',NULL),(317,'Glower Staff',2,10100,7575,'staff',0,126,'Flash Force',0.35,NULL,NULL,NULL,'physical',NULL),(318,'Goblin\'s Rod',2,9800,7350,'staff',0,134,'Sargasso',0.35,NULL,NULL,NULL,'physical',NULL),(319,'Meditation Rod',2,13400,10050,'staff',0,150,'Nirvana',0.35,NULL,NULL,NULL,'physical',NULL),(320,'Fireman\'s Rod',2,8200,6150,'staff',0,130,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(321,'Atropos\' Rod',2,18900,14175,'staff',0,169,'Life Shear',0.40,NULL,NULL,NULL,'physical',NULL),(322,'Lachesis\' Rule',2,21700,16275,'staff',0,177,'Apocalypse',0.40,NULL,NULL,NULL,'physical',NULL),(323,'Clotho\'s Distaff',2,17200,12900,'staff',0,168,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(324,'Staff of Anubis',2,5500,4125,'staff',0,83,'Sarcophagus',0.35,NULL,NULL,NULL,'physical',NULL),(417,'Rusty Sword',2,320,240,'rusty',0,9,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(418,'Rusty Sword',2,370,277,'rusty',0,10,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(419,'Rusty Sword',2,520,390,'rusty',0,13,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(420,'Rusty Sword',2,580,435,'rusty',0,14,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(421,'Rusty Axe',2,340,255,'rusty',0,10,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(422,'Rusty Axe',2,550,412,'rusty',0,14,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(423,'Rusty Mace',2,460,345,'rusty',0,12,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(424,'Rusty Mace',2,420,315,'rusty',0,11,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(425,'Rusty Staff',2,530,397,'rusty',0,13,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(426,'Rusty Staff',2,500,375,'rusty',0,12,NULL,NULL,NULL,NULL,NULL,'physical',NULL),(427,'Rusty Staff',2,480,360,'rusty',0,11,NULL,NULL,NULL,NULL,NULL,'physical',NULL);
/*!40000 ALTER TABLE `weapon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-11 19:05:50
