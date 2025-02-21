-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: collector
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'CrazyMusicCollector');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add album',7,'add_album'),(26,'Can change album',7,'change_album'),(27,'Can delete album',7,'delete_album'),(28,'Can view album',7,'view_album'),(29,'Can add artist',8,'add_artist'),(30,'Can change artist',8,'change_artist'),(31,'Can delete artist',8,'delete_artist'),(32,'Can view artist',8,'view_artist');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$xNA88tLZrbhFOz7c9ja4Rq$nEKeWF7PqO+W3vw5IFEEiE12qdXP9KwZDMesAUeEQEs=','2024-06-20 01:53:30.571569',1,'cushla','','','b451102529@gmail.com',1,1,'2024-06-12 06:37:12.260409'),(2,'pbkdf2_sha256$720000$fbMAjpcoVPLhT4I7r6mLJG$8DsU7ipsKFzz4Y8rvJHuJqClXKLo0jbQzQy5CoOxFUY=','2024-06-16 09:47:36.000000',1,'ChrisTheMaster','','','',1,1,'2024-06-16 04:32:12.000000'),(3,'pbkdf2_sha256$720000$PkLBrBWdYh8f516CjYM074$+K11YbhNoLgYDBgH5f7S30ctFd+vfGbo1rVR+a5uv80=','2024-06-20 01:53:51.260752',0,'TedMosby','','','',0,1,'2024-06-18 08:45:57.000000'),(4,'pbkdf2_sha256$720000$prI731afKMge99ay373LnA$8+OD7T754aO7WU4/+xHzwVYpjkitkFKDtQg7pdQ/YJ4=','2024-06-18 09:55:31.000000',0,'BarneyStinson','','','',0,1,'2024-06-18 09:54:42.000000'),(5,'pbkdf2_sha256$720000$otXfyDyCGfbjWbLIiazutw$ITGyaPXTfNF6H4YsauGTmIJXpaI6QvLeoewcxgVn5Xk=','2024-06-18 10:00:13.000000',0,'MarshallEriksen','','','',0,1,'2024-06-18 09:59:36.000000'),(7,'pbkdf2_sha256$720000$CeISYcA6vTjY1Kz2zeco48$AR3LXXFPat3fmgpZh1yEcVO6wgdV5rslAZgC/8VU7mY=','2024-06-20 01:43:52.000000',0,'TestUser','','','',0,1,'2024-06-19 09:52:27.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,3,1),(2,4,1),(3,5,1),(4,7,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogue_album`
--

DROP TABLE IF EXISTS `catalogue_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogue_album` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `release_date` date NOT NULL,
  `genre` varchar(100) NOT NULL,
  `producer_name` varchar(100) NOT NULL,
  `record_label_name` varchar(100) NOT NULL,
  `comments` longtext NOT NULL,
  `artist_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalogue_album_artist_id_d4a2fe90_fk_catalogue_artist_id` (`artist_id`),
  CONSTRAINT `catalogue_album_artist_id_d4a2fe90_fk_catalogue_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `catalogue_artist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogue_album`
--

LOCK TABLES `catalogue_album` WRITE;
/*!40000 ALTER TABLE `catalogue_album` DISABLE KEYS */;
INSERT INTO `catalogue_album` VALUES (1,'Cassette','2018-01-06','Rock','Chris B.','Ara Institute New Zealand','A famous New Zealand artist created by Chris B, the super user of the land called Ara Institute. Also,  for the sake of this portfolio, please copy this link and check my awesome website: https://jansen-music.cushlaguo.link',1),(2,'CDs','2021-01-06','Rock','Chris B.','Ara Institute New Zealand','Get ready to immerse yourself in the world of \"CDs\" where every song is a testament to Janson’s artistry and the timeless allure of rock music. This is more than an album; it’s an experience that promises to resonate long after the final track fades.',1),(3,'Live and learn','1986-12-18','Alternative','Cushla G.','Ara Institute New Zealand','Released on December 18, 1986, this groundbreaking work was produced by the visionary Cushla G. and distributed by Ara Institute New Zealand, cementing its place in the annals of alternative music history. Woah I am good at making up stuff.',2),(4,'Curtain fall','1994-02-03','Metal','Cushla G.','Ara Institute New Zealand','This album is more than just a collection of metal anthems; it is an exploration of inner peace and monster. Rixa Linnet Wagstaff is a name I generated from a random Medieval Name Generator website and apparently she is a baker lives in a castle. Who doesn\'t want that?',2),(5,'Ice cold','2009-12-04','shoegaze','Cushla G.','Ara Institute New Zealand','This song will make you think about Vanilla Ice. Ice ice baby! Kind of cringe but it was a hit back in... sorry we gen x would not know it ;)',3),(6,'Election perfection','2020-10-12','Pop','Cushla G.','Ara Institute New Zealand','When you think, \"what a weird name for an album?\" I don\'t know, maybe Faith Efremova is a politic enthusiasm in mother Russia. At the same time, it is under the pop genre, so let\'s just guess she tried some alternative but did not get hits.',3),(7,'Two to tango','1980-06-04','Classical','Cushla G.','Ara Institute New Zealand','I don\'t know, I just love this name. Cute.',4),(8,'Chained down','1988-05-05','Metal','Cushla G.','Ara Institute New Zealand','A perfect album name for a perfect metal genre, even the release year is perfect.',4),(9,'Rocket surgery','1960-04-01','Rock','Cushla G.','Ara Institute New Zealand','A surgery for rocket. Sounds kinda romantic. Also I almost ran out of stuff to write here.',5),(10,'Big bad wolf','1989-06-03','Hipop','Cushla G.','Ara Institute New Zealand','Who\'s afraid of the big bad wolf? One of my favourite song from Disney cartoon Three Little Pigs. Maybe a good title for a rap song? I think 21 Savage or Lil Wayne would be the perfect artists to do this album.',5),(11,'Democracy','2024-06-16','Rock','Cushla G.','Ara Institute New Zealand','Sarcastically, Guns N\' Roses album \"Chinese Democracy\" never toured in China, mainland. Of course it is refused because of the Chinese democracy.',6),(12,'Champagne Problem','2024-06-16','Pop','Cushla G.','Ara Institute New Zealand','This is actually a real song (and the only real song) from Taylor Swift. Well I run out of names for my album and Apple Music is playing this song right at this moment. Who wouldn\'t appreciate Taylor anyway? I do.',6);
/*!40000 ALTER TABLE `catalogue_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogue_artist`
--

DROP TABLE IF EXISTS `catalogue_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogue_artist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogue_artist`
--

LOCK TABLES `catalogue_artist` WRITE;
/*!40000 ALTER TABLE `catalogue_artist` DISABLE KEYS */;
INSERT INTO `catalogue_artist` VALUES (1,'Nikau Janson','New Zealand'),(2,'Rixa Linnet Wagstaff','Narnia'),(3,'Faith Efremova','Russia'),(4,'Echezonachukwu Uchechukwu','Igbo'),(5,'Djoeke de Rijk','Dutch'),(6,'Cushla Guo','China');
/*!40000 ALTER TABLE `catalogue_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-12 23:47:35.538469','1','Nikau Janson',1,'[{\"added\": {}}]',8,1),(2,'2024-06-13 01:07:00.531263','1','Cassette',1,'[{\"added\": {}}]',7,1),(3,'2024-06-13 01:10:25.323311','2','CDs',1,'[{\"added\": {}}]',7,1),(4,'2024-06-13 01:21:20.227631','2','Rixa Linnet Wagstaff',1,'[{\"added\": {}}]',8,1),(5,'2024-06-13 01:24:49.745253','3','Faith Efremova',1,'[{\"added\": {}}]',8,1),(6,'2024-06-13 01:25:19.565244','4','Echezonachukwu Uchechukwu',1,'[{\"added\": {}}]',8,1),(7,'2024-06-13 01:25:35.672765','5','Djoeke de Rijk',1,'[{\"added\": {}}]',8,1),(8,'2024-06-13 01:29:54.389097','3','Live and learn',1,'[{\"added\": {}}]',7,1),(9,'2024-06-13 01:32:34.066822','4','Curtain fall',1,'[{\"added\": {}}]',7,1),(10,'2024-06-13 01:34:23.104129','5','Ice cold',1,'[{\"added\": {}}]',7,1),(11,'2024-06-13 01:35:06.711835','6','Election perfection',1,'[{\"added\": {}}]',7,1),(12,'2024-06-13 01:36:18.438724','7','Two to tango',1,'[{\"added\": {}}]',7,1),(13,'2024-06-13 01:37:06.612791','8','Chained down',1,'[{\"added\": {}}]',7,1),(14,'2024-06-13 01:37:57.261646','9','Rocket surgery',1,'[{\"added\": {}}]',7,1),(15,'2024-06-13 01:39:30.842747','10','Big bad wolf',1,'[{\"added\": {}}]',7,1),(16,'2024-06-16 03:41:22.564305','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(17,'2024-06-16 03:41:52.929091','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(18,'2024-06-16 03:57:58.571962','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\", \"Comments\"]}}]',7,1),(19,'2024-06-16 03:58:16.485857','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(20,'2024-06-16 03:58:31.049909','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(21,'2024-06-16 03:59:48.471734','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Record label name\", \"Comments\"]}}]',7,1),(22,'2024-06-16 04:00:02.148918','2','CDs',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(23,'2024-06-16 04:00:41.857897','2','CDs',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(24,'2024-06-16 04:01:01.634829','3','Live and learn',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(25,'2024-06-16 04:01:12.212857','4','Curtain fall',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(26,'2024-06-16 04:01:19.229709','5','Ice cold',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(27,'2024-06-16 04:01:23.735478','5','Ice cold',2,'[]',7,1),(28,'2024-06-16 04:01:30.128674','6','Election perfection',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(29,'2024-06-16 04:01:37.237667','7','Two to tango',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(30,'2024-06-16 04:01:44.122803','8','Chained down',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(31,'2024-06-16 04:01:49.371421','9','Rocket surgery',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(32,'2024-06-16 04:01:55.642633','10','Big bad wolf',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(33,'2024-06-16 04:02:56.693248','3','Live and learn',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(34,'2024-06-16 04:05:11.734271','4','Curtain fall',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(35,'2024-06-16 04:07:56.666582','5','Ice cold',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(36,'2024-06-16 04:12:16.083196','6','Election perfection',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(37,'2024-06-16 04:12:53.564721','7','Two to tango',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(38,'2024-06-16 04:14:18.707924','8','Chained down',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(39,'2024-06-16 04:15:26.348774','9','Rocket surgery',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(40,'2024-06-16 04:18:27.836670','10','Big bad wolf',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(41,'2024-06-16 04:32:12.649642','2','ChrisTheMaster',1,'[{\"added\": {}}]',4,1),(42,'2024-06-16 04:32:42.387057','2','ChrisTheMaster',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1),(43,'2024-06-16 09:59:24.168037','6','Cushla Guo',1,'[{\"added\": {}}]',8,1),(44,'2024-06-16 10:08:32.583112','11','Democracy',1,'[{\"added\": {}}]',7,1),(45,'2024-06-16 10:21:30.986669','12','Champagne Problem',1,'[{\"added\": {}}]',7,1),(46,'2024-06-16 10:29:09.716986','12','Champagne Problem',2,'[{\"changed\": {\"fields\": [\"Producer name\", \"Record label name\"]}}]',7,1),(47,'2024-06-16 10:40:23.244215','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(48,'2024-06-16 10:45:37.298043','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(49,'2024-06-16 10:55:18.468203','1','Cassette',2,'[{\"changed\": {\"fields\": [\"Comments\"]}}]',7,1),(50,'2024-06-18 08:45:57.731536','3','TedMosby',1,'[{\"added\": {}}]',4,1),(51,'2024-06-18 08:51:06.776030','3','TedMosby',2,'[]',4,1),(52,'2024-06-18 08:52:22.488121','2','ChrisTheMaster',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(53,'2024-06-18 09:39:06.013907','1','CrazyMusicCollector',1,'[{\"added\": {}}]',3,1),(54,'2024-06-18 09:46:21.771354','2','ChrisTheMaster',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(55,'2024-06-18 09:47:37.530748','1','CrazyMusicCollector',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(56,'2024-06-18 09:47:58.771699','3','TedMosby',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(57,'2024-06-18 09:50:38.536322','3','TedMosby',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(58,'2024-06-18 09:52:11.299835','3','TedMosby',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(59,'2024-06-18 09:54:43.285001','4','BarneyStinson',1,'[{\"added\": {}}]',4,1),(60,'2024-06-18 09:54:52.628552','4','BarneyStinson',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,1),(61,'2024-06-18 09:56:26.259135','3','TedMosby',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(62,'2024-06-18 09:56:41.399711','3','TedMosby',2,'[]',4,1),(63,'2024-06-18 09:57:06.618820','4','BarneyStinson',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(64,'2024-06-18 09:57:10.411312','4','BarneyStinson',2,'[]',4,1),(65,'2024-06-18 09:59:37.224600','5','MarshallEriksen',1,'[{\"added\": {}}]',4,1),(66,'2024-06-18 09:59:47.735643','5','MarshallEriksen',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,1),(67,'2024-06-18 22:31:09.622144','7','Cushla guo',1,'[{\"added\": {}}]',8,1),(68,'2024-06-18 22:31:45.684331','7','Cushla guo',3,'',8,1),(70,'2024-06-19 09:52:28.026976','7','TestUser',1,'[{\"added\": {}}]',4,1),(71,'2024-06-19 09:52:34.685202','7','TestUser',2,'[]',4,1),(72,'2024-06-20 01:51:32.009297','7','TestUser',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(73,'2024-06-20 01:52:01.440289','3','TedMosby',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(74,'2024-06-20 01:52:07.864456','4','BarneyStinson',2,'[]',4,1),(75,'2024-06-20 01:52:13.666491','4','BarneyStinson',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(76,'2024-06-20 01:52:34.910639','1','CrazyMusicCollector',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(77,'2024-06-20 01:52:44.532900','5','MarshallEriksen',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'catalogue','album'),(8,'catalogue','artist'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-12 03:57:18.702968'),(2,'auth','0001_initial','2024-06-12 03:57:19.768812'),(3,'admin','0001_initial','2024-06-12 03:57:20.027912'),(4,'admin','0002_logentry_remove_auto_add','2024-06-12 03:57:20.053860'),(5,'admin','0003_logentry_add_action_flag_choices','2024-06-12 03:57:20.067005'),(6,'contenttypes','0002_remove_content_type_name','2024-06-12 03:57:20.196333'),(7,'auth','0002_alter_permission_name_max_length','2024-06-12 03:57:20.302516'),(8,'auth','0003_alter_user_email_max_length','2024-06-12 03:57:20.420853'),(9,'auth','0004_alter_user_username_opts','2024-06-12 03:57:20.434711'),(10,'auth','0005_alter_user_last_login_null','2024-06-12 03:57:20.538179'),(11,'auth','0006_require_contenttypes_0002','2024-06-12 03:57:20.544737'),(12,'auth','0007_alter_validators_add_error_messages','2024-06-12 03:57:20.557632'),(13,'auth','0008_alter_user_username_max_length','2024-06-12 03:57:20.665369'),(14,'auth','0009_alter_user_last_name_max_length','2024-06-12 03:57:20.770103'),(15,'auth','0010_alter_group_name_max_length','2024-06-12 03:57:20.871378'),(16,'auth','0011_update_proxy_permissions','2024-06-12 03:57:20.885154'),(17,'auth','0012_alter_user_first_name_max_length','2024-06-12 03:57:20.990620'),(18,'sessions','0001_initial','2024-06-12 03:57:21.063118'),(19,'catalogue','0001_initial','2024-06-12 23:26:34.109385');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('069xnskg3jmkk81s4e6k4o7pulcnz66d','.eJxVjMsOwiAQRf-FtSE8ijAu3fcbmoEZpGogKe3K-O_apAvd3nPOfYkJt7VMW-dlmklchBen3y1ienDdAd2x3ppMra7LHOWuyIN2OTbi5_Vw_w4K9vKtg0OOZ1AuD6DR6UzJZmfAI1sTLehBK_KUtc9BBWYfPWCKYBy5HADF-wPnljgg:1sK3o6:67vtU5NssWWxpeioVfzN5HqL_rtcjxonGiZsKmv5Xoo','2024-07-03 22:29:34.924633'),('44fdpgz83mu04fnf3pvzybk7cy85q3wy','.eJxVjMsOwiAQAP-FsyGw5VE8eu83NMuylaqBpLQn478bkh70OjOZt5jx2PN8NN7mNYmr0OLyyyLSk0sX6YHlXiXVsm9rlD2Rp21yqolft7P9G2RsuW8tsBl8VAZiNKAANYFGrVihI4dpTDYthjD4YAewwSGZhUfyGhV4Iz5fzzQ3fg:1sJjKt:2sQTxTMtuReWFwKdei3pL2fDMrlZUeyv8TsdGkCwx40','2024-07-03 00:38:03.002239'),('4ti6wpvkjgqti4qi4jvdxh3ad4x4trvb','.eJxVjMsOwiAQAP-FsyGw5VE8eu83NMuylaqBpLQn478bkh70OjOZt5jx2PN8NN7mNYmr0OLyyyLSk0sX6YHlXiXVsm9rlD2Rp21yqolft7P9G2RsuW8tsBl8VAZiNKAANYFGrVihI4dpTDYthjD4YAewwSGZhUfyGhV4Iz5fzzQ3fg:1sHI98:DD5HadMtlM2efgqwytyh0jYZnXNpIV5oiNbmJkS5c04','2024-06-26 07:11:50.587116'),('87f664zls91obj4k8ieurru47yk1o8np','.eJxVjDsOgzAQBe_iOrLAXgykTM8Z0H68MUlkJAxVlLsHJIqknZn33mbEbU3jVuIyTmKuxpvLLyPkZ8yHkAfm-2x5zusykT0Se9pih1ni63a2fwcJS9rX0KgDL9pq1_u6CZ0TYK--rwnFRXaxBVZGancCQkAO6qoKGrRT4mA-X-hdOGY:1sK6zn:8P3w0sLys__ZfA1GGoJKQxBt8rD3wBs58AvspOTL7lg','2024-07-04 01:53:51.267246'),('87jclu2hlyxjrhgegjo0o41ecxl1uok4','.eJxVjMsOwiAQRf-FtSE8ijAu3fcbmoEZpGogKe3K-O_apAvd3nPOfYkJt7VMW-dlmklchBen3y1ienDdAd2x3ppMra7LHOWuyIN2OTbi5_Vw_w4K9vKtg0OOZ1AuD6DR6UzJZmfAI1sTLehBK_KUtc9BBWYfPWCKYBy5HADF-wPnljgg:1sK6Vt:mDoXT64a1A5bel_lFMoLr9df2Oy1JCG63-dwWaFHT8U','2024-07-04 01:22:57.825470'),('9bjdxz6aa6oy0qu1wos39a0pko1gxkws','.eJxVjDsOwjAQRO_iGlnYTvyhpOcM1np3jQPIkeKkQtwdR0oBzRTz3sxbRNjWErfGS5xIXIQVp98uAT657oAeUO-zxLmuy5TkrsiDNnmbiV_Xw_07KNBKXyubc4DgB9sjqKyVH9MZCJXDDpxXBnLKGBB878gMRtOomRMbDsqJzxfxnjh7:1sJltQ:YuztiZolazAWoLolwhTXbYtdC7zoeXzbrjz2f5QTTfg','2024-07-03 03:21:52.517819'),('azvuf1x43jblcerpedy9tx7xk6s2v8ap','.eJxVjMsOwiAQRf-FtSE8ijAu3fcbmoEZpGogKe3K-O_apAvd3nPOfYkJt7VMW-dlmklchBen3y1ienDdAd2x3ppMra7LHOWuyIN2OTbi5_Vw_w4K9vKtg0OOZ1AuD6DR6UzJZmfAI1sTLehBK_KUtc9BBWYfPWCKYBy5HADF-wPnljgg:1sK2Xx:xRYaQcQQk81pOozkbV5Q1zqfKhOxRZ4mzgTIPGt9-_k','2024-07-03 21:08:49.263990'),('gh5lcwqfuol22si53d37n7eifommo5v3','.eJxVjMsOwiAQAP-FsyGw5VE8eu83NMuylaqBpLQn478bkh70OjOZt5jx2PN8NN7mNYmr0OLyyyLSk0sX6YHlXiXVsm9rlD2Rp21yqolft7P9G2RsuW8tsBl8VAZiNKAANYFGrVihI4dpTDYthjD4YAewwSGZhUfyGhV4Iz5fzzQ3fg:1sHXph:VTNcnV2U49XhGl67HIhmzmKrxWS1Xg5ZuN8Fox7iRHg','2024-06-26 23:56:49.008414');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20  2:07:21
