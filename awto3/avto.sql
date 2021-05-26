-- MySQL dump 10.13  Distrib 5.6.40, for Win32 (AMD64)
--
-- Host: localhost    Database: avto
-- ------------------------------------------------------
-- Server version	5.6.40-log

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
-- Table structure for table `anketa`
--

DROP TABLE IF EXISTS `anketa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa` (
  `wakan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `im` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fam` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `oth` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dop` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa`
--

LOCK TABLES `anketa` WRITE;
/*!40000 ALTER TABLE `anketa` DISABLE KEYS */;
INSERT INTO `anketa` VALUES ('привет',1,NULL,NULL,NULL,NULL),('программист',2,NULL,NULL,NULL,NULL),('бухгалтер',3,'алекс',NULL,NULL,NULL),('программист',4,'Олег','Петров',NULL,NULL),('',5,'','','',''),('бухгалтер',6,'Алла','Норотова','Николаевна','Опыт работы 3 года'),('программист',7,'Олег','Попов','Евгеньевич','Тел+375298152356.Опыт работы 3 года'),('программист',8,'Олег','Котов','Евгеньевич','+375298175698\r\nОпыт работы 4 года'),('',9,'','','','');
/*!40000 ALTER TABLE `anketa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,1,'Lexus',NULL,NULL),(5,1,'Es',NULL,NULL),(6,1,'Gx',NULL,NULL),(7,0,'Tayota',NULL,NULL),(8,0,'Camry',NULL,NULL),(9,0,'Corolla',NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_author` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `comment_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (100,'игорь','Всё хорошо',0,'0','2019-11-18 13:21:33',0,NULL),(101,'пётр 233232','Мне нравится',0,'0','2019-11-18 13:21:33',0,NULL),(102,'петров','<p>Хотел бы работать </p>\r\n',0,'0','2019-11-18 13:43:59',0,'qwedr@mail.ru');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dwig`
--

DROP TABLE IF EXISTS `dwig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dwig` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dwig`
--

LOCK TABLES `dwig` WRITE;
/*!40000 ALTER TABLE `dwig` DISABLE KEYS */;
INSERT INTO `dwig` VALUES (1,'benzin'),(2,NULL);
/*!40000 ALTER TABLE `dwig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `golosow`
--

DROP TABLE IF EXISTS `golosow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golosow` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `naim` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `otw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `golosow`
--

LOCK TABLES `golosow` WRITE;
/*!40000 ALTER TABLE `golosow` DISABLE KEYS */;
INSERT INTO `golosow` VALUES (5,' 	В каком городе не работал великий композитор 18-го века Кристоф Виллибальд Глюк?','Париж '),(6,' 	Кто первым доказал периодичность появления комет?','Коперник'),(7,' 	В каком городе не работал великий композитор 18-го века Кристоф Виллибальд Глюк?','Париж '),(8,' 	В каком городе не работал великий композитор 18-го века Кристоф Виллибальд Глюк?','Париж '),(9,' 	В каком городе не работал великий композитор 18-го века Кристоф Виллибальд Глюк?','Париж '),(10,' 	В каком городе не работал великий композитор 18-го века Кристоф Виллибальд Глюк?','Вена'),(11,'',''),(12,' 	В каком городе не работал великий композитор 18-го века Кристоф Виллибальд Глюк?','Милан'),(13,' 	Кто первым доказал периодичность появления комет?',' Кеплер  '),(14,' 	Кто первым доказал периодичность появления комет?','Коперник'),(15,' 	Кто первым доказал периодичность появления комет?','Галилей'),(16,' 	Кто первым доказал периодичность появления комет?','');
/*!40000 ALTER TABLE `golosow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'Products/Product1/11fa01.jpg',1,0,'Product','3827d67a76-3',''),(2,'Products/Product1/1b67db.jpg',1,0,'Product','aaacbf99e6-4',''),(3,'Products/Product1/ec17c1.jpg',1,0,'Product','47a77abd18-5',''),(4,'Products/Product1/34ea12.jpg',1,0,'Product','91630b9025-6',''),(5,'Products/Product1/dcce9b.jpg',1,0,'Product','327b4633f2-7',''),(6,'Products/Product1/14572d.jpg',1,0,'Product','d94faace8b-8',''),(7,'Products/Product1/1dd2a4.jpg',1,0,'Product','1610f67315-9',''),(8,'Products/Product1/02cbc8.jpg',1,0,'Product','a82dd6d474-10',''),(9,'Products/Product1/0a345c.jpg',1,0,'Product','e3c606597b-11',''),(10,'Products/Product1/7879f3.jpg',1,0,'Product','8b98d314bf-12',''),(11,'Products/Product1/77762c.jpg',1,0,'Product','6cfeaefd12-13',''),(12,'Products/Product1/b60a8b.jpg',1,0,'Product','c703110db0-14',''),(13,'Products/Product1/e3b5e4.jpg',1,0,'Product','d9b5a192a9-15',''),(14,'Products/Product1/a56812.jpg',1,0,'Product','60ad88c4cf-16',''),(15,'Products/Product1/81a7f1.jpg',1,0,'Product','def1fd7555-17',''),(16,'Products/Product1/152bdf.jpg',1,0,'Product','84c1565525-18',''),(17,'Products/Product1/807c48.jpg',1,0,'Product','89cb1af6c9-19',''),(18,'Products/Product1/25099f.jpg',1,0,'Product','73b6cb0804-20',''),(19,'Products/Product2/1a9e0f.jpg',2,0,'Product','7055ae64ad-3',''),(20,'Products/Product2/c86bb2.jpg',2,0,'Product','04764259a1-4',''),(21,'Products/Product2/dcb4d7.jpg',2,0,'Product','8152a0e253-5',''),(22,'Products/Product2/3d62a1.jpg',2,0,'Product','1ab0a343f5-6',''),(23,'Products/Product2/7917a1.jpg',2,0,'Product','5e4201055a-7',''),(24,'Products/Product1/6ae81e.jpg',1,0,'Product','e6a1ea110a-21',''),(25,'Products/Product1/d57a98.jpg',1,0,'Product','d58109b14b-22',''),(26,'Products/Product1/e7b319.jpg',1,0,'Product','52b83c70ba-23',''),(27,'Products/Product1/a9f71e.jpg',1,0,'Product','4e9ead2a5a-24',''),(28,'Products/Product1/4ee355.jpg',1,0,'Product','9daf812b89-25',''),(29,'Products/Product6/802cc3.jpg',6,0,'Product','f33adf97d7-3',''),(30,'Products/Product6/a7ccce.jpg',6,0,'Product','2468f45344-2',''),(31,'Products/Product7/ae1131.jpg',7,0,'Product','ff0140465d-3',''),(32,'Products/Product1/f8e457.jpg',1,0,'Product','7588043464-26',''),(33,'Products/Product1/2e0f55.jpg',1,0,'Product','720a870f40-27',''),(34,'Products/Product2/cb69f7.jpg',2,0,'Product','a4de5afe64-8',''),(35,'Products/Product8/deb2f9.jpg',8,0,'Product','26be0a3d67-3',''),(36,'Products/Product3/2b26d1.jpg',3,0,'Product','0000458ae2-2',''),(37,'Products/Product4/115a09.png',4,0,'Product','cd6ae798d4-3',''),(38,'Products/Product5/b9e2f9.jpg',5,0,'Product','c3221927b6-3',''),(39,'Products/Product2/08ba07.jpg',2,0,'Product','a3778512bb-9',''),(40,'Products/Product1/8f8223.jpg',1,0,'Product','e7c0339c29-28',''),(41,'Products/Product2/72834b.jpg',2,0,'Product','8b15225285-2',''),(42,'Products/Product1/75f56a.jpg',1,0,'Product','1cba02386a-29',''),(43,'Products/Product7/fd4b0b.jpg',7,0,'Product','f577f213f8-2',''),(44,'Products/Product3/0b24b1.png',3,1,'Product','e432728b1b-1',''),(45,'Products/Product4/d894c9.jpg',4,0,'Product','56e1d0b7ae-2',''),(46,'Products/Product5/e53de5.jpg',5,0,'Product','11b277c378-2',''),(47,'Products/Product5/be281c.jpg',5,1,'Product','7706685800-1',''),(48,'Products/Product4/374a3b.jpg',4,1,'Product','203364fd1b-1',''),(49,'Products/Product8/826d3e.png',8,0,'Product','1e6cd8b903-4',''),(50,'Logos/Logo19/4e9d89.png',19,0,'Logo','d6830cd185-2',''),(51,'Logos/Logo19/ad1e42.jpg',19,1,'Logo','83e44a957b-1',''),(52,'Logos/Logo9/95388d.png',9,1,'Logo','9627773a2b-1',''),(53,'Products/Product8/03fa31.jpg',8,0,'Product','fc9f5535b4-5',''),(54,'Products/Product8/a240db.jpg',8,0,'Product','3580b549c4-6',''),(55,'Products/Product8/b30aca.jpg',8,0,'Product','9f2618a2cc-2',''),(56,'Logos/Logo3/cec69c.jpg',3,0,'Logo','b303b900f9-2',''),(57,'Logos/Logo3/8e1316.jpg',3,1,'Logo','51fb9bca56-1',''),(58,'Products/Product7/497e82.jpg',7,1,'Product','48f357235f-1',''),(59,'Products/Product1/367c85.jpg',1,0,'Product','3471adc31b-30',''),(60,'Products/Product2/9682ee.jpg',2,1,'Product','92f5ae1c6e-1',''),(61,'Products/Product8/4fc22f.jpg',8,1,'Product','dc9863a99e-1',''),(62,'Products/Product9/35efc9.jpg',9,1,'Product','5b08195eed-1',''),(63,'Products/Product6/a69633.jpg',6,1,'Product','49cc765b26-1',''),(64,'Products/Product1/756b2f.jpg',1,0,'Product','2d12827cf3-31',''),(65,'Products/Product1/e7c4dc.jpg',1,0,'Product','fcc91c8a90-32',''),(66,'Products/Product1/51a058.jpg',1,0,'Product','fa9f0a5295-33',''),(67,'Products/Product1/3918f4.jpg',1,0,'Product','816a3f8212-34',''),(68,'Products/Product1/5f3921.jpg',1,0,'Product','bad67f034f-35',''),(69,'Products/Product1/71140a.jpg',1,0,'Product','453a5a2b55-2',''),(70,'Nagrads/Nagrad1/98a278.jpg',1,0,'Nagrad','0110e31f6e-2',''),(71,'Nagrads/Nagrad1/b45d1b.jpg',1,1,'Nagrad','25c9a7b86f-1',''),(72,'Products/Product1/e26f20.jpg',1,1,'Product','8356fcc021-1',''),(73,'Towars/Towar4/5dbd81.jpg',4,0,'Towar','383aa81a3c-3',''),(74,'Towars/Towar4/107d85.jpg',4,0,'Towar','d3cdca4d0f-2',''),(75,'Towars/Towar2/2de9dc.jpg',2,0,'Towar','da49a1ecf1-3',''),(76,'Towars/Towar2/f018f2.jpg',2,0,'Towar','12efea1cb1-4',''),(77,'Towars/Towar1/a3c2b2.jpg',1,0,'Towar','e41a3c3953-2',''),(78,'Towars/Towar2/852c2c.jpg',2,0,'Towar','b6e0351123-2',''),(79,'Towars/Towar1/c8783a.png',1,1,'Towar','136db046ed-1',''),(80,'Towars/Towar2/51b48f.png',2,1,'Towar','ed01dc1585-1',''),(81,'Towars/Towar4/da85e1.png',4,1,'Towar','14cd4f23bb-1','');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1524224397),('m140622_111540_create_image_table',1524224402),('m140622_111545_add_name_to_image_table',1524224403);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nagrad`
--

DROP TABLE IF EXISTS `nagrad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nagrad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  `now` longtext,
  `created` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `addtime` date DEFAULT NULL,
  `corcon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nagrad`
--

LOCK TABLES `nagrad` WRITE;
/*!40000 ALTER TABLE `nagrad` DISABLE KEYS */;
INSERT INTO `nagrad` VALUES (1,6,' АПК Шины ALLIANCE отмечены наградой ','<p>Шины Alliance 398 MPT получают серебряную медаль выставки Agritechnica и становятся единственными шинами, получившими награду в этом году, за примененный в них инновационный подход: это первые сельскохозяйственные шины, позволяющие развивать на дороге скорость до 100 км/ч и обеспечивающие во время езды устойчивость, низкий уровень шума и вибрации, низкий нагрев, а также безопасность и комфорт, отличное сцепление с грунтом, высокую грузоподъемность, хорошую проходимость и защиту почвы на полях. Серебряная медаль выставки Agritechnica за новаторское решение вручается компании Alliance за шины 398 MPT &mdash; первые в мире сельскохозяйственные шины, позволяющие развивать на дороге скорость до 100 км/ч. Предназначенные для грузовых машин, эти шины полностью меняют ситуацию в сфере сельскохозяйственных перевозок. В поле они ведут себя как сельскохозяйственные шины, а на шоссе как дорожные шины, позволяющие развивать высокую скорость и обеспечивающие плавность хода и безопасность езды. Концепция прямой транспортировки Грузовому сельскохозяйственному автотранспорту больше не нужно ждать погрузки урожая на краю поля. Отныне техника может выходить непосредственно на поле и работать бок о бок с уборочными машинами или комбайнами, а затем, полностью загрузившись, возвращаться на шоссе для транспортировки урожая до следующего пункта назначения со скоростью до 100 км/час. Новая концепция прямой транспортировки исключает из цикла дополнительное оборудование (например, зерновозы и т.д.), сокращая, таким образом, трудозатраты, время и расход топлива и одновременно повышая производительность труда. Будучи уникальной новинкой, шины 398 MPT компании Alliance обладают характеристиками и производительностью, которые не может предложить ни один другой производитель в мире. Прежде всего, это сельскохозяйственные шины, обеспечивающие отличную тягу в поле, высокую грузоподъемность, хорошую проходимость и защиту почвы. И в то же время, как дорожные шины они позволяют развивать высокую скорость, обеспечивают устойчивость, низкий уровень шума и вибрации, низкий нагрев, а также плавность хода и безопасность езды. Принципиально новый подход Система централизованного регулирования давления в шинах позволяет быстро изменять давление с высокого на низкое и наоборот, в зависимости от того по какой поверхности движется техника &mdash; по полю или по дороге. Давление в шинах может быть снижено до 0,8 бар на поле и увеличено до 6,5 бар на дороге, что значительно повышает эффективность шин. &laquo;Компания Alliance разрабатывает шины с 1950-х годов, являясь абсолютным лидером в области флотационных технологий. Эта награда за новаторское решение &mdash; дань уважения инженерам компании Alliance, которые применили инновационный принципиально новый подход, развеяли миф и создали невозможное &mdash; шину, которая сочетает в себе лучшее из двух сегментов. Это определенно новая глава в истории шинной промышленности и сельского хозяйства&raquo;, - говорит Анджело Норонья (Angelo Noronha), президент Alliance Tire Group в Европе. *** О компании ATG Alliance Tire Group входит в состав Yokohama Group. Имея почти 60-летний опыт работы, Alliance Tire Group специализируется на проектировании, разработке, производстве и продаже шин под брендами Alliance, Galaxy и Primex для сельскохозяйственной, лесной, строительной, промышленной и землеройной техники. Компания ATG обслуживает клиентов в 120 странах на 6 континентах и предлагает полный спектр продукции, от базовых шин начального уровня до широкого ассортимента продукции высшего качества с высокой добавленной стоимостью. Все шины Группы спроектированы, разработаны и испытаны в передовых научно-исследовательских центрах по всему миру.</p>\r\n\r\n<p>&nbsp;</p>\r\n',10,'','','12.jpg','1','0','0','    \"Заявления России о компенсациях, которые Дания может выплатить за задержку проекта \"Северный поток-2\", неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно — есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. \r\n\r\n    По сути, отказать Дания не может — разрешение на прокладку \"Северного потока\" в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы — множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные\", — отмечает аналитик.  Об этом сообщает Рамблер. Далее: https://news.rambler.ru/world/42333551/?utm_content=rnews&utm_medium=read_more&utm_source=copylink','2019-11-27 10:26:28','2019-11-14','Шины ALLIANCE отмечены наградой ');
/*!40000 ALTER TABLE `nagrad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2018-03-16 10:45:34','2018-03-16 10:45:34',2,76,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 12'),(2,'2018-03-16 10:55:10','2018-03-16 10:55:10',1,0,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 13'),(3,'2018-03-16 11:16:04','2018-03-16 11:16:04',1,100,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 12'),(4,'2018-03-19 09:51:26','2018-03-19 09:51:26',3,168,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 12'),(5,'2018-07-12 15:48:29','2018-07-12 15:48:29',7,161,'0','константин','spir@mail.ru','34567890','макаёнко 9'),(6,'2018-07-20 15:55:31','2018-07-20 15:55:31',1,25,'0','константин','spir@mail.ru','34567890','макаёнко 9'),(7,'2018-07-20 16:17:00','2018-07-20 16:17:00',1,25,'0','константин','spir@mail.ru','34567890','макаёнко 9'),(8,'2018-09-26 15:31:06','2018-09-26 15:31:06',1,10,'0','константин','konstanti.spirin@mail.ru','213231231','макаёнко 9'),(9,'2018-09-26 15:57:29','2018-09-26 15:57:29',1,10,'0','константин','spir@mail.ru','34567890','Макаёнко 9'),(10,'2018-09-26 15:57:42','2018-09-26 15:57:42',1,10,'0','константин','spir@mail.ru','34567890','Макаёнко 9'),(11,'2018-09-27 11:17:24','2018-09-27 11:17:24',2,20,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(12,'2018-09-27 11:31:32','2018-09-27 11:31:32',3,30,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(13,'2018-09-27 11:54:09','2018-09-27 11:54:09',4,40,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(14,'2018-09-27 11:55:14','2018-09-27 11:55:14',4,40,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(15,'2018-09-27 11:58:34','2018-09-27 11:58:34',4,40,'0','константин','konstanti.spirin@mail.ru','4567890','макаёнко 9'),(16,'2018-09-27 11:59:28','2018-09-27 11:59:28',1,56,'0','константин','konstanti.spirin@mail.ru','4567890','макаёнко 9'),(17,'2018-09-27 14:03:31','2018-09-27 14:03:31',2,66,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(18,'2018-10-10 11:55:31','2018-10-10 11:55:31',1,56,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(19,'2018-10-17 12:27:26','2018-10-17 12:27:26',2,140,'0','константин','spirin.costia@yande.ru','4567890','Макаёнко 9'),(20,'2019-02-25 03:36:37','2019-02-25 03:36:37',3,76,'0','константин','spirin.costia@yandex.ru','+375298175728','макаёнко 9'),(21,'2019-10-11 08:09:48','2019-10-11 08:09:48',1,10,'0','константин','spirin.costiayandex.ru','+375298175728','макаёнко 9'),(22,'2019-10-11 08:10:16','2019-10-11 08:10:16',1,10,'0','константин','spirin.costia@andex.ru','+375298175728','макаёнко 9'),(23,'2019-12-05 15:01:20','2019-12-05 15:01:20',3,122,'0','константин','konstanti.spirin@mail.ru','+375298175728','макаёнко 9'),(24,'2019-12-05 15:02:26','2019-12-05 15:02:26',3,122,'0','константин','konstanti.spirin@mail.ru','+375298175728','макаёнко 9'),(25,'2019-12-05 15:03:14','2019-12-05 15:03:14',3,122,'0','константин','konstanti.spirin@mail.ru','+375298175728','макаёнко 9'),(26,'2019-12-05 15:04:12','2019-12-05 15:04:12',3,122,'0','константин','konstanti.spirin@mail.ru','+375298175728','макаёнко 9'),(27,'2019-12-06 15:30:38','2019-12-06 15:30:38',2,112,'0','константин','spirin.costia@yandex.ru','345678','sert23'),(28,'2019-12-12 12:30:54','2019-12-12 12:30:54',2,112,'0','константин','konstanti.spirin@mail.ru','+375298175728','макаёнко 9');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(2,1,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(3,2,5,'Блузка Kira Plastinina 17-16-17453-SM-29 S',0,1,0),(4,3,6,'Кардиган Levi\'s Icy Grey Heather M',100,1,100),(5,4,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,3,168),(6,5,8,'sven mk155',25,3,75),(7,5,2,'Established Fact',56,1,56),(8,5,1,'Various Versions',10,3,30),(9,6,8,'sven mk155',25,1,25),(10,7,8,'sven mk155',25,1,25),(11,8,1,'Various Versions',10,1,10),(12,9,1,'Various Versions',10,1,10),(13,10,1,'Various Versions',10,1,10),(14,11,1,'Various Versions',10,2,20),(15,12,1,'Various Versions',10,3,30),(16,13,1,'Various Versions',10,4,40),(17,14,1,'Various Versions',10,4,40),(18,15,1,'Various Versions',10,4,40),(19,16,2,'Established Fact',56,1,56),(20,17,2,'Established Fact',56,1,56),(21,17,1,'Various Versions',10,1,10),(22,18,2,'Established Fact',56,1,56),(23,19,4,'Established Fact',70,2,140),(24,20,2,'TRUST Mico USB Microphone (20378)',56,1,56),(25,20,1,'MK-490',10,2,20),(26,21,1,'MK-490',10,1,10),(27,22,1,'MK-490',10,1,10),(28,25,1,'MK-490',10,1,10),(29,25,2,'TRUST Mico USB Microphone (20378)',56,2,112),(30,26,1,'MK-490',10,1,10),(31,26,2,'TRUST Mico USB Microphone (20378)',56,2,112),(32,27,2,'TRUST Mico USB Microphone (20378)',56,2,112),(33,28,2,'Dunlop Grandtrek Ice 03 ',56,2,112);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (4,'пётр 233232','qwer@mail.ru','<p>Привет</p>\r\n'),(5,'пётр','qwer@mail.ru','<p>Привет</p>\r\n');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  `now` longtext,
  `created` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,4,'Россия показала Дании   ','<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Фото: Bernd W&uuml;stneck/dpa 1 Комментарии9 Дания понесет серьезные затраты, если дойдет до ее &quot;наказания&quot; в европейских судах за задержку &quot;Северного потока-2&quot;. Об этом ФБА &quot;Экономика сегодня&quot; рассказал директор Центра изучения мировых энергетических рынков Института энергетических исследований РАН Вячеслав Кулагин. &quot;Заявления России о компенсациях, которые Дания может выплатить за задержку проекта &quot;Северный поток-2&quot;, неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно &mdash; есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. По сути, отказать Дания не может &mdash; разрешение на прокладку &quot;Северного потока&quot; в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы &mdash; множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные&quot;, &mdash; отмечает аналитик. СМИ Дании тиражируют заявление представителей компании Bech-Bruun, которая выступает в стране адвокатом проекта &quot;Северный поток-2&quot;. Юристы уведомили Копенгаген: если в кратчайшие сроки не будут выданы необходимые разрешения на прокладку газопровода, датские власти столкнутся с неприятными последствиями. Это отсрочит реализацию российско-германского проекта, и Москва намерена подать в суд иск с требованием компенсации. Блокировка выдачи разрешения на строительство грозит вылиться в значимые неприятные финансовые последствия. &quot;Если сейчас Копенгаген упрямо молчит в ответ на заявки России, то в суде ему в любом случае придется отвечать. А аргументов на запрет прокладывать трубы у Дании просто нет, то есть вероятность проигрыша в суде ЕС у датчан очень велика. Страна загоняет себя в тупик, ведь по логике и европейскому праву разрешение должно было быть выдано еще много месяцев назад. Копенгаген играет с огнем: если будет пройдена точка невозврата и Россия подаст в суд, последствия будут очень неприятными. И здесь нужно принять во внимание, что в Дании неделю назад прошли парламентские выборы, которые запустили целый ряд политических процессов. В государстве меняется власть, которая будет формировать парламентские коалиции, правительство и его структуру. Представители России заявлением о возможных судах дают четкий сигнал новым властям: у них нет времени на &quot;раскачку&quot; и раздумья, вопрос &quot;Северного потока-2&quot; стоит поставить в приоритет&quot;, &mdash; подчеркивает эксперт. Фото: Bernd W&uuml;stneck/dpa 1 Комментарии9 Дания понесет серьезные затраты, если дойдет до ее &quot;наказания&quot; в европейских судах за задержку &quot;Северного потока-2&quot;. Об этом ФБА &quot;Экономика сегодня&quot; рассказал директор Центра изучения мировых энергетических рынков Института энергетических исследований РАН Вячеслав Кулагин. &quot;Заявления России о компенсациях, которые Дания может выплатить за задержку проекта &quot;Северный поток-2&quot;, неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно &mdash; есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. По сути, отказать Дания не может &mdash; разрешение на прокладку &quot;Северного потока&quot; в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы &mdash; множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные&quot;, &mdash; отмечает аналитик. СМИ Дании тиражируют заявление представителей компании Bech-Bruun, которая выступает в стране адвокатом проекта &quot;Северный поток-2&quot;. Юристы уведомили Копенгаген: если в кратчайшие сроки не будут выданы необходимые разрешения на прокладку газопровода, датские власти столкнутся с неприятными последствиями. Это отсрочит реализацию российско-германского проекта, и Москва намерена подать в суд иск с требованием компенсации. Блокировка выдачи разрешения на строительство грозит вылиться в значимые неприятные финансовые последствия. &quot;Если сейчас Копенгаген упрямо молчит в ответ на заявки России, то в суде ему в любом случае придется отвечать. А аргументов на запрет прокладывать трубы у Дании просто нет, то есть вероятность проигрыша в суде ЕС у датчан очень велика. Страна загоняет себя в тупик, ведь по логике и европейскому праву разрешение должно было быть выдано еще много месяцев назад. Копенгаген играет с огнем: если будет пройдена точка невозврата и Россия подаст в суд, последствия будут очень неприятными. И здесь нужно принять во внимание, что в Дании неделю назад прошли парламентские выборы, которые запустили целый ряд политических процессов. В государстве меняется власть, которая будет формировать парламентские коалиции, правительство и его структуру. Представители России заявлением о возможных судах дают четкий сигнал новым властям: у них нет времени на &quot;раскачку&quot; и раздумья, вопрос &quot;Северного потока-2&quot; стоит поставить в приоритет&quot;, &mdash; подчеркивает эксперт. Россия показала Дании перспективы блокировки &laquo;Северного потока-2&raquo; ФБА &laquo;Экономика сегодня&raquo; 13 июня 2019 Фото: Bernd W&uuml;stneck/dpa 1 Комментарии9 Дания понесет серьезные затраты, если дойдет до ее &quot;наказания&quot; в европейских судах за задержку &quot;Северного потока-2&quot;. Об этом ФБА &quot;Экономика сегодня&quot; рассказал директор Центра изучения мировых энергетических рынков Института энергетических исследований РАН Вячеслав Кулагин. &quot;Заявления России о компенсациях, которые Дания может выплатить за задержку проекта &quot;Северный поток-2&quot;, неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно &mdash; есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. По сути, отказать Дания не может &mdash; разрешение на прокладку &quot;Северного потока&quot; в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы &mdash; множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные&quot;, &mdash; отмечает аналитик. СМИ Дании тиражируют заявление представителей компании Bech-Bruun, которая выступает в стране адвокатом проекта &quot;Северный поток-2&quot;. Юристы уведомили Копенгаген: если в кратчайшие сроки не будут выданы необходимые разрешения на прокладку газопровода, датские власти столкнутся с неприятными последствиями. Это отсрочит реализацию российско-германского проекта, и Москва намерена подать в суд иск с требованием компенсации. Блокировка выдачи разрешения на строительство грозит вылиться в значимые неприятные финансовые последствия. &quot;Если сейчас Копенгаген упрямо молчит в ответ на заявки России, то в суде ему в любом случае придется отвечать. А аргументов на запрет прокладывать трубы у Дании просто нет, то есть вероятность проигрыша в суде ЕС у датчан очень велика. Страна загоняет себя в тупик, ведь по логике и европейскому праву разрешение должно было быть выдано еще много месяцев назад. Копенгаген играет с огнем: если будет пройдена точка невозврата и Россия подаст в суд, последствия будут очень неприятными. И здесь нужно принять во внимание, что в Дании неделю назад прошли парламентские выборы, которые запустили целый ряд политических процессов. В государстве меняется власть, которая будет формировать парламентские коалиции, правительство и его структуру. Представители России заявлением о возможных судах дают четкий сигнал новым властям: у них нет времени на &quot;раскачку&quot; и раздумья, вопрос &quot;Северного потока-2&quot; стоит поставить в приоритет&quot;, &mdash; подчеркивает эксперт.</p>\r\n',10,'','','12.jpg','1','0','0','    \"Заявления России о компенсациях, которые Дания может выплатить за задержку проекта \"Северный поток-2\", неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно — есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. \r\n\r\n    По сути, отказать Дания не может — разрешение на прокладку \"Северного потока\" в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы — множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные\", — отмечает аналитик.  Об этом сообщает Рамблер. Далее: https://news.rambler.ru/world/42333551/?utm_content=rnews&utm_medium=read_more&utm_source=copylink','2019-11-27 09:11:25','2019-11-26 00:00:00'),(2,4,'Что будет, если США ударят по Ирану ','<p>Что будет, если США ударят по Ирану News.ru 3 часа назад Фото: US Army/Global Look Press 1 Комментарии1 В США оценивают нанесение военного удара по Ирану как реальный способ оказать давление на Исламскую Республику. Эксперты также не исключают, что Соединённые Штаты могут попытаться решить иранский вопрос силой. О том, каким образом могут развиваться события в случае реализации Вашингтоном подобного сценария, &mdash; в материале News.ru. Сенатор-республиканец от штата Арканзас Том Коттон, член Комитета по вооружённым силам, заявил, что поддерживает идею военного удара по Ирану после инцидента с двумя танкерами в Оманском заливе. Эти неспровоцированные атаки на коммерческое судоходство требуют ответного военного удара, &mdash; цитирует Коттона Newsweek. Коттон привёл прямую параллель с ситуацией &laquo;танкерной войны&raquo; начала 1980-х годов, когда для защиты судоходства в районе Персидского и Оманского заливов действовала крупная группировка ВМС США и их союзников. По мнению сенатора, американцы могли бы поступить сейчас аналогичным образом для того, чтобы защитить коммерческое судоходство. Воинственное заявление сенатора подкреплено словами госсекретаря Майкла Помпео о том, что хотя президент Дональд Трамп и выступает против войны с Ираном, в Белом доме рассматривают все варианты действий, в том числе и военный. На этом фоне произведённый 16 июня совместный полёт самолётов F-15 ВВС США и Саудовской Аравии в небе над Персидским заливом был расценён наблюдателями как демонстрация силы и готовности Вашингтона и его союзников на Ближнем Востоке к силовому давлению на Иран. По логике американцев, иранцы атакуют танкеры для того, чтобы взвинтить градус противостояния, который отвлёк бы население от экономических проблем, вызванных возвращением санкций против Тегерана.</p>\r\n',56,'','','12bg.jpg','1','0','0','\r\nЧто будет, если США ударят по Ирану \r\nNews.ru 3 часа назад\r\nФото: US Army/Global Look Press\r\n1\r\nКомментарии1\r\nВ США оценивают нанесение военного удара по Ирану как реальный способ оказать давление на Исламскую Республику. Эксперты также не исключают, что Соединённые Штаты могут попытаться решить иранский вопрос силой. О том, каким образом могут развиваться события в случае реализации Вашингтоном подобного сценария, — в материале News.ru.\r\nСенатор-республиканец от штата Арканзас Том Коттон, член Комитета по вооружённым силам, заявил, что поддерживает идею военного удара по Ирану после инцидента с двумя танкерами в Оманском заливе.\r\n\r\n    Эти неспровоцированные атаки на коммерческое судоходство требуют ответного военного удара, — цитирует Коттона Newsweek. \r\n\r\nКоттон привёл прямую параллель с ситуацией «танкерной войны» начала 1980-х годов, когда для защиты судоходства в районе Персидского и Оманского заливов действовала крупная группировка ВМС США и их союзников. По мнению сенатора, американцы могли бы поступить сейчас аналогичным образом для того, чтобы защитить коммерческое судоходство.\r\nВоинственное заявление сенатора подкреплено словами госсекретаря Майкла Помпео о том, что хотя президент Дональд Трамп и выступает против войны с Ираном, в Белом доме рассматривают все варианты действий, в том числе и военный. На этом фоне произведённый 16 июня совместный полёт самолётов F-15 ВВС США и Саудовской Аравии в небе над Персидским заливом был расценён наблюдателями как демонстрация силы и готовности Вашингтона и его союзников на Ближнем Востоке к силовому давлению на Иран. По логике американцев, иранцы атакуют танкеры для того, чтобы взвинтить градус противостояния, который отвлёк бы население от экономических проблем, вызванных возвращением санкций против Тегерана.','2019-11-16 12:37:40','2019-11-21 00:00:00'),(6,4,'Будущее началось - Plantbook','<p>Разработка уже заинтересовала многих инвесторов, так как это первая многообещающая функциональная технология, которая, в первую очередь, не только модная и актуальная, но и максимально рассчитана на заботу о природе и ее экологии.</p>\r\n',23,'','','sven mk150.jpg','0','0','0','Пожалуй, на сегодняшний день Plantbook можно назвать самым необыкновенным концептом ноутбука.\r\n\r\nЕго авторами являются – корейцы Hyerim Kim и Seunggi Baek. Своим воображением они буквально поразили весь мир технологий!\r\n\r\nУ ноутбука Plantbook гибкий дисплей, сенсорная клавиатура, и… он сворачивается в трубочку! Также для его зарядки можно не просто использовать обыкновенную солнечную энергию, но и воду! Невероятно то, что при этом гаджет вдобавок вырабатывает кислород! Чтобы все понять владельцу ноутбука, была создана специальная петелька в виде листика, которая отображает уровень заряда батареи.\r\n\r\nРазработка уже заинтересовала многих инвесторов, так как это первая многообещающая функциональная технология, которая, в первую очередь, не только модная и актуальная, но и максимально рассчитана на заботу о природе и ее экологии. ','2019-11-16 12:37:55','2019-11-13 00:00:00'),(7,4,'Светящиеся камни Core Glow','<p>А мы продолжаем вас знакомить с разными интересными новинками. Сегодня вы узнаете о Core Glow. Core Glow это необыкновенно красивые светящиеся камни, которые часто сравнивают с Млечным путем. Сейчас это один из самых популярных способов оформления земельного участка. Сделаны они из природной гальки, из смолы с добавлением фотолюминесцентного пигмента. Достаточно всего пару часов на солнце? и любая дорожка с рядом расставленными растениями станет настоящими тропиками из киношедевра &laquo;Аватар&raquo;. Выглядит очень красиво и оригинально.</p>\r\n',24,'','','sven mk390.jpg','0','0','0','А мы продолжаем вас знакомить с разными интересными новинками.\r\nСегодня вы узнаете о Core Glow.\r\n\r\nCore Glow это необыкновенно красивые светящиеся камни, которые часто сравнивают с Млечным путем. Сейчас это один из самых популярных способов оформления земельного участка.\r\n\r\nСделаны они из природной гальки, из смолы с добавлением фотолюминесцентного пигмента. Достаточно всего пару часов на солнце? и любая дорожка с рядом расставленными растениями станет настоящими тропиками из киношедевра «Аватар».\r\nВыглядит очень красиво и оригинально. ','2019-11-16 12:38:11','2019-11-16 00:00:00'),(8,4,'Невероятно красивый солончак Боливии','<p>Это явление ежегодно привлекает к себе внимание фотографов и туристов со всего мира. Создается впечатление, как будто здесь соединяется небо и земля.</p>\r\n',25,'','','sven mk155.jpg','0','0','0','На юго-западе интересной Боливии располагается самый крупный солончак на Земле. Его площадь аж 10 582 квадратных километров. Но прелесть этого места не в его размерах. Во время сезона дождей солончак покрывается небольшим слоем воды, который и создает то самое неповторимое зеркальное отражение.\r\n\r\nЭто явление ежегодно привлекает к себе внимание фотографов и туристов со всего мира. Создается впечатление, как будто здесь соединяется небо и земля. ','2019-11-16 12:38:23','2019-11-10 00:00:00'),(9,4,'Как алкоголь влияет на ДНК человека','<p>Английскими учеными из Совета медицинских исследований было установлено, что уксусный альдегид, который является побочным продуктом расщепления в организме этилового спирта, может вызвать необратимые повреждения ДНК.</p>\r\n\r\n<p>Также было продемонстрировано, что клетки имеют 2 механизма, которые защищают их от разрушительного действия ацетальдегида.<br />\r\nБлагодаря специальным ферментам токсин расщепляется, но если этого недостаточно и ацетальдегид, накапливаясь, начинает повреждение ДНК, тогда наступает стадия второго механизма, который восстанавливает повреждение ДНК благодаря белкам Фанкони.</p>\r\n\r\n<p>Но когда белков Фелкони в организме недостаточно, организму, в том числе и ДНК, наносится непоправимый вред. Тоже самое происходило, когда алкоголь испытывали на беременных мышах.<br />\r\nЭто доказывает тот факт, что пьянство способно приводить в организме к накоплению количества ацетальдегида, которого достаточно для нарушения работы механизмов защиты.</p>\r\n\r\n<p>Полученные данные заставляют взглянуть нас по-новому на механизмы, благодаря которым оказывает алкоголь губительное действие на организм. Вот почему у людей при употреблении спиртных напитков часто происходит появление красных пятен на теле или покраснение лица или повышение температуры.<br />\r\nВ очередной раз данное исследование лишь подтверждает тот факт, насколько беззащитен, может быть наш организм перед алкоголем.</p>\r\n',12,'','','no-image.png','0','0','0',NULL,'2019-11-16 12:38:41','2019-11-28 00:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towar`
--

DROP TABLE IF EXISTS `towar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `towar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  `addtime` date DEFAULT NULL,
  `kat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towar`
--

LOCK TABLES `towar` WRITE;
/*!40000 ALTER TABLE `towar` DISABLE KEYS */;
INSERT INTO `towar` VALUES (1,7,'UX 200','<p>Версия UX 200 оборудована 4-цилиндровым рядным двигателем объемом 2,0 л, он обеспечивает выходную мощность в 150 л.с., аналогичную некоторым турбированным агрегатам меньшего объема конкурентов, имеет лучшую тепловую эффективность и обеспечивает более низкий центр тяжести агрегата, положительно сказываясь на развесовке автомобиля. Максимальный крутящий момент двигателя составляет 202 Нм</p>\r\n',10,'','','12.jpg','1','0','0','2019-12-20',NULL),(2,7,'LEXUS GX ','<p>Для GX 460 с двигателем V8 не существует преград. Испытанный в самых экстремальных уголках нашей планеты, оборудованный десятью подушками безопасности и новейшей системой безопасности Lexus Safety System +, это один из самых надежных и безопасных внедорожников, когда-либо созданных. В салоне GX 460 вы можете насладиться изысканной отделкой от мастеров Такуми и такими опциями, как аудиосистема с 17 динамиками Mark Levinson&reg; и система навигации Lexus Premium.</p>\r\n',56,'','','12bg.jpg','1','0','0','2019-12-31',NULL),(4,7,'ES 200','<p><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Щ</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">И</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Й</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">М</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">О</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">М</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Е</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Н</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Т</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">(</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Н</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">&middot;</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">м</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">п</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">р</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">и</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">о</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">б</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">/</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">м</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">и</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">н</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">)</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">192 при 4700</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ТИП КУЗОВА</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">4-дверный седан</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ОБЪЕМ ТОПЛИВНОГО БАКА (л)</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">60</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ДЛИНА х ШИРИНА х ВЫСО</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Т</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">А (мм)</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">4975 х 1865 х 1445</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ШИНЫ</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">215/55 R17</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">К</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">О</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ЛЕСНАЯ БАЗА (мм)</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">2870</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">МИНИМАЛЬНЫЙ ДОРО</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ЖНЫЙ ПРОСВЕТ (мм)</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">153</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">С</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Н</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">А</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Р</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Я</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Ж</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Е</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Н</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Н</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">А</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Я</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">М</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">А</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">С</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">С</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">А</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">С</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">В</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">О</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Д</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">И</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Т</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Е</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Л</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Е</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">М</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">,</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">М</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">И</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Н</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">.</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">&ndash;</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">М</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">А</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">К</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">С</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">.</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">(</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">к</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">г</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">)</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">1700 &ndash;1730</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">МАК</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">СИМАЛЬНАЯ СК</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ОРОСТЬ (км/</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ч)</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">210</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">Р</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">АЗГОН 0</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">&ndash;100 км/</span><span dir=\"ltr\" style=\"font-family:sans-serif; font-size:16.6667px\">ч (</span></p>\r\n',70,'','','1.jpg','1','0','1',NULL,NULL);
/*!40000 ALTER TABLE `towar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'konst','HTQR0ssvk1M3kpoMDzMMLw_UKZlGqKid','$2y$13$oprTiLjrbw2WXE6V1JqCbOg5rjamTOCjlXcNsSHvA1yxW51hvk/su',NULL,'spirin.costia@yandex.ru',10,1571141599,1571141627,'qpehCC-XREi1HCOdWfWJq1IBtuH7aT-5_1571141599');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wakans`
--

DROP TABLE IF EXISTS `wakans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wakans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wakans`
--

LOCK TABLES `wakans` WRITE;
/*!40000 ALTER TABLE `wakans` DISABLE KEYS */;
INSERT INTO `wakans` VALUES (9,5,'бухгалтер','знаие 1 с',0,NULL,NULL,'no-image.png','0','0','0',NULL),(10,5,'программист','опыт работы',0,NULL,NULL,'no-image.png','0','0','0',NULL),(11,5,'менеджер по продажам','опыт работы',0,NULL,NULL,'no-image.png','0','0','0',NULL);
/*!40000 ALTER TABLE `wakans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wopr`
--

DROP TABLE IF EXISTS `wopr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wopr` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `naim` varchar(255) DEFAULT NULL,
  `perot` varchar(255) DEFAULT NULL,
  `wtorot` varchar(255) DEFAULT NULL,
  `tretot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wopr`
--

LOCK TABLES `wopr` WRITE;
/*!40000 ALTER TABLE `wopr` DISABLE KEYS */;
INSERT INTO `wopr` VALUES (2,' 	В каком городе не работал великий композитор 18-го века Кристоф Виллибальд Глюк?','Милан','Вена','Париж'),(3,' 	Кто первым доказал периодичность появления комет?','Галилей','Коперник',' Кеплер ');
/*!40000 ALTER TABLE `wopr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-30 15:46:56
