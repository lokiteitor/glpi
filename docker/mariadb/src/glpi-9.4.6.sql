# /**
#  * ---------------------------------------------------------------------
#  * GLPI - Gestionnaire Libre de Parc Informatique
#  * Copyright (C) 2015-2018 Teclib' and contributors.
#  *
#  * http://glpi-project.org
#  *
#  * based on GLPI - Gestionnaire Libre de Parc Informatique
#  * Copyright (C) 2003-2014 by the INDEPNET Development Team.
#  *
#  * ---------------------------------------------------------------------
#  *
#  * LICENSE
#  *
#  * This file is part of GLPI.
#  *
#  * GLPI is free software; you can redistribute it and/or modify
#  * it under the terms of the GNU General Public License as published by
#  * the Free Software Foundation; either version 2 of the License, or
#  * (at your option) any later version.
#  *
#  * GLPI is distributed in the hope that it will be useful,
#  * but WITHOUT ANY WARRANTY; without even the implied warranty of
#  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  * GNU General Public License for more details.
#  *
#  * You should have received a copy of the GNU General Public License
#  * along with GLPI. If not, see <http://www.gnu.org/licenses/>.
#  * ---------------------------------------------------------------------
# */
#GLPI Dump database on 2016-02-08 16:57

### Dump table glpi_alerts

DROP TABLE IF EXISTS `glpi_alerts`;
CREATE TABLE `glpi_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php ALERT_* constant',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`type`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_authldapreplicates

DROP TABLE IF EXISTS `glpi_authldapreplicates`;
CREATE TABLE `glpi_authldapreplicates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authldaps_id` (`authldaps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_authldaps

DROP TABLE IF EXISTS `glpi_authldaps`;
CREATE TABLE `glpi_authldaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basedn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rootdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `condition` text COLLATE utf8_unicode_ci,
  `login_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'uid',
  `sync_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_tls` tinyint(1) NOT NULL DEFAULT '0',
  `group_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_condition` text COLLATE utf8_unicode_ci,
  `group_search_type` int(11) NOT NULL DEFAULT '0',
  `group_member_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_dn` tinyint(1) NOT NULL DEFAULT '1',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT '0',
  `title_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_condition` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rootdn_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsible_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `ldap_maxlimit` int(11) NOT NULL DEFAULT '0',
  `can_support_pagesize` tinyint(1) NOT NULL DEFAULT '0',
  `picture_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `inventory_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_default` (`is_default`),
  KEY `is_active` (`is_active`),
  KEY `date_creation` (`date_creation`),
  KEY `sync_field` (`sync_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_authmails

DROP TABLE IF EXISTS `glpi_authmails`;
CREATE TABLE `glpi_authmails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_apiclients

DROP TABLE IF EXISTS `glpi_apiclients`;
CREATE TABLE `glpi_apiclients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` INT(11) NOT NULL DEFAULT '0',
  `is_recursive` TINYINT(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` DATETIME DEFAULT NULL,
  `is_active` TINYINT(1) NOT NULL DEFAULT '0',
  `ipv4_range_start` BIGINT DEFAULT NULL,
  `ipv4_range_end` BIGINT DEFAULT NULL,
  `ipv6` VARCHAR(255) DEFAULT NULL,
  `app_token` VARCHAR(255) DEFAULT NULL,
  `app_token_date` DATETIME DEFAULT NULL,
  `dolog_method` TINYINT NOT NULL DEFAULT '0',
  `comment` TEXT,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `glpi_apiclients` VALUES (1, 0, 1, 'full access from localhost', NULL, 1, INET_ATON('127.0.0.1'), INET_ATON('127.0.0.1'), '::1', '', NULL, 0, NULL);


### Dump table glpi_autoupdatesystems

DROP TABLE IF EXISTS `glpi_autoupdatesystems`;
CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_blacklistedmailcontents

