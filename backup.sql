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
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
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
  `type` varchar(15) DEFAULT NULL,
  `upgrades` varchar(250) DEFAULT NULL,
  `family` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('Acrobat',190,120,140,140,160,120,3,3,3,3,'item',NULL,'Pierrot'),('Admiral',190,130,140,140,130,120,NULL,NULL,NULL,13,'lostage',NULL,'Mariner'),('Angel',160,170,130,140,120,130,NULL,NULL,NULL,13,'basic',NULL,'Water Seer'),('Apprentice',100,120,110,100,120,90,5,NULL,0,NULL,'jupiter','1:Delude, 6:Gaia, 9:Weaken, 11:Astral Blast, 14:Sleep, 17:Haunt, 20:Curse, 24:Mother Gaia, 25:Enfeeble, 31:Drain, 39:Psy Drain, 54:Grand Gaia','Apprentice'),('Ascetic (A)',120,140,110,120,140,120,NULL,4,5,NULL,'mars','6:Ward, 8:Volcano, 22:Eruption, 24:Resist, 48:Pyroclasm','Pilgrim (A)'),('Ascetic (W)',120,140,110,120,140,120,NULL,4,NULL,5,'mars','8:Volcano, 9:Wish, 22:Eruption, 24:Wish Well, 46:Pure Wish, 48:Pyroclasm','Pilgrim (W)'),('Barbarian',160,100,150,120,140,70,5,5,NULL,NULL,'venus+mars',NULL,'Brute'),('Bard',150,170,130,130,170,120,NULL,4,4,4,'mars',NULL,'Ranger'),('Beast Lord',190,110,150,150,120,80,3,3,3,3,'item','[Dinox:Troll], [Faery:Weird Nymph], [Chimera:Macetail], [Elder Wood:Estre Wood], [Gryphon:Minotaur], [Lich:Phoenix], [Blue Dragon:Fire Dragon], [Living Armor:Ghost Soldier], 24:Succubus, 38:Manticore','Tamer'),('Beastkeeper',160,100,140,140,110,80,2,2,2,2,'item','[Orc:Dinox], [Pixie:Faery], [Cerberus:Chimera], [Harpy:Gryphon], [Grand Golem:Blue Dragon], [Wyvern:Living Armor], 15:Elder Wood, 28:Lich','Tamer'),('Berserker',180,110,160,130,150,70,6,6,NULL,NULL,'venus+mars','[Planet Diver:Planetary]','Brute'),('Brute',100,70,120,90,110,70,1,1,NULL,NULL,'venus+mars','1:Growth, 6:Blast(Nova), 12:Mad Growth, 13:Planet Diver, 16:Nova, 17:Haunt, 24:Curse, 28:Wild Growth, 29:Condemn, 40:Supernova','Brute'),('Captain',170,120,130,130,120,120,NULL,NULL,NULL,11,'lostage','[Diamond Dust:Diamond Berg]','Mariner'),('Cavalier (E)',140,110,130,130,110,120,5,NULL,NULL,4,'mercury','8:Wish, 22:Wish Well, 46:Pure Wish','Swordsman (E)'),('Cavalier (F)',140,110,130,130,110,120,NULL,5,NULL,4,'mercury','8:Wish, 22:Wish Well, 46:Pure Wish','Swordsman (F)'),('Champion',170,110,130,140,100,100,NULL,11,NULL,NULL,'basic','[Heat Wave:Liquifier]','Guard'),('Chaos Lord',200,120,170,140,160,70,7,7,NULL,NULL,'venus+mars',NULL,'Brute'),('Cleric',120,150,110,120,100,130,NULL,NULL,NULL,9,'basic','8:Wish, 22:Wish Well, 46:Pure Wish','Water Seer'),('Commander',150,110,120,120,110,120,NULL,NULL,NULL,9,'lostage',NULL,'Mariner'),('Conjurer (D)',150,180,130,130,160,90,4,NULL,4,4,'venus',NULL,'Medium'),('Conjurer (E)',170,160,140,130,160,90,6,NULL,6,NULL,'jupiter','[Astral Blast:Thunder Mine]','Apprentice'),('Conjurer (F)',170,160,140,130,160,90,NULL,6,6,NULL,'jupiter','[Astral Blast:Thunder Mine]','Page'),('Crypt Lord',100,160,100,110,150,90,1,1,1,1,'item',NULL,'Dark Mage (I)'),('Dark Mage (D)',170,190,140,140,170,90,5,NULL,4,4,'venus',NULL,'Medium'),('Dark Mage (I)',80,140,80,90,140,90,0,0,0,0,'item','1:Call Zombie, 9:Raging Heat, 17:Haunt, 19:Revive, 20:Fire Puppet, 22:Fiery Abyss, 24:Curse, 29:Condemn, 31:Drain, 33:Poison Flow, 39:Psy Drain, 53:Dire Inferno','Dark Mage (I)'),('Defender (E)',120,100,120,120,100,120,5,NULL,NULL,2,'mercury','1:Ply, 6:Avoid, 16:Ply Well, 34:Pure Ply','Swordsman (E)'),('Defender (F)',120,100,120,120,100,120,NULL,5,NULL,2,'mercury','1:Ply, 6:Avoid. 16:Ply Well, 34:Pure Ply','Swordsman (F)'),('Disciple',180,150,160,130,180,80,4,4,4,NULL,'jupiter','[Death Plunge:Death Leap]','Ninja'),('Diviner (A)',110,140,100,100,120,100,2,NULL,5,NULL,'venus',NULL,'Seer (A)'),('Diviner (W)',110,140,100,100,120,100,2,NULL,NULL,5,'venus',NULL,'Seer (W)'),('Dragoon',160,130,140,140,110,130,3,3,NULL,3,'mercury','1:Ply, 2:Blast, 4:Thorn, 5:Cure Poison, 6:Avoid, 8:Wish, 10:Mad Blast, 11:Cutting Edge, 13:Restore, 16:Ply Well, 17:Briar, 22:Wish Well, 27:Fiery Blast, 34:Pure Ply, 36:Nettle, 46:Pure Wish','Dragoon'),('Druid (A)',150,170,130,130,150,100,6,NULL,6,NULL,'venus',NULL,'Seer (A)'),('Druid (W)',150,170,130,130,150,100,6,NULL,NULL,6,'venus',NULL,'Seer (W)'),('Elder',90,150,90,100,140,120,NULL,NULL,2,2,'jupiter+mercury',NULL,'Hermit'),('Enchanter (E)',140,140,130,120,140,90,5,NULL,4,NULL,'jupiter','5:Impact, 6:Ward, 21:High Impact, 22:Resist','Apprentice'),('Enchanter (F)',140,140,130,120,140,90,NULL,5,4,NULL,'jupiter','3:Guard, 5:Impact, 15:Protect, 21:High Impact','Page'),('Fire Master',150,150,130,130,150,90,NULL,11,NULL,NULL,'lostage',NULL,'Flame User'),('Fire Monk',150,160,130,140,160,120,NULL,6,6,NULL,'mars',NULL,'Pilgrim (A)'),('Flame User',100,120,100,100,120,90,NULL,5,NULL,NULL,'lostage','1:Flare, 5:Fume, 6:Flare Wall, 7:Beam, 10:Impair, 18:Flare Storm, 21:Cycle Beam, 23:Debilitate, 26:Serpent Fume, 41:Searing Beam, 47:Dragon Fume','Flame User'),('Gallant',150,100,130,120,130,100,9,NULL,NULL,NULL,'basic','7:Gaia, 19:Revive, 24:Mother Gaia, 54:Grand Gaia','Squire'),('Guard',110,80,100,110,70,100,NULL,5,NULL,NULL,'basic','1:Flare, 4:Fire, 6:Flare Wall, 8:Volcano, 12:Heat Wave, 14:Fireball, 18:Flare Storm, 22:Eruption, 36:Inferno, 48:Pyroclasm','Guard'),('Guardian',170,130,140,140,130,120,6,NULL,NULL,6,'mercury','[Cutting Edge:Plume Edge]','Swordsman (E)'),('Guru (A)',170,170,140,150,170,120,NULL,7,7,NULL,'mars',NULL,'Pilgrim (A)'),('Guru (W)',170,170,140,150,170,120,NULL,7,NULL,7,'mars',NULL,'Pilgrim (W)'),('Harlequin',130,100,110,120,140,120,1,1,1,1,'item',NULL,'Pierrot'),('Hermit',80,140,80,90,130,120,NULL,NULL,1,1,'jupiter+mercury','1:Impact, 6:Prism, 8:Plasma, 18:Bind, 21:High Impact, 22:Hail Prism, 26:Shine Plasma, 31:Drain, 30:Break, 39:Psy Drain, 50:Spark Plasma, 52:Freeze Prism','Hermit'),('Hero',190,120,140,150,110,100,NULL,13,NULL,NULL,'basic',NULL,'Guard'),('Hex',130,140,120,120,140,90,NULL,9,NULL,NULL,'lostage','9:Aura, 16:Healing Aura, 33:Cool Aura','Flame User'),('Illusionist (E)',120,130,120,110,130,90,5,NULL,2,NULL,'jupiter',NULL,'Apprentice'),('Illusionist (F)',120,130,120,110,130,90,NULL,5,2,NULL,'jupiter',NULL,'Page'),('Justice',170,160,140,140,160,90,NULL,13,NULL,NULL,'lostage',NULL,'Flame User'),('Knight',130,90,120,110,120,100,7,NULL,NULL,NULL,'basic',NULL,'Squire'),('Lord',170,110,140,130,140,100,11,NULL,NULL,NULL,'basic','[Ragnarok:Odyssey]','Squire'),('Luminier',170,130,140,140,130,120,NULL,6,NULL,6,'mercury','[Cutting Edge:Plume Edge]','Swordsman (F)'),('Mage',110,160,100,110,150,110,NULL,NULL,9,NULL,'basic','6:Ward, 22:Resist','Wind Seer'),('Magician',90,150,90,100,140,110,NULL,NULL,7,NULL,'basic','5:Impact, 21:High Impact','Wind Seer'),('Magister',130,170,110,120,160,110,NULL,NULL,11,NULL,'basic',NULL,'Wind Seer'),('Mariner',110,90,100,100,90,120,NULL,NULL,NULL,5,'lostage','1:Frost, 2:Ply, 4:Cool, 5:Cure Poison, 8:Tundra, 12:Diamond Dust, 13:Restore, 17:Ply Well, 21:Supercool, 24:Glacier, 30:Break, 35:Pure Ply, 48:Megacool','Mariner'),('Master',200,160,170,140,190,80,4,4,5,NULL,'jupiter',NULL,'Ninja'),('Medium',130,170,120,120,150,90,3,NULL,3,3,'venus','1:Bolt, 2:Froth, 3:Cure, 6:Flash Bolt, 10:Cure Well, 14:Froth Sphere, 17:Haunt, 19:Revive, 20:Curse, 22:Blue Bolt, 26:Potent Cure, 29:Condemn, 31:Drain, 36:Psy Drain, 40:Froth Spiral','Medium'),('Necrolyte',130,170,120,120,160,90,2,2,2,2,'item','26:Call Demon','Dark Mage (I)'),('Necromage',160,190,130,130,170,90,3,3,3,3,'item','47:Call Dullahan','Dark Mage (I)'),('Ninja',160,140,150,120,170,80,3,3,3,NULL,'jupiter','1:Gale, 4:Punji, 6:Fire Bomb, 7:Mist, 8:Thunderclap, 12:Death Plunge, 15:Punji Trap, 16:Cluster Bomb, 18:Typhoon, 21:Shuriken, 26:Thunderbolt, 31:Annihilation, 36:Punji Strike, 40:Carpet Bomb, 44:Hurricane, 50:Thunderhead','Ninja'),('Oracle (A)',170,180,140,140,160,100,7,NULL,7,NULL,'venus',NULL,'Seer (A)'),('Oracle (W)',170,180,140,140,160,100,7,NULL,NULL,7,'venus',NULL,'Seer (W)'),('Page',100,120,110,100,120,90,NULL,5,0,NULL,'jupiter','1:Delude, 6:Ward, 8:Volcano, 9:Weaken, 11:Astral Blast, 14:Sleep, 22:Resist, 24:Eruption, 25:Enfeeble, 31:Drain, 39:Psy Drain, 48:Pyroclasm','Page'),('Paladin',200,150,160,160,130,130,4,4,NULL,5,'mercury',NULL,'Dragoon'),('Paragon',140,160,120,130,110,130,NULL,NULL,NULL,11,'basic',NULL,'Water Seer'),('Pierrot',100,80,100,110,130,120,0,0,0,0,'item','3:Baffle Card, 5:Juggle, 6:Avoid, 8:Sword Card, 10:Sabre Dance, 13:Flame Card, 15:Sleep Card, 17:Heat Juggle, 22:Fire Breath, 25:Thunder Card, 27:Death Card, 33:Bramble Card, 37:Fiery Juggle, 46:Frost Card','Pierrot'),('Pilgrim (A)',90,120,90,100,120,120,NULL,0,5,NULL,'mars','1:Slash, 9:Plasma, 10:Wind Slash, 18:Bind, 26:Shine Plasma, 30:Sonic Slash, 33:Drain, 41:Psy Drain, 50:Spark Plasma','Pilgrim (A)'),('Pilgrim (W)',90,120,90,100,120,120,NULL,0,NULL,5,'mars','1:Douse, 5:Cure Poison, 6:Prism, 12:Drench, 13:Restore, 20:Hail Prism, 30:Deluge, 34:Break, 52:Freeze Prism','Pilgrim (W)'),('Privateer',130,100,110,110,100,120,NULL,NULL,NULL,7,'lostage','6:Avoid','Mariner'),('Protector',190,140,150,150,140,120,7,NULL,NULL,7,'mercury',NULL,'Swordsman (E)'),('Punchinello',160,110,130,130,150,120,2,2,2,2,'item','29:Backstab ','Pierrot'),('Pure Mage',170,190,140,140,160,130,4,NULL,5,5,'jupiter+mercury',NULL,'White Mage'),('Radiant',190,140,150,150,140,120,NULL,7,NULL,7,'mercury',NULL,'Swordsman (F)'),('Ranger',130,160,120,120,160,120,NULL,3,3,3,'mars','1:Slash, 2:Douse, 6:Ward, 8:Volcano, 10:Wind Slash, 12:Drench, 18:Bind, 22:Eruption, 24:Resist, 30:Sonic Slash, 30:Deluge, 33:Drain, 34:Break, 41:Psy Drain, 48:Pyroclasm','Ranger'),('Ronin',210,140,160,150,150,90,5,5,4,NULL,'venus+mars','[Dragon Cloud:Epicenter], [Demon Night:Thorny Grave], [Helm Splitter:Skull Splitter]','Samurai'),('Ruffian',120,80,130,100,120,70,2,2,NULL,NULL,'venus+mars',NULL,'Brute'),('Sage',150,180,120,130,170,120,NULL,NULL,6,6,'jupiter+mercury',NULL,'Hermit'),('Samurai',190,130,150,140,140,90,4,4,3,NULL,'venus+mars','3:Guardian, 5:Demon Spear, 6:Rockfall, 8:Lava Shower, 10:Magic Shell, 12:Dragon Cloud, 15:Protector, 18:Demon Night, 21:Angel Spear, 24:Rockslide, 24:Molten Bath, 27:Magic Shield, 33:Helm Splitter, 40:Quick Strike, 48:Magma Storm, 54:Avalanche','Samurai'),('Savage',140,90,140,110,130,70,4,4,NULL,NULL,'venus+mars','7:Spire, 9:Impair, 19:Revive, 20:Clay Spire, 23:Debilitate, 42:Stone Spire','Brute'),('Savant',130,170,110,120,160,120,NULL,NULL,5,5,'jupiter+mercury',NULL,'Hermit'),('Scholar',110,160,100,110,150,120,NULL,NULL,4,4,'jupiter+mercury','12:Wish, 24:Wish Well, 46:Pure Wish','Hermit'),('Scribe',100,140,100,110,90,130,NULL,NULL,NULL,7,'basic',NULL,'Water Seer'),('Seer (A)',90,130,90,90,110,100,0,NULL,5,NULL,'venus','1:Cure, 2:Bolt, 3:Growth, 6:Flash Bolt, 10:Cure Well, 12:Mad Growth, 18:Bind, 22:Blue Bolt, 26:Potent Cure, 29:Wild Growth, 31:Drain, 39:Psy Drain','Seer (A)'),('Seer (W)',90,130,90,90,110,100,0,NULL,NULL,5,'venus','1:Cure, 2:Froth, 3:Growth, 5:Cure Poison, 10:Cure Well, 12:Mad Growth, 13:Restore, 14:Froth Sphere, 26:Potent Cure, 29:Wild Growth, 30:Break, 40:Froth Spiral','Seer (W)'),('Shaman (A)',120,150,110,110,130,100,4,NULL,5,NULL,'venus','7:Ward, 19:Revive, 23:Resist','Seer (A)'),('Shaman (W)',120,150,110,110,130,100,4,NULL,NULL,5,'venus','8:Wish, 19:Revive, 22:Wish Well, 46:Pure Wish','Seer (W)'),('Slayer',190,120,150,140,150,100,13,NULL,NULL,NULL,'basic',NULL,'Squire'),('Soldier',130,90,110,120,80,100,NULL,7,NULL,NULL,'basic',NULL,'Guard'),('Sorcerer',150,180,120,130,170,110,NULL,NULL,13,NULL,'basic',NULL,'Wind Seer'),('Squire',110,80,110,100,110,100,5,NULL,NULL,NULL,'basic','1:Cure, 2:Quake, 4:Earthquake, 6:Spire, 10:Cure Well, 13:Ragnarok, 14:Quake Sphere, 20:Clay Spire, 26:Potent Cure, 42:Stone Spire','Squire'),('Swordsman (E)',100,90,110,110,90,120,5,NULL,NULL,0,'mercury','4:Thorn, 5:Cure Poison, 11:Cutting Edge, 13:Restore, 14:Briar, 19:Revive, 30:Break, 36:Nettle','Swordsman (E)'),('Swordsman (F)',100,90,110,110,90,120,NULL,5,NULL,0,'mercury','2:Blast, 3:Guard, 5:Cure Poison, 10:Mad Blast, 11:Cutting Edge, 13:Restore, 15:Protect, 28:Fiery Blast, 30:Break','Swordsman (F)'),('Tamer',100,70,110,120,90,80,0,0,0,0,'item','1:Wild Wolf, 5:Cure Poison, 6:Impact, 10:Whiplash, 10:Salamander, 13:Restore, 20:Emu, 22:High Impact, 45:Roc','Tamer'),('Templar',180,140,150,150,120,130,4,4,NULL,4,'mercury','[Cutting Edge:Plume Edge]','Dragoon'),('Trainer',130,90,120,130,100,80,1,1,1,1,'item','[Wild Wolf:Orc], [Salamander:Cerberus], [Emu:Harpy], [Roc:Wyvern], 7:Pixie, 32:Grand Golem','Tamer'),('Wanderer (A)',110,130,100,110,130,120,NULL,2,5,NULL,'mars',NULL,'Pilgrim (A)'),('Wanderer (W)',110,130,100,110,130,120,NULL,2,NULL,5,'mars',NULL,'Pilgrim (W)'),('War Adept (E)',190,170,150,140,170,90,7,NULL,7,NULL,'jupiter',NULL,'Apprentice'),('War Adept (F)',190,170,150,140,170,90,NULL,7,7,NULL,'jupiter',NULL,'Page'),('Warlock',170,180,140,140,180,120,NULL,5,4,4,'mars',NULL,'Ranger'),('Warrior',150,100,120,130,90,100,NULL,9,NULL,NULL,'basic','3:Guard, 9:Impair, 15:Protect, 26:Debilitate','Guard'),('Water Monk',150,160,130,140,160,120,NULL,6,NULL,6,'mars',NULL,'Pilgrim (W)'),('Water Seer',90,130,90,100,80,130,NULL,NULL,NULL,5,'basic','1:Ply, 2:Frost, 4:Ice, 5:Cure Poison, 9:Tundra, 13:Restore, 16:Ply Well, 17:Ice Horn, 24:Glacier, 30:Break, 34:Pure Ply, 42:Ice Missile','Water Seer'),('White Mage',150,180,130,130,150,130,3,NULL,4,4,'jupiter+mercury','1:Cure Poison, 6:Prism, 8:Plasma, 9:Ward, 11:Dull, 12:Wish, 13:Restore, 17:Revive, 22:Hail Prism, 24:Wish Well, 26:Shine Plasma, 31:Resist, 37:Blunt, 46:Spark Plasma, 46:Pure Wish, 52:Freeze Prism','White Mage'),('Wind Seer',80,140,80,90,130,110,NULL,NULL,5,NULL,'basic','1:Whirlwind, 4:Ray, 8:Plasma, 12:Sleep, 14:Storm Ray, 17:Bind, 18:Tornado, 26:Shine Plasma, 36:Destruct Ray, 44:Tempest, 50:Spark Plasma','Wind Seer'),('Witch',110,130,110,110,130,90,NULL,7,NULL,NULL,'lostage',NULL,'Flame User'),('Wizard',170,190,130,140,180,120,NULL,NULL,7,7,'jupiter+mercury',NULL,'Hermit');
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
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
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

