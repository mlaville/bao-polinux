-- phpMyAdmin SQL Dump
-- version 3.3.5.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 14 Octobre 2012 à 23:44
-- Version du serveur: 5.0.44
-- Version de PHP: 5.2.13-pl1-gentoo

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: 'bao_polinux'
--

-- --------------------------------------------------------

--
-- Structure de la table 'activite'
--

DROP TABLE IF EXISTS activite;
CREATE TABLE activite (
  IdActivite int(10) unsigned NOT NULL auto_increment,
  ACT_couleur varchar(6) collate utf8_unicode_ci NOT NULL,
  ACT_nomCentre varchar(128) collate utf8_unicode_ci NOT NULL,
  ACT_Societe varchar(64) collate utf8_unicode_ci NOT NULL,
  ACT_Type varchar(128) collate utf8_unicode_ci NOT NULL,
  ACT_DescriptCourt varchar(128) collate utf8_unicode_ci NOT NULL,
  ACT_DescriptLong text collate utf8_unicode_ci NOT NULL,
  ACT_LieuDit varchar(64) collate utf8_unicode_ci NOT NULL,
  ACT_Commune varchar(64) collate utf8_unicode_ci NOT NULL,
  ACT_Pays varchar(16) collate utf8_unicode_ci NOT NULL,
  ACT_CodePostal varchar(7) collate utf8_unicode_ci NOT NULL,
  ACT_NomDept varchar(32) collate utf8_unicode_ci NOT NULL,
  ACT_Bassin varchar(32) collate utf8_unicode_ci NOT NULL,
  ACT_DistCentre varchar(16) collate utf8_unicode_ci NOT NULL,
  ACT_CoordGeo text collate utf8_unicode_ci NOT NULL,
  ACT_TypePublic varchar(32) collate utf8_unicode_ci NOT NULL,
  ACT_Handicap varchar(32) collate utf8_unicode_ci NOT NULL,
  ACT_PeriodeOuverture varchar(32) collate utf8_unicode_ci NOT NULL,
  ACT_InfoComplem text collate utf8_unicode_ci NOT NULL,
  ACT_Adresse varchar(128) collate utf8_unicode_ci NOT NULL,
  ACT_NomCorresp varchar(32) collate utf8_unicode_ci NOT NULL,
  ACT_NumTel varchar(16) collate utf8_unicode_ci NOT NULL,
  ACT_NumTel2 varchar(16) collate utf8_unicode_ci NOT NULL,
  ACT_NumFax varchar(16) collate utf8_unicode_ci NOT NULL,
  ACT_Courriel varchar(64) collate utf8_unicode_ci NOT NULL,
  ACT_Url varchar(128) collate utf8_unicode_ci NOT NULL,
  ACT_DocPapier varchar(128) collate utf8_unicode_ci NOT NULL,
  ACT_Langue varchar(16) collate utf8_unicode_ci NOT NULL,
  ACT_DateCreation datetime default NULL,
  ACT_CreePar varchar(32) collate utf8_unicode_ci default NULL,
  ACT_DateModif datetime default NULL,
  PRIMARY KEY  (IdActivite)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table 'activite'
--


-- --------------------------------------------------------

--
-- Structure de la table 'tj_droit_com'
--

DROP TABLE IF EXISTS tj_droit_com;
CREATE TABLE tj_droit_com (
  IdCOM int(11) NOT NULL,
  idUtilisateur int(11) NOT NULL,
  com_droit smallint(6) NOT NULL,
  UNIQUE KEY IdComUser (IdCOM,idUtilisateur)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='droits utilisateurs sur les commissions';

--
-- Contenu de la table 'tj_droit_com'
--


-- --------------------------------------------------------

--
-- Structure de la table 'tj_selection_doc'
--

DROP TABLE IF EXISTS tj_selection_doc;
CREATE TABLE tj_selection_doc (
  IdDOC int(11) unsigned NOT NULL,
  IdUSR int(11) NOT NULL,
  SEL_DateCreation datetime NOT NULL,
  PRIMARY KEY  (IdDOC,IdUSR)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table 'tj_selection_doc'
--


-- --------------------------------------------------------

--
-- Structure de la table 'ts_user_usr'
--

DROP TABLE IF EXISTS ts_user_usr;
CREATE TABLE ts_user_usr (
  IdUSR int(10) unsigned NOT NULL auto_increment,
  USR_Nom varchar(32) collate utf8_unicode_ci NOT NULL,
  USR_Prenom varchar(32) collate utf8_unicode_ci NOT NULL,
  USR_Mail varchar(128) collate utf8_unicode_ci NOT NULL,
  USR_NumAdherent varchar(8) collate utf8_unicode_ci default NULL,
  USR_Pwd varchar(128) collate utf8_unicode_ci NOT NULL,
  USR_Tel varchar(16) collate utf8_unicode_ci NOT NULL,
  USR_Fonction varchar(32) collate utf8_unicode_ci NOT NULL,
  USR_ZoneGeo varchar(32) collate utf8_unicode_ci default NULL,
  USR_Droits tinyint(4) default NULL,
  USR_Comment text collate utf8_unicode_ci,
  USR_IdCom int(11) default NULL COMMENT 'Commission liée',
  USR_DateCreation datetime NOT NULL,
  USR_DateModif datetime default NULL,
  USR_CreePar varchar(32) collate utf8_unicode_ci NOT NULL,
  USR_DateSuppression datetime default NULL COMMENT 'Date Suppression',
  PRIMARY KEY  (IdUSR)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table des Utilisateurs';

--
-- Contenu de la table 'ts_user_usr'
--

INSERT INTO ts_user_usr (IdUSR, USR_Nom, USR_Prenom, USR_Mail, USR_NumAdherent, USR_Pwd, USR_Tel, USR_Fonction, USR_ZoneGeo, USR_Droits, USR_Comment, USR_IdCom, USR_DateCreation, USR_DateModif, USR_CreePar, USR_DateSuppression) VALUES
(4, 'Laville', 'Marc', 'marc.laville@polinux.net', '', 'vava001', '03 84 37 34 64', 'Rsp de Projet, Informatique', '*', 7, '', NULL, '2010-07-03 18:08:13', '2012-06-11 15:09:20', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table 't_chrono_chr'
--

DROP TABLE IF EXISTS t_chrono_chr;
CREATE TABLE t_chrono_chr (
  IdCHR int(10) unsigned NOT NULL auto_increment,
  CHR_NomTable varchar(16) collate utf8_bin NOT NULL,
  CHR_Ident int(11) NOT NULL,
  CHR_Action varchar(8) collate utf8_bin NOT NULL,
  CHR_Comment text collate utf8_bin,
  CHR_User varchar(32) collate utf8_bin NOT NULL,
  CHR_Date datetime NOT NULL,
  PRIMARY KEY  (IdCHR)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Chronologie des actions sur la base';

--
-- Contenu de la table 't_chrono_chr'
--


-- --------------------------------------------------------

--
-- Structure de la table 't_commission_com'
--

DROP TABLE IF EXISTS t_commission_com;
CREATE TABLE t_commission_com (
  IdCOM int(10) NOT NULL auto_increment,
  COM_Libelle varchar(128) collate utf8_bin NOT NULL,
  COM_Repertoire varchar(16) collate utf8_bin NOT NULL,
  COM_Path varchar(64) collate utf8_bin default NULL COMMENT 'Chemin vers le répertoire',
  COM_Comment text collate utf8_bin,
  COM_CreePar varchar(32) collate utf8_bin NOT NULL,
  COM_dateCreation datetime NOT NULL,
  COM_dateModif datetime default NULL,
  PRIMARY KEY  (IdCOM)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table 't_commission_com'
--

INSERT INTO t_commission_com (IdCOM, COM_Libelle, COM_Repertoire, COM_Path, COM_Comment, COM_CreePar, COM_dateCreation, COM_dateModif) VALUES
(-1, 'Corbeille', '.trash', NULL, NULL, '', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table 't_demande_dmd'
--

DROP TABLE IF EXISTS t_demande_dmd;
CREATE TABLE t_demande_dmd (
  IdDMD int(10) unsigned NOT NULL auto_increment,
  DMD_Nom varchar(32) collate utf8_unicode_ci NOT NULL,
  DMD_Prenom varchar(32) collate utf8_unicode_ci NOT NULL,
  DMD_Mail varchar(128) collate utf8_unicode_ci NOT NULL,
  DMD_Tel varchar(16) collate utf8_unicode_ci NOT NULL,
  DMD_GSM varchar(16) collate utf8_unicode_ci default NULL COMMENT 'Tél Portable',
  DMD_IdUSR_FK int(11) default NULL COMMENT 'Identifiant Utilisateur',
  DMD_Comment text collate utf8_unicode_ci,
  DMD_DateCreation datetime NOT NULL,
  PRIMARY KEY  (IdDMD)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table des Demandes de login';

--
-- Contenu de la table 't_demande_dmd'
--


-- --------------------------------------------------------

--
-- Structure de la table 't_docged_doc'
--

DROP TABLE IF EXISTS t_docged_doc;
CREATE TABLE t_docged_doc (
  IdDoc int(10) unsigned NOT NULL auto_increment,
  DOC_Libelle varchar(64) collate utf8_bin NOT NULL,
  DOC_Fic varchar(64) collate utf8_bin NOT NULL,
  DOC_Etat varchar(64) character set utf8 collate utf8_unicode_ci NOT NULL,
  DOC_Visibilite tinyint(4) NOT NULL default '1',
  DOC_IdCOM int(11) NOT NULL,
  DOC_Descriptif text collate utf8_bin NOT NULL,
  DOC_MotClef varchar(64) collate utf8_bin default NULL COMMENT 'MotsClef du Document',
  DOC_Nature varchar(32) collate utf8_bin default NULL,
  DOC_Tiers varchar(64) collate utf8_bin NOT NULL,
  DOC_DateEcheance date default NULL,
  DOC_LibEcheance varchar(32) collate utf8_bin default NULL COMMENT 'Echeance associ�e � l �ch�ance',
  DOC_DateFinEcheance date default NULL,
  DOC_LibFinEcheance varchar(32) collate utf8_bin default NULL,
  DOC_InfoComplementaires text collate utf8_bin NOT NULL,
  DOC_DateCreation datetime NOT NULL,
  DOC_CreePar varchar(32) collate utf8_bin NOT NULL,
  DOC_DateModif datetime default NULL,
  DOC_DateSuppr datetime default NULL,
  PRIMARY KEY  (IdDoc),
  KEY DOC_IdCOM (DOC_IdCOM)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table 't_docged_doc'
--