DROP TABLE IF EXISTS `glpi_blacklistedmailcontents`;
CREATE TABLE `glpi_blacklistedmailcontents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_blacklists

DROP TABLE IF EXISTS `glpi_blacklists`;
CREATE TABLE `glpi_blacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_blacklists` VALUES ('1','1','empty IP','',NULL,NULL,NULL);
INSERT INTO `glpi_blacklists` VALUES ('2','1','localhost','127.0.0.1',NULL,NULL,NULL);
INSERT INTO `glpi_blacklists` VALUES ('3','1','zero IP','0.0.0.0',NULL,NULL,NULL);
INSERT INTO `glpi_blacklists` VALUES ('4','2','empty MAC','',NULL,NULL,NULL);

### Dump table glpi_savedsearches

DROP TABLE IF EXISTS `glpi_savedsearches`;
CREATE TABLE `glpi_savedsearches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see SavedSearch:: constants',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query` text COLLATE utf8_unicode_ci,
  `last_execution_time` int(11) DEFAULT NULL,
  `do_count` tinyint(1) NOT NULL DEFAULT '2' COMMENT 'Do or do not count results on list display see SavedSearch::COUNT_* constants',
  `last_execution_date` datetime DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `is_private` (`is_private`),
  KEY `is_recursive` (`is_recursive`),
  KEY `last_execution_time` (`last_execution_time`),
  KEY `last_execution_date` (`last_execution_date`),
  KEY `do_count` (`do_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_savedsearches_users

DROP TABLE IF EXISTS `glpi_savedsearches_users`;
CREATE TABLE `glpi_savedsearches_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`),
  KEY `savedsearches_id` (`savedsearches_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_savedsearches_alerts

DROP TABLE IF EXISTS `glpi_savedsearches_alerts`;
CREATE TABLE `glpi_savedsearches_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `operator` tinyint(1) NOT NULL,
  `value` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  UNIQUE KEY `unicity` (`savedsearches_id`,`operator`, `value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_budgets

DROP TABLE IF EXISTS `glpi_budgets`;
CREATE TABLE `glpi_budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `budgettypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_template` (`is_template`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `locations_id` (`locations_id`),
  KEY `budgettypes_id` (`budgettypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_budgettypes

DROP TABLE IF EXISTS `glpi_budgettypes`;
CREATE TABLE `glpi_budgettypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_businesscriticities

DROP TABLE IF EXISTS `glpi_businesscriticities`;
CREATE TABLE `glpi_businesscriticities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  UNIQUE KEY `unicity` (`businesscriticities_id`,`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_calendars

DROP TABLE IF EXISTS `glpi_calendars`;
CREATE TABLE `glpi_calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `cache_duration` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_calendars` VALUES ('1','Default','0','1','Default calendar',NULL,'[0,43200,43200,43200,43200,43200,0]',NULL);

### Dump table glpi_calendars_holidays

DROP TABLE IF EXISTS `glpi_calendars_holidays`;
CREATE TABLE `glpi_calendars_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `holidays_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`calendars_id`,`holidays_id`),
  KEY `holidays_id` (`holidays_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_calendarsegments

DROP TABLE IF EXISTS `glpi_calendarsegments`;
CREATE TABLE `glpi_calendarsegments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendars_id` (`calendars_id`),
  KEY `day` (`day`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_calendarsegments` VALUES ('1','1','0','0','1','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('2','1','0','0','2','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('3','1','0','0','3','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('4','1','0','0','4','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('5','1','0','0','5','08:00:00','20:00:00');

### Dump table glpi_cartridgeitems

DROP TABLE IF EXISTS `glpi_cartridgeitems`;
CREATE TABLE `glpi_cartridgeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `cartridgeitemtypes_id` (`cartridgeitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_cartridgeitems_printermodels

DROP TABLE IF EXISTS `glpi_cartridgeitems_printermodels`;
CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`printermodels_id`,`cartridgeitems_id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_cartridgeitemtypes

DROP TABLE IF EXISTS `glpi_cartridgeitemtypes`;
CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_cartridges

DROP TABLE IF EXISTS `glpi_cartridges`;
CREATE TABLE `glpi_cartridges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printers_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`),
  KEY `printers_id` (`printers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_certificates

DROP TABLE IF EXISTS `glpi_certificates`;
CREATE TABLE `glpi_certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificatetypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_certificatetypes (id)',
  `dns_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dns_suffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_autosign` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` date DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `command` text COLLATE utf8_unicode_ci,
  `certificate_request` text COLLATE utf8_unicode_ci,
  `certificate_item` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `certificatetypes_id` (`certificatetypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `states_id` (`states_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_certificates_items

DROP TABLE IF EXISTS `glpi_certificates_items`;
CREATE TABLE `glpi_certificates_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificates_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`certificates_id`,`itemtype`,`items_id`),
  KEY `device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_certificatetypes

DROP TABLE IF EXISTS `glpi_certificatetypes`;
CREATE TABLE `glpi_certificatetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changecosts

DROP TABLE IF EXISTS `glpi_changecosts`;
CREATE TABLE `glpi_changecosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `changes_id` (`changes_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changes

DROP TABLE IF EXISTS `glpi_changes`;
CREATE TABLE `glpi_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `controlistcontent` longtext COLLATE utf8_unicode_ci,
  `rolloutplancontent` longtext COLLATE utf8_unicode_ci,
  `backoutplancontent` longtext COLLATE utf8_unicode_ci,
  `checklistcontent` longtext COLLATE utf8_unicode_ci,
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `global_validation` (`global_validation`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changes_groups

DROP TABLE IF EXISTS `glpi_changes_groups`;
CREATE TABLE `glpi_changes_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changes_items

DROP TABLE IF EXISTS `glpi_changes_items`;
CREATE TABLE `glpi_changes_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changes_problems

DROP TABLE IF EXISTS `glpi_changes_problems`;
CREATE TABLE `glpi_changes_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `problems_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`problems_id`),
  KEY `problems_id` (`problems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changes_suppliers

DROP TABLE IF EXISTS `glpi_changes_suppliers`;
CREATE TABLE `glpi_changes_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changes_tickets

DROP TABLE IF EXISTS `glpi_changes_tickets`;
CREATE TABLE `glpi_changes_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changes_users

DROP TABLE IF EXISTS `glpi_changes_users`;
CREATE TABLE `glpi_changes_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changetasks

DROP TABLE IF EXISTS `glpi_changetasks`;
CREATE TABLE `glpi_changetasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` INT(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `changes_id` (`changes_id`),
  KEY `state` (`state`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `tasktemplates_id` (`tasktemplates_id`),
  KEY `is_private` (`is_private`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_changevalidations

DROP TABLE IF EXISTS `glpi_changevalidations`;
CREATE TABLE `glpi_changevalidations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `changes_id` (`changes_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computerantiviruses

DROP TABLE IF EXISTS `glpi_computerantiviruses`;
CREATE TABLE `glpi_computerantiviruses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `antivirus_version` varchar(255) DEFAULT NULL,
  `signature_version` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_uptodate` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `antivirus_version` (`antivirus_version`),
  KEY `signature_version` (`signature_version`),
  KEY `is_active` (`is_active`),
  KEY `is_uptodate` (`is_uptodate`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `is_deleted` (`is_deleted`),
  KEY `computers_id` (`computers_id`),
  KEY `date_expiration` (`date_expiration`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_disks

DROP TABLE IF EXISTS `glpi_items_disks`;
CREATE TABLE `glpi_items_disks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mountpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT '0',
  `totalsize` int(11) NOT NULL DEFAULT '0',
  `freesize` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `device` (`device`),
  KEY `mountpoint` (`mountpoint`),
  KEY `totalsize` (`totalsize`),
  KEY `freesize` (`freesize`),
  KEY `itemtype` (`itemtype`),
  KEY `items_id` (`items_id`),
  KEY `item` (`itemtype`, `items_id`),
  KEY `filesystems_id` (`filesystems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computermodels

DROP TABLE IF EXISTS `glpi_computermodels`;
CREATE TABLE `glpi_computermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers

DROP TABLE IF EXISTS `glpi_computers`;
CREATE TABLE `glpi_computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `autoupdatesystems_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `computermodels_id` int(11) NOT NULL DEFAULT '0',
  `computertypes_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `computermodels_id` (`computermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `computertypes_id` (`computertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers_items

DROP TABLE IF EXISTS `glpi_computers_items`;
CREATE TABLE `glpi_computers_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers_softwarelicenses

DROP TABLE IF EXISTS `glpi_computers_softwarelicenses`;
CREATE TABLE `glpi_computers_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `softwarelicenses_id` (`softwarelicenses_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers_softwareversions

DROP TABLE IF EXISTS `glpi_computers_softwareversions`;
CREATE TABLE `glpi_computers_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted_computer` tinyint(1) NOT NULL DEFAULT '0',
  `is_template_computer` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_install` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  KEY `softwareversions_id` (`softwareversions_id`),
  KEY `computers_info` (`entities_id`,`is_template_computer`,`is_deleted_computer`),
  KEY `is_template` (`is_template_computer`),
  KEY `is_deleted` (`is_deleted_computer`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_install` (`date_install`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computertypes

DROP TABLE IF EXISTS `glpi_computertypes`;
CREATE TABLE `glpi_computertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computervirtualmachines

DROP TABLE IF EXISTS `glpi_computervirtualmachines`;
CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinesystems_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinetypes_id` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT '0',
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `virtualmachinestates_id` (`virtualmachinestates_id`),
  KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`),
  KEY `vcpu` (`vcpu`),
  KEY `ram` (`ram`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `uuid` (`uuid`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_operatingsystems

DROP TABLE IF EXISTS `glpi_items_operatingsystems`;
CREATE TABLE `glpi_items_operatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemservicepacks_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemarchitectures_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemkernelversions_id` int(11) NOT NULL DEFAULT '0',
  `license_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operatingsystemeditions_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `items_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  KEY `operatingsystemarchitectures_id` (`operatingsystemarchitectures_id`),
  KEY `operatingsystemkernelversions_id` (`operatingsystemkernelversions_id`),
  KEY `operatingsystemeditions_id` (`operatingsystemeditions_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  UNIQUE KEY `unicity` (`items_id`,`itemtype`, `operatingsystems_id`, `operatingsystemarchitectures_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystemkernels

DROP TABLE IF EXISTS `glpi_operatingsystemkernels`;
CREATE TABLE `glpi_operatingsystemkernels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystemkernelversions

DROP TABLE IF EXISTS `glpi_operatingsystemkernelversions`;
CREATE TABLE `glpi_operatingsystemkernelversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operatingsystemkernels_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `operatingsystemkernels_id` (`operatingsystemkernels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_operatingsystemeditions

DROP TABLE IF EXISTS `glpi_operatingsystemeditions`;
CREATE TABLE `glpi_operatingsystemeditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_configs

DROP TABLE IF EXISTS `glpi_configs`;
CREATE TABLE `glpi_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`context`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_configs` VALUES ('1','core','version','9.4.6');
INSERT INTO `glpi_configs` VALUES ('2','core','show_jobs_at_login','0');
INSERT INTO `glpi_configs` VALUES ('3','core','cut','250');
INSERT INTO `glpi_configs` VALUES ('4','core','list_limit','15');
INSERT INTO `glpi_configs` VALUES ('5','core','list_limit_max','50');
INSERT INTO `glpi_configs` VALUES ('6','core','url_maxlength','30');
INSERT INTO `glpi_configs` VALUES ('7','core','event_loglevel','5');
INSERT INTO `glpi_configs` VALUES ('8','core','notifications_mailing','0');
INSERT INTO `glpi_configs` VALUES ('9','core','admin_email','admsys@localhost');
INSERT INTO `glpi_configs` VALUES ('10','core','admin_email_name','');
INSERT INTO `glpi_configs` VALUES ('11','core','admin_reply','');
INSERT INTO `glpi_configs` VALUES ('12','core','admin_reply_name','');
INSERT INTO `glpi_configs` VALUES ('13','core','mailing_signature','SIGNATURE');
INSERT INTO `glpi_configs` VALUES ('14','core','use_anonymous_helpdesk','0');
INSERT INTO `glpi_configs` VALUES ('15','core','use_anonymous_followups','0');
INSERT INTO `glpi_configs` VALUES ('16','core','language','en_GB');
INSERT INTO `glpi_configs` VALUES ('17','core','priority_1','#fff2f2');
INSERT INTO `glpi_configs` VALUES ('18','core','priority_2','#ffe0e0');
INSERT INTO `glpi_configs` VALUES ('19','core','priority_3','#ffcece');
INSERT INTO `glpi_configs` VALUES ('20','core','priority_4','#ffbfbf');
INSERT INTO `glpi_configs` VALUES ('21','core','priority_5','#ffadad');
INSERT INTO `glpi_configs` VALUES ('22','core','priority_6','#ff5555');
INSERT INTO `glpi_configs` VALUES ('23','core','date_tax','2005-12-31');
INSERT INTO `glpi_configs` VALUES ('24','core','cas_host','');
INSERT INTO `glpi_configs` VALUES ('25','core','cas_port','443');
INSERT INTO `glpi_configs` VALUES ('26','core','cas_uri','');
INSERT INTO `glpi_configs` VALUES ('27','core','cas_logout','');
INSERT INTO `glpi_configs` VALUES ('28','core','existing_auth_server_field_clean_domain','0');
INSERT INTO `glpi_configs` VALUES ('29','core','planning_begin','08:00:00');
INSERT INTO `glpi_configs` VALUES ('30','core','planning_end','20:00:00');
INSERT INTO `glpi_configs` VALUES ('31','core','utf8_conv','1');
INSERT INTO `glpi_configs` VALUES ('32','core','use_public_faq','0');
INSERT INTO `glpi_configs` VALUES ('33','core','url_base','http://localhost/glpi/');
INSERT INTO `glpi_configs` VALUES ('34','core','show_link_in_mail','0');
INSERT INTO `glpi_configs` VALUES ('35','core','text_login','');
INSERT INTO `glpi_configs` VALUES ('36','core','founded_new_version','');
INSERT INTO `glpi_configs` VALUES ('37','core','dropdown_max','100');
INSERT INTO `glpi_configs` VALUES ('38','core','ajax_wildcard','*');
INSERT INTO `glpi_configs` VALUES ('42','core','ajax_limit_count','10');
INSERT INTO `glpi_configs` VALUES ('43','core','use_ajax_autocompletion','1');
INSERT INTO `glpi_configs` VALUES ('44','core','is_users_auto_add','1');
INSERT INTO `glpi_configs` VALUES ('45','core','date_format','0');
INSERT INTO `glpi_configs` VALUES ('46','core','number_format','0');
INSERT INTO `glpi_configs` VALUES ('47','core','csv_delimiter',';');
INSERT INTO `glpi_configs` VALUES ('48','core','is_ids_visible','0');
INSERT INTO `glpi_configs` VALUES ('50','core','smtp_mode','0');
INSERT INTO `glpi_configs` VALUES ('51','core','smtp_host','');
INSERT INTO `glpi_configs` VALUES ('52','core','smtp_port','25');
INSERT INTO `glpi_configs` VALUES ('53','core','smtp_username','');
INSERT INTO `glpi_configs` VALUES ('54','core','proxy_name','');
INSERT INTO `glpi_configs` VALUES ('55','core','proxy_port','8080');
INSERT INTO `glpi_configs` VALUES ('56','core','proxy_user','');
INSERT INTO `glpi_configs` VALUES ('57','core','add_followup_on_update_ticket','1');
INSERT INTO `glpi_configs` VALUES ('58','core','keep_tickets_on_delete','0');
INSERT INTO `glpi_configs` VALUES ('59','core','time_step','5');
INSERT INTO `glpi_configs` VALUES ('60','core','decimal_number','2');
INSERT INTO `glpi_configs` VALUES ('61','core','helpdesk_doc_url','');
INSERT INTO `glpi_configs` VALUES ('62','core','central_doc_url','');
INSERT INTO `glpi_configs` VALUES ('63','core','documentcategories_id_forticket','0');
INSERT INTO `glpi_configs` VALUES ('64','core','monitors_management_restrict','2');
INSERT INTO `glpi_configs` VALUES ('65','core','phones_management_restrict','2');
INSERT INTO `glpi_configs` VALUES ('66','core','peripherals_management_restrict','2');
INSERT INTO `glpi_configs` VALUES ('67','core','printers_management_restrict','2');
INSERT INTO `glpi_configs` VALUES ('68','core','use_log_in_files','1');
INSERT INTO `glpi_configs` VALUES ('69','core','time_offset','0');
INSERT INTO `glpi_configs` VALUES ('70','core','is_contact_autoupdate','1');
INSERT INTO `glpi_configs` VALUES ('71','core','is_user_autoupdate','1');
INSERT INTO `glpi_configs` VALUES ('72','core','is_group_autoupdate','1');
INSERT INTO `glpi_configs` VALUES ('73','core','is_location_autoupdate','1');
INSERT INTO `glpi_configs` VALUES ('74','core','state_autoupdate_mode','0');
INSERT INTO `glpi_configs` VALUES ('75','core','is_contact_autoclean','0');
INSERT INTO `glpi_configs` VALUES ('76','core','is_user_autoclean','0');
INSERT INTO `glpi_configs` VALUES ('77','core','is_group_autoclean','0');
INSERT INTO `glpi_configs` VALUES ('78','core','is_location_autoclean','0');
INSERT INTO `glpi_configs` VALUES ('79','core','state_autoclean_mode','0');
INSERT INTO `glpi_configs` VALUES ('80','core','use_flat_dropdowntree','0');
INSERT INTO `glpi_configs` VALUES ('81','core','use_autoname_by_entity','1');
INSERT INTO `glpi_configs` VALUES ('84','core','softwarecategories_id_ondelete','1');
INSERT INTO `glpi_configs` VALUES ('85','core','x509_email_field','');
INSERT INTO `glpi_configs` VALUES ('86','core','x509_cn_restrict','');
INSERT INTO `glpi_configs` VALUES ('87','core','x509_o_restrict','');
INSERT INTO `glpi_configs` VALUES ('88','core','x509_ou_restrict','');
INSERT INTO `glpi_configs` VALUES ('89','core','default_mailcollector_filesize_max','2097152');
INSERT INTO `glpi_configs` VALUES ('90','core','followup_private','0');
INSERT INTO `glpi_configs` VALUES ('91','core','task_private','0');
INSERT INTO `glpi_configs` VALUES ('92','core','default_software_helpdesk_visible','1');
INSERT INTO `glpi_configs` VALUES ('93','core','names_format','0');
INSERT INTO `glpi_configs` VALUES ('95','core','default_requesttypes_id','1');
INSERT INTO `glpi_configs` VALUES ('96','core','use_noright_users_add','1');
INSERT INTO `glpi_configs` VALUES ('97','core','cron_limit','5');
INSERT INTO `glpi_configs` VALUES ('98','core','priority_matrix','{\"1\":{\"1\":1,\"2\":1,\"3\":2,\"4\":2,\"5\":2},\"2\":{\"1\":1,\"2\":2,\"3\":2,\"4\":3,\"5\":3},\"3\":{\"1\":2,\"2\":2,\"3\":3,\"4\":4,\"5\":4},\"4\":{\"1\":2,\"2\":3,\"3\":4,\"4\":4,\"5\":5},\"5\":{\"1\":2,\"2\":3,\"3\":4,\"4\":5,\"5\":5}}');
INSERT INTO `glpi_configs` VALUES ('99','core','urgency_mask','62');
INSERT INTO `glpi_configs` VALUES ('100','core','impact_mask','62');
INSERT INTO `glpi_configs` VALUES ('101','core','user_deleted_ldap','0');
INSERT INTO `glpi_configs` VALUES ('102','core','auto_create_infocoms','0');
INSERT INTO `glpi_configs` VALUES ('103','core','use_slave_for_search','0');
INSERT INTO `glpi_configs` VALUES ('104','core','proxy_passwd','');
INSERT INTO `glpi_configs` VALUES ('105','core','smtp_passwd','');
INSERT INTO `glpi_configs` VALUES ('106','core','transfers_id_auto','0');
INSERT INTO `glpi_configs` VALUES ('107','core','show_count_on_tabs','1');
INSERT INTO `glpi_configs` VALUES ('108','core','refresh_ticket_list','0');
INSERT INTO `glpi_configs` VALUES ('109','core','set_default_tech','1');
INSERT INTO `glpi_configs` VALUES ('110','core','allow_search_view','2');
INSERT INTO `glpi_configs` VALUES ('111','core','allow_search_all','0');
INSERT INTO `glpi_configs` VALUES ('112','core','allow_search_global','1');
INSERT INTO `glpi_configs` VALUES ('113','core','display_count_on_home','5');
INSERT INTO `glpi_configs` VALUES ('114','core','use_password_security','0');
INSERT INTO `glpi_configs` VALUES ('115','core','password_min_length','8');
INSERT INTO `glpi_configs` VALUES ('116','core','password_need_number','1');
INSERT INTO `glpi_configs` VALUES ('117','core','password_need_letter','1');
INSERT INTO `glpi_configs` VALUES ('118','core','password_need_caps','1');
INSERT INTO `glpi_configs` VALUES ('119','core','password_need_symbol','1');
INSERT INTO `glpi_configs` VALUES ('120','core','use_check_pref','0');
INSERT INTO `glpi_configs` VALUES ('121','core','notification_to_myself','1');
INSERT INTO `glpi_configs` VALUES ('122','core','duedateok_color','#06ff00');
INSERT INTO `glpi_configs` VALUES ('123','core','duedatewarning_color','#ffb800');
INSERT INTO `glpi_configs` VALUES ('124','core','duedatecritical_color','#ff0000');
INSERT INTO `glpi_configs` VALUES ('125','core','duedatewarning_less','20');
INSERT INTO `glpi_configs` VALUES ('126','core','duedatecritical_less','5');
INSERT INTO `glpi_configs` VALUES ('127','core','duedatewarning_unit','%');
INSERT INTO `glpi_configs` VALUES ('128','core','duedatecritical_unit','%');
INSERT INTO `glpi_configs` VALUES ('129','core','realname_ssofield','');
INSERT INTO `glpi_configs` VALUES ('130','core','firstname_ssofield','');
INSERT INTO `glpi_configs` VALUES ('131','core','email1_ssofield','');
INSERT INTO `glpi_configs` VALUES ('132','core','email2_ssofield','');
INSERT INTO `glpi_configs` VALUES ('133','core','email3_ssofield','');
INSERT INTO `glpi_configs` VALUES ('134','core','email4_ssofield','');
INSERT INTO `glpi_configs` VALUES ('135','core','phone_ssofield','');
INSERT INTO `glpi_configs` VALUES ('136','core','phone2_ssofield','');
INSERT INTO `glpi_configs` VALUES ('137','core','mobile_ssofield','');
INSERT INTO `glpi_configs` VALUES ('138','core','comment_ssofield','');
INSERT INTO `glpi_configs` VALUES ('139','core','title_ssofield','');
INSERT INTO `glpi_configs` VALUES ('140','core','category_ssofield','');
INSERT INTO `glpi_configs` VALUES ('141','core','language_ssofield','');
INSERT INTO `glpi_configs` VALUES ('142','core','entity_ssofield','');
INSERT INTO `glpi_configs` VALUES ('143','core','registration_number_ssofield','');
INSERT INTO `glpi_configs` VALUES ('144','core','ssovariables_id','0');
INSERT INTO `glpi_configs` VALUES ('145','core','translate_kb','0');
INSERT INTO `glpi_configs` VALUES ('146','core','translate_dropdowns','0');
INSERT INTO `glpi_configs` VALUES ('147','core','pdffont','helvetica');
INSERT INTO `glpi_configs` VALUES ('148','core','keep_devices_when_purging_item','0');
INSERT INTO `glpi_configs` VALUES ('149','core','maintenance_mode','0');
INSERT INTO `glpi_configs` VALUES ('150','core','maintenance_text','');
INSERT INTO `glpi_configs` VALUES ('152','core','attach_ticket_documents_to_mail','0');
INSERT INTO `glpi_configs` VALUES ('153','core','backcreated','0');
INSERT INTO `glpi_configs` VALUES ('154','core','task_state','1');
INSERT INTO `glpi_configs` VALUES ('155','core','layout','lefttab');
INSERT INTO `glpi_configs` VALUES ('158','core','palette','auror');
INSERT INTO `glpi_configs` VALUES ('159','core','lock_use_lock_item','0');
INSERT INTO `glpi_configs` VALUES ('160','core','lock_autolock_mode','1');
INSERT INTO `glpi_configs` VALUES ('161','core','lock_directunlock_notification','0');
INSERT INTO `glpi_configs` VALUES ('162','core','lock_item_list','[]');
INSERT INTO `glpi_configs` VALUES ('163','core','lock_lockprofile_id','8');
INSERT INTO `glpi_configs` VALUES ('164','core','set_default_requester','1');
INSERT INTO `glpi_configs` VALUES ('165','core','highcontrast_css','0');
INSERT INTO `glpi_configs` VALUES ('166','core','smtp_check_certificate','1');
INSERT INTO `glpi_configs` VALUES ('167','core','enable_api','0');
INSERT INTO `glpi_configs` VALUES ('168','core','enable_api_login_credentials','0');
INSERT INTO `glpi_configs` VALUES ('169','core','enable_api_login_external_token','1');
INSERT INTO `glpi_configs` VALUES ('170','core','url_base_api','http://localhost/glpi/api');
INSERT INTO `glpi_configs` VALUES ('171','core','login_remember_time','604800');
INSERT INTO `glpi_configs` VALUES ('172','core','login_remember_default','1');
INSERT INTO `glpi_configs` VALUES ('173','core','use_notifications','0');
INSERT INTO `glpi_configs` VALUES ('174','core','notifications_ajax','0');
INSERT INTO `glpi_configs` VALUES ('175','core','notifications_ajax_check_interval', '5');
INSERT INTO `glpi_configs` VALUES ('176','core','notifications_ajax_sound', NULL);
INSERT INTO `glpi_configs` VALUES ('177','core','notifications_ajax_icon_url', '/pics/glpi.png');
INSERT INTO `glpi_configs` VALUES ('178','core','dbversion','9.4.6');
INSERT INTO `glpi_configs` VALUES ('179','core','smtp_max_retries','5');
INSERT INTO `glpi_configs` VALUES ('180','core','smtp_sender', NULL);
INSERT INTO `glpi_configs` VALUES ('181','core','from_email', NULL);
INSERT INTO `glpi_configs` VALUES ('182','core','from_email_name', NULL);
INSERT INTO `glpi_configs` VALUES ('183','core','instance_uuid', NULL);
INSERT INTO `glpi_configs` VALUES ('184','core','registration_uuid', NULL);
INSERT INTO `glpi_configs` VALUES ('185','core','smtp_retry_time','5');
INSERT INTO `glpi_configs` VALUES ('186','core','purge_addrelation','0');
INSERT INTO `glpi_configs` VALUES ('187','core','purge_deleterelation','0');
INSERT INTO `glpi_configs` VALUES ('188','core','purge_createitem','0');
INSERT INTO `glpi_configs` VALUES ('189','core','purge_deleteitem','0');
INSERT INTO `glpi_configs` VALUES ('190','core','purge_restoreitem','0');
INSERT INTO `glpi_configs` VALUES ('191','core','purge_updateitem','0');
INSERT INTO `glpi_configs` VALUES ('192','core','purge_computer_software_install','0');
INSERT INTO `glpi_configs` VALUES ('193','core','purge_software_computer_install','0');
INSERT INTO `glpi_configs` VALUES ('194','core','purge_software_version_install','0');
INSERT INTO `glpi_configs` VALUES ('195','core','purge_infocom_creation','0');
INSERT INTO `glpi_configs` VALUES ('196','core','purge_profile_user','0');
INSERT INTO `glpi_configs` VALUES ('197','core','purge_group_user','0');
INSERT INTO `glpi_configs` VALUES ('198','core','purge_adddevice','0');
INSERT INTO `glpi_configs` VALUES ('199','core','purge_updatedevice','0');
INSERT INTO `glpi_configs` VALUES ('200','core','purge_deletedevice','0');
INSERT INTO `glpi_configs` VALUES ('201','core','purge_connectdevice','0');
INSERT INTO `glpi_configs` VALUES ('202','core','purge_disconnectdevice','0');
INSERT INTO `glpi_configs` VALUES ('203','core','purge_userdeletedfromldap','0');
INSERT INTO `glpi_configs` VALUES ('204','core','purge_comments','0');
INSERT INTO `glpi_configs` VALUES ('205','core','purge_datemod','0');
INSERT INTO `glpi_configs` VALUES ('206','core','purge_all','0');
INSERT INTO `glpi_configs` VALUES ('207','core','purge_user_auth_changes','0');
INSERT INTO `glpi_configs` VALUES ('208','core','purge_plugins','0');
INSERT INTO `glpi_configs` VALUES ('209','core','display_login_source','1');

### Dump table glpi_consumableitems

DROP TABLE IF EXISTS `glpi_consumableitems`;
CREATE TABLE `glpi_consumableitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `consumableitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `consumableitemtypes_id` (`consumableitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_consumableitemtypes

DROP TABLE IF EXISTS `glpi_consumableitemtypes`;
CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_consumables

DROP TABLE IF EXISTS `glpi_consumables`;
CREATE TABLE `glpi_consumables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `consumableitems_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_in` (`date_in`),
  KEY `date_out` (`date_out`),
  KEY `consumableitems_id` (`consumableitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contacts

DROP TABLE IF EXISTS `glpi_contacts`;
CREATE TABLE `glpi_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacttypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `contacttypes_id` (`contacttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contacts_suppliers

DROP TABLE IF EXISTS `glpi_contacts_suppliers`;
CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contacts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contacts_id`),
  KEY `contacts_id` (`contacts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contacttypes

DROP TABLE IF EXISTS `glpi_contacttypes`;
CREATE TABLE `glpi_contacttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contractcosts

DROP TABLE IF EXISTS `glpi_contractcosts`;
CREATE TABLE `glpi_contractcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `contracts_id` (`contracts_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracts

DROP TABLE IF EXISTS `glpi_contracts`;
CREATE TABLE `glpi_contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contracttypes_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `notice` int(11) NOT NULL DEFAULT '0',
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `billing` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `accounting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_monday` tinyint(1) NOT NULL DEFAULT '0',
  `max_links_allowed` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `renewal` int(11) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `begin_date` (`begin_date`),
  KEY `name` (`name`),
  KEY `contracttypes_id` (`contracttypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `use_monday` (`use_monday`),
  KEY `use_saturday` (`use_saturday`),
  KEY `alert` (`alert`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracts_items

DROP TABLE IF EXISTS `glpi_contracts_items`;
CREATE TABLE `glpi_contracts_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`contracts_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracts_suppliers

DROP TABLE IF EXISTS `glpi_contracts_suppliers`;
CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contracts_id`),
  KEY `contracts_id` (`contracts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracttypes

DROP TABLE IF EXISTS `glpi_contracttypes`;
CREATE TABLE `glpi_contracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_crontasklogs

DROP TABLE IF EXISTS `glpi_crontasklogs`;
CREATE TABLE `glpi_crontasklogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crontasks_id` int(11) NOT NULL,
  `crontasklogs_id` int(11) NOT NULL COMMENT 'id of ''start'' event',
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'message',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `crontasks_id` (`crontasks_id`),
  KEY `crontasklogs_id_state` (`crontasklogs_id`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_crontasks

DROP TABLE IF EXISTS `glpi_crontasks`;
CREATE TABLE `glpi_crontasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT '1' COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT '3' COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT '0',
  `hourmax` int(11) NOT NULL DEFAULT '24',
  `logs_lifetime` int(11) NOT NULL DEFAULT '30' COMMENT 'number of days',
  `lastrun` datetime DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`name`),
  KEY `mode` (`mode`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Task run by internal / external cron.';

INSERT INTO `glpi_crontasks` VALUES ('2','CartridgeItem','cartridge','86400','10','0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('3','ConsumableItem','consumable','86400','10','0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('4','SoftwareLicense','software','86400',NULL,'0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('5','Contract','contract','86400',NULL,'1','1','3','0','24','30','2010-05-06 09:31:02',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('6','InfoCom','infocom','86400',NULL,'1','1','3','0','24','30','2011-01-18 11:40:43',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('7','CronTask','logs','86400','30','0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('9','MailCollector','mailgate','600','10','1','1','3','0','24','30','2011-06-28 11:34:37',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('10','DBconnection','checkdbreplicate','300',NULL,'0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('11','CronTask','checkupdate','604800',NULL,'0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('12','CronTask','session','86400',NULL,'1','1','3','0','24','30','2011-08-30 08:22:27',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('13','CronTask','graph','3600',NULL,'1','1','3','0','24','30','2011-12-06 09:48:42',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('14','ReservationItem','reservation','3600',NULL,'1','1','3','0','24','30','2012-04-05 20:31:57',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('15','Ticket','closeticket','43200',NULL,'1','1','3','0','24','30','2014-01-15 14:35:00',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('16','Ticket','alertnotclosed','43200',NULL,'1','1','3','0','24','30','2014-04-16 15:32:00',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('17','SlaLevel_Ticket','slaticket','300',NULL,'1','1','3','0','24','30','2014-06-18 08:02:00',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('18','Ticket','createinquest','86400',NULL,'1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('19','Crontask','watcher','86400',NULL,'1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('20','TicketRecurrent','ticketrecurrent','3600',NULL,'1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('21','PlanningRecall','planningrecall','300',NULL,'1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('22','QueuedNotification','queuednotification','60','50','1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('23','QueuedNotification','queuednotificationclean','86400','30','1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('24','Crontask','temp','3600',NULL,'1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('25','MailCollector','mailgateerror','86400',NULL,'1','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('26','Crontask','circularlogs','86400','4','0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('27','ObjectLock','unlockobject','86400','4','0','1','3','0','24','30',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('28','SavedSearch','countAll','604800',NULL,'0','1','3','0','24','10',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('29','SavedSearch_Alert','savedsearchesalerts','86400',NULL,'0','1','3','0','24','10',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('30','Telemetry','telemetry','2592000',NULL,'0','1','3','0','24','10',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('31','Certificate','certificate','86400',NULL,'0','1','3','0','24','10',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('32','OlaLevel_Ticket','olaticket','300',NULL,'1','1','3','0','24','30','2014-06-18 08:02:00',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('33','PurgeLogs','PurgeLogs','604800',24,'1','2','3','0','24','30',NULL,NULL,NULL,NULL,NULL);

### Dump table glpi_devicecasemodels

DROP TABLE IF EXISTS `glpi_devicecasemodels`;
CREATE TABLE `glpi_devicecasemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicecases

DROP TABLE IF EXISTS `glpi_devicecases`;
CREATE TABLE `glpi_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecasetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecasemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicecasetypes_id` (`devicecasetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicecasemodels_id` (`devicecasemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicecasetypes

DROP TABLE IF EXISTS `glpi_devicecasetypes`;
CREATE TABLE `glpi_devicecasetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicecontrolmodels

DROP TABLE IF EXISTS `glpi_devicecontrolmodels`;
CREATE TABLE `glpi_devicecontrolmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicecontrols

DROP TABLE IF EXISTS `glpi_devicecontrols`;
CREATE TABLE `glpi_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_raid` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecontrolmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicecontrolmodels_id` (`devicecontrolmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicedrivemodels

DROP TABLE IF EXISTS `glpi_devicedrivemodels`;
CREATE TABLE `glpi_devicedrivemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicedrives

DROP TABLE IF EXISTS `glpi_devicedrives`;
CREATE TABLE `glpi_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_writer` tinyint(1) NOT NULL DEFAULT '1',
  `speed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicedrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicedrivemodels_id` (`devicedrivemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicegenericmodels

DROP TABLE IF EXISTS `glpi_devicegenericmodels`;
CREATE TABLE `glpi_devicegenericmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicegenerics

DROP TABLE IF EXISTS `glpi_devicegenerics`;
CREATE TABLE `glpi_devicegenerics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegenerictypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `devicegenericmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicegenerictypes_id` (`devicegenerictypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicegenericmodels_id` (`devicegenericmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicegenerictypes

DROP TABLE IF EXISTS `glpi_devicegenerictypes`;
CREATE TABLE `glpi_devicegenerictypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicegraphiccardmodels

DROP TABLE IF EXISTS `glpi_devicegraphiccardmodels`;
CREATE TABLE `glpi_devicegraphiccardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicegraphiccards

DROP TABLE IF EXISTS `glpi_devicegraphiccards`;
CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `memory_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicegraphiccardmodels_id` int(11) DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `chipset` (`chipset`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicegraphiccardmodels_id` (`devicegraphiccardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_deviceharddrivemodels

DROP TABLE IF EXISTS `glpi_deviceharddrivemodels`;
CREATE TABLE `glpi_deviceharddrivemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_deviceharddrives

DROP TABLE IF EXISTS `glpi_deviceharddrives`;
CREATE TABLE `glpi_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `cache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `capacity_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceharddrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `deviceharddrivemodels_id` (`deviceharddrivemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicememorymodels

DROP TABLE IF EXISTS `glpi_devicememorymodels`;
CREATE TABLE `glpi_devicememorymodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicememories

DROP TABLE IF EXISTS `glpi_devicememories`;
CREATE TABLE `glpi_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `size_default` int(11) NOT NULL DEFAULT '0',
  `devicememorytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicememorymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicememorytypes_id` (`devicememorytypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicememorymodels_id` (`devicememorymodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicememorytypes

DROP TABLE IF EXISTS `glpi_devicememorytypes`;
CREATE TABLE `glpi_devicememorytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_devicememorytypes` VALUES ('1','EDO',NULL,NULL,NULL);
INSERT INTO `glpi_devicememorytypes` VALUES ('2','DDR',NULL,NULL,NULL);
INSERT INTO `glpi_devicememorytypes` VALUES ('3','SDRAM',NULL,NULL,NULL);
INSERT INTO `glpi_devicememorytypes` VALUES ('4','SDRAM-2',NULL,NULL,NULL);

### Dump table glpi_devicemotherboardmodels

DROP TABLE IF EXISTS `glpi_devicemotherboardmodels`;
CREATE TABLE `glpi_devicemotherboardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicemotherboards

DROP TABLE IF EXISTS `glpi_devicemotherboards`;
CREATE TABLE `glpi_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicemotherboardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicemotherboardmodels_id` (`devicemotherboardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicenetworkcardmodels

DROP TABLE IF EXISTS `glpi_devicenetworkcardmodels`;
CREATE TABLE `glpi_devicenetworkcardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicenetworkcards

DROP TABLE IF EXISTS `glpi_devicenetworkcards`;
CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bandwidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `mac_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicenetworkcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicepcimodels

DROP TABLE IF EXISTS `glpi_devicepcimodels`;
CREATE TABLE `glpi_devicepcimodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicepcis

DROP TABLE IF EXISTS `glpi_devicepcis`;
CREATE TABLE `glpi_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `devicenetworkcardmodels_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepcimodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicepcimodels_id` (`devicepcimodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicepowersupplymodels

DROP TABLE IF EXISTS `glpi_devicepowersupplymodels`;
CREATE TABLE `glpi_devicepowersupplymodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicepowersupplies

DROP TABLE IF EXISTS `glpi_devicepowersupplies`;
CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_atx` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepowersupplymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicepowersupplymodels_id` (`devicepowersupplymodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_deviceprocessormodels

DROP TABLE IF EXISTS `glpi_deviceprocessormodels`;
CREATE TABLE `glpi_deviceprocessormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_deviceprocessors

DROP TABLE IF EXISTS `glpi_deviceprocessors`;
CREATE TABLE `glpi_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `frequency_default` int(11) NOT NULL DEFAULT '0',
  `nbcores_default` int(11) DEFAULT NULL,
  `nbthreads_default` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceprocessormodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `deviceprocessormodels_id` (`deviceprocessormodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicesensors

DROP TABLE IF EXISTS `glpi_devicesensors`;
CREATE TABLE `glpi_devicesensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesensortypes_id` int(11) NOT NULL DEFAULT '0',
  `devicesensormodels_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicesensortypes_id` (`devicesensortypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicesensormodels

DROP TABLE IF EXISTS `glpi_devicesensormodels`;
CREATE TABLE `glpi_devicesensormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicesensortypes

DROP TABLE IF EXISTS `glpi_devicesensortypes`;
CREATE TABLE `glpi_devicesensortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicesimcards

DROP TABLE IF EXISTS `glpi_devicesimcards`;
CREATE TABLE IF NOT EXISTS `glpi_devicesimcards` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `designation` varchar(255) DEFAULT NULL,
   `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
   `entities_id` int(11) NOT NULL DEFAULT '0',
   `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
   `manufacturers_id` int(11) NOT NULL DEFAULT '0',
   `voltage` int(11) DEFAULT NULL,
   `devicesimcardtypes_id` int(11) NOT NULL DEFAULT '0',
   `date_mod` datetime DEFAULT NULL,
   `date_creation` datetime DEFAULT NULL,
   `allow_voip` tinyint(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`id`),
   KEY `designation` (`designation`),
   KEY `entities_id` (`entities_id`),
   KEY `is_recursive` (`is_recursive`),
   KEY `devicesimcardtypes_id` (`devicesimcardtypes_id`),
   KEY `date_mod` (`date_mod`),
   KEY `date_creation` (`date_creation`),
   KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicesimcards

DROP TABLE IF EXISTS `glpi_items_devicesimcards`;
CREATE TABLE IF NOT EXISTS `glpi_items_devicesimcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `devicesimcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) NULL DEFAULT NULL,
  `otherserial` varchar(255) NULL DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `lines_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(255) NOT NULL DEFAULT '',
  `pin2` varchar(255) NOT NULL DEFAULT '',
  `puk` varchar(255) NOT NULL DEFAULT '',
  `puk2` varchar(255) NOT NULL DEFAULT '',
  `msin` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `devicesimcards_id` (`devicesimcards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `states_id` (`states_id`),
  KEY `locations_id` (`locations_id`),
  KEY `lines_id` (`lines_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicesimcardtypes

DROP TABLE IF EXISTS `glpi_devicesimcardtypes`;
CREATE TABLE IF NOT EXISTS `glpi_devicesimcardtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_devicesimcardtypes` VALUES ('1','Full SIM',NULL,NULL,NULL);
INSERT INTO `glpi_devicesimcardtypes` VALUES ('2','Mini SIM',NULL,NULL,NULL);
INSERT INTO `glpi_devicesimcardtypes` VALUES ('3','Micro SIM',NULL,NULL,NULL);
INSERT INTO `glpi_devicesimcardtypes` VALUES ('4','Nano SIM',NULL,NULL,NULL);

### Dump table glpi_devicesoundcardmodels

DROP TABLE IF EXISTS `glpi_devicesoundcardmodels`;
CREATE TABLE `glpi_devicesoundcardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicesoundcards

DROP TABLE IF EXISTS `glpi_devicesoundcards`;
CREATE TABLE `glpi_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicesoundcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicesoundcardmodels_id` (`devicesoundcardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_displaypreferences

DROP TABLE IF EXISTS `glpi_displaypreferences`;
CREATE TABLE `glpi_displaypreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`,`num`),
  KEY `rank` (`rank`),
  KEY `num` (`num`),
  KEY `itemtype` (`itemtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_displaypreferences` VALUES ('32','Computer','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('34','Computer','45','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('33','Computer','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('31','Computer','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('30','Computer','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('86','DocumentType','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('49','Monitor','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('50','Monitor','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('51','Monitor','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('52','Monitor','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('44','Printer','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('38','NetworkEquipment','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('39','NetworkEquipment','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('45','Printer','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('46','Printer','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('63','Software','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('62','Software','5','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('61','Software','23','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('83','CartridgeItem','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('82','CartridgeItem','34','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('57','Peripheral','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('56','Peripheral','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('55','Peripheral','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('29','Computer','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('35','Computer','3','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('36','Computer','19','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('37','Computer','17','9','0');
INSERT INTO `glpi_displaypreferences` VALUES ('40','NetworkEquipment','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('41','NetworkEquipment','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('42','NetworkEquipment','11','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('43','NetworkEquipment','19','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('47','Printer','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('48','Printer','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('53','Monitor','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('54','Monitor','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('58','Peripheral','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('59','Peripheral','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('60','Peripheral','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('64','Contact','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('65','Contact','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('66','Contact','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('67','Contact','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('68','Contact','9','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('69','Supplier','9','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('70','Supplier','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('71','Supplier','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('72','Supplier','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('73','Supplier','10','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('74','Supplier','6','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('75','Contract','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('76','Contract','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('77','Contract','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('78','Contract','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('79','Contract','7','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('80','Contract','11','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('84','CartridgeItem','23','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('85','CartridgeItem','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('88','DocumentType','6','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('89','DocumentType','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('90','DocumentType','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('91','Document','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('92','Document','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('93','Document','7','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('94','Document','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('95','Document','16','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('96','User','34','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('98','User','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('99','User','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('100','User','3','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('101','ConsumableItem','34','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('102','ConsumableItem','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('103','ConsumableItem','23','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('104','ConsumableItem','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('105','NetworkEquipment','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('106','Printer','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('107','Monitor','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('108','Peripheral','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('109','User','8','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('110','Phone','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('111','Phone','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('112','Phone','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('113','Phone','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('114','Phone','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('115','Phone','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('116','Phone','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('117','Group','16','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('118','AllAssets','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('119','ReservationItem','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('120','ReservationItem','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('125','Budget','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('122','Software','72','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('123','Software','163','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('124','Budget','5','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('126','Budget','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('127','Budget','19','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('128','Crontask','8','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('129','Crontask','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('130','Crontask','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('131','Crontask','7','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('132','RequestType','14','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('133','RequestType','15','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('134','NotificationTemplate','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('135','NotificationTemplate','16','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('136','Notification','5','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('137','Notification','6','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('138','Notification','2','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('139','Notification','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('140','Notification','80','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('141','Notification','86','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('142','MailCollector','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('143','MailCollector','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('144','AuthLDAP','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('145','AuthLDAP','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('146','AuthMail','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('147','AuthMail','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('210','IPNetwork','18','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('209','WifiNetwork','10','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('150','Profile','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('151','Profile','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('152','Profile','19','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('153','Transfer','19','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('154','TicketValidation','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('155','TicketValidation','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('156','TicketValidation','8','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('157','TicketValidation','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('158','TicketValidation','9','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('159','TicketValidation','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('160','NotImportedEmail','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('161','NotImportedEmail','5','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('162','NotImportedEmail','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('163','NotImportedEmail','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('164','NotImportedEmail','16','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('165','NotImportedEmail','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('166','RuleRightParameter','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('167','Ticket','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('168','Ticket','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('169','Ticket','15','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('170','Ticket','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('171','Ticket','4','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('172','Ticket','5','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('173','Ticket','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('174','Calendar','19','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('175','Holiday','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('176','Holiday','12','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('177','Holiday','13','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('178','SLA','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('179','Ticket','18','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('180','AuthLdap','30','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('181','AuthMail','6','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('208','FQDN','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('183','FieldUnicity','1','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('184','FieldUnicity','80','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('185','FieldUnicity','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('186','FieldUnicity','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('187','FieldUnicity','86','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('188','FieldUnicity','30','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('189','Problem','21','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('190','Problem','12','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('191','Problem','19','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('192','Problem','15','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('193','Problem','3','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('194','Problem','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('195','Problem','18','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('196','Vlan','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('197','TicketRecurrent','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('198','TicketRecurrent','12','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('199','TicketRecurrent','13','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('200','TicketRecurrent','15','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('201','TicketRecurrent','14','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('202','Reminder','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('203','Reminder','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('204','Reminder','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('205','Reminder','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('206','Reminder','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('207','Reminder','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('211','IPNetwork','10','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('212','IPNetwork','11','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('213','IPNetwork','12','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('214','IPNetwork','17','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('215','NetworkName','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('216','NetworkName','13','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('217','RSSFeed','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('218','RSSFeed','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('219','RSSFeed','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('220','RSSFeed','19','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('221','RSSFeed','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('222','RSSFeed','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('223','Blacklist','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('224','Blacklist','11','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('225','ReservationItem','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('226','QueueMail','16','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('227','QueueMail','7','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('228','QueueMail','20','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('229','QueueMail','21','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('230','QueueMail','22','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('231','QueueMail','15','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('232','Change','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('233','Change','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('234','Change','15','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('235','Change','7','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('236','Change','18','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('237','Project','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('238','Project','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('239','Project','12','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('240','Project','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('241','Project','15','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('242','Project','21','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('243','ProjectState','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('244','ProjectState','11','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('245','ProjectTask','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('246','ProjectTask','12','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('247','ProjectTask','14','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('248','ProjectTask','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('249','ProjectTask','7','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('250','ProjectTask','8','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('251','ProjectTask','13','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('252','CartridgeItem','9','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('253','ConsumableItem','9','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('254','ReservationItem','9','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('255','SoftwareLicense','1','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('256','SoftwareLicense','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('257','SoftwareLicense','10','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('258','SoftwareLicense','162','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('259','SoftwareLicense','5','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('260','SavedSearch','8','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('261','SavedSearch','9','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('262','SavedSearch','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('263','SavedSearch','10','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('264','SavedSearch','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('265','Plugin','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('266','Plugin','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('267','Plugin','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('268','Plugin','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('269','Plugin','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('270','Plugin','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('271','Plugin','8','7','0');

### Dump table glpi_documentcategories

DROP TABLE IF EXISTS `glpi_documentcategories`;
CREATE TABLE `glpi_documentcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  UNIQUE KEY `unicity` (`documentcategories_id`,`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_documents

DROP TABLE IF EXISTS `glpi_documents`;
CREATE TABLE `glpi_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `sha1sum` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_blacklisted` tinyint(1) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `users_id` (`users_id`),
  KEY `documentcategories_id` (`documentcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `sha1sum` (`sha1sum`),
  KEY `tag` (`tag`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_documents_items

DROP TABLE IF EXISTS `glpi_documents_items`;
CREATE TABLE `glpi_documents_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documents_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`documents_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`,`entities_id`,`is_recursive`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_documenttypes

DROP TABLE IF EXISTS `glpi_documenttypes`;
CREATE TABLE `glpi_documenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_uploadable` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ext`),
  KEY `name` (`name`),
  KEY `is_uploadable` (`is_uploadable`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_documenttypes` VALUES ('1','JPEG','jpg','jpg-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('2','PNG','png','png-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('3','GIF','gif','gif-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('4','BMP','bmp','bmp-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('5','Photoshop','psd','psd-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('6','TIFF','tif','tif-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('7','AIFF','aiff','aiff-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('8','Windows Media','asf','asf-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('9','Windows Media','avi','avi-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('44','C source','c','c-dist.png','','1','2011-12-06 09:48:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('27','RealAudio','rm','rm-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('16','Midi','mid','mid-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('17','QuickTime','mov','mov-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('18','MP3','mp3','mp3-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('19','MPEG','mpg','mpg-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('20','Ogg Vorbis','ogg','ogg-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('24','QuickTime','qt','qt-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('10','BZip','bz2','bz2-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('25','RealAudio','ra','ra-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('26','RealAudio','ram','ram-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('11','Word','doc','doc-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('12','DjVu','djvu','','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('42','MNG','mng','','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('13','PostScript','eps','ps-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('14','GZ','gz','gz-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('37','WAV','wav','wav-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('15','HTML','html','html-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('34','Flash','swf','swf-dist.png','','1','2011-12-06 09:48:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('21','PDF','pdf','pdf-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('22','PowerPoint','ppt','ppt-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('23','PostScript','ps','ps-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('40','Windows Media','wmv','wmv-dist.png','','1','2011-12-06 09:48:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('28','RTF','rtf','rtf-dist.png','','1','2004-12-13 19:47:21',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('29','StarOffice','sdd','sdd-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('30','StarOffice','sdw','sdw-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('31','Stuffit','sit','sit-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('43','Adobe Illustrator','ai','ai-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('32','OpenOffice Impress','sxi','sxi-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('33','OpenOffice','sxw','sxw-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('46','DVI','dvi','dvi-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('35','TGZ','tgz','tgz-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('36','texte','txt','txt-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('49','RedHat/Mandrake/SuSE','rpm','rpm-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('38','Excel','xls','xls-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('39','XML','xml','xml-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('41','Zip','zip','zip-dist.png','','1','2011-12-06 09:48:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('45','Debian','deb','deb-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('47','C header','h','h-dist.png','','1','2011-12-06 09:48:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('48','Pascal','pas','pas-dist.png','','1','2011-12-06 09:48:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('50','OpenOffice Calc','sxc','sxc-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('51','LaTeX','tex','tex-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('52','GIMP multi-layer','xcf','xcf-dist.png','','1','2004-12-13 19:47:22',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('53','JPEG','jpeg','jpg-dist.png','','1','2005-03-07 22:23:17',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('54','Oasis Open Office Writer','odt','odt-dist.png','','1','2006-01-21 17:41:13',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('55','Oasis Open Office Calc','ods','ods-dist.png','','1','2006-01-21 17:41:31',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('56','Oasis Open Office Impress','odp','odp-dist.png','','1','2006-01-21 17:42:54',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('57','Oasis Open Office Impress Template','otp','odp-dist.png','','1','2006-01-21 17:43:58',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('58','Oasis Open Office Writer Template','ott','odt-dist.png','','1','2006-01-21 17:44:41',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('59','Oasis Open Office Calc Template','ots','ods-dist.png','','1','2006-01-21 17:45:30',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('60','Oasis Open Office Math','odf','odf-dist.png','','1','2006-01-21 17:48:05',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('61','Oasis Open Office Draw','odg','odg-dist.png','','1','2006-01-21 17:48:31',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('62','Oasis Open Office Draw Template','otg','odg-dist.png','','1','2006-01-21 17:49:46',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('63','Oasis Open Office Base','odb','odb-dist.png','','1','2006-01-21 18:03:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('64','Oasis Open Office HTML','oth','oth-dist.png','','1','2006-01-21 18:05:27',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('65','Oasis Open Office Writer Master','odm','odm-dist.png','','1','2006-01-21 18:06:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('66','Oasis Open Office Chart','odc','','','1','2006-01-21 18:07:48',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('67','Oasis Open Office Image','odi','','','1','2006-01-21 18:08:18',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('68','Word XML','docx','doc-dist.png',NULL,'1','2011-01-18 11:40:42',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('69','Excel XML','xlsx','xls-dist.png',NULL,'1','2011-01-18 11:40:42',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('70','PowerPoint XML','pptx','ppt-dist.png',NULL,'1','2011-01-18 11:40:42',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('71','Comma-Separated Values','csv','csv-dist.png',NULL,'1','2011-12-06 09:48:34',NULL,NULL);
INSERT INTO `glpi_documenttypes` VALUES ('72','Scalable Vector Graphics','svg','svg-dist.png',NULL,'1','2011-12-06 09:48:34',NULL,NULL);

### Dump table glpi_domains

DROP TABLE IF EXISTS `glpi_domains`;
CREATE TABLE `glpi_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_dropdowntranslations

DROP TABLE IF EXISTS `glpi_dropdowntranslations`;
CREATE TABLE `glpi_dropdowntranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`language`,`field`),
  KEY `typeid` (`itemtype`,`items_id`),
  KEY `language` (`language`),
  KEY `field` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_entities

DROP TABLE IF EXISTS `glpi_entities`;
CREATE TABLE `glpi_entities` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_subject_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `mail_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ldapfilter` text COLLATE utf8_unicode_ci,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `use_licenses_alert` int(11) NOT NULL DEFAULT '-2',
  `send_licenses_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_certificates_alert` int(11) NOT NULL DEFAULT '-2',
  `send_certificates_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_contracts_alert` int(11) NOT NULL DEFAULT '-2',
  `send_contracts_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_infocoms_alert` int(11) NOT NULL DEFAULT '-2',
  `send_infocoms_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_reservations_alert` int(11) NOT NULL DEFAULT '-2',
  `autoclose_delay` int(11) NOT NULL DEFAULT '-2',
  `notclosed_delay` int(11) NOT NULL DEFAULT '-2',
  `calendars_id` int(11) NOT NULL DEFAULT '-2',
  `auto_assign_mode` int(11) NOT NULL DEFAULT '-2',
  `tickettype` int(11) NOT NULL DEFAULT '-2',
  `max_closedate` datetime DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT '-2',
  `inquest_rate` int(11) NOT NULL DEFAULT '0',
  `inquest_delay` int(11) NOT NULL DEFAULT '-10',
  `inquest_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autofill_warranty_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_use_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_buy_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_delivery_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '-2',
  `entities_id_software` int(11) NOT NULL DEFAULT '-2',
  `default_contract_alert` int(11) NOT NULL DEFAULT '-2',
  `default_infocom_alert` int(11) NOT NULL DEFAULT '-2',
  `default_cartridges_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `default_consumables_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `delay_send_emails` int(11) NOT NULL DEFAULT '-2',
  `is_notif_enable_default` int(11) NOT NULL DEFAULT '-2',
  `inquest_duration` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `autofill_decommission_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`name`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_entities` VALUES ('0','Root entity','-1','Root entity',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','-10','0','0','-10','1',NULL,'1','0','0',NULL,'0','0','0','0','0','1','-10','0','0','10','10','0','1','0',NULL,NULL,0);

### Dump table glpi_entities_knowbaseitems

DROP TABLE IF EXISTS `glpi_entities_knowbaseitems`;
CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_entities_reminders

DROP TABLE IF EXISTS `glpi_entities_reminders`;
CREATE TABLE `glpi_entities_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_entities_rssfeeds

DROP TABLE IF EXISTS `glpi_entities_rssfeeds`;
CREATE TABLE `glpi_entities_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_events

DROP TABLE IF EXISTS `glpi_events`;
CREATE TABLE `glpi_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `level` (`level`),
  KEY `item` (`type`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_fieldblacklists

DROP TABLE IF EXISTS `glpi_fieldblacklists`;
CREATE TABLE `glpi_fieldblacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_fieldunicities

DROP TABLE IF EXISTS `glpi_fieldunicities`;
CREATE TABLE `glpi_fieldunicities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `fields` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `action_refuse` tinyint(1) NOT NULL DEFAULT '0',
  `action_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores field unicity criterias';


### Dump table glpi_filesystems

DROP TABLE IF EXISTS `glpi_filesystems`;
CREATE TABLE `glpi_filesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_filesystems` VALUES ('1','ext',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('2','ext2',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('3','ext3',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('4','ext4',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('5','FAT',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('6','FAT32',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('7','VFAT',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('8','HFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('9','HPFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('10','HTFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('11','JFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('12','JFS2',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('13','NFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('14','NTFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('15','ReiserFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('16','SMBFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('17','UDF',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('18','UFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('19','XFS',NULL,NULL,NULL);
INSERT INTO `glpi_filesystems` VALUES ('20','ZFS',NULL,NULL,NULL);

### Dump table glpi_fqdns

DROP TABLE IF EXISTS `glpi_fqdns`;
CREATE TABLE `glpi_fqdns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `fqdn` (`fqdn`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups

DROP TABLE IF EXISTS `glpi_groups`;
CREATE TABLE `glpi_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `ldap_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_value` text COLLATE utf8_unicode_ci,
  `ldap_group_dn` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_requester` tinyint(1) NOT NULL DEFAULT '1',
  `is_watcher` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(1) NOT NULL DEFAULT '1',
  `is_task` tinyint(1) NOT NULL DEFAULT '1',
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `is_itemgroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_usergroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_manager` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `ldap_field` (`ldap_field`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `ldap_value` (`ldap_value`(200)),
  KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  KEY `groups_id` (`groups_id`),
  KEY `is_requester` (`is_requester`),
  KEY `is_watcher` (`is_watcher`),
  KEY `is_assign` (`is_assign`),
  KEY `is_notify` (`is_notify`),
  KEY `is_itemgroup` (`is_itemgroup`),
  KEY `is_usergroup` (`is_usergroup`),
  KEY `is_manager` (`is_manager`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_knowbaseitems

DROP TABLE IF EXISTS `glpi_groups_knowbaseitems`;
CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_problems

DROP TABLE IF EXISTS `glpi_groups_problems`;
CREATE TABLE `glpi_groups_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_reminders

DROP TABLE IF EXISTS `glpi_groups_reminders`;
CREATE TABLE `glpi_groups_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_rssfeeds

DROP TABLE IF EXISTS `glpi_groups_rssfeeds`;
CREATE TABLE `glpi_groups_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_tickets

DROP TABLE IF EXISTS `glpi_groups_tickets`;
CREATE TABLE `glpi_groups_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_users

DROP TABLE IF EXISTS `glpi_groups_users`;
CREATE TABLE `glpi_groups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  `is_userdelegate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_manager` (`is_manager`),
  KEY `is_userdelegate` (`is_userdelegate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_holidays

DROP TABLE IF EXISTS `glpi_holidays`;
CREATE TABLE `glpi_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_perpetual` (`is_perpetual`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_infocoms

DROP TABLE IF EXISTS `glpi_infocoms`;
CREATE TABLE `glpi_infocoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `warranty_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immo_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `warranty_value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sink_time` int(11) NOT NULL DEFAULT '0',
  `sink_type` int(11) NOT NULL DEFAULT '0',
  `sink_coeff` float NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `bill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `decommission_date` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `buy_date` (`buy_date`),
  KEY `alert` (`alert`),
  KEY `budgets_id` (`budgets_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `businesscriticities_id` (`businesscriticities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_interfacetypes

DROP TABLE IF EXISTS `glpi_interfacetypes`;
CREATE TABLE `glpi_interfacetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_interfacetypes` VALUES ('1','IDE',NULL,NULL,NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('2','SATA',NULL,NULL,NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('3','SCSI',NULL,NULL,NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('4','USB',NULL,NULL,NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('5','AGP','',NULL,NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('6','PCI','',NULL,NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('7','PCIe','',NULL,NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('8','PCI-X','',NULL,NULL);

### Dump table glpi_ipaddresses

DROP TABLE IF EXISTS `glpi_ipaddresses`;
CREATE TABLE `glpi_ipaddresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` tinyint(3) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `binary_0` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_1` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_2` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_3` int(10) unsigned NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `mainitems_id` int(11) NOT NULL DEFAULT '0',
  `mainitemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `textual` (`name`),
  KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  KEY `mainitem` (`mainitemtype`,`mainitems_id`,`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ipaddresses_ipnetworks

DROP TABLE IF EXISTS `glpi_ipaddresses_ipnetworks`;
CREATE TABLE `glpi_ipaddresses_ipnetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddresses_id` int(11) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ipaddresses_id`,`ipnetworks_id`),
  KEY `ipnetworks_id` (`ipnetworks_id`),
  KEY `ipaddresses_id` (`ipaddresses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ipnetworks

DROP TABLE IF EXISTS `glpi_ipnetworks`;
CREATE TABLE `glpi_ipnetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `addressable` tinyint(1) NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_0` int(10) unsigned NOT NULL DEFAULT '0',
  `address_1` int(10) unsigned NOT NULL DEFAULT '0',
  `address_2` int(10) unsigned NOT NULL DEFAULT '0',
  `address_3` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netmask_0` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_1` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_2` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_3` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_0` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_1` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_2` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_3` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `network_definition` (`entities_id`,`address`,`netmask`),
  KEY `address` (`address_0`,`address_1`,`address_2`,`address_3`),
  KEY `netmask` (`netmask_0`,`netmask_1`,`netmask_2`,`netmask_3`),
  KEY `gateway` (`gateway_0`,`gateway_1`,`gateway_2`,`gateway_3`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ipnetworks_vlans

DROP TABLE IF EXISTS `glpi_ipnetworks_vlans`;
CREATE TABLE `glpi_ipnetworks_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`ipnetworks_id`,`vlans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicecases

DROP TABLE IF EXISTS `glpi_items_devicecases`;
CREATE TABLE `glpi_items_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecases_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicecases_id` (`devicecases_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicecontrols

DROP TABLE IF EXISTS `glpi_items_devicecontrols`;
CREATE TABLE `glpi_items_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecontrols_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicecontrols_id` (`devicecontrols_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicedrives

DROP TABLE IF EXISTS `glpi_items_devicedrives`;
CREATE TABLE `glpi_items_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicedrives_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicedrives_id` (`devicedrives_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicegenerics

DROP TABLE IF EXISTS `glpi_items_devicegenerics`;
CREATE TABLE `glpi_items_devicegenerics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegenerics_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicegenerics_id` (`devicegenerics_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicegraphiccards

DROP TABLE IF EXISTS `glpi_items_devicegraphiccards`;
CREATE TABLE `glpi_items_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegraphiccards_id` int(11) NOT NULL DEFAULT '0',
  `memory` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicegraphiccards_id` (`devicegraphiccards_id`),
  KEY `specificity` (`memory`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_deviceharddrives

DROP TABLE IF EXISTS `glpi_items_deviceharddrives`;
CREATE TABLE `glpi_items_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceharddrives_id` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `deviceharddrives_id` (`deviceharddrives_id`),
  KEY `specificity` (`capacity`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicememories

DROP TABLE IF EXISTS `glpi_items_devicememories`;
CREATE TABLE `glpi_items_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicememories_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicememories_id` (`devicememories_id`),
  KEY `specificity` (`size`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicemotherboards

DROP TABLE IF EXISTS `glpi_items_devicemotherboards`;
CREATE TABLE `glpi_items_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicemotherboards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicemotherboards_id` (`devicemotherboards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicenetworkcards

DROP TABLE IF EXISTS `glpi_items_devicenetworkcards`;
CREATE TABLE `glpi_items_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicenetworkcards_id` (`devicenetworkcards_id`),
  KEY `specificity` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicepcis

DROP TABLE IF EXISTS `glpi_items_devicepcis`;
CREATE TABLE `glpi_items_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepcis_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicepcis_id` (`devicepcis_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicepowersupplies

DROP TABLE IF EXISTS `glpi_items_devicepowersupplies`;
CREATE TABLE `glpi_items_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicepowersupplies_id` (`devicepowersupplies_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_deviceprocessors

DROP TABLE IF EXISTS `glpi_items_deviceprocessors`;
CREATE TABLE `glpi_items_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceprocessors_id` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `nbcores` int(11) DEFAULT NULL,
  `nbthreads` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `deviceprocessors_id` (`deviceprocessors_id`),
  KEY `specificity` (`frequency`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `nbcores` (`nbcores`),
  KEY `nbthreads` (`nbthreads`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicesensors

DROP TABLE IF EXISTS `glpi_items_devicesensors`;
CREATE TABLE `glpi_items_devicesensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesensors_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicesensors_id` (`devicesensors_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicesoundcards

DROP TABLE IF EXISTS `glpi_items_devicesoundcards`;
CREATE TABLE `glpi_items_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesoundcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicesoundcards_id` (`devicesoundcards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_problems

DROP TABLE IF EXISTS `glpi_items_problems`;
CREATE TABLE `glpi_items_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_projects

DROP TABLE IF EXISTS `glpi_items_projects`;
CREATE TABLE `glpi_items_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_tickets

DROP TABLE IF EXISTS `glpi_items_tickets`;
CREATE TABLE `glpi_items_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_itilcategories

DROP TABLE IF EXISTS `glpi_itilcategories`;
CREATE TABLE `glpi_itilcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `tickettemplates_id_incident` int(11) NOT NULL DEFAULT '0',
  `tickettemplates_id_demand` int(11) NOT NULL DEFAULT '0',
  `is_incident` int(11) NOT NULL DEFAULT '1',
  `is_request` int(11) NOT NULL DEFAULT '1',
  `is_problem` int(11) NOT NULL DEFAULT '1',
  `is_change` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `tickettemplates_id_incident` (`tickettemplates_id_incident`),
  KEY `tickettemplates_id_demand` (`tickettemplates_id_demand`),
  KEY `is_incident` (`is_incident`),
  KEY `is_request` (`is_request`),
  KEY `is_problem` (`is_problem`),
  KEY `is_change` (`is_change`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_itils_projects

DROP TABLE IF EXISTS `glpi_itils_projects`;
CREATE TABLE `glpi_itils_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`projects_id`),
  KEY `projects_id` (`projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitemcategories

DROP TABLE IF EXISTS `glpi_knowbaseitemcategories`;
CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`knowbaseitemcategories_id`,`name`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitems

DROP TABLE IF EXISTS `glpi_knowbaseitems`;
CREATE TABLE `glpi_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `is_faq` (`is_faq`),
  KEY `date_mod` (`date_mod`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  FULLTEXT KEY `fulltext` (`name`,`answer`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `answer` (`answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitems_profiles

DROP TABLE IF EXISTS `glpi_knowbaseitems_profiles`;
CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitems_users

DROP TABLE IF EXISTS `glpi_knowbaseitems_users`;
CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitemtranslations

DROP TABLE IF EXISTS `glpi_knowbaseitemtranslations`;
CREATE TABLE `glpi_knowbaseitemtranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`knowbaseitems_id`,`language`),
  KEY `users_id` (`users_id`),
  FULLTEXT KEY `fulltext` (`name`,`answer`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `answer` (`answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_lines

DROP TABLE IF EXISTS `glpi_lines`;
CREATE TABLE `glpi_lines` (
  `id` INT(11) NOT NULL auto_increment,
  `name` VARCHAR(255) NOT NULL DEFAULT '',
  `entities_id` INT(11) NOT NULL DEFAULT 0,
  `is_recursive` TINYINT(1) NOT NULL DEFAULT 0,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
  `caller_num` VARCHAR(255) NOT NULL DEFAULT '',
  `caller_name` VARCHAR(255) NOT NULL DEFAULT '',
  `users_id` INT(11) NOT NULL DEFAULT 0,
  `groups_id` INT(11) NOT NULL DEFAULT 0,
  `lineoperators_id` INT(11) NOT NULL DEFAULT 0,
  `locations_id` INT(11) NOT NULL DEFAULT '0',
  `states_id` INT(11) NOT NULL DEFAULT '0',
  `linetypes_id` INT(11) NOT NULL DEFAULT '0',
  `date_creation` DATETIME DEFAULT NULL,
  `date_mod` DATETIME DEFAULT NULL,
  `comment` TEXT,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `users_id` (`users_id`),
  KEY `lineoperators_id` (`lineoperators_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_lineoperators

DROP TABLE IF EXISTS `glpi_lineoperators`;
CREATE TABLE IF NOT EXISTS `glpi_lineoperators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `mcc` int(11) DEFAULT NULL,
  `mnc` int(11) DEFAULT NULL,
  `entities_id`      INT(11) NOT NULL DEFAULT 0,
  `is_recursive`     TINYINT(1) NOT NULL DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id`  (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  UNIQUE KEY `unicity` (`mcc`,`mnc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `glpi_linetypes`;
CREATE TABLE IF NOT EXISTS `glpi_linetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_links

DROP TABLE IF EXISTS `glpi_links`;
CREATE TABLE `glpi_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `open_window` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_links_itemtypes

DROP TABLE IF EXISTS `glpi_links_itemtypes`;
CREATE TABLE `glpi_links_itemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `links_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`links_id`),
  KEY `links_id` (`links_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_locations

DROP TABLE IF EXISTS `glpi_locations`;
CREATE TABLE `glpi_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  KEY `locations_id` (`locations_id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_logs

DROP TABLE IF EXISTS `glpi_logs`;
CREATE TABLE `glpi_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT '0' COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `itemtype_link` (`itemtype_link`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `id_search_option` (`id_search_option`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_mailcollectors

DROP TABLE IF EXISTS `glpi_mailcollectors`;
CREATE TABLE `glpi_mailcollectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refused` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_kerberos` tinyint(1) NOT NULL DEFAULT '0',
  `errors` int(11) NOT NULL DEFAULT '0',
  `use_mail_date` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `requester_field` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_manufacturers

DROP TABLE IF EXISTS `glpi_manufacturers`;
CREATE TABLE `glpi_manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_monitormodels

DROP TABLE IF EXISTS `glpi_monitormodels`;
CREATE TABLE `glpi_monitormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_monitors

DROP TABLE IF EXISTS `glpi_monitors`;
CREATE TABLE `glpi_monitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` decimal(5,2) NOT NULL DEFAULT '0.00',
  `have_micro` tinyint(1) NOT NULL DEFAULT '0',
  `have_speaker` tinyint(1) NOT NULL DEFAULT '0',
  `have_subd` tinyint(1) NOT NULL DEFAULT '0',
  `have_bnc` tinyint(1) NOT NULL DEFAULT '0',
  `have_dvi` tinyint(1) NOT NULL DEFAULT '0',
  `have_pivot` tinyint(1) NOT NULL DEFAULT '0',
  `have_hdmi` tinyint(1) NOT NULL DEFAULT '0',
  `have_displayport` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `monitortypes_id` int(11) NOT NULL DEFAULT '0',
  `monitormodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `monitormodels_id` (`monitormodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `monitortypes_id` (`monitortypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_monitortypes

DROP TABLE IF EXISTS `glpi_monitortypes`;
CREATE TABLE `glpi_monitortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_netpoints

DROP TABLE IF EXISTS `glpi_netpoints`;
CREATE TABLE `glpi_netpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `complete` (`entities_id`,`locations_id`,`name`),
  KEY `location_name` (`locations_id`,`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkaliases

DROP TABLE IF EXISTS `glpi_networkaliases`;
CREATE TABLE `glpi_networkaliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `networknames_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `networknames_id` (`networknames_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkequipmentmodels

DROP TABLE IF EXISTS `glpi_networkequipmentmodels`;
CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkequipments

DROP TABLE IF EXISTS `glpi_networkequipments`;
CREATE TABLE `glpi_networkequipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkequipmenttypes

DROP TABLE IF EXISTS `glpi_networkequipmenttypes`;
CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkinterfaces

DROP TABLE IF EXISTS `glpi_networkinterfaces`;
CREATE TABLE `glpi_networkinterfaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networknames

DROP TABLE IF EXISTS `glpi_networknames`;
CREATE TABLE `glpi_networknames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `FQDN` (`name`,`fqdns_id`),
  KEY `name` (`name`),
  KEY `fqdns_id` (`fqdns_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportaggregates

DROP TABLE IF EXISTS `glpi_networkportaggregates`;
CREATE TABLE `glpi_networkportaggregates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_list` text COLLATE utf8_unicode_ci COMMENT 'array of associated networkports_id',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportaliases

DROP TABLE IF EXISTS `glpi_networkportaliases`;
CREATE TABLE `glpi_networkportaliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_alias` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `networkports_id_alias` (`networkports_id_alias`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportdialups

DROP TABLE IF EXISTS `glpi_networkportdialups`;
CREATE TABLE `glpi_networkportdialups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportethernets

DROP TABLE IF EXISTS `glpi_networkportethernets`;
CREATE TABLE `glpi_networkportethernets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `netpoint` (`netpoints_id`),
  KEY `type` (`type`),
  KEY `speed` (`speed`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_networkportfiberchannels

DROP TABLE IF EXISTS `glpi_networkportfiberchannels`;
CREATE TABLE `glpi_networkportfiberchannels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `wwn` varchar(16) COLLATE utf8_unicode_ci DEFAULT '',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `netpoint` (`netpoints_id`),
  KEY `wwn` (`wwn`),
  KEY `speed` (`speed`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_networkportlocals

DROP TABLE IF EXISTS `glpi_networkportlocals`;
CREATE TABLE `glpi_networkportlocals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkports

DROP TABLE IF EXISTS `glpi_networkports`;
CREATE TABLE `glpi_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `logical_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instantiation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `on_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `mac` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkports_networkports

DROP TABLE IF EXISTS `glpi_networkports_networkports`;
CREATE TABLE `glpi_networkports_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id_1` int(11) NOT NULL DEFAULT '0',
  `networkports_id_2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id_1`,`networkports_id_2`),
  KEY `networkports_id_2` (`networkports_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkports_vlans

DROP TABLE IF EXISTS `glpi_networkports_vlans`;
CREATE TABLE `glpi_networkports_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  `tagged` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id`,`vlans_id`),
  KEY `vlans_id` (`vlans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportwifis

DROP TABLE IF EXISTS `glpi_networkportwifis`;
CREATE TABLE `glpi_networkportwifis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `wifinetworks_id` int(11) NOT NULL DEFAULT '0',
  `networkportwifis_id` int(11) NOT NULL DEFAULT '0' COMMENT 'only useful in case of Managed node',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `mode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, managed, master, repeater, secondary, monitor, auto',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `essid` (`wifinetworks_id`),
  KEY `version` (`version`),
  KEY `mode` (`mode`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networks

DROP TABLE IF EXISTS `glpi_networks`;
CREATE TABLE `glpi_networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_notepads

DROP TABLE IF EXISTS `glpi_notepads`;
CREATE TABLE `glpi_notepads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date` (`date`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_notifications

DROP TABLE IF EXISTS `glpi_notifications`;
CREATE TABLE `glpi_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notifications` VALUES(1, 'Alert Tickets not closed', 0, 'Ticket', 'alertnotclosed', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(2, 'New Ticket', 0, 'Ticket', 'new', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(3, 'Update Ticket', 0, 'Ticket', 'update', '', 1, 0, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(4, 'Close Ticket', 0, 'Ticket', 'closed', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(5, 'Add Followup', 0, 'Ticket', 'add_followup', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(6, 'Add Task', 0, 'Ticket', 'add_task', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(7, 'Update Followup', 0, 'Ticket', 'update_followup', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(8, 'Update Task', 0, 'Ticket', 'update_task', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(9, 'Delete Followup', 0, 'Ticket', 'delete_followup', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(10, 'Delete Task', 0, 'Ticket', 'delete_task', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(11, 'Resolve ticket', 0, 'Ticket', 'solved', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(12, 'Ticket Validation', 0, 'Ticket', 'validation', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(13, 'New Reservation', 0, 'Reservation', 'new', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(14, 'Update Reservation', 0, 'Reservation', 'update', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(15, 'Delete Reservation', 0, 'Reservation', 'delete', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(16, 'Alert Reservation', 0, 'Reservation', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(17, 'Contract Notice', 0, 'Contract', 'notice', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(18, 'Contract End', 0, 'Contract', 'end', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(19, 'MySQL Synchronization', 0, 'DBConnection', 'desynchronization', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(20, 'Cartridges', 0, 'CartridgeItem', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(21, 'Consumables', 0, 'ConsumableItem', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(22, 'Infocoms', 0, 'Infocom', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(23, 'Software Licenses', 0, 'SoftwareLicense', 'alert', '', 1, 1, '2010-02-16 16:41:39', NULL);
INSERT INTO `glpi_notifications` VALUES(24, 'Ticket Recall', 0, 'Ticket', 'recall', '', 1, 1, '2011-03-04 11:35:13', NULL);
INSERT INTO `glpi_notifications` VALUES(25, 'Password Forget', 0, 'User', 'passwordforget', '', 1, 1, '2011-03-04 11:35:13', NULL);
INSERT INTO `glpi_notifications` VALUES(26, 'Ticket Satisfaction', 0, 'Ticket', 'satisfaction', '', 1, 1, '2011-03-04 11:35:15', NULL);
INSERT INTO `glpi_notifications` VALUES(27, 'Item not unique', 0, 'FieldUnicity', 'refuse', '', 1, 1, '2011-03-04 11:35:16', NULL);
INSERT INTO `glpi_notifications` VALUES(28, 'Crontask Watcher', 0, 'Crontask', 'alert', '', 1, 1, '2011-03-04 11:35:16', NULL);
INSERT INTO `glpi_notifications` VALUES(29, 'New Problem', 0, 'Problem', 'new', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(30, 'Update Problem', 0, 'Problem', 'update', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(31, 'Resolve Problem', 0, 'Problem', 'solved', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(32, 'Add Task', 0, 'Problem', 'add_task', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(33, 'Update Task', 0, 'Problem', 'update_task', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(34, 'Delete Task', 0, 'Problem', 'delete_task', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(35, 'Close Problem', 0, 'Problem', 'closed', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(36, 'Delete Problem', 0, 'Problem', 'delete', '', 1, 1, '2011-12-06 09:48:33', NULL);
INSERT INTO `glpi_notifications` VALUES(37, 'Ticket Validation Answer', 0, 'Ticket', 'validation_answer', '', 1, 1, '2014-01-15 14:35:24', NULL);
INSERT INTO `glpi_notifications` VALUES(38, 'Contract End Periodicity', 0, 'Contract', 'periodicity', '', 1, 1, '2014-01-15 14:35:24', NULL);
INSERT INTO `glpi_notifications` VALUES(39, 'Contract Notice Periodicity', 0, 'Contract', 'periodicitynotice', '', 1, 1, '2014-01-15 14:35:24', NULL);
INSERT INTO `glpi_notifications` VALUES(40, 'Planning recall', 0, 'PlanningRecall', 'planningrecall', '', 1, 1, '2014-01-15 14:35:24', NULL);
INSERT INTO `glpi_notifications` VALUES(41, 'Delete Ticket', 0, 'Ticket', 'delete', '', 1, 1, '2014-01-15 14:35:26', NULL);
INSERT INTO `glpi_notifications` VALUES(42, 'New Change', 0, 'Change', 'new', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(43, 'Update Change', 0, 'Change', 'update', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(44, 'Resolve Change', 0, 'Change', 'solved', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(45, 'Add Task', 0, 'Change', 'add_task', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(46, 'Update Task', 0, 'Change', 'update_task', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(47, 'Delete Task', 0, 'Change', 'delete_task', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(48, 'Close Change', 0, 'Change', 'closed', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(49, 'Delete Change', 0, 'Change', 'delete', '', 1, 1, '2014-06-18 08:02:07', NULL);
INSERT INTO `glpi_notifications` VALUES(50, 'Ticket Satisfaction Answer', 0, 'Ticket', 'replysatisfaction', '', 1, 1, '2014-06-18 08:02:08', NULL);
INSERT INTO `glpi_notifications` VALUES(51, 'Receiver errors', 0, 'MailCollector', 'error', '', 1, 1, '2014-06-18 08:02:08', NULL);
INSERT INTO `glpi_notifications` VALUES(52, 'New Project', 0, 'Project', 'new', '', 1, 1, '2014-06-18 08:02:09', NULL);
INSERT INTO `glpi_notifications` VALUES(53, 'Update Project', 0, 'Project', 'update', '', 1, 1, '2014-06-18 08:02:09', NULL);
INSERT INTO `glpi_notifications` VALUES(54, 'Delete Project', 0, 'Project', 'delete', '', 1, 1, '2014-06-18 08:02:09', NULL);
INSERT INTO `glpi_notifications` VALUES(55, 'New Project Task', 0, 'ProjectTask', 'new', '', 1, 1, '2014-06-18 08:02:09', NULL);
INSERT INTO `glpi_notifications` VALUES(56, 'Update Project Task', 0, 'ProjectTask', 'update', '', 1, 1, '2014-06-18 08:02:09', NULL);
INSERT INTO `glpi_notifications` VALUES(57, 'Delete Project Task', 0, 'ProjectTask', 'delete', '', 1, 1, '2014-06-18 08:02:09', NULL);
INSERT INTO `glpi_notifications` VALUES(58, 'Request Unlock Items', 0, 'ObjectLock', 'unlock', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(59, 'New user in requesters', 0, 'Ticket', 'requester_user', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(60, 'New group in requesters', 0, 'Ticket', 'requester_group', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(61, 'New user in observers', 0, 'Ticket', 'observer_user', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(62, 'New group in observers', 0, 'Ticket', 'observer_group', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(63, 'New user in assignees', 0, 'Ticket', 'assign_user', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(64, 'New group in assignees', 0, 'Ticket', 'assign_group', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(65, 'New supplier in assignees', 0, 'Ticket', 'assign_supplier', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(66, 'Saved searches', 0, 'SavedSearch_Alert', 'alert', '', 1, 1, '2016-02-08 16:57:46', NULL);
INSERT INTO `glpi_notifications` VALUES(67, 'Certificates', 0, 'Certificate', 'alert', '', 1, 1, NULL, NULL);


### Dump table glpi_notifications_notificationtemplates

DROP TABLE IF EXISTS `glpi_notifications_notificationtemplates`;
CREATE TABLE `glpi_notifications_notificationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notifications_id` int(11) NOT NULL DEFAULT '0',
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`notifications_id`, `mode`, `notificationtemplates_id`),
  KEY `notifications_id` (`notifications_id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`),
  KEY `mode` (`mode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notifications_notificationtemplates` VALUES(1, '1', 'mailing', 6);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(2, '2', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(3, '3', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(4, '4', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(5, '5', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(6, '6', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(7, '7', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(8, '8', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(9, '9', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(10, '10', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(11, '11', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(12, '12', 'mailing', 7);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(13, '13', 'mailing', 2);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(14, '14', 'mailing', 2);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(15, '15', 'mailing', 2);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(16, '16', 'mailing', 3);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(17, '17', 'mailing', 12);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(18, '18', 'mailing', 12);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(19, '19', 'mailing', 1);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(20, '20', 'mailing', 8);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(21, '21', 'mailing', 9);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(22, '22', 'mailing', 10);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(23, '23', 'mailing', 11);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(24, '24', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(25, '25', 'mailing', 13);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(26, '26', 'mailing', 14);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(27, '27', 'mailing', 15);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(28, '28', 'mailing', 16);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(29, '29', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(30, '30', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(31, '31', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(32, '32', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(33, '33', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(34, '34', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(35, '35', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(36, '36', 'mailing', 17);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(37, '37', 'mailing', 7);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(38, '38', 'mailing', 12);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(39, '39', 'mailing', 12);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(40, '40', 'mailing', 18);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(41, '41', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(42, '42', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(43, '43', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(44, '44', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(45, '45', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(46, '46', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(47, '47', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(48, '48', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(49, '49', 'mailing', 19);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(50, '50', 'mailing', 14);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(51, '51', 'mailing', 20);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(52, '52', 'mailing', 21);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(53, '53', 'mailing', 21);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(54, '54', 'mailing', 21);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(55, '55', 'mailing', 22);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(56, '56', 'mailing', 22);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(57, '57', 'mailing', 22);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(58, '58', 'mailing', 23);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(59, '59', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(60, '60', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(61, '61', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(62, '62', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(63, '63', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(64, '64', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(65, '65', 'mailing', 4);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(66, '66', 'mailing', 24);
INSERT INTO `glpi_notifications_notificationtemplates` VALUES(67, '67', 'mailing', 25);


### Dump table glpi_notificationtargets

DROP TABLE IF EXISTS `glpi_notificationtargets`;
CREATE TABLE `glpi_notificationtargets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `notifications_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `items` (`type`,`items_id`),
  KEY `notifications_id` (`notifications_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notificationtargets` VALUES ('1','3','1','13');
INSERT INTO `glpi_notificationtargets` VALUES ('2','1','1','13');
INSERT INTO `glpi_notificationtargets` VALUES ('3','3','2','2');
INSERT INTO `glpi_notificationtargets` VALUES ('4','1','1','2');
INSERT INTO `glpi_notificationtargets` VALUES ('5','1','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('6','1','1','5');
INSERT INTO `glpi_notificationtargets` VALUES ('7','1','1','4');
INSERT INTO `glpi_notificationtargets` VALUES ('8','2','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('9','4','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('10','3','1','2');
INSERT INTO `glpi_notificationtargets` VALUES ('11','3','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('12','3','1','5');
INSERT INTO `glpi_notificationtargets` VALUES ('13','3','1','4');
INSERT INTO `glpi_notificationtargets` VALUES ('14','1','1','19');
INSERT INTO `glpi_notificationtargets` VALUES ('15','14','1','12');
INSERT INTO `glpi_notificationtargets` VALUES ('16','3','1','14');
INSERT INTO `glpi_notificationtargets` VALUES ('17','1','1','14');
INSERT INTO `glpi_notificationtargets` VALUES ('18','3','1','15');
INSERT INTO `glpi_notificationtargets` VALUES ('19','1','1','15');
INSERT INTO `glpi_notificationtargets` VALUES ('20','1','1','6');
INSERT INTO `glpi_notificationtargets` VALUES ('21','3','1','6');
INSERT INTO `glpi_notificationtargets` VALUES ('22','1','1','7');
INSERT INTO `glpi_notificationtargets` VALUES ('23','3','1','7');
INSERT INTO `glpi_notificationtargets` VALUES ('24','1','1','8');
INSERT INTO `glpi_notificationtargets` VALUES ('25','3','1','8');
INSERT INTO `glpi_notificationtargets` VALUES ('26','1','1','9');
INSERT INTO `glpi_notificationtargets` VALUES ('27','3','1','9');
INSERT INTO `glpi_notificationtargets` VALUES ('28','1','1','10');
INSERT INTO `glpi_notificationtargets` VALUES ('29','3','1','10');
INSERT INTO `glpi_notificationtargets` VALUES ('30','1','1','11');
INSERT INTO `glpi_notificationtargets` VALUES ('31','3','1','11');
INSERT INTO `glpi_notificationtargets` VALUES ('32','19','1','25');
INSERT INTO `glpi_notificationtargets` VALUES ('33','3','1','26');
INSERT INTO `glpi_notificationtargets` VALUES ('34','21','1','2');
INSERT INTO `glpi_notificationtargets` VALUES ('35','21','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('36','21','1','5');
INSERT INTO `glpi_notificationtargets` VALUES ('37','21','1','4');
INSERT INTO `glpi_notificationtargets` VALUES ('38','21','1','6');
INSERT INTO `glpi_notificationtargets` VALUES ('39','21','1','7');
INSERT INTO `glpi_notificationtargets` VALUES ('40','21','1','8');
INSERT INTO `glpi_notificationtargets` VALUES ('41','21','1','9');
INSERT INTO `glpi_notificationtargets` VALUES ('42','21','1','10');
INSERT INTO `glpi_notificationtargets` VALUES ('43','21','1','11');
INSERT INTO `glpi_notificationtargets` VALUES ('75','1','1','41');
INSERT INTO `glpi_notificationtargets` VALUES ('46','1','1','28');
INSERT INTO `glpi_notificationtargets` VALUES ('47','3','1','29');
INSERT INTO `glpi_notificationtargets` VALUES ('48','1','1','29');
INSERT INTO `glpi_notificationtargets` VALUES ('49','21','1','29');
INSERT INTO `glpi_notificationtargets` VALUES ('50','2','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('51','4','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('52','3','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('53','1','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('54','21','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('55','3','1','31');
INSERT INTO `glpi_notificationtargets` VALUES ('56','1','1','31');
INSERT INTO `glpi_notificationtargets` VALUES ('57','21','1','31');
INSERT INTO `glpi_notificationtargets` VALUES ('58','3','1','32');
INSERT INTO `glpi_notificationtargets` VALUES ('59','1','1','32');
INSERT INTO `glpi_notificationtargets` VALUES ('60','21','1','32');
INSERT INTO `glpi_notificationtargets` VALUES ('61','3','1','33');
INSERT INTO `glpi_notificationtargets` VALUES ('62','1','1','33');
INSERT INTO `glpi_notificationtargets` VALUES ('63','21','1','33');
INSERT INTO `glpi_notificationtargets` VALUES ('64','3','1','34');
INSERT INTO `glpi_notificationtargets` VALUES ('65','1','1','34');
INSERT INTO `glpi_notificationtargets` VALUES ('66','21','1','34');
INSERT INTO `glpi_notificationtargets` VALUES ('67','3','1','35');
INSERT INTO `glpi_notificationtargets` VALUES ('68','1','1','35');
INSERT INTO `glpi_notificationtargets` VALUES ('69','21','1','35');
INSERT INTO `glpi_notificationtargets` VALUES ('70','3','1','36');
INSERT INTO `glpi_notificationtargets` VALUES ('71','1','1','36');
INSERT INTO `glpi_notificationtargets` VALUES ('72','21','1','36');
INSERT INTO `glpi_notificationtargets` VALUES ('73','14','1','37');
INSERT INTO `glpi_notificationtargets` VALUES ('74','3','1','40');
INSERT INTO `glpi_notificationtargets` VALUES ('76','3','1','42');
INSERT INTO `glpi_notificationtargets` VALUES ('77','1','1','42');
INSERT INTO `glpi_notificationtargets` VALUES ('78','21','1','42');
INSERT INTO `glpi_notificationtargets` VALUES ('79','2','1','43');
INSERT INTO `glpi_notificationtargets` VALUES ('80','4','1','43');
INSERT INTO `glpi_notificationtargets` VALUES ('81','3','1','43');
INSERT INTO `glpi_notificationtargets` VALUES ('82','1','1','43');
INSERT INTO `glpi_notificationtargets` VALUES ('83','21','1','43');
INSERT INTO `glpi_notificationtargets` VALUES ('84','3','1','44');
INSERT INTO `glpi_notificationtargets` VALUES ('85','1','1','44');
INSERT INTO `glpi_notificationtargets` VALUES ('86','21','1','44');
INSERT INTO `glpi_notificationtargets` VALUES ('87','3','1','45');
INSERT INTO `glpi_notificationtargets` VALUES ('88','1','1','45');
INSERT INTO `glpi_notificationtargets` VALUES ('89','21','1','45');
INSERT INTO `glpi_notificationtargets` VALUES ('90','3','1','46');
INSERT INTO `glpi_notificationtargets` VALUES ('91','1','1','46');
INSERT INTO `glpi_notificationtargets` VALUES ('92','21','1','46');
INSERT INTO `glpi_notificationtargets` VALUES ('93','3','1','47');
INSERT INTO `glpi_notificationtargets` VALUES ('94','1','1','47');
INSERT INTO `glpi_notificationtargets` VALUES ('95','21','1','47');
INSERT INTO `glpi_notificationtargets` VALUES ('96','3','1','48');
INSERT INTO `glpi_notificationtargets` VALUES ('97','1','1','48');
INSERT INTO `glpi_notificationtargets` VALUES ('98','21','1','48');
INSERT INTO `glpi_notificationtargets` VALUES ('99','3','1','49');
INSERT INTO `glpi_notificationtargets` VALUES ('100','1','1','49');
INSERT INTO `glpi_notificationtargets` VALUES ('101','21','1','49');
INSERT INTO `glpi_notificationtargets` VALUES ('102','3','1','50');
INSERT INTO `glpi_notificationtargets` VALUES ('103','2','1','50');
INSERT INTO `glpi_notificationtargets` VALUES ('104','1','1','51');
INSERT INTO `glpi_notificationtargets` VALUES ('105','27','1','52');
INSERT INTO `glpi_notificationtargets` VALUES ('106','1','1','52');
INSERT INTO `glpi_notificationtargets` VALUES ('107','28','1','52');
INSERT INTO `glpi_notificationtargets` VALUES ('108','27','1','53');
INSERT INTO `glpi_notificationtargets` VALUES ('109','1','1','53');
INSERT INTO `glpi_notificationtargets` VALUES ('110','28','1','53');
INSERT INTO `glpi_notificationtargets` VALUES ('111','27','1','54');
INSERT INTO `glpi_notificationtargets` VALUES ('112','1','1','54');
INSERT INTO `glpi_notificationtargets` VALUES ('113','28','1','54');
INSERT INTO `glpi_notificationtargets` VALUES ('114','31','1','55');
INSERT INTO `glpi_notificationtargets` VALUES ('115','1','1','55');
INSERT INTO `glpi_notificationtargets` VALUES ('116','32','1','55');
INSERT INTO `glpi_notificationtargets` VALUES ('117','31','1','56');
INSERT INTO `glpi_notificationtargets` VALUES ('118','1','1','56');
INSERT INTO `glpi_notificationtargets` VALUES ('119','32','1','56');
INSERT INTO `glpi_notificationtargets` VALUES ('120','31','1','57');
INSERT INTO `glpi_notificationtargets` VALUES ('121','1','1','57');
INSERT INTO `glpi_notificationtargets` VALUES ('122','32','1','57');
INSERT INTO `glpi_notificationtargets` VALUES ('123','19','1','58');
INSERT INTO `glpi_notificationtargets` VALUES ('124','3','1','59');
INSERT INTO `glpi_notificationtargets` VALUES ('125','13','1','60');
INSERT INTO `glpi_notificationtargets` VALUES ('126','21','1','61');
INSERT INTO `glpi_notificationtargets` VALUES ('127','20','1','62');
INSERT INTO `glpi_notificationtargets` VALUES ('128','2','1','63');
INSERT INTO `glpi_notificationtargets` VALUES ('129','23','1','64');
INSERT INTO `glpi_notificationtargets` VALUES ('130','8','1','65');
INSERT INTO `glpi_notificationtargets` VALUES ('131','19','1','66');

### Dump table glpi_notificationtemplates

DROP TABLE IF EXISTS `glpi_notificationtemplates`;
CREATE TABLE `glpi_notificationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `css` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notificationtemplates` VALUES ('1','MySQL Synchronization','DBConnection','2010-02-01 15:51:46','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('2','Reservations','Reservation','2010-02-03 14:03:45','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('3','Alert Reservation','Reservation','2010-02-03 14:03:45','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('4','Tickets','Ticket','2010-02-07 21:39:15','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('5','Tickets (Simple)','Ticket','2010-02-07 21:39:15','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('6','Alert Tickets not closed','Ticket','2010-02-07 21:39:15','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('7','Tickets Validation','Ticket','2010-02-26 21:39:15','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('8','Cartridges','CartridgeItem','2010-02-16 13:17:24','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('9','Consumables','ConsumableItem','2010-02-16 13:17:38','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('10','Infocoms','Infocom','2010-02-16 13:17:55','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('11','Licenses','SoftwareLicense','2010-02-16 13:18:12','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('12','Contracts','Contract','2010-02-16 13:18:12','',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('13','Password Forget','User','2011-03-04 11:35:13',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('14','Ticket Satisfaction','Ticket','2011-03-04 11:35:15',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('15','Item not unique','FieldUnicity','2011-03-04 11:35:16',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('16','Crontask','Crontask','2011-03-04 11:35:16',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('17','Problems','Problem','2011-12-06 09:48:33',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('18','Planning recall','PlanningRecall','2014-01-15 14:35:24',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('19','Changes','Change','2014-06-18 08:02:07',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('20','Receiver errors','MailCollector','2014-06-18 08:02:08',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('21','Projects','Project','2014-06-18 08:02:09',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('22','Project Tasks','ProjectTask','2014-06-18 08:02:09',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('23','Unlock Item request','ObjectLock','2016-02-08 16:57:46',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('24','Saved searches alerts','SavedSearch_Alert','2017-04-05 14:57:34',NULL,NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('25','Certificates','Certificate',NULL,'',NULL,NULL);

### Dump table glpi_notificationtemplatetranslations

DROP TABLE IF EXISTS `glpi_notificationtemplatetranslations`;
CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('1','1','','##lang.dbconnection.title##','##lang.dbconnection.delay## : ##dbconnection.delay##
','&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('2','2','','##reservation.action##','======================================================================
##lang.reservation.user##: ##reservation.user##
##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##
##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##
##lang.reservation.begin##: ##reservation.begin##
##lang.reservation.end##: ##reservation.end##
##lang.reservation.comment##: ##reservation.comment##
======================================================================
','&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;
&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('3','3','','##reservation.action##  ##reservation.entity##','##lang.reservation.entity## : ##reservation.entity##


##FOREACHreservations##
##lang.reservation.itemtype## : ##reservation.itemtype##

 ##lang.reservation.item## : ##reservation.item##

 ##reservation.url##

 ##ENDFOREACHreservations##','&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;
##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;
 ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;
 &lt;a href=\"##reservation.url##\"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;
 ##ENDFOREACHreservations##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('4','4','','##ticket.action## ##ticket.title##',' ##IFticket.storestatus=5##
 ##lang.ticket.url## : ##ticket.urlapprove##
 ##lang.ticket.autoclosewarning##
 ##lang.ticket.solvedate## : ##ticket.solvedate##
 ##lang.ticket.solution.type## : ##ticket.solution.type##
 ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##
 ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##

 ##lang.ticket.description##

 ##lang.ticket.title## : ##ticket.title##
 ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##
 ##lang.ticket.creationdate## : ##ticket.creationdate##
 ##lang.ticket.closedate## : ##ticket.closedate##
 ##lang.ticket.requesttype## : ##ticket.requesttype##
##lang.ticket.item.name## :

##FOREACHitems##

 ##IFticket.itemtype##
  ##ticket.itemtype## - ##ticket.item.name##
  ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model##
  ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial##
  ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial##
 ##ENDIFticket.itemtype##

##ENDFOREACHitems##
##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##
 ##lang.ticket.status## : ##ticket.status##
##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##
 ##lang.ticket.urgency## : ##ticket.urgency##
 ##lang.ticket.impact## : ##ticket.impact##
 ##lang.ticket.priority## : ##ticket.priority##
##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##
##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##
 ##lang.ticket.content## : ##ticket.content##
 ##IFticket.storestatus=6##

 ##lang.ticket.solvedate## : ##ticket.solvedate##
 ##lang.ticket.solution.type## : ##ticket.solution.type##
 ##lang.ticket.solution.description## : ##ticket.solution.description##
 ##ENDIFticket.storestatus##
 ##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##

##FOREACHfollowups##

 [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##
 ##lang.followup.author## ##followup.author##
 ##lang.followup.description## ##followup.description##
 ##lang.followup.date## ##followup.date##
 ##lang.followup.requesttype## ##followup.requesttype##

##ENDFOREACHfollowups##
 ##lang.ticket.numberoftasks## : ##ticket.numberoftasks##

##FOREACHtasks##

 [##task.date##] ##lang.task.isprivate## : ##task.isprivate##
 ##lang.task.author## ##task.author##
 ##lang.task.description## ##task.description##
 ##lang.task.time## ##task.time##
 ##lang.task.category## ##task.category##

##ENDFOREACHtasks##','<!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    -->
<div>##IFticket.storestatus=5##</div>
<div>##lang.ticket.url## : <a href=\"##ticket.urlapprove##\">##ticket.urlapprove##</a> <strong>&#160;</strong></div>
<div><strong>##lang.ticket.autoclosewarning##</strong></div>
<div><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.type##</strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description## ##ENDIFticket.storestatus##</div>
<div>##ELSEticket.storestatus## ##lang.ticket.url## : <a href=\"##ticket.url##\">##ticket.url##</a> ##ENDELSEticket.storestatus##</div>
<p class=\"description b\"><strong>##lang.ticket.description##</strong></p>
<p><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.title##</span>&#160;:##ticket.title## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.authors##</span>&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.creationdate##</span>&#160;:##ticket.creationdate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.closedate##</span>&#160;:##ticket.closedate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.requesttype##</span>&#160;:##ticket.requesttype##<br />
<br /><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.item.name##</span>&#160;:
<p>##FOREACHitems##</p>
<div class=\"description b\">##IFticket.itemtype## ##ticket.itemtype##&#160;- ##ticket.item.name## ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial## ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## </div><br />
<p>##ENDFOREACHitems##</p>
##IFticket.assigntousers## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntousers##</span>&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.status## </span>&#160;: ##ticket.status##<br /> ##IFticket.assigntogroups## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntogroups##</span>&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.urgency##</span>&#160;: ##ticket.urgency##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.impact##</span>&#160;: ##ticket.impact##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.priority##</span>&#160;: ##ticket.priority## <br /> ##IFticket.user.email##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.user.email##</span>&#160;: ##ticket.user.email ##ENDIFticket.user.email##    <br /> ##IFticket.category##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.category## </span>&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.content##</span>&#160;: ##ticket.content##</p>
<br />##IFticket.storestatus=6##<br /><span style=\"text-decoration: underline;\"><strong><span style=\"color: #888888;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solution.type##</span></strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description##<br />##ENDIFticket.storestatus##</p>
<div class=\"description b\">##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##</div>
<p>##FOREACHfollowups##</p>
<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>
<p>##ENDFOREACHfollowups##</p>
<div class=\"description b\">##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##</div>
<p>##FOREACHtasks##</p>
<div class=\"description b\"><br /> <strong> [##task.date##] <em>##lang.task.isprivate## : ##task.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.author##</span> ##task.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.description##</span> ##task.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.time##</span> ##task.time##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.category##</span> ##task.category##</div>
<p>##ENDFOREACHtasks##</p>');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('5','12','','##contract.action##  ##contract.entity##','##lang.contract.entity## : ##contract.entity##

##FOREACHcontracts##
##lang.contract.name## : ##contract.name##
##lang.contract.number## : ##contract.number##
##lang.contract.time## : ##contract.time##
##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##
##contract.url##
##ENDFOREACHcontracts##','&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;
&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :
##contract.name##&lt;br /&gt;
##lang.contract.number## : ##contract.number##&lt;br /&gt;
##lang.contract.time## : ##contract.time##&lt;br /&gt;
##IFcontract.type####lang.contract.type## : ##contract.type##
##ENDIFcontract.type##&lt;br /&gt;
&lt;a href=\"##contract.url##\"&gt;
##contract.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHcontracts##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('6','5','','##ticket.action## ##ticket.title##','##lang.ticket.url## : ##ticket.url##

##lang.ticket.description##


##lang.ticket.title##  :##ticket.title##

##lang.ticket.authors##  :##IFticket.authors##
##ticket.authors## ##ENDIFticket.authors##
##ELSEticket.authors##--##ENDELSEticket.authors##

##IFticket.category## ##lang.ticket.category##  :##ticket.category##
##ENDIFticket.category## ##ELSEticket.category##
##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##

##lang.ticket.content##  : ##ticket.content##
##IFticket.itemtype##
##lang.ticket.item.name##  : ##ticket.itemtype## - ##ticket.item.name##
##ENDIFticket.itemtype##','&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.url##\"&gt;
##ticket.url##&lt;/a&gt;&lt;/div&gt;
&lt;div class=\"description b\"&gt;
##lang.ticket.description##&lt;/div&gt;
&lt;p&gt;&lt;span
style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##
&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.authors##&lt;/span&gt;
##IFticket.authors## ##ticket.authors##
##ENDIFticket.authors##
##ELSEticket.authors##--##ENDELSEticket.authors##
&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;&#160
;&lt;/span&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;
##IFticket.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##
##ENDIFticket.category## ##ELSEticket.category##
##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##
&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.content##&lt;/span&gt;&#160;:
##ticket.content##&lt;br /&gt;##IFticket.itemtype##
&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.item.name##&lt;/span&gt;&#160;:
##ticket.itemtype## - ##ticket.item.name##
##ENDIFticket.itemtype##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('15','15','','##lang.unicity.action##','##lang.unicity.entity## : ##unicity.entity##

##lang.unicity.itemtype## : ##unicity.itemtype##

##lang.unicity.message## : ##unicity.message##

##lang.unicity.action_user## : ##unicity.action_user##

##lang.unicity.action_type## : ##unicity.action_type##

##lang.unicity.date## : ##unicity.date##','&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;
&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;
&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;
&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;
&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;
&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('7','7','','##ticket.action## ##ticket.title##','##FOREACHvalidations##

##IFvalidation.storestatus=2##
##validation.submission.title##
##lang.validation.commentsubmission## : ##validation.commentsubmission##
##ENDIFvalidation.storestatus##
##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##

##lang.ticket.url## : ##ticket.urlvalidation##

##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##
##IFvalidation.commentvalidation##
##lang.validation.commentvalidation## : ##validation.commentvalidation##
##ENDIFvalidation.commentvalidation##
##ENDFOREACHvalidations##','&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;
&lt;p&gt;##IFvalidation.storestatus=2##&lt;/p&gt;
&lt;div&gt;##validation.submission.title##&lt;/div&gt;
&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;
&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;
&lt;div&gt;&lt;/div&gt;
&lt;div&gt;
&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.urlvalidation##\"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##
&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :
&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##
&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('8','6','','##ticket.action## ##ticket.entity##','##lang.ticket.entity## : ##ticket.entity##

##FOREACHtickets##

##lang.ticket.title## : ##ticket.title##
 ##lang.ticket.status## : ##ticket.status##

 ##ticket.url##
 ##ENDFOREACHtickets##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.content##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##FOREACHtickets##
&lt;tr&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;&lt;a href=\"##ticket.url##\"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.content##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDFOREACHtickets##
&lt;/tbody&gt;
&lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('9','9','','##consumable.action##  ##consumable.entity##','##lang.consumable.entity## : ##consumable.entity##


##FOREACHconsumables##
##lang.consumable.item## : ##consumable.item##


##lang.consumable.reference## : ##consumable.reference##

##lang.consumable.remaining## : ##consumable.remaining##

##consumable.url##

##ENDFOREACHconsumables##','&lt;p&gt;
##lang.consumable.entity## : ##consumable.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##
&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;
&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;
##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;
&lt;a href=\"##consumable.url##\"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;
   ##ENDFOREACHconsumables##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('10','8','','##cartridge.action##  ##cartridge.entity##','##lang.cartridge.entity## : ##cartridge.entity##


##FOREACHcartridges##
##lang.cartridge.item## : ##cartridge.item##


##lang.cartridge.reference## : ##cartridge.reference##

##lang.cartridge.remaining## : ##cartridge.remaining##

##cartridge.url##
 ##ENDFOREACHcartridges##','&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##
&lt;br /&gt;##lang.cartridge.item## :
##cartridge.item##&lt;br /&gt; &lt;br /&gt;
##lang.cartridge.reference## :
##cartridge.reference##&lt;br /&gt;
##lang.cartridge.remaining## :
##cartridge.remaining##&lt;br /&gt;
&lt;a href=\"##cartridge.url##\"&gt;
##cartridge.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHcartridges##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('11','10','','##infocom.action##  ##infocom.entity##','##lang.infocom.entity## : ##infocom.entity##


##FOREACHinfocoms##

##lang.infocom.itemtype## : ##infocom.itemtype##

##lang.infocom.item## : ##infocom.item##


##lang.infocom.expirationdate## : ##infocom.expirationdate##

##infocom.url##
 ##ENDFOREACHinfocoms##','&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##
&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;
##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;
##lang.infocom.expirationdate## : ##infocom.expirationdate##
&lt;br /&gt; &lt;a href=\"##infocom.url##\"&gt;
##infocom.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHinfocoms##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('12','11','','##license.action##  ##license.entity##','##lang.license.entity## : ##license.entity##

##FOREACHlicenses##

##lang.license.item## : ##license.item##

##lang.license.serial## : ##license.serial##

##lang.license.expirationdate## : ##license.expirationdate##

##license.url##
 ##ENDFOREACHlicenses##','&lt;p&gt;
##lang.license.entity## : ##license.entity##&lt;br /&gt;
##FOREACHlicenses##
&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;
##lang.license.serial## : ##license.serial##&lt;br /&gt;
##lang.license.expirationdate## : ##license.expirationdate##
&lt;br /&gt; &lt;a href=\"##license.url##\"&gt; ##license.url##
&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('13','13','','##user.action##','##user.realname## ##user.firstname##

##lang.passwordforget.information##

##lang.passwordforget.link## ##user.passwordforgeturl##','&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;
&lt;p&gt;##lang.passwordforget.link## &lt;a title=\"##user.passwordforgeturl##\" href=\"##user.passwordforgeturl##\"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('14','14','','##ticket.action## ##ticket.title##','##lang.ticket.title## : ##ticket.title##

##lang.ticket.closedate## : ##ticket.closedate##

##lang.satisfaction.text## ##ticket.urlsatisfaction##','&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;
&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;
&lt;p&gt;##lang.satisfaction.text## &lt;a href=\"##ticket.urlsatisfaction##\"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('16','16','','##crontask.action##','##lang.crontask.warning##

##FOREACHcrontasks##
 ##crontask.name## : ##crontask.description##

##ENDFOREACHcrontasks##','&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;
&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href=\"##crontask.url##\"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('17','17','','##problem.action## ##problem.title##','##IFproblem.storestatus=5##
 ##lang.problem.url## : ##problem.urlapprove##
 ##lang.problem.solvedate## : ##problem.solvedate##
 ##lang.problem.solution.type## : ##problem.solution.type##
 ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##
 ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##

 ##lang.problem.description##

 ##lang.problem.title##  :##problem.title##
 ##lang.problem.authors##  :##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##
 ##lang.problem.creationdate##  :##problem.creationdate##
 ##IFproblem.assigntousers## ##lang.problem.assigntousers##  : ##problem.assigntousers## ##ENDIFproblem.assigntousers##
 ##lang.problem.status##  : ##problem.status##
 ##IFproblem.assigntogroups## ##lang.problem.assigntogroups##  : ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##
 ##lang.problem.urgency##  : ##problem.urgency##
 ##lang.problem.impact##  : ##problem.impact##
 ##lang.problem.priority## : ##problem.priority##
##IFproblem.category## ##lang.problem.category##  :##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##
 ##lang.problem.content##  : ##problem.content##

##IFproblem.storestatus=6##
 ##lang.problem.solvedate## : ##problem.solvedate##
 ##lang.problem.solution.type## : ##problem.solution.type##
 ##lang.problem.solution.description## : ##problem.solution.description##
##ENDIFproblem.storestatus##
 ##lang.problem.numberoffollowups## : ##problem.numberoffollowups##

##FOREACHfollowups##

 [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##
 ##lang.followup.author## ##followup.author##
 ##lang.followup.description## ##followup.description##
 ##lang.followup.date## ##followup.date##
 ##lang.followup.requesttype## ##followup.requesttype##

##ENDFOREACHfollowups##
 ##lang.problem.numberoftickets## : ##problem.numberoftickets##

##FOREACHtickets##
 [##ticket.date##] ##lang.problem.title## : ##ticket.title##
 ##lang.problem.content## ##ticket.content##

##ENDFOREACHtickets##
 ##lang.problem.numberoftasks## : ##problem.numberoftasks##

##FOREACHtasks##
 [##task.date##]
 ##lang.task.author## ##task.author##
 ##lang.task.description## ##task.description##
 ##lang.task.time## ##task.time##
 ##lang.task.category## ##task.category##

##ENDFOREACHtasks##
','&lt;p&gt;##IFproblem.storestatus=5##&lt;/p&gt;
&lt;div&gt;##lang.problem.url## : &lt;a href=\"##problem.urlapprove##\"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;
&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href=\"##problem.url##\"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;
&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;
&lt;p&gt;##IFproblem.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;
<div class=\"description b\">##lang.problem.numberoffollowups##&#160;: ##problem.numberoffollowups##</div>
<p>##FOREACHfollowups##</p>
<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>
<p>##ENDFOREACHfollowups##</p>
&lt;div class=\"description b\"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;
&lt;p&gt;##FOREACHtickets##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href=\"##ticket.url##\"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##
&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;
&lt;div class=\"description b\"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('18','18','','##recall.action##: ##recall.item.name##','##recall.action##: ##recall.item.name##

##recall.item.content##

##lang.recall.planning.begin##: ##recall.planning.begin##
##lang.recall.planning.end##: ##recall.planning.end##
##lang.recall.planning.state##: ##recall.planning.state##
##lang.recall.item.private##: ##recall.item.private##','&lt;p&gt;##recall.action##: &lt;a href=\"##recall.item.url##\"&gt;##recall.item.name##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;##recall.item.content##&lt;/p&gt;
&lt;p&gt;##lang.recall.planning.begin##: ##recall.planning.begin##&lt;br /&gt;##lang.recall.planning.end##: ##recall.planning.end##&lt;br /&gt;##lang.recall.planning.state##: ##recall.planning.state##&lt;br /&gt;##lang.recall.item.private##: ##recall.item.private##&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;
&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('19','19','','##change.action## ##change.title##','##IFchange.storestatus=5##
 ##lang.change.url## : ##change.urlapprove##
 ##lang.change.solvedate## : ##change.solvedate##
 ##lang.change.solution.type## : ##change.solution.type##
 ##lang.change.solution.description## : ##change.solution.description## ##ENDIFchange.storestatus##
 ##ELSEchange.storestatus## ##lang.change.url## : ##change.url## ##ENDELSEchange.storestatus##

 ##lang.change.description##

 ##lang.change.title##  :##change.title##
 ##lang.change.authors##  :##IFchange.authors## ##change.authors## ##ENDIFchange.authors## ##ELSEchange.authors##--##ENDELSEchange.authors##
 ##lang.change.creationdate##  :##change.creationdate##
 ##IFchange.assigntousers## ##lang.change.assigntousers##  : ##change.assigntousers## ##ENDIFchange.assigntousers##
 ##lang.change.status##  : ##change.status##
 ##IFchange.assigntogroups## ##lang.change.assigntogroups##  : ##change.assigntogroups## ##ENDIFchange.assigntogroups##
 ##lang.change.urgency##  : ##change.urgency##
 ##lang.change.impact##  : ##change.impact##
 ##lang.change.priority## : ##change.priority##
##IFchange.category## ##lang.change.category##  :##change.category## ##ENDIFchange.category## ##ELSEchange.category## ##lang.change.nocategoryassigned## ##ENDELSEchange.category##
 ##lang.change.content##  : ##change.content##

##IFchange.storestatus=6##
 ##lang.change.solvedate## : ##change.solvedate##
 ##lang.change.solution.type## : ##change.solution.type##
 ##lang.change.solution.description## : ##change.solution.description##
##ENDIFchange.storestatus##
 ##lang.change.numberoffollowups## : ##change.numberoffollowups##

##FOREACHfollowups##

 [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##
 ##lang.followup.author## ##followup.author##
 ##lang.followup.description## ##followup.description##
 ##lang.followup.date## ##followup.date##
 ##lang.followup.requesttype## ##followup.requesttype##

##ENDFOREACHfollowups##
 ##lang.change.numberofproblems## : ##change.numberofproblems##

##FOREACHproblems##
 [##problem.date##] ##lang.change.title## : ##problem.title##
 ##lang.change.content## ##problem.content##

##ENDFOREACHproblems##
 ##lang.change.numberoftasks## : ##change.numberoftasks##

##FOREACHtasks##
 [##task.date##]
 ##lang.task.author## ##task.author##
 ##lang.task.description## ##task.description##
 ##lang.task.time## ##task.time##
 ##lang.task.category## ##task.category##

##ENDFOREACHtasks##
','&lt;p&gt;##IFchange.storestatus=5##&lt;/p&gt;
&lt;div&gt;##lang.change.url## : &lt;a href=\"##change.urlapprove##\"&gt;##change.urlapprove##&lt;/a&gt;&lt;/div&gt;
&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description## ##ENDIFchange.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEchange.storestatus## ##lang.change.url## : &lt;a href=\"##change.url##\"&gt;##change.url##&lt;/a&gt; ##ENDELSEchange.storestatus##&lt;/div&gt;
&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.change.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.title##&lt;/span&gt;&#160;:##change.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.authors##&lt;/span&gt;&#160;:##IFchange.authors## ##change.authors## ##ENDIFchange.authors##    ##ELSEchange.authors##--##ENDELSEchange.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.creationdate##&lt;/span&gt;&#160;:##change.creationdate## &lt;br /&gt; ##IFchange.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntousers##&lt;/span&gt;&#160;: ##change.assigntousers## ##ENDIFchange.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.status## &lt;/span&gt;&#160;: ##change.status##&lt;br /&gt; ##IFchange.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntogroups##&lt;/span&gt;&#160;: ##change.assigntogroups## ##ENDIFchange.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.urgency##&lt;/span&gt;&#160;: ##change.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.impact##&lt;/span&gt;&#160;: ##change.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.priority##&lt;/span&gt; : ##change.priority## &lt;br /&gt;##IFchange.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.category## &lt;/span&gt;&#160;:##change.category##  ##ENDIFchange.category## ##ELSEchange.category##  ##lang.change.nocategoryassigned## ##ENDELSEchange.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.content##&lt;/span&gt;&#160;: ##change.content##&lt;/p&gt;
&lt;p&gt;##IFchange.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description##&lt;br /&gt;##ENDIFchange.storestatus##&lt;/p&gt;
<div class=\"description b\">##lang.change.numberoffollowups##&#160;: ##change.numberoffollowups##</div>
<p>##FOREACHfollowups##</p>
<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>
<p>##ENDFOREACHfollowups##</p>
&lt;div class=\"description b\"&gt;##lang.change.numberofproblems##&#160;: ##change.numberofproblems##&lt;/div&gt;
&lt;p&gt;##FOREACHproblems##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt; [##problem.date##] &lt;em&gt;##lang.change.title## : &lt;a href=\"##problem.url##\"&gt;##problem.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.content## &lt;/span&gt; ##problem.content##
&lt;p&gt;##ENDFOREACHproblems##&lt;/p&gt;
&lt;div class=\"description b\"&gt;##lang.change.numberoftasks##&#160;: ##change.numberoftasks##&lt;/div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('20','20','','##mailcollector.action##','##FOREACHmailcollectors##
##lang.mailcollector.name## : ##mailcollector.name##
##lang.mailcollector.errors## : ##mailcollector.errors##
##mailcollector.url##
##ENDFOREACHmailcollectors##','&lt;p&gt;##FOREACHmailcollectors##&lt;br /&gt;##lang.mailcollector.name## : ##mailcollector.name##&lt;br /&gt; ##lang.mailcollector.errors## : ##mailcollector.errors##&lt;br /&gt;&lt;a href=\"##mailcollector.url##\"&gt;##mailcollector.url##&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHmailcollectors##&lt;/p&gt;
&lt;p&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('21','21','','##project.action## ##project.name## ##project.code##','##lang.project.url## : ##project.url##

##lang.project.description##

##lang.project.name## : ##project.name##
##lang.project.code## : ##project.code##
##lang.project.manager## : ##project.manager##
##lang.project.managergroup## : ##project.managergroup##
##lang.project.creationdate## : ##project.creationdate##
##lang.project.priority## : ##project.priority##
##lang.project.state## : ##project.state##
##lang.project.type## : ##project.type##
##lang.project.description## : ##project.description##

##lang.project.numberoftasks## : ##project.numberoftasks##



##FOREACHtasks##

[##task.creationdate##]
##lang.task.name## : ##task.name##
##lang.task.state## : ##task.state##
##lang.task.type## : ##task.type##
##lang.task.percent## : ##task.percent##
##lang.task.description## : ##task.description##

##ENDFOREACHtasks##','&lt;p&gt;##lang.project.url## : &lt;a href=\"##project.url##\"&gt;##project.url##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;##lang.project.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;##lang.project.name## : ##project.name##&lt;br /&gt;##lang.project.code## : ##project.code##&lt;br /&gt; ##lang.project.manager## : ##project.manager##&lt;br /&gt;##lang.project.managergroup## : ##project.managergroup##&lt;br /&gt; ##lang.project.creationdate## : ##project.creationdate##&lt;br /&gt;##lang.project.priority## : ##project.priority## &lt;br /&gt;##lang.project.state## : ##project.state##&lt;br /&gt;##lang.project.type## : ##project.type##&lt;br /&gt;##lang.project.description## : ##project.description##&lt;/p&gt;
&lt;p&gt;##lang.project.numberoftasks## : ##project.numberoftasks##&lt;/p&gt;
&lt;div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt; ##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('22','22','','##projecttask.action## ##projecttask.name##','##lang.projecttask.url## : ##projecttask.url##

##lang.projecttask.description##

##lang.projecttask.name## : ##projecttask.name##
##lang.projecttask.project## : ##projecttask.project##
##lang.projecttask.creationdate## : ##projecttask.creationdate##
##lang.projecttask.state## : ##projecttask.state##
##lang.projecttask.type## : ##projecttask.type##
##lang.projecttask.description## : ##projecttask.description##

##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##



##FOREACHtasks##

[##task.creationdate##]
##lang.task.name## : ##task.name##
##lang.task.state## : ##task.state##
##lang.task.type## : ##task.type##
##lang.task.percent## : ##task.percent##
##lang.task.description## : ##task.description##

##ENDFOREACHtasks##','&lt;p&gt;##lang.projecttask.url## : &lt;a href=\"##projecttask.url##\"&gt;##projecttask.url##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;##lang.projecttask.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;##lang.projecttask.name## : ##projecttask.name##&lt;br /&gt;##lang.projecttask.project## : &lt;a href=\"##projecttask.projecturl##\"&gt;##projecttask.project##&lt;/a&gt;&lt;br /&gt;##lang.projecttask.creationdate## : ##projecttask.creationdate##&lt;br /&gt;##lang.projecttask.state## : ##projecttask.state##&lt;br /&gt;##lang.projecttask.type## : ##projecttask.type##&lt;br /&gt;##lang.projecttask.description## : ##projecttask.description##&lt;/p&gt;
&lt;p&gt;##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##&lt;/p&gt;
&lt;div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt;##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('23','23','','##objectlock.action##','##objectlock.type## ###objectlock.id## - ##objectlock.name##

      ##lang.objectlock.url##
      ##objectlock.url##

      ##lang.objectlock.date_mod##
      ##objectlock.date_mod##

      Hello ##objectlock.lockedby.firstname##,
      Could go to this item and unlock it for me?
      Thank you,
      Regards,
      ##objectlock.requester.firstname##','&lt;table&gt;
      &lt;tbody&gt;
      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##objectlock.url##\"&gt;##objectlock.type## ###objectlock.id## - ##objectlock.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;
      &lt;tr&gt;
      &lt;td&gt;##lang.objectlock.url##&lt;/td&gt;
      &lt;td&gt;##objectlock.url##&lt;/td&gt;
      &lt;/tr&gt;
      &lt;tr&gt;
      &lt;td&gt;##lang.objectlock.date_mod##&lt;/td&gt;
      &lt;td&gt;##objectlock.date_mod##&lt;/td&gt;
      &lt;/tr&gt;
      &lt;/tbody&gt;
      &lt;/table&gt;
      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello ##objectlock.lockedby.firstname##,&lt;br /&gt;Could go to this item and unlock it for me?&lt;br /&gt;Thank you,&lt;br /&gt;Regards,&lt;br /&gt;##objectlock.requester.firstname## ##objectlock.requester.lastname##&lt;/span&gt;&lt;/p&gt;');

INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('24','24','','##savedsearch.action## ##savedsearch.name##','##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##

      ##savedsearch.message##

      ##lang.savedsearch.url##
      ##savedsearch.url##

      Regards,', '&lt;table&gt;
      &lt;tbody&gt;
      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;
      &lt;tr&gt;&lt;td colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.message##&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;
      &lt;tr&gt;
      &lt;td&gt;##lang.savedsearch.url##&lt;/td&gt;
      &lt;td&gt;##savedsearch.url##&lt;/td&gt;
      &lt;/tr&gt;
      &lt;/tbody&gt;
      &lt;/table&gt;
      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello &lt;br /&gt;Regards,&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('25','25','','##certificate.action##  ##certificate.entity##','##lang.certificate.entity## : ##certificate.entity##

##FOREACHcertificates##

##lang.certificate.serial## : ##certificate.serial##

##lang.certificate.expirationdate## : ##certificate.expirationdate##

##certificate.url##
 ##ENDFOREACHcertificates##','&lt;p&gt;
##lang.certificate.entity## : ##certificate.entity##&lt;br /&gt;
##FOREACHcertificates##
&lt;br /&gt;##lang.certificate.name## : ##certificate.name##&lt;br /&gt;
##lang.certificate.serial## : ##certificate.serial##&lt;br /&gt;
##lang.certificate.expirationdate## : ##certificate.expirationdate##
&lt;br /&gt; &lt;a href=\"##certificate.url##\"&gt; ##certificate.url##
&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHcertificates##&lt;/p&gt;');

### Dump table glpi_notimportedemails

DROP TABLE IF EXISTS `glpi_notimportedemails`;
CREATE TABLE `glpi_notimportedemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `subject` text,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `mailcollectors_id` (`mailcollectors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


### Dump table glpi_objectlocks

DROP TABLE IF EXISTS `glpi_objectlocks`;
CREATE TABLE `glpi_objectlocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Type of locked object',
  `items_id` int(11) NOT NULL COMMENT 'RELATION to various tables, according to itemtype (ID)',
  `users_id` int(11) NOT NULL COMMENT 'id of the locker',
  `date_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp of the lock',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystemarchitectures

DROP TABLE IF EXISTS `glpi_operatingsystemarchitectures`;
CREATE TABLE `glpi_operatingsystemarchitectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystems

DROP TABLE IF EXISTS `glpi_operatingsystems`;
CREATE TABLE `glpi_operatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystemservicepacks

DROP TABLE IF EXISTS `glpi_operatingsystemservicepacks`;
CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystemversions

DROP TABLE IF EXISTS `glpi_operatingsystemversions`;
CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_peripheralmodels

DROP TABLE IF EXISTS `glpi_peripheralmodels`;
CREATE TABLE `glpi_peripheralmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_peripherals

DROP TABLE IF EXISTS `glpi_peripherals`;
CREATE TABLE `glpi_peripherals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `peripheraltypes_id` int(11) NOT NULL DEFAULT '0',
  `peripheralmodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `peripheralmodels_id` (`peripheralmodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `peripheraltypes_id` (`peripheraltypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_peripheraltypes

DROP TABLE IF EXISTS `glpi_peripheraltypes`;
CREATE TABLE `glpi_peripheraltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phonemodels

DROP TABLE IF EXISTS `glpi_phonemodels`;
CREATE TABLE `glpi_phonemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phonepowersupplies

DROP TABLE IF EXISTS `glpi_phonepowersupplies`;
CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phones

DROP TABLE IF EXISTS `glpi_phones`;
CREATE TABLE `glpi_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `phonetypes_id` int(11) NOT NULL DEFAULT '0',
  `phonemodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `number_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_headset` tinyint(1) NOT NULL DEFAULT '0',
  `have_hp` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `phonemodels_id` (`phonemodels_id`),
  KEY `phonepowersupplies_id` (`phonepowersupplies_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `phonetypes_id` (`phonetypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phonetypes

DROP TABLE IF EXISTS `glpi_phonetypes`;
CREATE TABLE `glpi_phonetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_planningrecalls

DROP TABLE IF EXISTS `glpi_planningrecalls`;
CREATE TABLE `glpi_planningrecalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `before_time` int(11) NOT NULL DEFAULT '-10',
  `when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`users_id`),
  KEY `users_id` (`users_id`),
  KEY `before_time` (`before_time`),
  KEY `when` (`when`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugins

DROP TABLE IF EXISTS `glpi_plugins`;
CREATE TABLE `glpi_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`directory`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_printermodels

DROP TABLE IF EXISTS `glpi_printermodels`;
CREATE TABLE `glpi_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_printers

DROP TABLE IF EXISTS `glpi_printers`;
CREATE TABLE `glpi_printers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT '0',
  `have_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `have_usb` tinyint(1) NOT NULL DEFAULT '0',
  `have_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `have_ethernet` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `memory_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `printertypes_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT '0',
  `last_pages_counter` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `printermodels_id` (`printermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `printertypes_id` (`printertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `last_pages_counter` (`last_pages_counter`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_printertypes

DROP TABLE IF EXISTS `glpi_printertypes`;
CREATE TABLE `glpi_printertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problemcosts

DROP TABLE IF EXISTS `glpi_problemcosts`;
CREATE TABLE `glpi_problemcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `problems_id` (`problems_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems

DROP TABLE IF EXISTS `glpi_problems`;
CREATE TABLE `glpi_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `causecontent` longtext COLLATE utf8_unicode_ci,
  `symptomcontent` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems_suppliers

DROP TABLE IF EXISTS `glpi_problems_suppliers`;
CREATE TABLE `glpi_problems_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems_tickets

DROP TABLE IF EXISTS `glpi_problems_tickets`;
CREATE TABLE `glpi_problems_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems_users

DROP TABLE IF EXISTS `glpi_problems_users`;
CREATE TABLE `glpi_problems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problemtasks

DROP TABLE IF EXISTS `glpi_problemtasks`;
CREATE TABLE `glpi_problemtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` INT(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `problems_id` (`problems_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `state` (`state`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `tasktemplates_id` (`tasktemplates_id`),
  KEY `is_private` (`is_private`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_profilerights

DROP TABLE IF EXISTS `glpi_profilerights`;
CREATE TABLE `glpi_profilerights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rights` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`profiles_id`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_profilerights` VALUES ('1','1','computer','0');
INSERT INTO `glpi_profilerights` VALUES ('2','1','monitor','0');
INSERT INTO `glpi_profilerights` VALUES ('3','1','software','0');
INSERT INTO `glpi_profilerights` VALUES ('4','1','networking','0');
INSERT INTO `glpi_profilerights` VALUES ('5','1','internet','0');
INSERT INTO `glpi_profilerights` VALUES ('6','1','printer','0');
INSERT INTO `glpi_profilerights` VALUES ('7','1','peripheral','0');
INSERT INTO `glpi_profilerights` VALUES ('8','1','cartridge','0');
INSERT INTO `glpi_profilerights` VALUES ('9','1','consumable','0');
INSERT INTO `glpi_profilerights` VALUES ('10','1','phone','0');
INSERT INTO `glpi_profilerights` VALUES ('734','6','queuednotification','0');
INSERT INTO `glpi_profilerights` VALUES ('12','1','contact_enterprise','0');
INSERT INTO `glpi_profilerights` VALUES ('13','1','document','0');
INSERT INTO `glpi_profilerights` VALUES ('14','1','contract','0');
INSERT INTO `glpi_profilerights` VALUES ('15','1','infocom','0');
INSERT INTO `glpi_profilerights` VALUES ('16','1','knowbase','2048');
INSERT INTO `glpi_profilerights` VALUES ('20','1','reservation','1024');
INSERT INTO `glpi_profilerights` VALUES ('21','1','reports','0');
INSERT INTO `glpi_profilerights` VALUES ('22','1','dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('24','1','device','0');
INSERT INTO `glpi_profilerights` VALUES ('25','1','typedoc','0');
INSERT INTO `glpi_profilerights` VALUES ('26','1','link','0');
INSERT INTO `glpi_profilerights` VALUES ('27','1','config','0');
INSERT INTO `glpi_profilerights` VALUES ('29','1','rule_ticket','0');
INSERT INTO `glpi_profilerights` VALUES ('30','1','rule_import','0');
INSERT INTO `glpi_profilerights` VALUES ('31','1','rule_ldap','0');
INSERT INTO `glpi_profilerights` VALUES ('32','1','rule_softwarecategories','0');
INSERT INTO `glpi_profilerights` VALUES ('33','1','search_config','0');
INSERT INTO `glpi_profilerights` VALUES ('684','5','location','0');
INSERT INTO `glpi_profilerights` VALUES ('679','7','domain','23');
INSERT INTO `glpi_profilerights` VALUES ('36','1','profile','0');
INSERT INTO `glpi_profilerights` VALUES ('37','1','user','0');
INSERT INTO `glpi_profilerights` VALUES ('39','1','group','0');
INSERT INTO `glpi_profilerights` VALUES ('40','1','entity','0');
INSERT INTO `glpi_profilerights` VALUES ('41','1','transfer','0');
INSERT INTO `glpi_profilerights` VALUES ('42','1','logs','0');
INSERT INTO `glpi_profilerights` VALUES ('43','1','reminder_public','1');
INSERT INTO `glpi_profilerights` VALUES ('44','1','rssfeed_public','1');
INSERT INTO `glpi_profilerights` VALUES ('45','1','bookmark_public','0');
INSERT INTO `glpi_profilerights` VALUES ('46','1','backup','0');
INSERT INTO `glpi_profilerights` VALUES ('47','1','ticket','5');
INSERT INTO `glpi_profilerights` VALUES ('51','1','followup','5');
INSERT INTO `glpi_profilerights` VALUES ('52','1','task','1');
INSERT INTO `glpi_profilerights` VALUES ('64','1','planning','0');
INSERT INTO `glpi_profilerights` VALUES ('716','2','state','0');
INSERT INTO `glpi_profilerights` VALUES ('709','2','taskcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('67','1','statistic','0');
INSERT INTO `glpi_profilerights` VALUES ('68','1','password_update','1');
INSERT INTO `glpi_profilerights` VALUES ('70','1','show_group_hardware','0');
INSERT INTO `glpi_profilerights` VALUES ('71','1','rule_dictionnary_software','0');
INSERT INTO `glpi_profilerights` VALUES ('72','1','rule_dictionnary_dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('73','1','budget','0');
INSERT INTO `glpi_profilerights` VALUES ('75','1','notification','0');
INSERT INTO `glpi_profilerights` VALUES ('76','1','rule_mailcollector','0');
INSERT INTO `glpi_profilerights` VALUES ('728','7','solutiontemplate','23');
INSERT INTO `glpi_profilerights` VALUES ('79','1','calendar','0');
INSERT INTO `glpi_profilerights` VALUES ('80','1','slm','0');
INSERT INTO `glpi_profilerights` VALUES ('81','1','rule_dictionnary_printer','0');
INSERT INTO `glpi_profilerights` VALUES ('85','1','problem','0');
INSERT INTO `glpi_profilerights` VALUES ('702','2','netpoint','0');
INSERT INTO `glpi_profilerights` VALUES ('697','4','knowbasecategory','23');
INSERT INTO `glpi_profilerights` VALUES ('691','5','itilcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('89','1','tickettemplate','0');
INSERT INTO `glpi_profilerights` VALUES ('90','1','ticketrecurrent','0');
INSERT INTO `glpi_profilerights` VALUES ('91','1','ticketcost','0');
INSERT INTO `glpi_profilerights` VALUES ('671','6','changevalidation','20');
INSERT INTO `glpi_profilerights` VALUES ('94','1','ticketvalidation','0');
INSERT INTO `glpi_profilerights` VALUES ('95','2','computer','33');
INSERT INTO `glpi_profilerights` VALUES ('96','2','monitor','33');
INSERT INTO `glpi_profilerights` VALUES ('97','2','software','33');
INSERT INTO `glpi_profilerights` VALUES ('98','2','networking','33');
INSERT INTO `glpi_profilerights` VALUES ('99','2','internet','1');
INSERT INTO `glpi_profilerights` VALUES ('100','2','printer','33');
INSERT INTO `glpi_profilerights` VALUES ('101','2','peripheral','33');
INSERT INTO `glpi_profilerights` VALUES ('102','2','cartridge','33');
INSERT INTO `glpi_profilerights` VALUES ('103','2','consumable','33');
INSERT INTO `glpi_profilerights` VALUES ('104','2','phone','33');
INSERT INTO `glpi_profilerights` VALUES ('733','5','queuednotification','0');
INSERT INTO `glpi_profilerights` VALUES ('106','2','contact_enterprise','33');
INSERT INTO `glpi_profilerights` VALUES ('107','2','document','33');
INSERT INTO `glpi_profilerights` VALUES ('108','2','contract','33');
INSERT INTO `glpi_profilerights` VALUES ('109','2','infocom','1');
INSERT INTO `glpi_profilerights` VALUES ('110','2','knowbase','10241');
INSERT INTO `glpi_profilerights` VALUES ('114','2','reservation','1025');
INSERT INTO `glpi_profilerights` VALUES ('115','2','reports','1');
INSERT INTO `glpi_profilerights` VALUES ('116','2','dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('118','2','device','0');
INSERT INTO `glpi_profilerights` VALUES ('119','2','typedoc','1');
INSERT INTO `glpi_profilerights` VALUES ('120','2','link','1');
INSERT INTO `glpi_profilerights` VALUES ('121','2','config','0');
INSERT INTO `glpi_profilerights` VALUES ('123','2','rule_ticket','0');
INSERT INTO `glpi_profilerights` VALUES ('124','2','rule_import','0');
INSERT INTO `glpi_profilerights` VALUES ('125','2','rule_ldap','0');
INSERT INTO `glpi_profilerights` VALUES ('126','2','rule_softwarecategories','0');
INSERT INTO `glpi_profilerights` VALUES ('127','2','search_config','1024');
INSERT INTO `glpi_profilerights` VALUES ('683','4','location','23');
INSERT INTO `glpi_profilerights` VALUES ('678','6','domain','0');
INSERT INTO `glpi_profilerights` VALUES ('130','2','profile','0');
INSERT INTO `glpi_profilerights` VALUES ('131','2','user','2049');
INSERT INTO `glpi_profilerights` VALUES ('133','2','group','33');
INSERT INTO `glpi_profilerights` VALUES ('134','2','entity','0');
INSERT INTO `glpi_profilerights` VALUES ('135','2','transfer','0');
INSERT INTO `glpi_profilerights` VALUES ('136','2','logs','0');
INSERT INTO `glpi_profilerights` VALUES ('137','2','reminder_public','1');
INSERT INTO `glpi_profilerights` VALUES ('138','2','rssfeed_public','1');
INSERT INTO `glpi_profilerights` VALUES ('139','2','bookmark_public','0');
INSERT INTO `glpi_profilerights` VALUES ('140','2','backup','0');
INSERT INTO `glpi_profilerights` VALUES ('141','2','ticket','168989');
INSERT INTO `glpi_profilerights` VALUES ('145','2','followup','5');
INSERT INTO `glpi_profilerights` VALUES ('146','2','task','1');
INSERT INTO `glpi_profilerights` VALUES ('748','6','projecttask','1025');
INSERT INTO `glpi_profilerights` VALUES ('749','7','projecttask','1025');
INSERT INTO `glpi_profilerights` VALUES ('158','2','planning','1');
INSERT INTO `glpi_profilerights` VALUES ('715','1','state','0');
INSERT INTO `glpi_profilerights` VALUES ('708','1','taskcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('161','2','statistic','1');
INSERT INTO `glpi_profilerights` VALUES ('162','2','password_update','1');
INSERT INTO `glpi_profilerights` VALUES ('164','2','show_group_hardware','0');
INSERT INTO `glpi_profilerights` VALUES ('165','2','rule_dictionnary_software','0');
INSERT INTO `glpi_profilerights` VALUES ('166','2','rule_dictionnary_dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('167','2','budget','33');
INSERT INTO `glpi_profilerights` VALUES ('169','2','notification','0');
INSERT INTO `glpi_profilerights` VALUES ('170','2','rule_mailcollector','0');
INSERT INTO `glpi_profilerights` VALUES ('726','5','solutiontemplate','0');
INSERT INTO `glpi_profilerights` VALUES ('727','6','solutiontemplate','0');
INSERT INTO `glpi_profilerights` VALUES ('173','2','calendar','0');
INSERT INTO `glpi_profilerights` VALUES ('174','2','slm','0');
INSERT INTO `glpi_profilerights` VALUES ('175','2','rule_dictionnary_printer','0');
INSERT INTO `glpi_profilerights` VALUES ('179','2','problem','1057');
INSERT INTO `glpi_profilerights` VALUES ('701','1','netpoint','0');
INSERT INTO `glpi_profilerights` VALUES ('696','3','knowbasecategory','23');
INSERT INTO `glpi_profilerights` VALUES ('690','4','itilcategory','23');
INSERT INTO `glpi_profilerights` VALUES ('183','2','tickettemplate','0');
INSERT INTO `glpi_profilerights` VALUES ('184','2','ticketrecurrent','0');
INSERT INTO `glpi_profilerights` VALUES ('185','2','ticketcost','1');
INSERT INTO `glpi_profilerights` VALUES ('669','4','changevalidation','1044');
INSERT INTO `glpi_profilerights` VALUES ('670','5','changevalidation','20');
INSERT INTO `glpi_profilerights` VALUES ('188','2','ticketvalidation','15376');
INSERT INTO `glpi_profilerights` VALUES ('189','3','computer','127');
INSERT INTO `glpi_profilerights` VALUES ('190','3','monitor','127');
INSERT INTO `glpi_profilerights` VALUES ('191','3','software','127');
INSERT INTO `glpi_profilerights` VALUES ('192','3','networking','127');
INSERT INTO `glpi_profilerights` VALUES ('193','3','internet','31');
INSERT INTO `glpi_profilerights` VALUES ('194','3','printer','127');
INSERT INTO `glpi_profilerights` VALUES ('195','3','peripheral','127');
INSERT INTO `glpi_profilerights` VALUES ('196','3','cartridge','127');
INSERT INTO `glpi_profilerights` VALUES ('197','3','consumable','127');
INSERT INTO `glpi_profilerights` VALUES ('198','3','phone','127');
INSERT INTO `glpi_profilerights` VALUES ('732','4','queuednotification','31');
INSERT INTO `glpi_profilerights` VALUES ('200','3','contact_enterprise','127');
INSERT INTO `glpi_profilerights` VALUES ('201','3','document','127');
INSERT INTO `glpi_profilerights` VALUES ('202','3','contract','127');
INSERT INTO `glpi_profilerights` VALUES ('203','3','infocom','23');
INSERT INTO `glpi_profilerights` VALUES ('204','3','knowbase','14359');
INSERT INTO `glpi_profilerights` VALUES ('208','3','reservation','1055');
INSERT INTO `glpi_profilerights` VALUES ('209','3','reports','1');
INSERT INTO `glpi_profilerights` VALUES ('210','3','dropdown','23');
INSERT INTO `glpi_profilerights` VALUES ('212','3','device','23');
INSERT INTO `glpi_profilerights` VALUES ('213','3','typedoc','23');
INSERT INTO `glpi_profilerights` VALUES ('214','3','link','23');
INSERT INTO `glpi_profilerights` VALUES ('215','3','config','0');
INSERT INTO `glpi_profilerights` VALUES ('217','3','rule_ticket','1047');
INSERT INTO `glpi_profilerights` VALUES ('218','3','rule_import','0');
INSERT INTO `glpi_profilerights` VALUES ('219','3','rule_ldap','0');
INSERT INTO `glpi_profilerights` VALUES ('220','3','rule_softwarecategories','0');
INSERT INTO `glpi_profilerights` VALUES ('221','3','search_config','3072');
INSERT INTO `glpi_profilerights` VALUES ('682','3','location','23');
INSERT INTO `glpi_profilerights` VALUES ('677','5','domain','0');
INSERT INTO `glpi_profilerights` VALUES ('224','3','profile','1');
INSERT INTO `glpi_profilerights` VALUES ('225','3','user','7199');
INSERT INTO `glpi_profilerights` VALUES ('227','3','group','119');
INSERT INTO `glpi_profilerights` VALUES ('228','3','entity','33');
INSERT INTO `glpi_profilerights` VALUES ('229','3','transfer','1');
INSERT INTO `glpi_profilerights` VALUES ('230','3','logs','1');
INSERT INTO `glpi_profilerights` VALUES ('231','3','reminder_public','23');
INSERT INTO `glpi_profilerights` VALUES ('232','3','rssfeed_public','23');
INSERT INTO `glpi_profilerights` VALUES ('233','3','bookmark_public','23');
INSERT INTO `glpi_profilerights` VALUES ('234','3','backup','1024');
INSERT INTO `glpi_profilerights` VALUES ('235','3','ticket','261151');
INSERT INTO `glpi_profilerights` VALUES ('239','3','followup','15383');
INSERT INTO `glpi_profilerights` VALUES ('240','3','task','13329');
INSERT INTO `glpi_profilerights` VALUES ('745','3','projecttask','1121');
INSERT INTO `glpi_profilerights` VALUES ('746','4','projecttask','1121');
INSERT INTO `glpi_profilerights` VALUES ('747','5','projecttask','0');
INSERT INTO `glpi_profilerights` VALUES ('252','3','planning','3073');
INSERT INTO `glpi_profilerights` VALUES ('714','7','taskcategory','23');
INSERT INTO `glpi_profilerights` VALUES ('707','7','netpoint','23');
INSERT INTO `glpi_profilerights` VALUES ('255','3','statistic','1');
INSERT INTO `glpi_profilerights` VALUES ('256','3','password_update','1');
INSERT INTO `glpi_profilerights` VALUES ('258','3','show_group_hardware','0');
INSERT INTO `glpi_profilerights` VALUES ('259','3','rule_dictionnary_software','0');
INSERT INTO `glpi_profilerights` VALUES ('260','3','rule_dictionnary_dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('261','3','budget','127');
INSERT INTO `glpi_profilerights` VALUES ('263','3','notification','0');
INSERT INTO `glpi_profilerights` VALUES ('264','3','rule_mailcollector','23');
INSERT INTO `glpi_profilerights` VALUES ('724','3','solutiontemplate','23');
INSERT INTO `glpi_profilerights` VALUES ('725','4','solutiontemplate','23');
INSERT INTO `glpi_profilerights` VALUES ('267','3','calendar','23');
INSERT INTO `glpi_profilerights` VALUES ('268','3','slm','23');
INSERT INTO `glpi_profilerights` VALUES ('269','3','rule_dictionnary_printer','0');
INSERT INTO `glpi_profilerights` VALUES ('273','3','problem','1151');
INSERT INTO `glpi_profilerights` VALUES ('695','2','knowbasecategory','0');
INSERT INTO `glpi_profilerights` VALUES ('689','3','itilcategory','23');
INSERT INTO `glpi_profilerights` VALUES ('277','3','tickettemplate','23');
INSERT INTO `glpi_profilerights` VALUES ('278','3','ticketrecurrent','1');
INSERT INTO `glpi_profilerights` VALUES ('279','3','ticketcost','23');
INSERT INTO `glpi_profilerights` VALUES ('667','2','changevalidation','1044');
INSERT INTO `glpi_profilerights` VALUES ('668','3','changevalidation','1044');
INSERT INTO `glpi_profilerights` VALUES ('282','3','ticketvalidation','15376');
INSERT INTO `glpi_profilerights` VALUES ('283','4','computer','255');
INSERT INTO `glpi_profilerights` VALUES ('284','4','monitor','255');
INSERT INTO `glpi_profilerights` VALUES ('285','4','software','255');
INSERT INTO `glpi_profilerights` VALUES ('286','4','networking','255');
INSERT INTO `glpi_profilerights` VALUES ('287','4','internet','159');
INSERT INTO `glpi_profilerights` VALUES ('288','4','printer','255');
INSERT INTO `glpi_profilerights` VALUES ('289','4','peripheral','255');
INSERT INTO `glpi_profilerights` VALUES ('290','4','cartridge','255');
INSERT INTO `glpi_profilerights` VALUES ('291','4','consumable','255');
INSERT INTO `glpi_profilerights` VALUES ('292','4','phone','255');
INSERT INTO `glpi_profilerights` VALUES ('294','4','contact_enterprise','255');
INSERT INTO `glpi_profilerights` VALUES ('295','4','document','255');
INSERT INTO `glpi_profilerights` VALUES ('296','4','contract','255');
INSERT INTO `glpi_profilerights` VALUES ('297','4','infocom','23');
INSERT INTO `glpi_profilerights` VALUES ('298','4','knowbase','15383');
INSERT INTO `glpi_profilerights` VALUES ('302','4','reservation','1055');
INSERT INTO `glpi_profilerights` VALUES ('303','4','reports','1');
INSERT INTO `glpi_profilerights` VALUES ('304','4','dropdown','23');
INSERT INTO `glpi_profilerights` VALUES ('306','4','device','23');
INSERT INTO `glpi_profilerights` VALUES ('307','4','typedoc','23');
INSERT INTO `glpi_profilerights` VALUES ('308','4','link','159');
INSERT INTO `glpi_profilerights` VALUES ('309','4','config','3');
INSERT INTO `glpi_profilerights` VALUES ('311','4','rule_ticket','1047');
INSERT INTO `glpi_profilerights` VALUES ('312','4','rule_import','23');
INSERT INTO `glpi_profilerights` VALUES ('313','4','rule_ldap','23');
INSERT INTO `glpi_profilerights` VALUES ('314','4','rule_softwarecategories','23');
INSERT INTO `glpi_profilerights` VALUES ('315','4','search_config','3072');
INSERT INTO `glpi_profilerights` VALUES ('681','2','location','0');
INSERT INTO `glpi_profilerights` VALUES ('676','4','domain','23');
INSERT INTO `glpi_profilerights` VALUES ('318','4','profile','23');
INSERT INTO `glpi_profilerights` VALUES ('319','4','user','7327');
INSERT INTO `glpi_profilerights` VALUES ('321','4','group','119');
INSERT INTO `glpi_profilerights` VALUES ('322','4','entity','3327');
INSERT INTO `glpi_profilerights` VALUES ('323','4','transfer','23');
INSERT INTO `glpi_profilerights` VALUES ('324','4','logs','1');
INSERT INTO `glpi_profilerights` VALUES ('325','4','reminder_public','159');
INSERT INTO `glpi_profilerights` VALUES ('326','4','rssfeed_public','159');
INSERT INTO `glpi_profilerights` VALUES ('327','4','bookmark_public','23');
INSERT INTO `glpi_profilerights` VALUES ('328','4','backup','1045');
INSERT INTO `glpi_profilerights` VALUES ('329','4','ticket','261151');
INSERT INTO `glpi_profilerights` VALUES ('333','4','followup','15383');
INSERT INTO `glpi_profilerights` VALUES ('334','4','task','13329');
INSERT INTO `glpi_profilerights` VALUES ('742','7','project','1151');
INSERT INTO `glpi_profilerights` VALUES ('743','1','projecttask','0');
INSERT INTO `glpi_profilerights` VALUES ('744','2','projecttask','1025');
INSERT INTO `glpi_profilerights` VALUES ('346','4','planning','3073');
INSERT INTO `glpi_profilerights` VALUES ('713','6','taskcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('706','6','netpoint','0');
INSERT INTO `glpi_profilerights` VALUES ('349','4','statistic','1');
INSERT INTO `glpi_profilerights` VALUES ('350','4','password_update','1');
INSERT INTO `glpi_profilerights` VALUES ('352','4','show_group_hardware','1');
INSERT INTO `glpi_profilerights` VALUES ('353','4','rule_dictionnary_software','23');
INSERT INTO `glpi_profilerights` VALUES ('354','4','rule_dictionnary_dropdown','23');
INSERT INTO `glpi_profilerights` VALUES ('355','4','budget','127');
INSERT INTO `glpi_profilerights` VALUES ('357','4','notification','23');
INSERT INTO `glpi_profilerights` VALUES ('358','4','rule_mailcollector','23');
INSERT INTO `glpi_profilerights` VALUES ('722','1','solutiontemplate','0');
INSERT INTO `glpi_profilerights` VALUES ('723','2','solutiontemplate','0');
INSERT INTO `glpi_profilerights` VALUES ('361','4','calendar','23');
INSERT INTO `glpi_profilerights` VALUES ('362','4','slm','23');
INSERT INTO `glpi_profilerights` VALUES ('363','4','rule_dictionnary_printer','23');
INSERT INTO `glpi_profilerights` VALUES ('367','4','problem','1151');
INSERT INTO `glpi_profilerights` VALUES ('694','1','knowbasecategory','0');
INSERT INTO `glpi_profilerights` VALUES ('688','2','itilcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('371','4','tickettemplate','23');
INSERT INTO `glpi_profilerights` VALUES ('372','4','ticketrecurrent','23');
INSERT INTO `glpi_profilerights` VALUES ('373','4','ticketcost','23');
INSERT INTO `glpi_profilerights` VALUES ('665','7','change','1151');
INSERT INTO `glpi_profilerights` VALUES ('666','1','changevalidation','0');
INSERT INTO `glpi_profilerights` VALUES ('376','4','ticketvalidation','15376');
INSERT INTO `glpi_profilerights` VALUES ('377','5','computer','0');
INSERT INTO `glpi_profilerights` VALUES ('378','5','monitor','0');
INSERT INTO `glpi_profilerights` VALUES ('379','5','software','0');
INSERT INTO `glpi_profilerights` VALUES ('380','5','networking','0');
INSERT INTO `glpi_profilerights` VALUES ('381','5','internet','0');
INSERT INTO `glpi_profilerights` VALUES ('382','5','printer','0');
INSERT INTO `glpi_profilerights` VALUES ('383','5','peripheral','0');
INSERT INTO `glpi_profilerights` VALUES ('384','5','cartridge','0');
INSERT INTO `glpi_profilerights` VALUES ('385','5','consumable','0');
INSERT INTO `glpi_profilerights` VALUES ('386','5','phone','0');
INSERT INTO `glpi_profilerights` VALUES ('731','3','queuednotification','0');
INSERT INTO `glpi_profilerights` VALUES ('388','5','contact_enterprise','0');
INSERT INTO `glpi_profilerights` VALUES ('389','5','document','0');
INSERT INTO `glpi_profilerights` VALUES ('390','5','contract','0');
INSERT INTO `glpi_profilerights` VALUES ('391','5','infocom','0');
INSERT INTO `glpi_profilerights` VALUES ('392','5','knowbase','10240');
INSERT INTO `glpi_profilerights` VALUES ('396','5','reservation','0');
INSERT INTO `glpi_profilerights` VALUES ('397','5','reports','0');
INSERT INTO `glpi_profilerights` VALUES ('398','5','dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('400','5','device','0');
INSERT INTO `glpi_profilerights` VALUES ('401','5','typedoc','0');
INSERT INTO `glpi_profilerights` VALUES ('402','5','link','0');
INSERT INTO `glpi_profilerights` VALUES ('403','5','config','0');
INSERT INTO `glpi_profilerights` VALUES ('405','5','rule_ticket','0');
INSERT INTO `glpi_profilerights` VALUES ('406','5','rule_import','0');
INSERT INTO `glpi_profilerights` VALUES ('407','5','rule_ldap','0');
INSERT INTO `glpi_profilerights` VALUES ('408','5','rule_softwarecategories','0');
INSERT INTO `glpi_profilerights` VALUES ('409','5','search_config','0');
INSERT INTO `glpi_profilerights` VALUES ('680','1','location','0');
INSERT INTO `glpi_profilerights` VALUES ('675','3','domain','23');
INSERT INTO `glpi_profilerights` VALUES ('412','5','profile','0');
INSERT INTO `glpi_profilerights` VALUES ('413','5','user','1025');
INSERT INTO `glpi_profilerights` VALUES ('415','5','group','0');
INSERT INTO `glpi_profilerights` VALUES ('416','5','entity','0');
INSERT INTO `glpi_profilerights` VALUES ('417','5','transfer','0');
INSERT INTO `glpi_profilerights` VALUES ('418','5','logs','0');
INSERT INTO `glpi_profilerights` VALUES ('419','5','reminder_public','0');
INSERT INTO `glpi_profilerights` VALUES ('420','5','rssfeed_public','0');
INSERT INTO `glpi_profilerights` VALUES ('421','5','bookmark_public','0');
INSERT INTO `glpi_profilerights` VALUES ('422','5','backup','0');
INSERT INTO `glpi_profilerights` VALUES ('423','5','ticket','140295');
INSERT INTO `glpi_profilerights` VALUES ('427','5','followup','12295');
INSERT INTO `glpi_profilerights` VALUES ('428','5','task','8193');
INSERT INTO `glpi_profilerights` VALUES ('739','4','project','1151');
INSERT INTO `glpi_profilerights` VALUES ('740','5','project','1151');
INSERT INTO `glpi_profilerights` VALUES ('741','6','project','1151');
INSERT INTO `glpi_profilerights` VALUES ('440','5','planning','1');
INSERT INTO `glpi_profilerights` VALUES ('712','5','taskcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('705','5','netpoint','0');
INSERT INTO `glpi_profilerights` VALUES ('443','5','statistic','1');
INSERT INTO `glpi_profilerights` VALUES ('444','5','password_update','1');
INSERT INTO `glpi_profilerights` VALUES ('446','5','show_group_hardware','0');
INSERT INTO `glpi_profilerights` VALUES ('447','5','rule_dictionnary_software','0');
INSERT INTO `glpi_profilerights` VALUES ('448','5','rule_dictionnary_dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('449','5','budget','0');
INSERT INTO `glpi_profilerights` VALUES ('451','5','notification','0');
INSERT INTO `glpi_profilerights` VALUES ('452','5','rule_mailcollector','0');
INSERT INTO `glpi_profilerights` VALUES ('720','6','state','0');
INSERT INTO `glpi_profilerights` VALUES ('721','7','state','23');
INSERT INTO `glpi_profilerights` VALUES ('455','5','calendar','0');
INSERT INTO `glpi_profilerights` VALUES ('456','5','slm','0');
INSERT INTO `glpi_profilerights` VALUES ('457','5','rule_dictionnary_printer','0');
INSERT INTO `glpi_profilerights` VALUES ('461','5','problem','1024');
INSERT INTO `glpi_profilerights` VALUES ('700','7','knowbasecategory','23');
INSERT INTO `glpi_profilerights` VALUES ('687','1','itilcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('465','5','tickettemplate','0');
INSERT INTO `glpi_profilerights` VALUES ('466','5','ticketrecurrent','0');
INSERT INTO `glpi_profilerights` VALUES ('467','5','ticketcost','23');
INSERT INTO `glpi_profilerights` VALUES ('663','5','change','1054');
INSERT INTO `glpi_profilerights` VALUES ('664','6','change','1151');
INSERT INTO `glpi_profilerights` VALUES ('470','5','ticketvalidation','3088');
INSERT INTO `glpi_profilerights` VALUES ('471','6','computer','127');
INSERT INTO `glpi_profilerights` VALUES ('472','6','monitor','127');
INSERT INTO `glpi_profilerights` VALUES ('473','6','software','127');
INSERT INTO `glpi_profilerights` VALUES ('474','6','networking','127');
INSERT INTO `glpi_profilerights` VALUES ('475','6','internet','31');
INSERT INTO `glpi_profilerights` VALUES ('476','6','printer','127');
INSERT INTO `glpi_profilerights` VALUES ('477','6','peripheral','127');
INSERT INTO `glpi_profilerights` VALUES ('478','6','cartridge','127');
INSERT INTO `glpi_profilerights` VALUES ('479','6','consumable','127');
INSERT INTO `glpi_profilerights` VALUES ('480','6','phone','127');
INSERT INTO `glpi_profilerights` VALUES ('730','2','queuednotification','0');
INSERT INTO `glpi_profilerights` VALUES ('482','6','contact_enterprise','96');
INSERT INTO `glpi_profilerights` VALUES ('483','6','document','127');
INSERT INTO `glpi_profilerights` VALUES ('484','6','contract','96');
INSERT INTO `glpi_profilerights` VALUES ('485','6','infocom','0');
INSERT INTO `glpi_profilerights` VALUES ('486','6','knowbase','14359');
INSERT INTO `glpi_profilerights` VALUES ('490','6','reservation','1055');
INSERT INTO `glpi_profilerights` VALUES ('491','6','reports','1');
INSERT INTO `glpi_profilerights` VALUES ('492','6','dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('494','6','device','0');
INSERT INTO `glpi_profilerights` VALUES ('495','6','typedoc','0');
INSERT INTO `glpi_profilerights` VALUES ('496','6','link','0');
INSERT INTO `glpi_profilerights` VALUES ('497','6','config','0');
INSERT INTO `glpi_profilerights` VALUES ('499','6','rule_ticket','0');
INSERT INTO `glpi_profilerights` VALUES ('500','6','rule_import','0');
INSERT INTO `glpi_profilerights` VALUES ('501','6','rule_ldap','0');
INSERT INTO `glpi_profilerights` VALUES ('502','6','rule_softwarecategories','0');
INSERT INTO `glpi_profilerights` VALUES ('503','6','search_config','0');
INSERT INTO `glpi_profilerights` VALUES ('674','2','domain','0');
INSERT INTO `glpi_profilerights` VALUES ('506','6','profile','0');
INSERT INTO `glpi_profilerights` VALUES ('507','6','user','1055');
INSERT INTO `glpi_profilerights` VALUES ('509','6','group','1');
INSERT INTO `glpi_profilerights` VALUES ('510','6','entity','33');
INSERT INTO `glpi_profilerights` VALUES ('511','6','transfer','1');
INSERT INTO `glpi_profilerights` VALUES ('512','6','logs','0');
INSERT INTO `glpi_profilerights` VALUES ('513','6','reminder_public','23');
INSERT INTO `glpi_profilerights` VALUES ('514','6','rssfeed_public','23');
INSERT INTO `glpi_profilerights` VALUES ('515','6','bookmark_public','0');
INSERT INTO `glpi_profilerights` VALUES ('516','6','backup','0');
INSERT INTO `glpi_profilerights` VALUES ('517','6','ticket','166919');
INSERT INTO `glpi_profilerights` VALUES ('521','6','followup','13319');
INSERT INTO `glpi_profilerights` VALUES ('522','6','task','13329');
INSERT INTO `glpi_profilerights` VALUES ('736','1','project','0');
INSERT INTO `glpi_profilerights` VALUES ('737','2','project','1025');
INSERT INTO `glpi_profilerights` VALUES ('738','3','project','1151');
INSERT INTO `glpi_profilerights` VALUES ('534','6','planning','1');
INSERT INTO `glpi_profilerights` VALUES ('711','4','taskcategory','23');
INSERT INTO `glpi_profilerights` VALUES ('704','4','netpoint','23');
INSERT INTO `glpi_profilerights` VALUES ('537','6','statistic','1');
INSERT INTO `glpi_profilerights` VALUES ('538','6','password_update','1');
INSERT INTO `glpi_profilerights` VALUES ('540','6','show_group_hardware','0');
INSERT INTO `glpi_profilerights` VALUES ('541','6','rule_dictionnary_software','0');
INSERT INTO `glpi_profilerights` VALUES ('542','6','rule_dictionnary_dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('543','6','budget','96');
INSERT INTO `glpi_profilerights` VALUES ('545','6','notification','0');
INSERT INTO `glpi_profilerights` VALUES ('546','6','rule_mailcollector','0');
INSERT INTO `glpi_profilerights` VALUES ('718','4','state','23');
INSERT INTO `glpi_profilerights` VALUES ('719','5','state','0');
INSERT INTO `glpi_profilerights` VALUES ('549','6','calendar','0');
INSERT INTO `glpi_profilerights` VALUES ('550','6','slm','1');
INSERT INTO `glpi_profilerights` VALUES ('551','6','rule_dictionnary_printer','0');
INSERT INTO `glpi_profilerights` VALUES ('555','6','problem','1121');
INSERT INTO `glpi_profilerights` VALUES ('699','6','knowbasecategory','0');
INSERT INTO `glpi_profilerights` VALUES ('693','7','itilcategory','23');
INSERT INTO `glpi_profilerights` VALUES ('686','7','location','23');
INSERT INTO `glpi_profilerights` VALUES ('559','6','tickettemplate','1');
INSERT INTO `glpi_profilerights` VALUES ('560','6','ticketrecurrent','1');
INSERT INTO `glpi_profilerights` VALUES ('561','6','ticketcost','23');
INSERT INTO `glpi_profilerights` VALUES ('661','3','change','1151');
INSERT INTO `glpi_profilerights` VALUES ('662','4','change','1151');
INSERT INTO `glpi_profilerights` VALUES ('564','6','ticketvalidation','3088');
INSERT INTO `glpi_profilerights` VALUES ('565','7','computer','127');
INSERT INTO `glpi_profilerights` VALUES ('566','7','monitor','127');
INSERT INTO `glpi_profilerights` VALUES ('567','7','software','127');
INSERT INTO `glpi_profilerights` VALUES ('568','7','networking','127');
INSERT INTO `glpi_profilerights` VALUES ('569','7','internet','31');
INSERT INTO `glpi_profilerights` VALUES ('570','7','printer','127');
INSERT INTO `glpi_profilerights` VALUES ('571','7','peripheral','127');
INSERT INTO `glpi_profilerights` VALUES ('572','7','cartridge','127');
INSERT INTO `glpi_profilerights` VALUES ('573','7','consumable','127');
INSERT INTO `glpi_profilerights` VALUES ('574','7','phone','127');
INSERT INTO `glpi_profilerights` VALUES ('729','1','queuednotification','0');
INSERT INTO `glpi_profilerights` VALUES ('576','7','contact_enterprise','96');
INSERT INTO `glpi_profilerights` VALUES ('577','7','document','127');
INSERT INTO `glpi_profilerights` VALUES ('578','7','contract','96');
INSERT INTO `glpi_profilerights` VALUES ('579','7','infocom','0');
INSERT INTO `glpi_profilerights` VALUES ('580','7','knowbase','14359');
INSERT INTO `glpi_profilerights` VALUES ('584','7','reservation','1055');
INSERT INTO `glpi_profilerights` VALUES ('585','7','reports','1');
INSERT INTO `glpi_profilerights` VALUES ('586','7','dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('588','7','device','0');
INSERT INTO `glpi_profilerights` VALUES ('589','7','typedoc','0');
INSERT INTO `glpi_profilerights` VALUES ('590','7','link','0');
INSERT INTO `glpi_profilerights` VALUES ('591','7','config','0');
INSERT INTO `glpi_profilerights` VALUES ('593','7','rule_ticket','1047');
INSERT INTO `glpi_profilerights` VALUES ('594','7','rule_import','0');
INSERT INTO `glpi_profilerights` VALUES ('595','7','rule_ldap','0');
INSERT INTO `glpi_profilerights` VALUES ('596','7','rule_softwarecategories','0');
INSERT INTO `glpi_profilerights` VALUES ('597','7','search_config','0');
INSERT INTO `glpi_profilerights` VALUES ('673','1','domain','0');
INSERT INTO `glpi_profilerights` VALUES ('600','7','profile','0');
INSERT INTO `glpi_profilerights` VALUES ('601','7','user','1055');
INSERT INTO `glpi_profilerights` VALUES ('603','7','group','1');
INSERT INTO `glpi_profilerights` VALUES ('604','7','entity','33');
INSERT INTO `glpi_profilerights` VALUES ('605','7','transfer','1');
INSERT INTO `glpi_profilerights` VALUES ('606','7','logs','1');
INSERT INTO `glpi_profilerights` VALUES ('607','7','reminder_public','23');
INSERT INTO `glpi_profilerights` VALUES ('608','7','rssfeed_public','23');
INSERT INTO `glpi_profilerights` VALUES ('609','7','bookmark_public','0');
INSERT INTO `glpi_profilerights` VALUES ('610','7','backup','0');
INSERT INTO `glpi_profilerights` VALUES ('611','7','ticket','261151');
INSERT INTO `glpi_profilerights` VALUES ('615','7','followup','15383');
INSERT INTO `glpi_profilerights` VALUES ('616','7','task','13329');
INSERT INTO `glpi_profilerights` VALUES ('735','7','queuednotification','0');
INSERT INTO `glpi_profilerights` VALUES ('628','7','planning','3073');
INSERT INTO `glpi_profilerights` VALUES ('710','3','taskcategory','23');
INSERT INTO `glpi_profilerights` VALUES ('703','3','netpoint','23');
INSERT INTO `glpi_profilerights` VALUES ('631','7','statistic','1');
INSERT INTO `glpi_profilerights` VALUES ('632','7','password_update','1');
INSERT INTO `glpi_profilerights` VALUES ('634','7','show_group_hardware','0');
INSERT INTO `glpi_profilerights` VALUES ('635','7','rule_dictionnary_software','0');
INSERT INTO `glpi_profilerights` VALUES ('636','7','rule_dictionnary_dropdown','0');
INSERT INTO `glpi_profilerights` VALUES ('637','7','budget','96');
INSERT INTO `glpi_profilerights` VALUES ('639','7','notification','0');
INSERT INTO `glpi_profilerights` VALUES ('640','7','rule_mailcollector','23');
INSERT INTO `glpi_profilerights` VALUES ('672','7','changevalidation','1044');
INSERT INTO `glpi_profilerights` VALUES ('717','3','state','23');
INSERT INTO `glpi_profilerights` VALUES ('643','7','calendar','23');
INSERT INTO `glpi_profilerights` VALUES ('644','7','slm','23');
INSERT INTO `glpi_profilerights` VALUES ('645','7','rule_dictionnary_printer','0');
INSERT INTO `glpi_profilerights` VALUES ('649','7','problem','1151');
INSERT INTO `glpi_profilerights` VALUES ('698','5','knowbasecategory','0');
INSERT INTO `glpi_profilerights` VALUES ('692','6','itilcategory','0');
INSERT INTO `glpi_profilerights` VALUES ('685','6','location','0');
INSERT INTO `glpi_profilerights` VALUES ('653','7','tickettemplate','23');
INSERT INTO `glpi_profilerights` VALUES ('654','7','ticketrecurrent','1');
INSERT INTO `glpi_profilerights` VALUES ('655','7','ticketcost','23');
INSERT INTO `glpi_profilerights` VALUES ('659','1','change','0');
INSERT INTO `glpi_profilerights` VALUES ('660','2','change','1057');
INSERT INTO `glpi_profilerights` VALUES ('658','7','ticketvalidation','15376');
INSERT INTO `glpi_profilerights` VALUES ('750','8','backup','1');
INSERT INTO `glpi_profilerights` VALUES ('751','8','bookmark_public','1');
INSERT INTO `glpi_profilerights` VALUES ('752','8','budget','33');
INSERT INTO `glpi_profilerights` VALUES ('753','8','calendar','1');
INSERT INTO `glpi_profilerights` VALUES ('754','8','cartridge','33');
INSERT INTO `glpi_profilerights` VALUES ('755','8','change','1057');
INSERT INTO `glpi_profilerights` VALUES ('756','8','changevalidation','0');
INSERT INTO `glpi_profilerights` VALUES ('757','8','computer','33');
INSERT INTO `glpi_profilerights` VALUES ('758','8','config','1');
INSERT INTO `glpi_profilerights` VALUES ('759','8','consumable','33');
INSERT INTO `glpi_profilerights` VALUES ('760','8','contact_enterprise','33');
INSERT INTO `glpi_profilerights` VALUES ('761','8','contract','33');
INSERT INTO `glpi_profilerights` VALUES ('762','8','device','1');
INSERT INTO `glpi_profilerights` VALUES ('763','8','document','33');
INSERT INTO `glpi_profilerights` VALUES ('764','8','domain','1');
INSERT INTO `glpi_profilerights` VALUES ('765','8','dropdown','1');
INSERT INTO `glpi_profilerights` VALUES ('766','8','entity','33');
INSERT INTO `glpi_profilerights` VALUES ('767','8','followup','8193');
INSERT INTO `glpi_profilerights` VALUES ('768','8','global_validation','0');
INSERT INTO `glpi_profilerights` VALUES ('769','8','group','33');
INSERT INTO `glpi_profilerights` VALUES ('770','8','infocom','1');
INSERT INTO `glpi_profilerights` VALUES ('771','8','internet','1');
INSERT INTO `glpi_profilerights` VALUES ('772','8','itilcategory','1');
INSERT INTO `glpi_profilerights` VALUES ('773','8','knowbase','10241');
INSERT INTO `glpi_profilerights` VALUES ('774','8','knowbasecategory','1');
INSERT INTO `glpi_profilerights` VALUES ('775','8','link','1');
INSERT INTO `glpi_profilerights` VALUES ('776','8','location','1');
INSERT INTO `glpi_profilerights` VALUES ('777','8','logs','1');
INSERT INTO `glpi_profilerights` VALUES ('778','8','monitor','33');
INSERT INTO `glpi_profilerights` VALUES ('779','8','netpoint','1');
INSERT INTO `glpi_profilerights` VALUES ('780','8','networking','33');
INSERT INTO `glpi_profilerights` VALUES ('781','8','notification','1');
INSERT INTO `glpi_profilerights` VALUES ('782','8','password_update','0');
INSERT INTO `glpi_profilerights` VALUES ('783','8','peripheral','33');
INSERT INTO `glpi_profilerights` VALUES ('784','8','phone','33');
INSERT INTO `glpi_profilerights` VALUES ('785','8','planning','3073');
INSERT INTO `glpi_profilerights` VALUES ('786','8','printer','33');
INSERT INTO `glpi_profilerights` VALUES ('787','8','problem','1057');
INSERT INTO `glpi_profilerights` VALUES ('788','8','profile','1');
INSERT INTO `glpi_profilerights` VALUES ('789','8','project','1057');
INSERT INTO `glpi_profilerights` VALUES ('790','8','projecttask','33');
INSERT INTO `glpi_profilerights` VALUES ('791','8','queuednotification','1');
INSERT INTO `glpi_profilerights` VALUES ('792','8','reminder_public','1');
INSERT INTO `glpi_profilerights` VALUES ('793','8','reports','1');
INSERT INTO `glpi_profilerights` VALUES ('794','8','reservation','1');
INSERT INTO `glpi_profilerights` VALUES ('795','8','rssfeed_public','1');
INSERT INTO `glpi_profilerights` VALUES ('796','8','rule_dictionnary_dropdown','1');
INSERT INTO `glpi_profilerights` VALUES ('797','8','rule_dictionnary_printer','1');
INSERT INTO `glpi_profilerights` VALUES ('798','8','rule_dictionnary_software','1');
INSERT INTO `glpi_profilerights` VALUES ('799','8','rule_import','1');
INSERT INTO `glpi_profilerights` VALUES ('800','8','rule_ldap','1');
INSERT INTO `glpi_profilerights` VALUES ('801','8','rule_mailcollector','1');
INSERT INTO `glpi_profilerights` VALUES ('802','8','rule_softwarecategories','1');
INSERT INTO `glpi_profilerights` VALUES ('803','8','rule_ticket','1');
INSERT INTO `glpi_profilerights` VALUES ('804','8','search_config','0');
INSERT INTO `glpi_profilerights` VALUES ('805','8','show_group_hardware','1');
INSERT INTO `glpi_profilerights` VALUES ('806','8','slm','1');
INSERT INTO `glpi_profilerights` VALUES ('807','8','software','33');
INSERT INTO `glpi_profilerights` VALUES ('808','8','solutiontemplate','1');
INSERT INTO `glpi_profilerights` VALUES ('809','8','state','1');
INSERT INTO `glpi_profilerights` VALUES ('810','8','statistic','1');
INSERT INTO `glpi_profilerights` VALUES ('811','8','task','8193');
INSERT INTO `glpi_profilerights` VALUES ('812','8','taskcategory','1');
INSERT INTO `glpi_profilerights` VALUES ('813','8','ticket','138241');
INSERT INTO `glpi_profilerights` VALUES ('814','8','ticketcost','1');
INSERT INTO `glpi_profilerights` VALUES ('815','8','ticketrecurrent','1');
INSERT INTO `glpi_profilerights` VALUES ('816','8','tickettemplate','1');
INSERT INTO `glpi_profilerights` VALUES ('817','8','ticketvalidation','0');
INSERT INTO `glpi_profilerights` VALUES ('818','8','transfer','1');
INSERT INTO `glpi_profilerights` VALUES ('819','8','typedoc','1');
INSERT INTO `glpi_profilerights` VALUES ('820','8','user','1');
INSERT INTO `glpi_profilerights` VALUES ('821','1','license','0');
INSERT INTO `glpi_profilerights` VALUES ('822','2','license','33');
INSERT INTO `glpi_profilerights` VALUES ('823','3','license','127');
INSERT INTO `glpi_profilerights` VALUES ('824','4','license','255');
INSERT INTO `glpi_profilerights` VALUES ('825','5','license','0');
INSERT INTO `glpi_profilerights` VALUES ('826','6','license','127');
INSERT INTO `glpi_profilerights` VALUES ('827','7','license','127');
INSERT INTO `glpi_profilerights` VALUES ('828','8','license','33');
INSERT INTO `glpi_profilerights` VALUES ('829','1','line','0');
INSERT INTO `glpi_profilerights` VALUES ('830','2','line','33');
INSERT INTO `glpi_profilerights` VALUES ('831','3','line','127');
INSERT INTO `glpi_profilerights` VALUES ('832','4','line','255');
INSERT INTO `glpi_profilerights` VALUES ('833','5','line','0');
INSERT INTO `glpi_profilerights` VALUES ('834','6','line','127');
INSERT INTO `glpi_profilerights` VALUES ('835','7','line','127');
INSERT INTO `glpi_profilerights` VALUES ('836','8','line','33');
INSERT INTO `glpi_profilerights` VALUES ('837','1','lineoperator','0');
INSERT INTO `glpi_profilerights` VALUES ('838','2','lineoperator','33');
INSERT INTO `glpi_profilerights` VALUES ('839','3','lineoperator','23');
INSERT INTO `glpi_profilerights` VALUES ('840','4','lineoperator','23');
INSERT INTO `glpi_profilerights` VALUES ('841','5','lineoperator','0');
INSERT INTO `glpi_profilerights` VALUES ('842','6','lineoperator','0');
INSERT INTO `glpi_profilerights` VALUES ('843','7','lineoperator','23');
INSERT INTO `glpi_profilerights` VALUES ('844','8','lineoperator','1');
INSERT INTO `glpi_profilerights` VALUES ('845','1','devicesimcard_pinpuk','0');
INSERT INTO `glpi_profilerights` VALUES ('846','2','devicesimcard_pinpuk','1');
INSERT INTO `glpi_profilerights` VALUES ('847','3','devicesimcard_pinpuk','3');
INSERT INTO `glpi_profilerights` VALUES ('848','4','devicesimcard_pinpuk','3');
INSERT INTO `glpi_profilerights` VALUES ('849','5','devicesimcard_pinpuk','0');
INSERT INTO `glpi_profilerights` VALUES ('850','6','devicesimcard_pinpuk','3');
INSERT INTO `glpi_profilerights` VALUES ('851','7','devicesimcard_pinpuk','3');
INSERT INTO `glpi_profilerights` VALUES ('852','8','devicesimcard_pinpuk','1');
INSERT INTO `glpi_profilerights` VALUES ('853','1','certificate','0');
INSERT INTO `glpi_profilerights` VALUES ('854','2','certificate','33');
INSERT INTO `glpi_profilerights` VALUES ('855','3','certificate','127');
INSERT INTO `glpi_profilerights` VALUES ('856','4','certificate','255');
INSERT INTO `glpi_profilerights` VALUES ('857','5','certificate','0');
INSERT INTO `glpi_profilerights` VALUES ('858','6','certificate','127');
INSERT INTO `glpi_profilerights` VALUES ('859','7','certificate','127');
INSERT INTO `glpi_profilerights` VALUES ('860','8','certificate','33');
INSERT INTO `glpi_profilerights` VALUES ('861','1','datacenter','0');
INSERT INTO `glpi_profilerights` VALUES ('862','2','datacenter','1');
INSERT INTO `glpi_profilerights` VALUES ('863','3','datacenter','31');
INSERT INTO `glpi_profilerights` VALUES ('864','4','datacenter','31');
INSERT INTO `glpi_profilerights` VALUES ('865','5','datacenter','0');
INSERT INTO `glpi_profilerights` VALUES ('866','6','datacenter','31');
INSERT INTO `glpi_profilerights` VALUES ('867','7','datacenter','31');
INSERT INTO `glpi_profilerights` VALUES ('868','8','datacenter','1');
INSERT INTO `glpi_profilerights` VALUES ('870','4','rule_asset','1047');
INSERT INTO `glpi_profilerights` VALUES ('871','1','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('872','2','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('873','3','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('874','4','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('875','5','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('876','6','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('877','7','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('878','8','personalization','3');
INSERT INTO `glpi_profilerights` VALUES ('879','1','rule_asset','0');
INSERT INTO `glpi_profilerights` VALUES ('880','2','rule_asset','0');
INSERT INTO `glpi_profilerights` VALUES ('881','3','rule_asset','0');
INSERT INTO `glpi_profilerights` VALUES ('882','5','rule_asset','0');
INSERT INTO `glpi_profilerights` VALUES ('883','6','rule_asset','0');
INSERT INTO `glpi_profilerights` VALUES ('884','7','rule_asset','0');
INSERT INTO `glpi_profilerights` VALUES ('885','8','rule_asset','0');
INSERT INTO `glpi_profilerights` VALUES ('886','1','global_validation','0');
INSERT INTO `glpi_profilerights` VALUES ('887','2','global_validation','0');
INSERT INTO `glpi_profilerights` VALUES ('888','3','global_validation','0');
INSERT INTO `glpi_profilerights` VALUES ('889','4','global_validation','0');
INSERT INTO `glpi_profilerights` VALUES ('890','5','global_validation','0');
INSERT INTO `glpi_profilerights` VALUES ('891','6','global_validation','0');
INSERT INTO `glpi_profilerights` VALUES ('892','7','global_validation','0');

### Dump table glpi_profiles

DROP TABLE IF EXISTS `glpi_profiles`;
CREATE TABLE `glpi_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'helpdesk',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `helpdesk_hardware` int(11) NOT NULL DEFAULT '0',
  `helpdesk_item_type` text COLLATE utf8_unicode_ci,
  `ticket_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `problem_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `change_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interface` (`interface`),
  KEY `is_default` (`is_default`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_profiles` VALUES ('1','Self-Service','helpdesk','1','1','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},\"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},\"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0},\"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}',NULL,NULL,'[]','0','0',NULL,NULL);
INSERT INTO `glpi_profiles` VALUES ('2','Observer','central','0','1','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]','0','0',NULL,NULL);
INSERT INTO `glpi_profiles` VALUES ('3','Admin','central','0','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]','0','0',NULL,NULL);
INSERT INTO `glpi_profiles` VALUES ('4','Super-Admin','central','0','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]','0','0',NULL,NULL);
INSERT INTO `glpi_profiles` VALUES ('5','Hotliner','central','0','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]','1','0',NULL,NULL);
INSERT INTO `glpi_profiles` VALUES ('6','Technician','central','0','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]','0','0',NULL,NULL);
INSERT INTO `glpi_profiles` VALUES ('7','Supervisor','central','0','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]','0','0',NULL,NULL);
INSERT INTO `glpi_profiles` VALUES ('8','Read-Only','central','0','0','[]','{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},
                       \"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},
                       \"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},
                       \"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},
                       \"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"6\":0},
                       \"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}',NULL,'This profile defines read-only access. It is used when objects are locked. It can also be used to give to users rights to unlock objects.','{\"1\":{\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},
                      \"7\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},
                      \"2\":{\"1\":0,\"7\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},
                      \"3\":{\"1\":0,\"7\":0,\"2\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},
                      \"4\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"5\":0,\"8\":0,\"6\":0},
                      \"5\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"8\":0,\"6\":0},
                      \"8\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},
                      \"6\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0}}','0','0','{\"1\":{\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},
                       \"9\":{\"1\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},
                       \"10\":{\"1\":0,\"9\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},
                       \"7\":{\"1\":0,\"9\":0,\"10\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},
                       \"4\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},
                       \"11\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},
                       \"12\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"5\":0,\"8\":0,\"6\":0},
                       \"5\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"8\":0,\"6\":0},
                       \"8\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"6\":0},
                       \"6\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0}}','2016-02-08 16:57:46');

### Dump table glpi_profiles_reminders

DROP TABLE IF EXISTS `glpi_profiles_reminders`;
CREATE TABLE `glpi_profiles_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_profiles_rssfeeds

DROP TABLE IF EXISTS `glpi_profiles_rssfeeds`;
CREATE TABLE `glpi_profiles_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_profiles_users

DROP TABLE IF EXISTS `glpi_profiles_users`;
CREATE TABLE `glpi_profiles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `users_id` (`users_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_profiles_users` VALUES ('2','2','4','0','1','0');
INSERT INTO `glpi_profiles_users` VALUES ('3','3','1','0','1','0');
INSERT INTO `glpi_profiles_users` VALUES ('4','4','6','0','1','0');
INSERT INTO `glpi_profiles_users` VALUES ('5','5','2','0','1','0');

### Dump table glpi_projectcosts

DROP TABLE IF EXISTS `glpi_projectcosts`;
CREATE TABLE `glpi_projectcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `projects_id` (`projects_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_projects

DROP TABLE IF EXISTS `glpi_projects`;
CREATE TABLE `glpi_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttypes_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `show_on_global_gantt` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `projecttemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttypes_id` (`projecttypes_id`),
  KEY `priority` (`priority`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `show_on_global_gantt` (`show_on_global_gantt`),
  KEY `date_creation` (`date_creation`),
  KEY `projecttemplates_id` (`projecttemplates_id`),
  KEY `is_template` (`is_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_projectstates

DROP TABLE IF EXISTS `glpi_projectstates`;
CREATE TABLE `glpi_projectstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_finished` (`is_finished`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_projectstates` VALUES ('1','New',NULL,'#06ff00','0',NULL,NULL);
INSERT INTO `glpi_projectstates` VALUES ('2','Processing',NULL,'#ffb800','0',NULL,NULL);
INSERT INTO `glpi_projectstates` VALUES ('3','Closed',NULL,'#ff0000','1',NULL,NULL);

### Dump table glpi_projecttasks

DROP TABLE IF EXISTS `glpi_projecttasks`;
CREATE TABLE `glpi_projecttasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `projecttasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projecttasks_id` (`projecttasks_id`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttasktypes_id` (`projecttasktypes_id`),
  KEY `projecttasktemplates_id` (`projecttasktemplates_id`),
  KEY `is_template` (`is_template`),
  KEY `is_milestone` (`is_milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_projecttasktemplates

DROP TABLE IF EXISTS `glpi_projecttasktemplates`;
CREATE TABLE `glpi_projecttasktemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projecttasks_id` (`projecttasks_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttasktypes_id` (`projecttasktypes_id`),
  KEY `is_milestone` (`is_milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_projecttasks_tickets

DROP TABLE IF EXISTS `glpi_projecttasks_tickets`;
CREATE TABLE `glpi_projecttasks_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`projecttasks_id`),
  KEY `projects_id` (`projecttasks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_projecttaskteams

DROP TABLE IF EXISTS `glpi_projecttaskteams`;
CREATE TABLE `glpi_projecttaskteams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projecttasks_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_projecttasktypes

DROP TABLE IF EXISTS `glpi_projecttasktypes`;
CREATE TABLE `glpi_projecttasktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_projectteams

DROP TABLE IF EXISTS `glpi_projectteams`;
CREATE TABLE `glpi_projectteams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_projecttypes

DROP TABLE IF EXISTS `glpi_projecttypes`;
CREATE TABLE `glpi_projecttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_queuednotifications

DROP TABLE IF EXISTS `glpi_queuednotifications`;
CREATE TABLE `glpi_queuednotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `sent_try` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `sender` text COLLATE utf8_unicode_ci,
  `sendername` text COLLATE utf8_unicode_ci,
  `recipient` text COLLATE utf8_unicode_ci,
  `recipientname` text COLLATE utf8_unicode_ci,
  `replyto` text COLLATE utf8_unicode_ci,
  `replytoname` text COLLATE utf8_unicode_ci,
  `headers` text COLLATE utf8_unicode_ci,
  `body_html` longtext COLLATE utf8_unicode_ci,
  `body_text` longtext COLLATE utf8_unicode_ci,
  `messageid` text COLLATE utf8_unicode_ci,
  `documents` text COLLATE utf8_unicode_ci,
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`,`notificationtemplates_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `entities_id` (`entities_id`),
  KEY `sent_try` (`sent_try`),
  KEY `create_time` (`create_time`),
  KEY `send_time` (`send_time`),
  KEY `sent_time` (`sent_time`),
  KEY `mode` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_registeredids

DROP TABLE IF EXISTS `glpi_registeredids`;
CREATE TABLE `glpi_registeredids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USB, PCI ...',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `item` (`items_id`,`itemtype`),
  KEY `device_type` (`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_reminders

DROP TABLE IF EXISTS `glpi_reminders`;
CREATE TABLE `glpi_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_planned` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `begin_view_date` datetime DEFAULT NULL,
  `end_view_date` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `users_id` (`users_id`),
  KEY `is_planned` (`is_planned`),
  KEY `state` (`state`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_reminders_users

DROP TABLE IF EXISTS `glpi_reminders_users`;
CREATE TABLE `glpi_reminders_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_requesttypes

DROP TABLE IF EXISTS `glpi_requesttypes`;
CREATE TABLE `glpi_requesttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_followup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mail_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mailfollowup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` TINYINT(1) NOT NULL DEFAULT '1',
  `is_ticketheader` TINYINT(1) NOT NULL DEFAULT '1',
  `is_itilfollowup` TINYINT(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_helpdesk_default` (`is_helpdesk_default`),
  KEY `is_followup_default` (`is_followup_default`),
  KEY `is_mail_default` (`is_mail_default`),
  KEY `is_mailfollowup_default` (`is_mailfollowup_default`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_active` (`is_active`),
  KEY `is_ticketheader` (`is_ticketheader`),
  KEY `is_itilfollowup` (`is_itilfollowup`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_requesttypes` VALUES ('1','Helpdesk','1','1','0','0','1','1','1',NULL,NULL,NULL);
INSERT INTO `glpi_requesttypes` VALUES ('2','E-Mail','0','0','1','1','1','1','1',NULL,NULL,NULL);
INSERT INTO `glpi_requesttypes` VALUES ('3','Phone','0','0','0','0','1','1','1',NULL,NULL,NULL);
INSERT INTO `glpi_requesttypes` VALUES ('4','Direct','0','0','0','0','1','1','1',NULL,NULL,NULL);
INSERT INTO `glpi_requesttypes` VALUES ('5','Written','0','0','0','0','1','1','1',NULL,NULL,NULL);
INSERT INTO `glpi_requesttypes` VALUES ('6','Other','0','0','0','0','1','1','1',NULL,NULL,NULL);

### Dump table glpi_reservationitems

DROP TABLE IF EXISTS `glpi_reservationitems`;
CREATE TABLE `glpi_reservationitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_reservations

DROP TABLE IF EXISTS `glpi_reservations`;
CREATE TABLE `glpi_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservationitems_id` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `group` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `reservationitems_id` (`reservationitems_id`),
  KEY `users_id` (`users_id`),
  KEY `resagroup` (`reservationitems_id`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rssfeeds

DROP TABLE IF EXISTS `glpi_rssfeeds`;
CREATE TABLE `glpi_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `refresh_rate` int(11) NOT NULL DEFAULT '86400',
  `max_items` int(11) NOT NULL DEFAULT '20',
  `have_error` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `users_id` (`users_id`),
  KEY `date_mod` (`date_mod`),
  KEY `have_error` (`have_error`),
  KEY `is_active` (`is_active`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rssfeeds_users

DROP TABLE IF EXISTS `glpi_rssfeeds_users`;
CREATE TABLE `glpi_rssfeeds_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ruleactions

DROP TABLE IF EXISTS `glpi_ruleactions`;
CREATE TABLE `glpi_ruleactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `field_value` (`field`(50),`value`(50))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_ruleactions` VALUES ('6','6','fromitem','locations_id','1');
INSERT INTO `glpi_ruleactions` VALUES ('2','2','assign','entities_id','0');
INSERT INTO `glpi_ruleactions` VALUES ('3','3','assign','entities_id','0');
INSERT INTO `glpi_ruleactions` VALUES ('4','4','assign','_refuse_email_no_response','1');
INSERT INTO `glpi_ruleactions` VALUES ('5','5','assign','_refuse_email_no_response','1');
INSERT INTO `glpi_ruleactions` VALUES ('7','7','fromuser','locations_id','1');
INSERT INTO `glpi_ruleactions` VALUES ('8','8','assign','_import_category','1');
INSERT INTO `glpi_ruleactions` VALUES ('9','9','regex_result','_affect_user_by_regex','#0');
INSERT INTO `glpi_ruleactions` VALUES ('10','10','regex_result','_affect_user_by_regex','#0');
INSERT INTO `glpi_ruleactions` VALUES ('11','11','regex_result','_affect_user_by_regex','#0');

### Dump table glpi_rulecriterias

DROP TABLE IF EXISTS `glpi_rulecriterias`;
CREATE TABLE `glpi_rulecriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` TEXT COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_rulecriterias` VALUES ('9','6','locations_id','9','1');
INSERT INTO `glpi_rulecriterias` VALUES ('2','2','uid','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('3','2','samaccountname','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('4','2','MAIL_EMAIL','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('5','3','subject','6','/.*/');
INSERT INTO `glpi_rulecriterias` VALUES ('6','4','x-auto-response-suppress','6','/\\S+/');
INSERT INTO `glpi_rulecriterias` VALUES ('7','5','auto-submitted','6','/^(?!.*no).+$/i');
INSERT INTO `glpi_rulecriterias` VALUES ('10','6','items_locations','8','1');
INSERT INTO `glpi_rulecriterias` VALUES ('11','7','locations_id','9','1');
INSERT INTO `glpi_rulecriterias` VALUES ('12','7','users_locations','8','1');
INSERT INTO `glpi_rulecriterias` VALUES ('13','8','name','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('14','9','_itemtype','0','Computer');
INSERT INTO `glpi_rulecriterias` VALUES ('15','9','_auto','0','1');
INSERT INTO `glpi_rulecriterias` VALUES ('16','9','contact','6','/(.*)@/');
INSERT INTO `glpi_rulecriterias` VALUES ('17','10','_itemtype','0','Computer');
INSERT INTO `glpi_rulecriterias` VALUES ('18','10','_auto','0','1');
INSERT INTO `glpi_rulecriterias` VALUES ('19','10','contact','6','/(.*),/');
INSERT INTO `glpi_rulecriterias` VALUES ('20','11','_itemtype','0','Computer');
INSERT INTO `glpi_rulecriterias` VALUES ('21','11','_auto','0','1');
INSERT INTO `glpi_rulecriterias` VALUES ('22','11','contact','6','/(.*)/');

### Dump table glpi_rulerightparameters

DROP TABLE IF EXISTS `glpi_rulerightparameters`;
CREATE TABLE `glpi_rulerightparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_rulerightparameters` VALUES ('1','(LDAP)Organization','o','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('2','(LDAP)Common Name','cn','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('3','(LDAP)Department Number','departmentnumber','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('4','(LDAP)Email','mail','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('5','Object Class','objectclass','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('6','(LDAP)User ID','uid','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('7','(LDAP)Telephone Number','phone','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('8','(LDAP)Employee Number','employeenumber','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('9','(LDAP)Manager','manager','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('10','(LDAP)DistinguishedName','dn','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('12','(AD)User ID','samaccountname','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('13','(LDAP) Title','title','',NULL,NULL);
INSERT INTO `glpi_rulerightparameters` VALUES ('14','(LDAP) MemberOf','memberof','',NULL,NULL);

### Dump table glpi_rules

DROP TABLE IF EXISTS `glpi_rules`;
CREATE TABLE `glpi_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `sub_type` (`sub_type`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `condition` (`condition`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_rules` VALUES ('2','0','RuleRight','1','Root','','OR','1',NULL,NULL,'0','500717c8-2bd6e957-53a12b5fd35745.02608131','0',NULL);
INSERT INTO `glpi_rules` VALUES ('3','0','RuleMailCollector','3','Root','','OR','1',NULL,NULL,'0','500717c8-2bd6e957-53a12b5fd36404.54713349','0',NULL);
INSERT INTO `glpi_rules` VALUES ('4','0','RuleMailCollector','1','X-Auto-Response-Suppress','Exclude Auto-Reply emails using X-Auto-Response-Suppress header','AND','0',NULL,'2011-01-18 11:40:42','1','500717c8-2bd6e957-53a12b5fd36d97.94503423','0',NULL);
INSERT INTO `glpi_rules` VALUES ('5','0','RuleMailCollector','2','Auto-Reply Auto-Submitted','Exclude Auto-Reply emails using Auto-Submitted header','OR','1',NULL,'2011-01-18 11:40:42','1','500717c8-2bd6e957-53a12b5fd376c2.87642651','0',NULL);
INSERT INTO `glpi_rules` VALUES ('6','0','RuleTicket','1','Ticket location from item','','AND','0','Automatically generated by GLPI 0.84',NULL,'1','500717c8-2bd6e957-53a12b5fd37f94.10365341','1',NULL);
INSERT INTO `glpi_rules` VALUES ('7','0','RuleTicket','2','Ticket location from user','','AND','0','Automatically generated by GLPI 0.84',NULL,'1','500717c8-2bd6e957-53a12b5fd38869.86002585','1',NULL);
INSERT INTO `glpi_rules` VALUES ('8','0','RuleSoftwareCategory','1','Import category from inventory tool','','AND','0','Automatically generated by GLPI 9.2',NULL,'1','500717c8-2bd6e957-53a12b5fd38869.86003425','1',NULL);
INSERT INTO `glpi_rules` VALUES ('9','0','RuleAsset','1','Domain user assignation','','AND','1','Automatically generated by GLPI 9.3',NULL,'1','fbeb1115-7a37b143-5a3a6fc1afdc17.92779763','3',NULL);
INSERT INTO `glpi_rules` VALUES ('10','0','RuleAsset','2','Multiple users: assign to the first','','AND','1','Automatically generated by GLPI 9.3',NULL,'1','fbeb1115-7a37b143-5a3a6fc1b03762.88595154','3',NULL);
INSERT INTO `glpi_rules` VALUES ('11','0','RuleAsset','3','One user assignation','','AND','1','Automatically generated by GLPI 9.3',NULL,'1','fbeb1115-7a37b143-5a3a6fc1b073e1.16257440','3',NULL);

### Dump table glpi_slalevelactions

DROP TABLE IF EXISTS `glpi_slalevelactions`;
CREATE TABLE `glpi_slalevelactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_slalevelcriterias

DROP TABLE IF EXISTS `glpi_slalevelcriterias`;
CREATE TABLE `glpi_slalevelcriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_slalevels

DROP TABLE IF EXISTS `glpi_slalevels`;
CREATE TABLE `glpi_slalevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `slas_id` (`slas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_slalevels_tickets

DROP TABLE IF EXISTS `glpi_slalevels_tickets`;
CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `slalevels_id` (`slalevels_id`),
  UNIQUE KEY `unicity` (`tickets_id`,`slalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_olalevelactions

DROP TABLE IF EXISTS `glpi_olalevelactions`;
CREATE TABLE `glpi_olalevelactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `olalevels_id` (`olalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_olalevelcriterias

DROP TABLE IF EXISTS `glpi_olalevelcriterias`;
CREATE TABLE `glpi_olalevelcriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `olalevels_id` (`olalevels_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_olalevels

DROP TABLE IF EXISTS `glpi_olalevels`;
CREATE TABLE `glpi_olalevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `olas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `olas_id` (`olas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_olalevels_tickets

DROP TABLE IF EXISTS `glpi_olalevels_tickets`;
CREATE TABLE `glpi_olalevels_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `olalevels_id` (`olalevels_id`),
  UNIQUE KEY `unicity` (`tickets_id`,`olalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_slms

DROP TABLE IF EXISTS `glpi_slms`;
CREATE TABLE `glpi_slms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `calendars_id` (`calendars_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_slas

DROP TABLE IF EXISTS `glpi_slas`;
CREATE TABLE `glpi_slas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `calendars_id` (`calendars_id`),
  KEY `slms_id` (`slms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_olas

DROP TABLE IF EXISTS `glpi_olas`;
CREATE TABLE `glpi_olas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `calendars_id` (`calendars_id`),
  KEY `slms_id` (`slms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_softwarecategories

DROP TABLE IF EXISTS `glpi_softwarecategories`;
CREATE TABLE `glpi_softwarecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `softwarecategories_id` (`softwarecategories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_softwarecategories` VALUES ('1','FUSION',NULL,'0','FUSION','1',NULL,NULL);

### Dump table glpi_softwarelicenses

DROP TABLE IF EXISTS `glpi_softwarelicenses`;
CREATE TABLE `glpi_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id_use` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `expire` (`expire`),
  KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  KEY `entities_id` (`entities_id`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  KEY `softwareversions_id_use` (`softwareversions_id_use`),
  KEY `date_mod` (`date_mod`),
  KEY `softwares_id_expire` (`softwares_id`,`expire`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `users_id` (`users_id`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_creation` (`date_creation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_softwarelicensetypes

DROP TABLE IF EXISTS `glpi_softwarelicensetypes`;
CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_softwarelicensetypes` VALUES ('1', 'OEM', '', NULL, NULL, '0', '0', NULL, NULL, '0', '1', 'OEM');

### Dump table glpi_softwares

DROP TABLE IF EXISTS `glpi_softwares`;
CREATE TABLE `glpi_softwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_update` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_update` (`is_update`),
  KEY `softwarecategories_id` (`softwarecategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `softwares_id` (`softwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_softwareversions

DROP TABLE IF EXISTS `glpi_softwareversions`;
CREATE TABLE `glpi_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `softwares_id` (`softwares_id`),
  KEY `states_id` (`states_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_solutiontemplates

DROP TABLE IF EXISTS `glpi_solutiontemplates`;
CREATE TABLE `glpi_solutiontemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_solutiontypes

DROP TABLE IF EXISTS `glpi_solutiontypes`;
CREATE TABLE `glpi_solutiontypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_itilsolutions
DROP TABLE IF EXISTS `glpi_itilsolutions`;
CREATE TABLE `glpi_itilsolutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solutiontype_name` varchar(255) NULL DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_approval` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) NULL DEFAULT NULL,
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_approval` int(11) NOT NULL DEFAULT '0',
  `user_name_approval` varchar(255) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `itilfollowups_id` int(11) DEFAULT NULL  COMMENT 'Followup reference on reject or approve a solution',
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `item_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_approval` (`users_id_approval`),
  KEY `status` (`status`),
  KEY `itilfollowups_id` (`itilfollowups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ssovariables

DROP TABLE IF EXISTS `glpi_ssovariables`;
CREATE TABLE `glpi_ssovariables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_ssovariables` VALUES ('1','HTTP_AUTH_USER','',NULL,NULL);
INSERT INTO `glpi_ssovariables` VALUES ('2','REMOTE_USER','',NULL,NULL);
INSERT INTO `glpi_ssovariables` VALUES ('3','PHP_AUTH_USER','',NULL,NULL);
INSERT INTO `glpi_ssovariables` VALUES ('4','USERNAME','',NULL,NULL);
INSERT INTO `glpi_ssovariables` VALUES ('5','REDIRECT_REMOTE_USER','',NULL,NULL);
INSERT INTO `glpi_ssovariables` VALUES ('6','HTTP_REMOTE_USER','',NULL,NULL);

### Dump table glpi_states

DROP TABLE IF EXISTS `glpi_states`;
CREATE TABLE `glpi_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_visible_computer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_monitor` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_networkequipment` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_peripheral` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_phone` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_printer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwareversion` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwarelicense` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_line` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_certificate` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_rack` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_enclosure` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_pdu` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  UNIQUE KEY `unicity` (`states_id`,`name`),
  KEY `is_visible_computer` (`is_visible_computer`),
  KEY `is_visible_monitor` (`is_visible_monitor`),
  KEY `is_visible_networkequipment` (`is_visible_networkequipment`),
  KEY `is_visible_peripheral` (`is_visible_peripheral`),
  KEY `is_visible_phone` (`is_visible_phone`),
  KEY `is_visible_printer` (`is_visible_printer`),
  KEY `is_visible_softwareversion` (`is_visible_softwareversion`),
  KEY `is_visible_softwarelicense` (`is_visible_softwarelicense`),
  KEY `is_visible_line` (`is_visible_line`),
  KEY `is_visible_certificate` (`is_visible_certificate`),
  KEY `is_visible_rack` (`is_visible_rack`),
  KEY `is_visible_enclosure` (`is_visible_enclosure`),
  KEY `is_visible_pdu` (`is_visible_pdu`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_suppliers

DROP TABLE IF EXISTS `glpi_suppliers`;
CREATE TABLE `glpi_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `suppliertypes_id` (`suppliertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_suppliers_tickets

DROP TABLE IF EXISTS `glpi_suppliers_tickets`;
CREATE TABLE `glpi_suppliers_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_suppliertypes

DROP TABLE IF EXISTS `glpi_suppliertypes`;
CREATE TABLE `glpi_suppliertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_taskcategories

DROP TABLE IF EXISTS `glpi_taskcategories`;
CREATE TABLE `glpi_taskcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tasktemplates

DROP TABLE IF EXISTS `glpi_tasktemplates`;
CREATE TABLE `glpi_tasktemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_private` (`is_private`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ticketcosts

DROP TABLE IF EXISTS `glpi_ticketcosts`;
CREATE TABLE `glpi_ticketcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `tickets_id` (`tickets_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ticketrecurrents

DROP TABLE IF EXISTS `glpi_ticketrecurrents`;
CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `periodicity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT '0',
  `next_creation_date` datetime DEFAULT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `next_creation_date` (`next_creation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickets

DROP TABLE IF EXISTS `glpi_tickets`;
CREATE TABLE `glpi_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `slas_id_ttr` int(11) NOT NULL DEFAULT '0',
  `slas_id_tto` int(11) NOT NULL DEFAULT '0',
  `slalevels_id_ttr` int(11) NOT NULL DEFAULT '0',
  `time_to_resolve` datetime DEFAULT NULL,
  `time_to_own` datetime DEFAULT NULL,
  `begin_waiting_date` datetime DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `ola_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `olas_id_tto` int(11) NOT NULL DEFAULT '0',
  `olas_id_ttr` int(11) NOT NULL DEFAULT '0',
  `olalevels_id_ttr` int(11) NOT NULL DEFAULT '0',
  `ola_ttr_begin_date` datetime DEFAULT NULL,
  `internal_time_to_resolve` datetime DEFAULT NULL,
  `internal_time_to_own` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `request_type` (`requesttypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `global_validation` (`global_validation`),
  KEY `slas_id_tto` (`slas_id_tto`),
  KEY `slas_id_ttr` (`slas_id_ttr`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `time_to_own` (`time_to_own`),
  KEY `olas_id_tto` (`olas_id_tto`),
  KEY `olas_id_ttr` (`olas_id_ttr`),
  KEY `slalevels_id_ttr` (`slalevels_id_ttr`),
  KEY `internal_time_to_resolve` (`internal_time_to_resolve`),
  KEY `internal_time_to_own` (`internal_time_to_own`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `type` (`type`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `name` (`name`),
  KEY `locations_id` (`locations_id`),
  KEY `date_creation` (`date_creation`),
  KEY `ola_waiting_duration` (`ola_waiting_duration`),
  KEY `olalevels_id_ttr` (`olalevels_id_ttr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickets_tickets

DROP TABLE IF EXISTS `glpi_tickets_tickets`;
CREATE TABLE `glpi_tickets_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id_1` int(11) NOT NULL DEFAULT '0',
  `tickets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id_1`,`tickets_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickets_users

DROP TABLE IF EXISTS `glpi_tickets_users`;
CREATE TABLE `glpi_tickets_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ticketsatisfactions

DROP TABLE IF EXISTS `glpi_ticketsatisfactions`;
CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `date_begin` datetime DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettasks

DROP TABLE IF EXISTS `glpi_tickettasks`;
CREATE TABLE `glpi_tickettasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` INT(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `tickets_id` (`tickets_id`),
  KEY `is_private` (`is_private`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `state` (`state`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `tasktemplates_id` (`tasktemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettemplatehiddenfields

DROP TABLE IF EXISTS `glpi_tickettemplatehiddenfields`;
CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettemplatemandatoryfields

DROP TABLE IF EXISTS `glpi_tickettemplatemandatoryfields`;
CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_tickettemplatemandatoryfields` VALUES ('1','1','21');

### Dump table glpi_tickettemplatepredefinedfields

DROP TABLE IF EXISTS `glpi_tickettemplatepredefinedfields`;
CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `tickettemplates_id_id_num` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettemplates

DROP TABLE IF EXISTS `glpi_tickettemplates`;
CREATE TABLE `glpi_tickettemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_tickettemplates` VALUES ('1','Default','0','1',NULL);

### Dump table glpi_ticketvalidations

DROP TABLE IF EXISTS `glpi_ticketvalidations`;
CREATE TABLE `glpi_ticketvalidations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `tickets_id` (`tickets_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_transfers

DROP TABLE IF EXISTS `glpi_transfers`;
CREATE TABLE `glpi_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT '0',
  `keep_networklink` int(11) NOT NULL DEFAULT '0',
  `keep_reservation` int(11) NOT NULL DEFAULT '0',
  `keep_history` int(11) NOT NULL DEFAULT '0',
  `keep_device` int(11) NOT NULL DEFAULT '0',
  `keep_infocom` int(11) NOT NULL DEFAULT '0',
  `keep_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `clean_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `keep_dc_phone` int(11) NOT NULL DEFAULT '0',
  `clean_dc_phone` int(11) NOT NULL DEFAULT '0',
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `keep_dc_printer` int(11) NOT NULL DEFAULT '0',
  `clean_dc_printer` int(11) NOT NULL DEFAULT '0',
  `keep_supplier` int(11) NOT NULL DEFAULT '0',
  `clean_supplier` int(11) NOT NULL DEFAULT '0',
  `keep_contact` int(11) NOT NULL DEFAULT '0',
  `clean_contact` int(11) NOT NULL DEFAULT '0',
  `keep_contract` int(11) NOT NULL DEFAULT '0',
  `clean_contract` int(11) NOT NULL DEFAULT '0',
  `keep_software` int(11) NOT NULL DEFAULT '0',
  `clean_software` int(11) NOT NULL DEFAULT '0',
  `keep_document` int(11) NOT NULL DEFAULT '0',
  `clean_document` int(11) NOT NULL DEFAULT '0',
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `keep_cartridge` int(11) NOT NULL DEFAULT '0',
  `keep_consumable` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `keep_disk` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_transfers` VALUES ('1','complete','2','2','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',NULL,NULL,'1');

### Dump table glpi_usercategories

DROP TABLE IF EXISTS `glpi_usercategories`;
CREATE TABLE `glpi_usercategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_useremails

DROP TABLE IF EXISTS `glpi_useremails`;
CREATE TABLE `glpi_useremails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`email`),
  KEY `email` (`email`),
  KEY `is_default` (`is_default`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_users

DROP TABLE IF EXISTS `glpi_users`;
CREATE TABLE `glpi_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT '0',
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `auths_id` int(11) NOT NULL DEFAULT '0',
  `authtype` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_sync` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `usercategories_id` int(11) NOT NULL DEFAULT '0',
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(1) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(1) DEFAULT NULL,
  `show_jobs_at_login` tinyint(1) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `followup_private` tinyint(1) DEFAULT NULL,
  `task_private` tinyint(1) DEFAULT NULL,
  `default_requesttypes_id` int(11) DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_forget_token_date` datetime DEFAULT NULL,
  `user_dn` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(1) DEFAULT NULL,
  `refresh_ticket_list` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(1) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_token_date` datetime DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token_date` datetime DEFAULT NULL,
  `cookie_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cookie_token_date` datetime DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(1) DEFAULT NULL,
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_options` text COLLATE utf8_unicode_ci,
  `is_deleted_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `pdffont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `keep_devices_when_purging_item` tinyint(1) DEFAULT NULL,
  `privatebookmarkorder` longtext COLLATE utf8_unicode_ci,
  `backcreated` tinyint(1) DEFAULT NULL,
  `task_state` int(11) DEFAULT NULL,
  `layout` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `palette` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default_requester` tinyint(1) DEFAULT NULL,
  `lock_autolock_mode` tinyint(1) DEFAULT NULL,
  `lock_directunlock_notification` tinyint(1) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `highcontrast_css` tinyint(1) DEFAULT 0,
  `plannings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sync_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `users_id_supervisor` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicityloginauth` (`name`, `authtype`, `auths_id`),
  KEY `firstname` (`firstname`),
  KEY `realname` (`realname`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `locations_id` (`locations_id`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `usercategories_id` (`usercategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `authitem` (`authtype`,`auths_id`),
  KEY `is_deleted_ldap` (`is_deleted_ldap`),
  KEY `date_creation` (`date_creation`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `sync_field` (`sync_field`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id_supervisor` (`users_id_supervisor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_users` (`id`, `name`, `password`, `list_limit`, `authtype`, `last_login`, `date_mod`)
   VALUES ('2','glpi','$2y$10$rXXzbc2ShaiCldwkw4AZL.n.9QSH7c0c9XJAyyjrbL9BwmWditAYm','20','1','2014-06-18 08:02:24','2014-06-18 08:02:24');
INSERT INTO `glpi_users` (`id`, `name`, `password`, `list_limit`, `authtype`)
   VALUES ('3','post-only','$2y$10$dTMar1F3ef5X/H1IjX9gYOjQWBR1K4bERGf4/oTPxFtJE/c3vXILm','20','1');
INSERT INTO `glpi_users` (`id`, `name`, `password`, `list_limit`, `authtype`)
   VALUES ('4','tech','$2y$10$.xEgErizkp6Az0z.DHyoeOoenuh0RcsX4JapBk2JMD6VI17KtB1lO','20','1');
INSERT INTO `glpi_users` (`id`, `name`, `password`, `list_limit`, `authtype`)
   VALUES ('5','normal','$2y$10$Z6doq4zVHkSPZFbPeXTCluN1Q/r0ryZ3ZsSJncJqkN3.8cRiN0NV.','20','1');

### Dump table glpi_usertitles

DROP TABLE IF EXISTS `glpi_usertitles`;
CREATE TABLE `glpi_usertitles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_virtualmachinestates

DROP TABLE IF EXISTS `glpi_virtualmachinestates`;
CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_virtualmachinesystems

DROP TABLE IF EXISTS `glpi_virtualmachinesystems`;
CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_virtualmachinetypes

DROP TABLE IF EXISTS `glpi_virtualmachinetypes`;
CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_vlans

DROP TABLE IF EXISTS `glpi_vlans`;
CREATE TABLE `glpi_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `tag` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `tag` (`tag`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_wifinetworks

DROP TABLE IF EXISTS `glpi_wifinetworks`;
CREATE TABLE `glpi_wifinetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, access_point',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `essid` (`essid`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_knowbaseitems_items

DROP TABLE IF EXISTS `glpi_knowbaseitems_items`;
CREATE TABLE `glpi_knowbaseitems_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`knowbaseitems_id`),
  KEY `itemtype` (`itemtype`),
  KEY `item_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_knowbaseitems_revisions

DROP TABLE IF EXISTS `glpi_knowbaseitems_revisions`;
CREATE TABLE `glpi_knowbaseitems_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`knowbaseitems_id`, `revision`, `language`),
  KEY `revision` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_knowbaseitems_comments

DROP TABLE IF EXISTS `glpi_knowbaseitems_comments`;
CREATE TABLE `glpi_knowbaseitems_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicebatterymodels

DROP TABLE IF EXISTS `glpi_devicebatterymodels`;
CREATE TABLE `glpi_devicebatterymodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicebatteries

DROP TABLE IF EXISTS `glpi_devicebatteries`;
CREATE TABLE `glpi_devicebatteries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `voltage` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `devicebatterytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicebatterymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicebatterymodels_id` (`devicebatterymodels_id`),
  KEY `devicebatterytypes_id` (`devicebatterytypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_items_devicebatteries

DROP TABLE IF EXISTS `glpi_items_devicebatteries`;
CREATE TABLE `glpi_items_devicebatteries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicebatteries_id` int(11) NOT NULL DEFAULT '0',
  `manufacturing_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicebatteries_id` (`devicebatteries_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_devicebatterytypes`;
CREATE TABLE `glpi_devicebatterytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicefirmwaremodels

DROP TABLE IF EXISTS `glpi_devicefirmwaremodels`;
CREATE TABLE `glpi_devicefirmwaremodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_devicefirmwares

DROP TABLE IF EXISTS `glpi_devicefirmwares`;
CREATE TABLE `glpi_devicefirmwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `devicefirmwaretypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicefirmwaremodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicefirmwaremodels_id` (`devicefirmwaremodels_id`),
  KEY `devicefirmwaretypes_id` (`devicefirmwaretypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

### Dump table glpi_items_devicefirmwares

DROP TABLE IF EXISTS `glpi_items_devicefirmwares`;
CREATE TABLE `glpi_items_devicefirmwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicefirmwares_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicefirmwares_id` (`devicefirmwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_devicefirmwaretypes`;
CREATE TABLE `glpi_devicefirmwaretypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_devicefirmwaretypes` VALUES ('1','BIOS',NULL,NULL,NULL);
INSERT INTO `glpi_devicefirmwaretypes` VALUES ('2','UEFI',NULL,NULL,NULL);
INSERT INTO `glpi_devicefirmwaretypes` VALUES ('3','Firmware',NULL,NULL,NULL);

-- Datacenters

DROP TABLE IF EXISTS `glpi_datacenters`;
CREATE TABLE `glpi_datacenters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_dcrooms`;
CREATE TABLE `glpi_dcrooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `vis_cols` int(11) DEFAULT NULL,
  `vis_rows` int(11) DEFAULT NULL,
  `blueprint` text COLLATE utf8_unicode_ci,
  `datacenters_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `datacenters_id` (`datacenters_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_rackmodels`;
CREATE TABLE `glpi_rackmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_racktypes`;
CREATE TABLE `glpi_racktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_racks`;
CREATE TABLE `glpi_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rackmodels_id` int(11) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `racktypes_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `number_units` int(11) DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `dcrooms_id` int(11) NOT NULL DEFAULT '0',
  `room_orientation` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50),
  `bgcolor` varchar(7) DEFAULT NULL,
  `max_power` int(11) NOT NULL DEFAULT '0',
  `mesured_power` int(11) NOT NULL DEFAULT '0',
  `max_weight` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `rackmodels_id` (`rackmodels_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `racktypes_id` (`racktypes_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `dcrooms_id` (`dcrooms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_items_racks`;
CREATE TABLE `glpi_items_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `racks_id` int(11) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `orientation` tinyint(1),
  `bgcolor` varchar(7) DEFAULT NULL,
  `hpos` tinyint(1) NOT NULL DEFAULT '0',
  `is_reserved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`, `is_reserved`),
  KEY `relation` (`racks_id`,`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_enclosuremodels`;
CREATE TABLE `glpi_enclosuremodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_enclosures`;
CREATE TABLE `glpi_enclosures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enclosuremodels_id` int(11) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `orientation` tinyint(1),
  `power_supplies` tinyint(1) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `enclosuremodels_id` (`enclosuremodels_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_items_enclosures`;
CREATE TABLE `glpi_items_enclosures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enclosures_id` int(11) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`),
  KEY `relation` (`enclosures_id`,`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_pdumodels`;
CREATE TABLE `glpi_pdumodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `max_power` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `is_rackable` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_rackable` (`is_rackable`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_pdutypes`;
CREATE TABLE `glpi_pdutypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `glpi_pdus`;
CREATE TABLE `glpi_pdus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdumodels_id` int(11) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `pdutypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `pdumodels_id` (`pdumodels_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `pdutypes_id` (`pdutypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_plugs`;
CREATE TABLE `glpi_plugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_pdus_plugs`;
CREATE TABLE `glpi_pdus_plugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugs_id` int(11) NOT NULL DEFAULT '0',
  `pdus_id` int(11) NOT NULL DEFAULT '0',
  `number_plugs` int(11) DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugs_id` (`plugs_id`),
  KEY `pdus_id` (`pdus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_pdus_racks`;
CREATE TABLE `glpi_pdus_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `racks_id` int(11) NOT NULL DEFAULT '0',
  `pdus_id` int(11) NOT NULL DEFAULT '0',
  `side` int(11) DEFAULT '0',
  `position` int(11) NOT NULL,
  `bgcolor` varchar(7) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `racks_id` (`racks_id`),
  KEY `pdus_id` (`pdus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- /Datacenters

DROP TABLE IF EXISTS `glpi_itilfollowups`;
CREATE TABLE `glpi_itilfollowups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  `sourceitems_id` int(11) NOT NULL DEFAULT '0',
  `sourceof_items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `item_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `is_private` (`is_private`),
  KEY `requesttypes_id` (`requesttypes_id`),
  KEY `sourceitems_id` (`sourceitems_id`),
  KEY `sourceof_items_id` (`sourceof_items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;