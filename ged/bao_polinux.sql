-- MySQL dump 10.11
--
-- Host: localhost    Database: bao_polinux
-- ------------------------------------------------------
-- Server version	5.0.44-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE `activite` (
  `IdActivite` int(10) unsigned NOT NULL auto_increment,
  `ACT_couleur` varchar(6) collate utf8_unicode_ci NOT NULL,
  `ACT_nomCentre` varchar(128) collate utf8_unicode_ci NOT NULL,
  `ACT_Societe` varchar(64) collate utf8_unicode_ci NOT NULL,
  `ACT_Type` varchar(128) collate utf8_unicode_ci NOT NULL,
  `ACT_DescriptCourt` varchar(128) collate utf8_unicode_ci NOT NULL,
  `ACT_DescriptLong` text collate utf8_unicode_ci NOT NULL,
  `ACT_LieuDit` varchar(64) collate utf8_unicode_ci NOT NULL,
  `ACT_Commune` varchar(64) collate utf8_unicode_ci NOT NULL,
  `ACT_Pays` varchar(16) collate utf8_unicode_ci NOT NULL,
  `ACT_CodePostal` varchar(7) collate utf8_unicode_ci NOT NULL,
  `ACT_NomDept` varchar(32) collate utf8_unicode_ci NOT NULL,
  `ACT_Bassin` varchar(32) collate utf8_unicode_ci NOT NULL,
  `ACT_DistCentre` varchar(16) collate utf8_unicode_ci NOT NULL,
  `ACT_CoordGeo` text collate utf8_unicode_ci NOT NULL,
  `ACT_TypePublic` varchar(32) collate utf8_unicode_ci NOT NULL,
  `ACT_Handicap` varchar(32) collate utf8_unicode_ci NOT NULL,
  `ACT_PeriodeOuverture` varchar(32) collate utf8_unicode_ci NOT NULL,
  `ACT_InfoComplem` text collate utf8_unicode_ci NOT NULL,
  `ACT_Adresse` varchar(128) collate utf8_unicode_ci NOT NULL,
  `ACT_NomCorresp` varchar(32) collate utf8_unicode_ci NOT NULL,
  `ACT_NumTel` varchar(16) collate utf8_unicode_ci NOT NULL,
  `ACT_NumTel2` varchar(16) collate utf8_unicode_ci NOT NULL,
  `ACT_NumFax` varchar(16) collate utf8_unicode_ci NOT NULL,
  `ACT_Courriel` varchar(64) collate utf8_unicode_ci NOT NULL,
  `ACT_Url` varchar(128) collate utf8_unicode_ci NOT NULL,
  `ACT_DocPapier` varchar(128) collate utf8_unicode_ci NOT NULL,
  `ACT_Langue` varchar(16) collate utf8_unicode_ci NOT NULL,
  `ACT_DateCreation` datetime default NULL,
  `ACT_CreePar` varchar(32) collate utf8_unicode_ci default NULL,
  `ACT_DateModif` datetime default NULL,
  PRIMARY KEY  (`IdActivite`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activite`
--

LOCK TABLES `activite` WRITE;
/*!40000 ALTER TABLE `activite` DISABLE KEYS */;
/*!40000 ALTER TABLE `activite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_chrono_chr`
--

DROP TABLE IF EXISTS `t_chrono_chr`;
CREATE TABLE `t_chrono_chr` (
  `IdCHR` int(10) unsigned NOT NULL auto_increment,
  `CHR_NomTable` varchar(16) collate utf8_bin NOT NULL,
  `CHR_Ident` int(11) NOT NULL,
  `CHR_Action` varchar(8) collate utf8_bin NOT NULL,
  `CHR_Comment` text collate utf8_bin,
  `CHR_User` varchar(32) collate utf8_bin NOT NULL,
  `CHR_Date` datetime NOT NULL,
  PRIMARY KEY  (`IdCHR`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Chronologie des actions sur la base';

--
-- Dumping data for table `t_chrono_chr`
--

LOCK TABLES `t_chrono_chr` WRITE;
/*!40000 ALTER TABLE `t_chrono_chr` DISABLE KEYS */;
INSERT INTO `t_chrono_chr` VALUES (1,'t_docged_doc',1,'C',NULL,'marc.laville@polinux.net','2012-10-14 23:55:13'),(2,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-10-14 23:55:22'),(3,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-10-14 23:55:47'),(4,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-10-15 00:03:30'),(5,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-10-15 23:30:33'),(6,'t_docged_doc',2,'C',NULL,'marc.laville@polinux.net','2012-10-30 13:33:26'),(7,'t_docged_doc',2,'J',NULL,'marc.laville@polinux.net','2012-10-30 13:33:32'),(8,'t_docged_doc',3,'C',NULL,'marc.laville@polinux.net','2012-10-30 13:37:30'),(9,'t_docged_doc',2,'U',NULL,'marc.laville@polinux.net','2012-10-30 13:37:55'),(10,'t_docged_doc',4,'C',NULL,'marc.laville@polinux.net','2012-10-30 17:48:52'),(11,'t_docged_doc',4,'U',NULL,'marc.laville@polinux.net','2012-10-30 17:49:35'),(12,'t_docged_doc',2,'J',NULL,'marc.laville@polinux.net','2012-10-30 17:49:48'),(13,'t_docged_doc',5,'C',NULL,'marc.laville@polinux.net','2012-10-30 18:04:47'),(14,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-10-30 19:24:31'),(15,'t_docged_doc',6,'C',NULL,'marc.laville@polinux.net','2012-10-30 19:27:48'),(16,'t_docged_doc',5,'J',NULL,'marc.laville@polinux.net','2012-10-30 19:29:20'),(17,'t_docged_doc',5,'U',NULL,'marc.laville@polinux.net','2012-10-30 19:30:19'),(18,'t_docged_doc',5,'J',NULL,'marc.laville@polinux.net','2012-10-30 19:30:22'),(19,'t_docged_doc',6,'J',NULL,'marc.laville@polinux.net','2012-10-30 19:30:38'),(20,'t_docged_doc',7,'C',NULL,'marc.laville@polinux.net','2012-10-30 21:31:38'),(21,'t_docged_doc',7,'J',NULL,'marc.laville@polinux.net','2012-10-30 21:31:45'),(22,'t_docged_doc',7,'U',NULL,'marc.laville@polinux.net','2012-10-30 21:32:13'),(23,'t_docged_doc',8,'C',NULL,'marc.laville@polinux.net','2012-10-30 21:44:37'),(24,'t_docged_doc',8,'U',NULL,'marc.laville@polinux.net','2012-10-30 21:45:20'),(25,'t_docged_doc',4,'U',NULL,'marc.laville@polinux.net','2012-10-30 21:47:39'),(26,'t_docged_doc',4,'J',NULL,'marc.laville@polinux.net','2012-10-30 22:34:25'),(27,'t_docged_doc',4,'U',NULL,'marc.laville@polinux.net','2012-10-30 22:34:36'),(28,'t_docged_doc',8,'U',NULL,'marc.laville@polinux.net','2012-10-30 22:35:21'),(29,'t_docged_doc',2,'U',NULL,'marc.laville@polinux.net','2012-10-30 22:35:34'),(30,'t_docged_doc',8,'U',NULL,'marc.laville@polinux.net','2012-10-30 22:36:16'),(31,'t_docged_doc',9,'C',NULL,'marc.laville@polinux.net','2012-10-31 11:17:38'),(32,'t_docged_doc',9,'J',NULL,'marc.laville@polinux.net','2012-10-31 11:18:01'),(33,'t_docged_doc',9,'J',NULL,'marc.laville@polinux.net','2012-10-31 11:18:09'),(34,'t_docged_doc',10,'C',NULL,'marc.laville@polinux.net','2012-10-31 17:04:22'),(35,'t_docged_doc',11,'C',NULL,'marc.laville@polinux.net','2012-10-31 17:10:11'),(36,'t_docged_doc',12,'C',NULL,'marc.laville@polinux.net','2012-11-18 18:02:43'),(37,'t_docged_doc',13,'C',NULL,'marc.laville@polinux.net','2012-11-18 18:03:22'),(38,'t_docged_doc',8,'U',NULL,'marc.laville@polinux.net','2012-11-18 18:20:55'),(39,'t_docged_doc',2,'U',NULL,'marc.laville@polinux.net','2012-11-18 18:22:19'),(40,'t_docged_doc',14,'C',NULL,'marc.laville@polinux.net','2012-11-18 18:52:41'),(41,'t_docged_doc',4,'U',NULL,'marc.laville@polinux.net','2012-11-18 18:54:01'),(42,'t_docged_doc',14,'U',NULL,'marc.laville@polinux.net','2012-11-18 18:54:31'),(43,'t_docged_doc',15,'C',NULL,'marc.laville@polinux.net','2012-11-18 19:19:29'),(44,'t_docged_doc',14,'U',NULL,'marc.laville@polinux.net','2012-11-18 19:20:37'),(45,'t_docged_doc',2,'U',NULL,'marc.laville@polinux.net','2012-11-18 19:21:10'),(46,'t_docged_doc',15,'U',NULL,'marc.laville@polinux.net','2012-11-18 19:21:48'),(47,'t_docged_doc',16,'C',NULL,'marc.laville@polinux.net','2012-11-18 22:46:56'),(48,'t_docged_doc',9,'U',NULL,'marc.laville@polinux.net','2012-11-18 23:07:53'),(49,'t_docged_doc',17,'C',NULL,'marc.laville@polinux.net','2012-11-19 12:44:22'),(50,'t_docged_doc',13,'U',NULL,'marc.laville@polinux.net','2012-11-19 15:19:08'),(51,'t_docged_doc',15,'U',NULL,'marc.laville@polinux.net','2012-11-21 10:50:40'),(52,'t_docged_doc',15,'U',NULL,'marc.laville@polinux.net','2012-11-21 10:52:43'),(53,'t_docged_doc',15,'U',NULL,'marc.laville@polinux.net','2012-11-21 10:53:24'),(54,'t_docged_doc',18,'C',NULL,'marc.laville@polinux.net','2012-11-23 17:31:47'),(55,'t_docged_doc',19,'C',NULL,'marc.laville@polinux.net','2012-11-23 22:08:39'),(56,'t_docged_doc',20,'C',NULL,'marc.laville@polinux.net','2012-11-23 22:31:24'),(57,'t_docged_doc',21,'C',NULL,'marc.laville@polinux.net','2012-11-24 23:19:15'),(58,'t_docged_doc',21,'U',NULL,'marc.laville@polinux.net','2012-11-24 23:19:46'),(59,'t_docged_doc',22,'C',NULL,'marc.laville@polinux.net','2012-11-25 13:53:36'),(60,'t_docged_doc',21,'U',NULL,'marc.laville@polinux.net','2012-11-25 13:53:48'),(61,'t_docged_doc',18,'U',NULL,'marc.laville@polinux.net','2012-11-27 00:42:44'),(62,'t_docged_doc',18,'J',NULL,'marc.laville@polinux.net','2012-11-27 00:43:04'),(63,'t_docged_doc',18,'J',NULL,'marc.laville@polinux.net','2012-11-27 00:44:46'),(64,'t_docged_doc',18,'U',NULL,'marc.laville@polinux.net','2012-11-27 00:46:42'),(65,'t_docged_doc',18,'U',NULL,'marc.laville@polinux.net','2012-11-27 00:48:13'),(66,'t_docged_doc',18,'U',NULL,'marc.laville@polinux.net','2012-11-27 00:48:42'),(67,'t_docged_doc',23,'C',NULL,'marc.laville@polinux.net','2012-11-30 12:37:26'),(68,'t_docged_doc',23,'J','xxx','marc.laville@polinux.net','2012-11-30 12:37:35'),(69,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-12-01 11:39:37'),(70,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-12-01 11:39:37'),(71,'t_docged_doc',1,'J',NULL,'marc.laville@polinux.net','2012-12-01 11:39:46'),(72,'t_docged_doc',23,'J',NULL,'marc.laville@polinux.net','2012-12-03 23:30:21'),(73,'t_docged_doc',23,'U',NULL,'marc.laville@polinux.net','2012-12-03 23:31:07'),(74,'t_docged_doc',23,'U',NULL,'marc.laville@polinux.net','2012-12-03 23:32:48'),(75,'t_docged_doc',15,'U',NULL,'marc.laville@polinux.net','2012-12-22 13:08:53'),(76,'t_docged_doc',16,'J',NULL,'marc.laville@polinux.net','2013-01-14 10:12:51'),(77,'t_docged_doc',16,'J',NULL,'marc.laville@polinux.net','2013-01-14 10:12:52');
/*!40000 ALTER TABLE `t_chrono_chr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_commission_com`
--

DROP TABLE IF EXISTS `t_commission_com`;
CREATE TABLE `t_commission_com` (
  `IdCOM` int(10) NOT NULL auto_increment,
  `COM_Libelle` varchar(128) collate utf8_bin NOT NULL,
  `COM_Repertoire` varchar(32) collate utf8_bin NOT NULL,
  `COM_Path` varchar(64) collate utf8_bin default NULL COMMENT 'Chemin vers le r�pertoire',
  `COM_Comment` text collate utf8_bin,
  `COM_CreePar` varchar(32) collate utf8_bin NOT NULL,
  `COM_dateCreation` datetime NOT NULL,
  `COM_dateModif` datetime default NULL,
  PRIMARY KEY  (`IdCOM`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `t_commission_com`
--

LOCK TABLES `t_commission_com` WRITE;
/*!40000 ALTER TABLE `t_commission_com` DISABLE KEYS */;
INSERT INTO `t_commission_com` VALUES (-1,'Corbeille','.trash',NULL,NULL,'','0000-00-00 00:00:00',NULL),(1,'bao','bao',NULL,'B�O','marc.laville@polinux.net','2012-10-14 23:51:25','2012-10-14 23:51:25'),(2,'OVL','client_ovl',NULL,'client','marc.laville@polinux.net','2012-10-30 13:22:09','2012-10-30 19:25:25'),(3,'Visioptimum','client_visioptimum',NULL,'client','marc.laville@polinux.net','2012-10-30 13:38:55','2012-10-30 19:25:32'),(4,'Urssaf','urssaf',NULL,'','marc.laville@polinux.net','2012-10-30 18:01:20','2012-10-30 18:01:54'),(5,'bouquerod pierre','bouquerod',NULL,'client','marc.laville@polinux.net','2012-10-30 19:26:17','2012-10-30 21:26:49'),(6,'test','test',NULL,'','marc.laville@polinux.net','2012-10-31 11:15:37','2012-10-31 11:15:55'),(7,'Dulong','Client_Dulong',NULL,'','marc.laville@polinux.net','2012-11-18 17:59:24','2012-11-18 17:59:51'),(8,'bank','bank',NULL,'','marc.laville@polinux.net','2012-11-18 22:45:35','2012-11-18 22:46:08'),(9,'technique','Technique',NULL,'','marc.laville@polinux.net','2012-11-23 22:06:23','2012-11-23 22:06:46'),(10,'Factures Fournisseurs','Facture',NULL,'','marc.laville@polinux.net','2012-11-30 12:31:54','2012-12-03 23:33:16');
/*!40000 ALTER TABLE `t_commission_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_demande_dmd`
--

DROP TABLE IF EXISTS `t_demande_dmd`;
CREATE TABLE `t_demande_dmd` (
  `IdDMD` int(10) unsigned NOT NULL auto_increment,
  `DMD_Nom` varchar(32) collate utf8_unicode_ci NOT NULL,
  `DMD_Prenom` varchar(32) collate utf8_unicode_ci NOT NULL,
  `DMD_Mail` varchar(128) collate utf8_unicode_ci NOT NULL,
  `DMD_Tel` varchar(16) collate utf8_unicode_ci NOT NULL,
  `DMD_GSM` varchar(16) collate utf8_unicode_ci default NULL COMMENT 'T�l Portable',
  `DMD_IdUSR_FK` int(11) default NULL COMMENT 'Identifiant Utilisateur',
  `DMD_Comment` text collate utf8_unicode_ci,
  `DMD_DateCreation` datetime NOT NULL,
  PRIMARY KEY  (`IdDMD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table des Demandes de login';

--
-- Dumping data for table `t_demande_dmd`
--

LOCK TABLES `t_demande_dmd` WRITE;
/*!40000 ALTER TABLE `t_demande_dmd` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_demande_dmd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_docged_doc`
--

DROP TABLE IF EXISTS `t_docged_doc`;
CREATE TABLE `t_docged_doc` (
  `IdDoc` int(10) unsigned NOT NULL auto_increment,
  `DOC_Libelle` varchar(64) collate utf8_bin NOT NULL,
  `DOC_Fic` varchar(64) collate utf8_bin NOT NULL,
  `DOC_Etat` varchar(64) character set utf8 collate utf8_unicode_ci NOT NULL,
  `DOC_Visibilite` tinyint(4) NOT NULL default '1',
  `DOC_IdCOM` int(11) NOT NULL,
  `DOC_Descriptif` text collate utf8_bin NOT NULL,
  `DOC_MotClef` varchar(64) collate utf8_bin default NULL COMMENT 'MotsClef du Document',
  `DOC_Nature` varchar(32) collate utf8_bin default NULL,
  `DOC_Tiers` varchar(64) collate utf8_bin NOT NULL,
  `DOC_DateEcheance` date default NULL,
  `DOC_LibEcheance` varchar(32) collate utf8_bin default NULL COMMENT 'Echeance associ?e ? l ?ch?ance',
  `DOC_DateFinEcheance` date default NULL,
  `DOC_LibFinEcheance` varchar(32) collate utf8_bin default NULL,
  `DOC_InfoComplementaires` text collate utf8_bin NOT NULL,
  `DOC_DateCreation` datetime NOT NULL,
  `DOC_CreePar` varchar(32) collate utf8_bin NOT NULL,
  `DOC_DateModif` datetime default NULL,
  `DOC_DateSuppr` datetime default NULL,
  PRIMARY KEY  (`IdDoc`),
  KEY `DOC_IdCOM` (`DOC_IdCOM`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `t_docged_doc`
--

LOCK TABLES `t_docged_doc` WRITE;
/*!40000 ALTER TABLE `t_docged_doc` DISABLE KEYS */;
INSERT INTO `t_docged_doc` VALUES (1,'bao_vide.sql','bao_vide.sql','Etat',1,1,'','Creation','','',NULL,'',NULL,'','','2012-10-14 23:55:13','marc.laville@polinux.net','2012-10-14 23:55:13',NULL),(2,'FactureOVL_2012_T2.pdf 12-004','FactureOVL_2012_T2.pdf','R�gl�',1,2,'B�O, Phase de mise en place de l\'outil GED et de l\'outil Web : de mars � juin 2012\r\nR�solution des bugs fonctionnels\r\nR�alisations des derniers ajustements ergonomiques en fonction des usages de l\'Ovl.\r\nAssistance Utilisateur.\r\nConform�ment � la proposition tarifaire du 27 II 2012 de 200 �/mois.\r\n600�\r\nTotal HT','b�o','Facture N� F12-004 600�','','2012-07-13','',NULL,'','','2012-10-30 13:33:26','marc.laville@polinux.net','2012-11-18 19:21:10',NULL),(3,'Contrat Maintenance ovl','Contratmaintenance_ovl.pdf','Etat',1,2,'Maintenance et suivi de la solution fournie','b�o','devis','',NULL,'',NULL,'','','2012-10-30 13:37:30','marc.laville@polinux.net','2012-10-30 13:37:30',NULL),(4,'FactureVisioptimum-003','FactureVisioptimum.pdf','R�gl�',1,3,'Int�gration d\'un formulaire de contact sur le site http://www.visioptimum.com. 210','jumbla!','Facture N� F12-003 120�','','2012-05-14','',NULL,'','','2012-10-30 17:48:52','marc.laville@polinux.net','2012-11-18 18:54:01',NULL),(5,'inscription','inscription.pdf','Etat',1,4,'','','','','2010-11-21','',NULL,'','','2012-10-30 18:04:47','marc.laville@polinux.net','2012-10-30 19:30:19',NULL),(6,'siret','siret.pdf','Etat',1,4,'','','','',NULL,'',NULL,'','','2012-10-30 19:27:48','marc.laville@polinux.net','2012-10-30 19:27:48',NULL),(7,'compte Rendu Audit ','compteRenduAudit.pdf','Etat',1,5,'Rapport d\'audit Informatique du 27 sept. 2012\r\nbouquerod pierre s.a.s','','Compte Rendu','','2012-10-23','',NULL,'','','2012-10-30 21:31:38','marc.laville@polinux.net','2012-10-30 21:32:13',NULL),(8,'FactureOvl.001','FactureOvl.001.pdf','R�gl�',1,2,'Cr�ation de la notion de gestionnaire et de superviseur','b�o','Facture N� F11-001 1470�','','2011-02-21','',NULL,'','','2012-10-30 21:44:37','marc.laville@polinux.net','2012-11-18 18:20:55',NULL),(9,'mariage','mariage_03.jpg','Etat',1,6,'','','','',NULL,'',NULL,'','','2012-10-31 11:17:38','marc.laville@polinux.net','2012-11-18 23:07:53',NULL),(10,'008_bR�sisTemps_001','008_bR�sisTemps_001.wav','Etat',1,-1,'','','','',NULL,'',NULL,'','','2012-10-31 17:04:22','marc.laville@polinux.net','2012-10-31 17:04:22',NULL),(11,'010_LearyTour_001','010_LearyTour_001.wav','Etat',1,6,'','','','',NULL,'',NULL,'','','2012-10-31 17:10:11','marc.laville@polinux.net','2012-10-31 17:10:11',NULL),(12,'Slide Site Internet','Slide Site Internet.pptx','Etat',1,-1,'','','Cahier des Charges','',NULL,'',NULL,'','','2012-11-18 18:02:43','marc.laville@polinux.net','2012-11-18 18:02:43',NULL),(13,'Slide Site Internet.pptx','Slide Site Internet.pptx','Etat',1,7,'D�roulement des pages du site ISIDON','','Cahier des charges','',NULL,'',NULL,'','','2012-11-18 18:03:22','marc.laville@polinux.net','2012-11-19 15:19:08',NULL),(14,'FactureOVL.002','FactureOVL.002.pdf','R�gl�',1,2,'Maintenance et suivi de la solution fournie\r\nContrat de maintenance relatif � l\'exploitation de la Gestion �lectronique de document de l\'Ovl :\r\nla B�O','b�o','Facture N� F11-002 800�','','2011-02-28','',NULL,'','','2012-11-18 18:52:41','marc.laville@polinux.net','2012-11-18 19:20:37',NULL),(15,'FactureOVL_2012_T3 12-005','FactureOVL.12-005.pdf','R�gl�',1,2,'B�O, Phase de mise en place de l\'outil GED et de l\'outil Web : de mars � juin 2012\r\nR�solution des bugs fonctionnels\r\nR�alisations des derniers ajustements ergonomiques en fonction des usages de l\'Ovl.\r\nAssistance Utilisateur.\r\nConform�ment � la proposition tarifaire du 27 II 2012 de 200 �/mois.\r\n600�\r\nTotal HT','b�o','Facture N� F12-005 240�','','2012-11-21','',NULL,'','','2012-11-18 19:19:29','marc.laville@polinux.net','2012-12-22 13:08:53',NULL),(16,'IBAN','iban_LAVILLE_MARC_00020426401.pdf','Etat',1,8,'','','','',NULL,'',NULL,'','','2012-11-18 22:46:56','marc.laville@polinux.net','2012-11-18 22:46:56',NULL),(17,'Cahier des charges Marc Laville.odt','Cahier des charges Marc Laville.odt','Etat',1,7,'','','Cahier des charges','',NULL,'',NULL,'','','2012-11-19 12:44:22','marc.laville@polinux.net','2012-11-19 12:44:22',NULL),(18,'proposition Commerciale Isidon','propComIsidonV2.pdf','Etat',1,7,'Le projet Isidon vise � la cr�ation et � la mise en ligne d\'un\r\nsyst�me de collecte de dons � destination des paroisses.\r\nLa mise en oeuvre du syst�me doit se conformer au cahier des\r\ncharges et au Synopsis fourni par Mr Aur�len Dulong le\r\n16/11/2012.\r\nMarc Laville propose d\'assurer le d�veloppement de la partie\r\nWeb du syst�me Isidon selon les modalit�s et conditions\r\ntarifaires d�crites dans le pr�sent document.','Isidon','devis','',NULL,'',NULL,'','','2012-11-23 17:31:47','marc.laville@polinux.net','2012-11-27 00:48:42',NULL),(19,'copier dans le presse papier','','Etat',1,9,'Pour copier le code dans le presse papier, il faut autoriser Firefox � acc�der au presse papier.\r\n\r\nPour cela, dans une nouvelle page aller � l\'adresse about:config, rechercher la cl� signed.applets.codebase_principal_support et passer la valeur � true.\r\n\r\nVous pourrez d�sormais copier le code dans le presse papier. ','','FireFox','',NULL,'',NULL,'','','2012-11-23 22:08:39','marc.laville@polinux.net','2012-11-23 22:08:39',NULL),(20,'Ean13','','Etat',1,9,'http://marin.jb.free.fr/barcode/','','','',NULL,'',NULL,'','','2012-11-23 22:31:24','marc.laville@polinux.net','2012-11-23 22:31:24',NULL),(21,'id�e pour presentation','','Etat',1,9,'http://alexdunphy.github.com/refineslide/#','css3','design','',NULL,'',NULL,'','pour cv','2012-11-24 23:19:15','marc.laville@polinux.net','2012-11-25 13:53:48',NULL),(22,'Convention de Codage','','Etat',1,9,'https://www.webkit.org/coding/coding-style.html','code','meilleurs pratiques','',NULL,'',NULL,'','','2012-11-25 13:53:36','marc.laville@polinux.net','2012-11-25 13:53:36',NULL),(23,'Cartouches','factCartouches.png','Etat',1,10,'','','Factures 43.98�','',NULL,'',NULL,'','','2012-11-30 12:37:26','marc.laville@polinux.net','2012-12-03 23:32:48',NULL);
/*!40000 ALTER TABLE `t_docged_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tj_droit_com`
--

DROP TABLE IF EXISTS `tj_droit_com`;
CREATE TABLE `tj_droit_com` (
  `IdCOM` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `com_droit` smallint(6) NOT NULL,
  UNIQUE KEY `IdComUser` (`IdCOM`,`idUtilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='droits utilisateurs sur les commissions';

--
-- Dumping data for table `tj_droit_com`
--

LOCK TABLES `tj_droit_com` WRITE;
/*!40000 ALTER TABLE `tj_droit_com` DISABLE KEYS */;
INSERT INTO `tj_droit_com` VALUES (1,4,15),(2,4,15),(3,4,15),(4,4,15),(5,4,15),(6,4,15),(7,4,15),(8,4,11),(9,4,15),(10,4,15);
/*!40000 ALTER TABLE `tj_droit_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tj_selection_doc`
--

DROP TABLE IF EXISTS `tj_selection_doc`;
CREATE TABLE `tj_selection_doc` (
  `IdDOC` int(11) unsigned NOT NULL,
  `IdUSR` int(11) NOT NULL,
  `SEL_DateCreation` datetime NOT NULL,
  PRIMARY KEY  (`IdDOC`,`IdUSR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tj_selection_doc`
--

LOCK TABLES `tj_selection_doc` WRITE;
/*!40000 ALTER TABLE `tj_selection_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tj_selection_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_user_usr`
--

DROP TABLE IF EXISTS `ts_user_usr`;
CREATE TABLE `ts_user_usr` (
  `IdUSR` int(10) unsigned NOT NULL auto_increment,
  `USR_Nom` varchar(32) collate utf8_unicode_ci NOT NULL,
  `USR_Prenom` varchar(32) collate utf8_unicode_ci NOT NULL,
  `USR_Mail` varchar(128) collate utf8_unicode_ci NOT NULL,
  `USR_NumAdherent` varchar(8) collate utf8_unicode_ci default NULL,
  `USR_Pwd` varchar(128) collate utf8_unicode_ci NOT NULL,
  `USR_Tel` varchar(16) collate utf8_unicode_ci NOT NULL,
  `USR_Fonction` varchar(32) collate utf8_unicode_ci NOT NULL,
  `USR_ZoneGeo` varchar(32) collate utf8_unicode_ci default NULL,
  `USR_Droits` tinyint(4) default NULL,
  `USR_Comment` text collate utf8_unicode_ci,
  `USR_IdCom` int(11) default NULL COMMENT 'Commission li�e',
  `USR_DateCreation` datetime NOT NULL,
  `USR_DateModif` datetime default NULL,
  `USR_CreePar` varchar(32) collate utf8_unicode_ci NOT NULL,
  `USR_DateSuppression` datetime default NULL COMMENT 'Date Suppression',
  PRIMARY KEY  (`IdUSR`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table des Utilisateurs';

--
-- Dumping data for table `ts_user_usr`
--

LOCK TABLES `ts_user_usr` WRITE;
/*!40000 ALTER TABLE `ts_user_usr` DISABLE KEYS */;
INSERT INTO `ts_user_usr` VALUES (4,'Laville','Marc','marc.laville@polinux.net','','vava001','03 84 37 34 64','Rsp de Projet, Informatique','*',7,'',NULL,'2010-07-03 18:08:13','2012-06-11 15:09:20','',NULL);
/*!40000 ALTER TABLE `ts_user_usr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-27 15:01:14

CREATE USER 'bao-root'@'%' IDENTIFIED BY '***';

GRANT USAGE ON * . * TO 'bao-root'@'%' IDENTIFIED BY '***' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

GRANT ALL PRIVILEGES ON `bao_polinux` . * TO 'bao-root'@'%';