--
-- Table structure for table `summon`
--

DROP TABLE IF EXISTS `summon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `summon` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summon`
--

LOCK TABLES `summon` WRITE;
/*!40000 ALTER TABLE `summon` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES (1,'Long Sword',1,200,150,'long blade',0,14,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Broad Sword',1,1000,750,'long blade',0,40,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Claymore',1,4000,3000,'long blade',0,70,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Great Sword',1,7000,5250,'long blade',0,90,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Shamshir',1,10000,7500,'long blade',0,99,'Acid Bath',0.35,NULL,NULL,NULL,NULL),(6,'Silver Blade',1,12000,9000,'long blade',0,108,'Aqua Sock',0.35,NULL,NULL,NULL,NULL),(7,'Fire Brand',1,23400,17550,'long blade',0,176,'Purgatory',0.35,NULL,NULL,NULL,NULL),(8,'Arctic Blade',1,2600,1950,'long blade',0,55,'Blizzard',0.35,NULL,NULL,NULL,NULL),(9,'Gaia Blade',1,17000,12750,'long blade',0,135,'Titan Sword',0.35,NULL,NULL,NULL,NULL),(10,'Sol Blade',1,31200,23400,'long blade',0,200,'Meggido',0.35,NULL,NULL,NULL,NULL),(11,'Muramasa',1,13600,10200,'long blade',1,126,'Demon Fire',0.35,NULL,NULL,NULL,NULL),(15,'Machete',1,30,22,'light blade',0,6,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Short Sword',1,120,90,'light blade',0,8,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Hunter\'s Sword',1,520,390,'light blade',0,28,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Battle Rapier',1,2900,2175,'light blade',0,58,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Master Rapier',1,6800,5100,'light blade',0,86,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Ninja Blade',1,8800,6600,'light blade',0,94,'Cyclone Attack',0.35,NULL,NULL,NULL,NULL),(21,'Swift Sword',1,9400,7050,'light blade',0,104,'Sonic Smash',0.35,NULL,NULL,NULL,NULL),(22,'Elven Rapier',1,2200,1650,'light blade',0,44,'Vorpal Slash',0.35,NULL,NULL,NULL,NULL),(23,'Assassin Blade',1,7800,5850,'light blade',0,90,'Mortal Danger',0.35,NULL,NULL,NULL,NULL),(24,'Mystery Blade',1,6400,4800,'light blade',0,84,'Life Nourish',0.35,NULL,NULL,NULL,NULL),(25,'Kikuichimonji',1,13400,10050,'light blade',0,128,'Asura',0.35,NULL,NULL,NULL,NULL),(26,'Masamune',1,16400,12300,'light blade',0,161,'Rising Dragon',0.35,NULL,NULL,NULL,NULL),(27,'Bandit\'s Sword',1,700,525,'light blade',0,12,'Rapid Smash',0.35,NULL,NULL,NULL,NULL),(31,'Battle Axe',1,280,210,'axe',0,24,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Broad Axe',1,1400,1050,'axe',0,50,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Great Axe',1,5200,3900,'axe',0,80,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Dragon Axe',1,10300,7725,'axe',0,100,'Heat Mirage',0.35,NULL,NULL,NULL,NULL),(35,'Giant Axe',1,14000,10500,'axe',0,114,'Meltdown',0.35,NULL,NULL,NULL,NULL),(36,'Vulcan Axe',1,4600,3450,'axe',0,76,'Barrage',0.35,NULL,NULL,NULL,NULL),(37,'Burning Axe',1,7500,5625,'axe',0,84,'Broil',0.35,NULL,NULL,NULL,NULL),(38,'Demon Axe',1,16000,12000,'axe',1,132,'Poison Cloud',0.35,NULL,NULL,NULL,NULL),(43,'Mace',1,80,60,'mace',0,6,NULL,NULL,NULL,NULL,NULL,NULL),(44,'Heavy Mace',1,500,375,'mace',0,26,NULL,NULL,NULL,NULL,NULL,NULL),(45,'Battle Mace',1,2600,1950,'mace',0,56,NULL,NULL,NULL,NULL,NULL,NULL),(46,'War Mace',1,6200,4650,'mace',0,84,NULL,NULL,NULL,NULL,NULL,NULL),(47,'Righteous Mace',1,8400,6300,'mace',0,112,'Blinding Smog',0.35,NULL,NULL,NULL,NULL),(48,'Grievous Mace',1,7000,5250,'mace',0,88,'Terra Strike',0.35,NULL,NULL,NULL,NULL),(49,'Blessed Mace',1,14500,10875,'mace',0,126,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Wicked Mace',1,13800,10350,'mace',1,130,'Poison Death',0.35,NULL,NULL,NULL,NULL),(55,'Wooden Stick',1,40,30,'staff',0,4,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Magic Rod',1,380,285,'staff',0,16,'Murk',0.35,NULL,NULL,NULL,NULL),(57,'Witch\'s Wand',1,860,645,'staff',0,32,'Stun Voltage',0.35,NULL,NULL,NULL,NULL),(58,'Blessed Ankh',1,1600,1200,'staff',0,46,'Psyphon Seal',0.35,NULL,NULL,NULL,NULL),(59,'Psynergy Rod',1,3800,2850,'staff',0,64,'Psy Leech',0.35,NULL,NULL,NULL,NULL),(60,'Frost Wand',1,5400,4050,'staff',0,76,'Frost Bite',0.35,NULL,NULL,NULL,NULL),(61,'Angelic Ankh',1,6400,4800,'staff',0,83,'Life Leech',0.35,NULL,NULL,NULL,NULL),(62,'Demonic Staff',1,10000,7500,'staff',1,92,'Bad Omen',0.35,NULL,NULL,NULL,NULL),(63,'Crystal Rod',1,13400,10050,'staff',0,106,'Drown',0.35,NULL,NULL,NULL,NULL),(64,'Zodiac Wand',1,11400,8550,'staff',0,102,'Shining Star',0.35,NULL,NULL,NULL,NULL),(65,'Shaman\'s Rod',1,NULL,NULL,'staff',0,10,NULL,NULL,NULL,NULL,NULL,NULL),(272,'Huge Sword',2,14000,10500,'long blade',0,155,'Heavy Divide',0.35,NULL,NULL,NULL,NULL),(273,'Mythril Blade',2,14600,10950,'long blade',0,160,'Lethe Albion',0.35,NULL,NULL,NULL,NULL),(274,'Levatine',2,19700,14775,'long blade',0,173,'Radient Fire',0.35,NULL,NULL,NULL,NULL),(275,'Darksword',2,24200,18150,'long blade',1,210,'Acheron\'s Grief',0.35,NULL,NULL,NULL,NULL),(276,'Excalibur',2,29200,21900,'long blade',0,180,'Legend',0.35,NULL,NULL,NULL,NULL),(277,'Robber\'s Blade',2,7600,5700,'long blade',0,101,'Shred',0.35,NULL,NULL,NULL,NULL),(278,'Soul Brand',2,11600,8700,'long blade',0,141,'Soul Shatter',0.35,NULL,NULL,NULL,NULL),(279,'Storm Brand',2,3900,2925,'long blade',0,60,'Hurricane',0.35,NULL,NULL,NULL,NULL),(280,'Hestia Blade',2,12900,9675,'long blade',0,145,'Crucible Fire',0.35,NULL,NULL,NULL,NULL),(281,'Lightning Sword',2,11400,8550,'long blade',0,134,'Flash Edge',0.35,NULL,NULL,NULL,NULL),(282,'Rune Blade',2,15000,11250,'long blade',0,162,'Void Beam',0.35,NULL,NULL,NULL,NULL),(283,'Cloud Brand',2,11800,8850,'long blade',0,130,'Raiden\'s Wrath',0.35,NULL,NULL,NULL,NULL),(285,'Sylph Rapier',2,10100,7575,'light blade',0,124,'Mad Zephyr',0.35,NULL,NULL,NULL,NULL),(286,'Burning Sword',2,14600,10950,'light blade',0,157,'Blaze Rush',0.35,NULL,NULL,NULL,NULL),(287,'Pirate\'s Sword',2,2000,1500,'light blade',0,34,'Dreamtide',0.35,NULL,NULL,NULL,NULL),(288,'Corsair\'s Edge',2,6300,4725,'light blade',0,90,'Lunar Slash',0.35,NULL,NULL,NULL,NULL),(289,'Pirate\'s Sabre',2,10600,7950,'light blade',0,136,'Scorpionfish',0.35,NULL,NULL,NULL,NULL),(290,'Hypnos\' Sword',2,2900,2175,'light blade',0,49,'Moon Air',0.35,NULL,NULL,NULL,NULL),(291,'Mist Sabre',2,8600,6450,'light blade',0,110,'Searing Fog',0.35,NULL,NULL,NULL,NULL),(292,'Phaeton\'s Blade',2,13600,10200,'light blade',0,151,'Light Surge',0.35,NULL,NULL,NULL,NULL),(293,'Tisiphone Edge',2,23000,17250,'light blade',0,178,'Vengeance',0.35,NULL,NULL,NULL,NULL),(295,'Appolo\'s Axe',2,15200,11400,'axe',0,158,'Flare Burst',0.35,NULL,NULL,NULL,NULL),(296,'Gaia\'s Axe',2,16400,12300,'axe',0,163,'Mother Earth',0.35,NULL,NULL,NULL,NULL),(297,'Stellar Axe',2,19700,14775,'axe',0,171,'Supernova',0.35,NULL,NULL,NULL,NULL),(298,'Captain\'s Axe',2,6800,5100,'axe',0,95,NULL,NULL,NULL,NULL,NULL,NULL),(299,'Viking Axe',2,11000,8250,'axe',0,137,'Stun Bolt',0.35,NULL,NULL,NULL,NULL),(300,'Disk Axe',2,4700,3525,'axe',0,76,'Power Drive',0.35,NULL,NULL,NULL,NULL),(301,'Themis\' Axe',2,1900,1425,'axe',0,30,'Stone Justice',0.35,NULL,NULL,NULL,NULL),(302,'Mighty Axe',2,11900,8925,'axe',0,142,'Heat Shatter',0.35,NULL,NULL,NULL,NULL),(303,'Tartarus Axe',2,10800,8100,'axe',0,127,'Vein Tap',0.35,NULL,NULL,NULL,NULL),(305,'Comet Mace',2,8000,6000,'mace',0,105,'Ice Crush',0.35,NULL,NULL,NULL,NULL),(306,'Tungsten Mace',2,14700,11025,'mace',0,159,'Hammersphere',0.35,NULL,NULL,NULL,NULL),(307,'Demon Mace',2,9200,6900,'mace',0,115,'Evil Eye',0.35,NULL,NULL,NULL,NULL),(308,'Hagbone Mace',2,8400,6300,'mace',0,108,'Wyrd Curse',0.35,NULL,NULL,NULL,NULL),(309,'Blow Mace',2,2800,2100,'mace',0,45,'Boost Hack',0.35,NULL,NULL,NULL,NULL),(310,'Rising Mace',2,13900,10425,'mace',0,152,'High Vitals',0.35,NULL,NULL,NULL,NULL),(311,'Thanatos Mace',2,10400,7800,'mace',0,125,'Heartbreak',0.35,NULL,NULL,NULL,NULL),(313,'Cloud Wand',2,7000,5250,'staff',0,98,'Stun Cloud',0.35,NULL,NULL,NULL,NULL),(314,'Salamander Rod',2,14300,10725,'staff',0,156,'Fire Dance',0.35,NULL,NULL,NULL,NULL),(315,'Nebula Wand',2,15200,11400,'staff',0,165,'Reverse Star',0.35,NULL,NULL,NULL,NULL),(316,'Dracomace',2,10700,8025,'staff',0,128,'Aging Gas',0.35,NULL,NULL,NULL,NULL),(317,'Glower Staff',2,10100,7575,'staff',0,126,'Flash Force',0.35,NULL,NULL,NULL,NULL),(318,'Goblin\'s Rod',2,9800,7350,'staff',0,134,'Sargasso',0.35,NULL,NULL,NULL,NULL),(319,'Meditation Rod',2,13400,10050,'staff',0,150,'Nirvana',0.35,NULL,NULL,NULL,NULL),(320,'Fireman\'s Rod',2,8200,6150,'staff',0,130,NULL,NULL,NULL,NULL,NULL,NULL),(321,'Atropos\' Rod',2,18900,14175,'staff',0,169,'Life Shear',0.35,NULL,NULL,NULL,NULL),(322,'Lachesis\' Rule',2,21700,16275,'staff',0,177,'Apocalypse',0.35,NULL,NULL,NULL,NULL),(323,'Clotho\'s Distaff',2,17200,12900,'staff',0,168,NULL,NULL,NULL,NULL,NULL,NULL),(324,'Staff of Anubis',2,5500,4125,'staff',0,83,'Sarcophagus',0.35,NULL,NULL,NULL,NULL),(417,'Rusty Sword',2,320,240,'rusty',0,9,NULL,NULL,NULL,NULL,NULL,NULL),(418,'Rusty Sword',2,370,277,'rusty',0,10,NULL,NULL,NULL,NULL,NULL,NULL),(419,'Rusty Sword',2,520,390,'rusty',0,13,NULL,NULL,NULL,NULL,NULL,NULL),(420,'Rusty Sword',2,580,435,'rusty',0,14,NULL,NULL,NULL,NULL,NULL,NULL),(421,'Rusty Axe',2,340,255,'rusty',0,10,NULL,NULL,NULL,NULL,NULL,NULL),(422,'Rusty Axe',2,550,412,'rusty',0,14,NULL,NULL,NULL,NULL,NULL,NULL),(423,'Rusty Mace',2,460,345,'rusty',0,12,NULL,NULL,NULL,NULL,NULL,NULL),(424,'Rusty Mace',2,420,315,'rusty',0,11,NULL,NULL,NULL,NULL,NULL,NULL),(425,'Rusty Staff',2,530,397,'rusty',0,13,NULL,NULL,NULL,NULL,NULL,NULL),(426,'Rusty Staff',2,500,375,'rusty',0,12,NULL,NULL,NULL,NULL,NULL,NULL),(427,'Rusty Staff',2,480,360,'rusty',0,11,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2017-12-29 17:36:41
