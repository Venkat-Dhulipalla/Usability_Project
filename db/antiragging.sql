drop schema if exists anti_ragging;
create schema anti_ragging;
use anti_ragging;

DROP TABLE IF EXISTS `admin_profile`;
CREATE TABLE IF NOT EXISTS `admin_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` bigint DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `profile_pic` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE IF NOT EXISTS `complaint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complainant` varchar(250) DEFAULT NULL,
  `victim` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `pincode` varchar(250) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `latitude` varchar(250) DEFAULT NULL,
  `longitude` varchar(250) DEFAULT NULL,
  `attachment1` varchar(250) DEFAULT NULL,
  `attachment2` varchar(250) DEFAULT NULL,
  `status` int DEFAULT '0',
  `resolved_by_id` int DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pincode` varchar(250) NOT NULL,
  `mobile` bigint NOT NULL,
  `state` varchar(250) NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `email_verified` int NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `undertaking`;
CREATE TABLE IF NOT EXISTS `undertaking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_family_name` varchar(250) DEFAULT NULL,
  `student_first_name` varchar(250) DEFAULT NULL,
  `student_middle_name` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `nationality` varchar(250) DEFAULT NULL,
  `student_mobile_no` varchar(250) DEFAULT NULL,
  `student_freind_mob_no` varchar(250) DEFAULT NULL,
  `student_email_id` varchar(250) DEFAULT NULL,
  `student_p_address1` varchar(250) DEFAULT NULL,
  `student_p_address2` varchar(250) DEFAULT NULL,
  `student_city` varchar(250) DEFAULT NULL,
  `student_state` varchar(250) DEFAULT NULL,
  `pg_name` varchar(250) DEFAULT NULL,
  `pg_address1` varchar(250) DEFAULT NULL,
  `pg_address2` varchar(250) DEFAULT NULL,
  `pg_city` varchar(250) DEFAULT NULL,
  `pg_state` varchar(250) DEFAULT NULL,
  `pg_mobile` varchar(250) DEFAULT NULL,
  `pg_email` varchar(250) DEFAULT NULL,
  `degree` varchar(250) DEFAULT NULL,
  `name_of_course` varchar(250) DEFAULT NULL,
  `reg_no` varchar(250) DEFAULT NULL,
  `no_of_students` varchar(250) DEFAULT NULL,
  `year_of_study` varchar(250) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `volunteer_profile`;
CREATE TABLE IF NOT EXISTS `volunteer_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` int DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `profile_pic` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

insert into login values (1, 'admin@gmail.com', 'admin', 1, 1, 1, '2023-09-17 12:06:36');
insert into admin_profile (id, login_id, name, mobile, designation) values (1, 1, 'Admin', 8956856271, 'Admin');
