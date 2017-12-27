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
INSERT INTO `class` VALUES ('Acrobat',190,120,140,140,160,120,3,3,3,3,'item',NULL,NULL),('Admiral',190,130,140,140,130,120,NULL,NULL,NULL,13,'lostage',NULL,NULL),('Angel',160,170,130,140,120,130,NULL,NULL,NULL,13,'basic',NULL,NULL),('Apprentice',100,120,110,100,120,90,5,NULL,0,NULL,'jupiter','1:Delude, 6:Gaia, 9:Weaken, 11:Astral Blast, 14:Sleep, 17:Haunt, 20:Curse, 24:Mother Gaia, 25:Enfeeble, 31:Drain, 39:Psy Drain, 54:Grand Gaia',NULL),('Ascetic (A)',120,140,110,120,140,120,NULL,4,5,NULL,'mars','6:Ward, 8:Volcano, 22:Eruption, 24:Resist, 48:Pyroclasm',NULL),('Ascetic (W)',120,140,110,120,140,120,NULL,4,NULL,5,'mars','8:Volcano, 9:Wish, 22:Eruption, 24:Wish Well, 46:Pure Wish, 48:Pyroclasm',NULL),('Barbarian',160,100,150,120,140,70,5,5,NULL,NULL,'venus+mars',NULL,NULL),('Bard',150,170,130,130,170,120,NULL,4,4,4,'mars',NULL,NULL),('Beast Lord',190,110,150,150,120,80,3,3,3,3,'item','[Dinox:Troll], [Faery:Weird Nymph], [Chimera:Macetail], [Elder Wood:Estre Wood], [Gryphon:Minotaur], [Lich:Phoenix], [Blue Dragon:Fire Dragon], [Living Armor:Ghost Soldier], 24:Succubus, 38:Manticore',NULL),('Beastkeeper',160,100,140,140,110,80,2,2,2,2,'item','[Orc:Dinox], [Pixie:Faery], [Cerberus:Chimera], [Harpy:Gryphon], [Grand Golem:Blue Dragon], [Wyvern:Living Armor], 15:Elder Wood, 28:Lich',NULL),('Berserker',180,110,160,130,150,70,6,6,NULL,NULL,'venus+mars','[Planet Diver:Planetary]',NULL),('Brute',100,70,120,90,110,70,1,1,NULL,NULL,'venus+mars','1:Growth, 6:Blast(Nova), 12:Mad Growth, 13:Planet Diver, 16:Nova, 17:Haunt, 24:Curse, 28:Wild Growth, 29:Condemn, 40:Supernova',NULL),('Captain',170,120,130,130,120,120,NULL,NULL,NULL,11,'lostage','[Diamond Dust:Diamond Berg]',NULL),('Cavalier (E)',140,110,130,130,110,120,5,NULL,NULL,4,'mercury','8:Wish, 22:Wish Well, 46:Pure Wish',NULL),('Cavalier (F)',140,110,130,130,110,120,NULL,5,NULL,4,'mercury','8:Wish, 22:Wish Well, 46:Pure Wish',NULL),('Champion',170,110,130,140,100,100,NULL,11,NULL,NULL,'basic','[Heat Wave:Liquifier]',NULL),('Chaos Lord',200,120,170,140,160,70,7,7,NULL,NULL,'venus+mars',NULL,NULL),('Cleric',120,150,110,120,100,130,NULL,NULL,NULL,9,'basic','8:Wish, 22:Wish Well, 46:Pure Wish',NULL),('Commander',150,110,120,120,110,120,NULL,NULL,NULL,9,'lostage',NULL,NULL),('Conjurer (D)',150,180,130,130,160,90,4,NULL,4,4,'venus',NULL,NULL),('Conjurer (E)',170,160,140,130,160,90,6,NULL,6,NULL,'jupiter','[Astral Blast:Thunder Mine]',NULL),('Conjurer (F)',170,160,140,130,160,90,NULL,6,6,NULL,'jupiter','[Astral Blast:Thunder Mine]',NULL),('Crypt Lord',100,160,100,110,150,90,1,1,1,1,'item',NULL,NULL),('Dark Mage (D)',170,190,140,140,170,90,5,NULL,4,4,'venus',NULL,NULL),('Dark Mage (I)',80,140,80,90,140,90,0,0,0,0,'item','1:Call Zombie, 9:Raging Heat, 17:Haunt, 19:Revive, 20:Fire Puppet, 22:Fiery Abyss, 24:Curse, 29:Condemn, 31:Drain, 33:Poison Flow, 39:Psy Drain, 53:Dire Inferno',NULL),('Defender (E)',120,100,120,120,100,120,5,NULL,NULL,2,'mercury','1:Ply, 6:Avoid, 16:Ply Well, 34:Pure Ply',NULL),('Defender (F)',120,100,120,120,100,120,NULL,5,NULL,2,'mercury','1:Ply, 6:Avoid. 16:Ply Well, 34:Pure Ply',NULL),('Disciple',180,150,160,130,180,80,4,4,4,NULL,'jupiter','[Death Plunge:Death Leap]',NULL),('Diviner (A)',110,140,100,100,120,100,2,NULL,5,NULL,'venus',NULL,NULL),('Diviner (W)',110,140,100,100,120,100,2,NULL,NULL,5,'venus',NULL,NULL),('Dragoon',160,130,140,140,110,130,3,3,NULL,3,'mercury','1:Ply, 2:Blast, 4:Thorn, 5:Cure Poison, 6:Avoid, 8:Wish, 10:Mad Blast, 11:Cutting Edge, 13:Restore, 16:Ply Well, 17:Briar, 22:Wish Well, 27:Fiery Blast, 34:Pure Ply, 36:Nettle, 46:Pure Wish',NULL),('Druid (A)',150,170,130,130,150,100,6,NULL,6,NULL,'venus',NULL,NULL),('Druid (W)',150,170,130,130,150,100,6,NULL,NULL,6,'venus',NULL,NULL),('Elder',90,150,90,100,140,120,NULL,NULL,2,2,'jupiter+mercury',NULL,NULL),('Enchanter (E)',140,140,130,120,140,90,5,NULL,4,NULL,'jupiter','5:Impact, 6:Ward, 21:High Impact, 22:Resist',NULL),('Enchanter (F)',140,140,130,120,140,90,NULL,5,4,NULL,'jupiter','3:Guard, 5:Impact, 15:Protect, 21:High Impact',NULL),('Fire Master',150,150,130,130,150,90,NULL,11,NULL,NULL,'lostage',NULL,NULL),('Fire Monk',150,160,130,140,160,120,NULL,6,6,NULL,'mars',NULL,NULL),('Flame User',100,120,100,100,120,90,NULL,5,NULL,NULL,'lostage','1:Flare, 5:Fume, 6:Flare Wall, 7:Beam, 10:Impair, 18:Flare Storm, 21:Cycle Beam, 23:Debilitate, 26:Serpent Fume, 41:Searing Beam, 47:Dragon Fume',NULL),('Gallant',150,100,130,120,130,100,9,NULL,NULL,NULL,'basic','7:Gaia, 19:Revive, 24:Mother Gaia, 54:Grand Gaia',NULL),('Guard',110,80,100,110,70,100,NULL,5,NULL,NULL,'basic','1:Flare, 4:Fire, 6:Flare Wall, 8:Volcano, 12:Heat Wave, 14:Fireball, 18:Flare Storm, 22:Eruption, 36:Inferno, 48:Pyroclasm',NULL),('Guardian',170,130,140,140,130,120,6,NULL,NULL,6,'mercury','[Cutting Edge:Plume Edge]',NULL),('Guru (A)',170,170,140,150,170,120,NULL,7,7,NULL,'mars',NULL,NULL),('Guru (W)',170,170,140,150,170,120,NULL,7,NULL,7,'mars',NULL,NULL),('Harlequin',130,100,110,120,140,120,1,1,1,1,'item',NULL,NULL),('Hermit',80,140,80,90,130,120,NULL,NULL,1,1,'jupiter+mercury','1:Impact, 6:Prism, 8:Plasma, 18:Bind, 21:High Impact, 22:Hail Prism, 26:Shine Plasma, 31:Drain, 30:Break, 39:Psy Drain, 50:Spark Plasma, 52:Freeze Prism',NULL),('Hero',190,120,140,150,110,100,NULL,13,NULL,NULL,'basic',NULL,NULL),('Hex',130,140,120,120,140,90,NULL,9,NULL,NULL,'lostage','9:Aura, 16:Healing Aura, 33:Cool Aura',NULL),('Illusionist (E)',120,130,120,110,130,90,5,NULL,2,NULL,'jupiter',NULL,NULL),('Illusionist (F)',120,130,120,110,130,90,NULL,5,2,NULL,'jupiter',NULL,NULL),('Justice',170,160,140,140,160,90,NULL,13,NULL,NULL,'lostage',NULL,NULL),('Knight',130,90,120,110,120,100,7,NULL,NULL,NULL,'basic',NULL,NULL),('Lord',170,110,140,130,140,100,11,NULL,NULL,NULL,'basic','[Ragnarok:Odyssey]',NULL),('Luminier',170,130,140,140,130,120,NULL,6,NULL,6,'mercury','[Cutting Edge:Plume Edge]',NULL),('Mage',110,160,100,110,150,110,NULL,NULL,9,NULL,'basic','6:Ward, 22:Resist',NULL),('Magician',90,150,90,100,140,110,NULL,NULL,7,NULL,'basic','5:Impact, 21:High Impact',NULL),('Magister',130,170,110,120,160,110,NULL,NULL,11,NULL,'basic',NULL,NULL),('Mariner',110,90,100,100,90,120,NULL,NULL,NULL,5,'lostage','1:Frost, 2:Ply, 4:Cool, 5:Cure Poison, 8:Tundra, 12:Diamond Dust, 13:Restore, 17:Ply Well, 21:Supercool, 24:Glacier, 30:Break, 35:Pure Ply, 48:Megacool',NULL),('Master',200,160,170,140,190,80,4,4,5,NULL,'jupiter',NULL,NULL),('Medium',130,170,120,120,150,90,3,NULL,3,3,'venus','1:Bolt, 2:Froth, 3:Cure, 6:Flash Bolt, 10:Cure Well, 14:Froth Sphere, 17:Haunt, 19:Revive, 20:Curse, 22:Blue Bolt, 26:Potent Cure, 29:Condemn, 31:Drain, 36:Psy Drain, 40:Froth Spiral',NULL),('Necrolyte',130,170,120,120,160,90,2,2,2,2,'item','26:Call Demon',NULL),('Necromage',160,190,130,130,170,90,3,3,3,3,'item','47:Call Dullahan',NULL),('Ninja',160,140,150,120,170,80,3,3,3,NULL,'jupiter','1:Gale, 4:Punji, 6:Fire Bomb, 7:Mist, 8:Thunderclap, 12:Death Plunge, 15:Punji Trap, 16:Cluster Bomb, 18:Typhoon, 21:Shuriken, 26:Thunderbolt, 31:Annihilation, 36:Punji Strike, 40:Carpet Bomb, 44:Hurricane, 50:Thunderhead',NULL),('Oracle (A)',170,180,140,140,160,100,7,NULL,7,NULL,'venus',NULL,NULL),('Oracle (W)',170,180,140,140,160,100,7,NULL,NULL,7,'venus',NULL,NULL),('Page',100,120,110,100,120,90,NULL,5,0,NULL,'jupiter','1:Delude, 6:Ward, 8:Volcano, 9:Weaken, 11:Astral Blast, 14:Sleep, 22:Resist, 24:Eruption, 25:Enfeeble, 31:Drain, 39:Psy Drain, 48:Pyroclasm',NULL),('Paladin',200,150,160,160,130,130,4,4,NULL,5,'mercury',NULL,NULL),('Paragon',140,160,120,130,110,130,NULL,NULL,NULL,11,'basic',NULL,NULL),('Pierrot',100,80,100,110,130,120,0,0,0,0,'item','3:Baffle Card, 5:Juggle, 6:Avoid, 8:Sword Card, 10:Sabre Dance, 13:Flame Card, 15:Sleep Card, 17:Heat Juggle, 22:Fire Breath, 25:Thunder Card, 27:Death Card, 33:Bramble Card, 37:Fiery Juggle, 46:Frost Card',NULL),('Pilgrim (A)',90,120,90,100,120,120,NULL,0,5,NULL,'mars','1:Slash, 9:Plasma, 10:Wind Slash, 18:Bind, 26:Shine Plasma, 30:Sonic Slash, 33:Drain, 41:Psy Drain, 50:Spark Plasma',NULL),('Pilgrim (W)',90,120,90,100,120,120,NULL,0,NULL,5,'mars','1:Douse, 5:Cure Poison, 6:Prism, 12:Drench, 13:Restore, 20:Hail Prism, 30:Deluge, 34:Break, 52:Freeze Prism',NULL),('Privateer',130,100,110,110,100,120,NULL,NULL,NULL,7,'lostage','6:Avoid',NULL),('Protector',190,140,150,150,140,120,7,NULL,NULL,7,'mercury',NULL,NULL),('Punchinello',160,110,130,130,150,120,2,2,2,2,'item','29:Backstab ',NULL),('Pure Mage',170,190,140,140,160,130,4,NULL,5,5,'jupiter+mercury',NULL,NULL),('Radiant',190,140,150,150,140,120,NULL,7,NULL,7,'mercury',NULL,NULL),('Ranger',130,160,120,120,160,120,NULL,3,3,3,'mars','1:Slash, 2:Douse, 6:Ward, 8:Volcano, 10:Wind Slash, 12:Drench, 18:Bind, 22:Eruption, 24:Resist, 30:Sonic Slash, 30:Deluge, 33:Drain, 34:Break, 41:Psy Drain, 48:Pyroclasm',NULL),('Ronin',210,140,160,150,150,90,5,5,4,NULL,'venus+mars','[Dragon Cloud:Epicenter], [Demon Night:Thorny Grave], [Helm Splitter:Skull Splitter]',NULL),('Ruffian',120,80,130,100,120,70,2,2,NULL,NULL,'venus+mars',NULL,NULL),('Sage',150,180,120,130,170,120,NULL,NULL,6,6,'jupiter+mercury',NULL,NULL),('Samurai',190,130,150,140,140,90,4,4,3,NULL,'venus+mars','3:Guardian, 5:Demon Spear, 6:Rockfall, 8:Lava Shower, 10:Magic Shell, 12:Dragon Cloud, 15:Protector, 18:Demon Night, 21:Angel Spear, 24:Rockslide, 24:Molten Bath, 27:Magic Shield, 33:Helm Splitter, 40:Quick Strike, 48:Magma Storm, 54:Avalanche',NULL),('Savage',140,90,140,110,130,70,4,4,NULL,NULL,'venus+mars','7:Spire, 9:Impair, 19:Revive, 20:Clay Spire, 23:Debilitate, 42:Stone Spire',NULL),('Savant',130,170,110,120,160,120,NULL,NULL,5,5,'jupiter+mercury',NULL,NULL),('Scholar',110,160,100,110,150,120,NULL,NULL,4,4,'jupiter+mercury','12:Wish, 24:Wish Well, 46:Pure Wish',NULL),('Scribe',100,140,100,110,90,130,NULL,NULL,NULL,7,'basic',NULL,NULL),('Seer (A)',90,130,90,90,110,100,0,NULL,5,NULL,'venus','1:Cure, 2:Bolt, 3:Growth, 6:Flash Bolt, 10:Cure Well, 12:Mad Growth, 18:Bind, 22:Blue Bolt, 26:Potent Cure, 29:Wild Growth, 31:Drain, 39:Psy Drain',NULL),('Seer (W)',90,130,90,90,110,100,0,NULL,NULL,5,'venus','1:Cure, 2:Froth, 3:Growth, 5:Cure Poison, 10:Cure Well, 12:Mad Growth, 13:Restore, 14:Froth Sphere, 26:Potent Cure, 29:Wild Growth, 30:Break, 40:Froth Spiral',NULL),('Shaman (A)',120,150,110,110,130,100,4,NULL,5,NULL,'venus','7:Ward, 19:Revive, 23:Resist',NULL),('Shaman (W)',120,150,110,110,130,100,4,NULL,NULL,5,'venus','8:Wish, 19:Revive, 22:Wish Well, 46:Pure Wish',NULL),('Slayer',190,120,150,140,150,100,13,NULL,NULL,NULL,'basic',NULL,NULL),('Soldier',130,90,110,120,80,100,NULL,7,NULL,NULL,'basic',NULL,NULL),('Sorcerer',150,180,120,130,170,110,NULL,NULL,13,NULL,'basic',NULL,NULL),('Squire',110,80,110,100,110,100,5,NULL,NULL,NULL,'basic','1:Cure, 2:Quake, 4:Earthquake, 6:Spire, 10:Cure Well, 13:Ragnarok, 14:Quake Sphere, 20:Clay Spire, 26:Potent Cure, 42:Stone Spire',NULL),('Swordsman (E)',100,90,110,110,90,120,5,NULL,NULL,0,'mercury','4:Thorn, 5:Cure Poison, 11:Cutting Edge, 13:Restore, 14:Briar, 19:Revive, 30:Break, 36:Nettle',NULL),('Swordsman (F)',100,90,110,110,90,120,NULL,5,NULL,0,'mercury','2:Blast, 3:Guard, 5:Cure Poison, 10:Mad Blast, 11:Cutting Edge, 13:Restore, 15:Protect, 28:Fiery Blast, 30:Break',NULL),('Tamer',100,70,110,120,90,80,0,0,0,0,'item','1:Wild Wolf, 5:Cure Poison, 6:Impact, 10:Whiplash, 10:Salamander, 13:Restore, 20:Emu, 22:High Impact, 45:Roc',NULL),('Templar',180,140,150,150,120,130,4,4,NULL,4,'mercury','[Cutting Edge:Plume Edge]',NULL),('Trainer',130,90,120,130,100,80,1,1,1,1,'item','[Wild Wolf:Orc], [Salamander:Cerberus], [Emu:Harpy], [Roc:Wyvern], 7:Pixie, 32:Grand Golem',NULL),('Wanderer (A)',110,130,100,110,130,120,NULL,2,5,NULL,'mars',NULL,NULL),('Wanderer (W)',110,130,100,110,130,120,NULL,2,NULL,5,'mars',NULL,NULL),('War Adept (E)',190,170,150,140,170,90,7,NULL,7,NULL,'jupiter',NULL,NULL),('War Adept (F)',190,170,150,140,170,90,NULL,7,7,NULL,'jupiter',NULL,NULL),('Warlock',170,180,140,140,180,120,NULL,5,4,4,'mars',NULL,NULL),('Warrior',150,100,120,130,90,100,NULL,9,NULL,NULL,'basic','3:Guard, 9:Impair, 15:Protect, 26:Debilitate',NULL),('Water Monk',150,160,130,140,160,120,NULL,6,NULL,6,'mars',NULL,NULL),('Water Seer',90,130,90,100,80,130,NULL,NULL,NULL,5,'basic','1:Ply, 2:Frost, 4:Ice, 5:Cure Poison, 9:Tundra, 13:Restore, 16:Ply Well, 17:Ice Horn, 24:Glacier, 30:Break, 34:Pure Ply, 42:Ice Missile',NULL),('White Mage',150,180,130,130,150,130,3,NULL,4,4,'jupiter+mercury','1:Cure Poison, 6:Prism, 8:Plasma, 9:Ward, 11:Dull, 12:Wish, 13:Restore, 17:Revive, 22:Hail Prism, 24:Wish Well, 26:Shine Plasma, 31:Resist, 37:Blunt, 46:Spark Plasma, 46:Pure Wish, 52:Freeze Prism',NULL),('Wind Seer',80,140,80,90,130,110,NULL,NULL,5,NULL,'basic','1:Whirlwind, 4:Ray, 8:Plasma, 12:Sleep, 14:Storm Ray, 17:Bind, 18:Tornado, 26:Shine Plasma, 36:Destruct Ray, 44:Tempest, 50:Spark Plasma',NULL),('Witch',110,130,110,110,130,90,NULL,7,NULL,NULL,'lostage',NULL,NULL),('Wizard',170,190,130,140,180,120,NULL,NULL,7,7,'jupiter+mercury',NULL,NULL);
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

-- Dump completed on 2017-12-27 19:05:30
