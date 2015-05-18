#
#<?php die('Forbidden.'); ?>
#Date: 2015-05-18 09:29:28 UTC
#Software: Joomla Platform 13.1.0 Stable [ Curiosity ] 24-Apr-2013 00:00 GMT

#Fields: datetime	priority	category	message
2015-05-18T09:29:28+00:00	INFO	update	Update started by user Super User (618). Old version is 3.2.1.
2015-05-18T09:29:28+00:00	INFO	update	Downloading update file from .
2015-05-18T09:29:37+00:00	INFO	update	File Joomla_3.2.x_to_3.2.7-Stable-Patch_Package.zip successfully downloaded.
2015-05-18T09:29:39+00:00	INFO	update	Starting installation of new version.
2015-05-18T09:30:01+00:00	INFO	update	Finalising installation.
2015-05-18T09:30:02+00:00	INFO	update	Ran query from file 3.2.2-2013-12-22. Query text: ALTER TABLE `#__update_sites` ADD COLUMN `extra_query` VARCHAR(1000) DEFAULT '';.
2015-05-18T09:30:02+00:00	INFO	update	Ran query from file 3.2.2-2013-12-22. Query text: ALTER TABLE `#__updates` ADD COLUMN `extra_query` VARCHAR(1000) DEFAULT '';.
2015-05-18T09:30:02+00:00	INFO	update	Ran query from file 3.2.2-2013-12-28. Query text: UPDATE `#__menu` SET `component_id` = (SELECT `extension_id` FROM `#__extensions.
2015-05-18T09:30:02+00:00	INFO	update	Ran query from file 3.2.2-2014-01-08. Query text: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2015-05-18T09:30:02+00:00	INFO	update	Ran query from file 3.2.2-2014-01-15. Query text: INSERT INTO `#__postinstall_messages` (`extension_id`, `title_key`, `description.
2015-05-18T09:30:03+00:00	INFO	update	Ran query from file 3.2.2-2014-01-18. Query text: /* Update updates version length */ ALTER TABLE `#__updates` MODIFY `version` va.
2015-05-18T09:30:03+00:00	INFO	update	Ran query from file 3.2.2-2014-01-23. Query text: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2015-05-18T09:30:03+00:00	INFO	update	Ran query from file 3.2.3-2014-02-20. Query text: UPDATE `#__extensions` ext1, `#__extensions` ext2 SET ext1.`params` =  ext2.`par.
2015-05-18T09:30:03+00:00	INFO	update	Deleting removed files and folders.
2015-05-18T09:30:11+00:00	INFO	update	Cleaning up after installation.
2015-05-18T09:30:11+00:00	INFO	update	Update to version 3.2.7 is complete.
2015-05-18T09:31:53+00:00	INFO	update	Update started by user Super User (618). Old version is 3.2.7.
2015-05-18T09:31:54+00:00	INFO	update	Downloading update file from .
2015-05-18T09:32:09+00:00	INFO	update	File Joomla_3.4.1-Stable-Update_Package.zip successfully downloaded.
2015-05-18T09:32:10+00:00	INFO	update	Starting installation of new version.
2015-05-18T09:32:58+00:00	INFO ::1	update	Finalising installation.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.3.0-2014-02-16. Query text: ALTER TABLE `#__users` ADD COLUMN `requireReset` tinyint(4) NOT NULL DEFAULT 0 C.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.3.0-2014-04-02. Query text: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.3.4-2014-08-03. Query text: ALTER TABLE `#__user_profiles` CHANGE `profile_value` `profile_value` TEXT NOT N.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.3.6-2014-09-30. Query text: INSERT INTO `#__update_sites` (`name`, `type`, `location`, `enabled`) VALUES ('J.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.3.6-2014-09-30. Query text: INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALU.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-08-24. Query text: INSERT INTO `#__postinstall_messages` (`extension_id`, `title_key`, `description.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-09-01. Query text: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2015-05-18T09:32:59+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-09-01. Query text: INSERT INTO `#__update_sites` (`name`, `type`, `location`, `enabled`) VALUES ('W.
2015-05-18T09:33:00+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-09-01. Query text: INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALU.
2015-05-18T09:33:01+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-09-16. Query text: ALTER TABLE `#__redirect_links` ADD header smallint(3) NOT NULL DEFAULT 301;.
2015-05-18T09:33:01+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-09-16. Query text: ALTER TABLE `#__redirect_links` MODIFY new_url varchar(255);.
2015-05-18T09:33:01+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-10-20. Query text: DELETE FROM `#__extensions` WHERE `extension_id` = 100;.
2015-05-18T09:33:01+00:00	INFO ::1	update	Ran query from file 3.4.0-2014-12-03. Query text: UPDATE `#__extensions` SET `protected` = '0' WHERE `name` = 'plg_editors-xtd_art.
2015-05-18T09:33:01+00:00	INFO ::1	update	Ran query from file 3.4.0-2015-01-21. Query text: INSERT INTO `#__postinstall_messages` (`extension_id`, `title_key`, `description.
2015-05-18T09:33:01+00:00	INFO ::1	update	Ran query from file 3.4.0-2015-02-26. Query text: INSERT INTO `#__postinstall_messages` (`extension_id`, `title_key`, `description.
2015-05-18T09:33:01+00:00	INFO ::1	update	Deleting removed files and folders.
2015-05-18T09:33:09+00:00	INFO ::1	update	Cleaning up after installation.
2015-05-18T09:33:09+00:00	INFO ::1	update	Update to version 3.4.1 is complete.
