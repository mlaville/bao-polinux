-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 14 Novembre 2013 à 10:49
-- Version du serveur: 5.1.36
-- Version de PHP: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: 'bao_polinux'
--

-- --------------------------------------------------------

--
-- Structure de la table 'activite'
--

CREATE TABLE activite (
  IdActivite int(10) unsigned NOT NULL AUTO_INCREMENT,
  ACT_couleur varchar(6)  NOT NULL,
  ACT_nomCentre varchar(128)  NOT NULL,
  ACT_Societe varchar(64)  NOT NULL,
  ACT_Type varchar(128)  NOT NULL,
  ACT_DescriptCourt varchar(128)  NOT NULL,
  ACT_DescriptLong text  NOT NULL,
  ACT_LieuDit varchar(64)  NOT NULL,
  ACT_Commune varchar(64)  NOT NULL,
  ACT_Pays varchar(16)  NOT NULL,
  ACT_CodePostal varchar(7)  NOT NULL,
  ACT_NomDept varchar(32)  NOT NULL,
  ACT_Bassin varchar(32)  NOT NULL,
  ACT_DistCentre varchar(16)  NOT NULL,
  ACT_CoordGeo text  NOT NULL,
  ACT_TypePublic varchar(32)  NOT NULL,
  ACT_Handicap varchar(32)  NOT NULL,
  ACT_PeriodeOuverture varchar(32)  NOT NULL,
  ACT_InfoComplem text  NOT NULL,
  ACT_Adresse varchar(128)  NOT NULL,
  ACT_NomCorresp varchar(32)  NOT NULL,
  ACT_NumTel varchar(16)  NOT NULL,
  ACT_NumTel2 varchar(16)  NOT NULL,
  ACT_NumFax varchar(16)  NOT NULL,
  ACT_Courriel varchar(64)  NOT NULL,
  ACT_Url varchar(128)  NOT NULL,
  ACT_DocPapier varchar(128)  NOT NULL,
  ACT_Langue varchar(16)  NOT NULL,
  ACT_DateCreation datetime DEFAULT NULL,
  ACT_CreePar varchar(32)  DEFAULT NULL,
  ACT_DateModif datetime DEFAULT NULL,
  PRIMARY KEY (IdActivite)
) ENGINE=MyISAM  ;

-- --------------------------------------------------------

--
-- Structure de la table 'tj_droit_com'
--

CREATE TABLE tj_droit_com (
  IdCOM int(11) NOT NULL,
  idUtilisateur int(11) NOT NULL,
  com_droit smallint(6) NOT NULL,
  UNIQUE KEY IdComUser (IdCOM,idUtilisateur)
) ENGINE=MyISAM  COMMENT='droits utilisateurs sur les commissions';

-- --------------------------------------------------------

--
-- Structure de la table 'tj_selection_doc'
--

CREATE TABLE tj_selection_doc (
  IdDOC int(11) unsigned NOT NULL,
  IdUSR int(11) NOT NULL,
  SEL_DateCreation datetime NOT NULL,
  PRIMARY KEY (IdDOC,IdUSR)
) ENGINE=MyISAM;

-- --------------------------------------------------------

--
-- Structure de la table 'ts_user_usr'
--

CREATE TABLE ts_user_usr (
  IdUSR int(10) unsigned NOT NULL AUTO_INCREMENT,
  USR_Nom varchar(32)  NOT NULL,
  USR_Prenom varchar(32)  NOT NULL,
  USR_Mail varchar(128)  NOT NULL,
  USR_NumAdherent varchar(8)  DEFAULT NULL,
  USR_Pwd varchar(128)  NOT NULL,
  USR_Tel varchar(16)  NOT NULL,
  USR_Fonction varchar(32)  NOT NULL,
  USR_ZoneGeo varchar(32)  DEFAULT NULL,
  USR_Droits tinyint(4) DEFAULT NULL,
  USR_Comment text COLLATE utf8_unicode_ci,
  USR_IdCom int(11) DEFAULT NULL COMMENT 'Commission liée',
  USR_DateCreation datetime NOT NULL,
  USR_DateModif datetime DEFAULT NULL,
  USR_CreePar varchar(32)  NOT NULL,
  USR_DateSuppression datetime DEFAULT NULL COMMENT 'Date Suppression',
  PRIMARY KEY (IdUSR)
) ENGINE=MyISAM  COMMENT='Table des Utilisateurs';

-- --------------------------------------------------------

--
-- Structure de la table 't_chrono_chr'
--

CREATE TABLE t_chrono_chr (
  IdCHR int(10) unsigned NOT NULL AUTO_INCREMENT,
  CHR_NomTable varchar(16)  NOT NULL,
  CHR_Ident int(11) NOT NULL,
  CHR_Action varchar(8)  NOT NULL,
  CHR_Comment text  ,
  CHR_User varchar(32)  NOT NULL,
  CHR_Date datetime NOT NULL,
  PRIMARY KEY (IdCHR)
) ENGINE=MyISAM   COMMENT='Chronologie des actions sur la base';

-- --------------------------------------------------------

--
-- Structure de la table 't_commission_com'
--

CREATE TABLE t_commission_com (
  IdCOM int(10) NOT NULL AUTO_INCREMENT,
  COM_Libelle varchar(128)  NOT NULL,
  COM_Repertoire varchar(32)  NOT NULL,
  COM_Path varchar(64)  DEFAULT NULL COMMENT 'Chemin vers le répertoire',
  COM_Comment text  ,
  COM_CreePar varchar(32)  NOT NULL,
  COM_dateCreation datetime NOT NULL,
  COM_dateModif datetime DEFAULT NULL,
  PRIMARY KEY (IdCOM)
) ENGINE=MyISAM;

-- --------------------------------------------------------

--
-- Structure de la table 't_demande_dmd'
--

CREATE TABLE t_demande_dmd (
  IdDMD int(10) unsigned NOT NULL AUTO_INCREMENT,
  DMD_Nom varchar(32)  NOT NULL,
  DMD_Prenom varchar(32)  NOT NULL,
  DMD_Mail varchar(128)  NOT NULL,
  DMD_Tel varchar(16)  NOT NULL,
  DMD_GSM varchar(16)  DEFAULT NULL COMMENT 'Tél Portable',
  DMD_IdUSR_FK int(11) DEFAULT NULL COMMENT 'Identifiant Utilisateur',
  DMD_Comment text COLLATE utf8_unicode_ci,
  DMD_DateCreation datetime NOT NULL,
  PRIMARY KEY (IdDMD)
) ENGINE=MyISAM   COMMENT='Table des Demandes de login';

-- --------------------------------------------------------

--
-- Structure de la table 't_docged_doc'
--

CREATE TABLE t_docged_doc (
  IdDoc int(10) unsigned NOT NULL AUTO_INCREMENT,
  DOC_Libelle varchar(64)  NOT NULL,
  DOC_Fic varchar(64)  NOT NULL,
  DOC_Etat varchar(64) CHARACTER SET utf8  NOT NULL,
  DOC_Visibilite tinyint(4) NOT NULL DEFAULT '1',
  DOC_IdCOM int(11) NOT NULL,
  DOC_Descriptif text  NOT NULL,
  DOC_MotClef varchar(64)  DEFAULT NULL COMMENT 'MotsClef du Document',
  DOC_Nature varchar(32)  DEFAULT NULL,
  DOC_Tiers varchar(64)  NOT NULL,
  DOC_DateEcheance date DEFAULT NULL,
  DOC_LibEcheance varchar(32)  DEFAULT NULL COMMENT 'Echeance associ?e ? l ?ch?ance',
  DOC_DateFinEcheance date DEFAULT NULL,
  DOC_LibFinEcheance varchar(32)  DEFAULT NULL,
  DOC_InfoComplementaires text  NOT NULL,
  DOC_DateCreation datetime NOT NULL,
  DOC_CreePar varchar(32)  NOT NULL,
  DOC_DateModif datetime DEFAULT NULL,
  DOC_DateSuppr datetime DEFAULT NULL,
  PRIMARY KEY (IdDoc),
  KEY DOC_IdCOM (DOC_IdCOM)
) ENGINE=MyISAM;


INSERT INTO `ts_user_usr` VALUES(NULL, 'Cordier', 'Jean-Louis', 'jeanl.cordier@orange.fr', '', 'jlc', '', '', '*', 7, '', NULL, NOW(), NOW(), '', NULL);
INSERT INTO `ts_user_usr` VALUES(NULL, 'Laville', 'Marc', 'marc.laville@polinux.net', '', 'vava001', '03 84 37 34 64', 'Rsp de Projet, Informatique', '*', 7, '', NULL, NOW(), NOW(), '', NULL);