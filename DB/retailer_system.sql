/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - retailer_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`retailer_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `retailer_system`;

/*Table structure for table `dealer_register` */

DROP TABLE IF EXISTS `dealer_register`;

CREATE TABLE `dealer_register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `dealer_id` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `file` text,
  `address` text,
  `type` varchar(200) DEFAULT 'direct',
  `distributor_name` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT 'In-Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dealer_register` */

insert  into `dealer_register`(`id`,`dealer_id`,`username`,`password`,`mail`,`mobile`,`file`,`address`,`type`,`distributor_name`,`Status`) values (1,'ID_1','testdealer1','test123','testdealer1@gmail.com','1234567890','cloudphot.jpg','chennai','InDirect','testdistributor1','Active');

/*Table structure for table `disorderreq` */

DROP TABLE IF EXISTS `disorderreq`;

CREATE TABLE `disorderreq` (
  `Distributor_id` int(11) NOT NULL AUTO_INCREMENT,
  `Distributor_name` varchar(200) DEFAULT NULL,
  `Quanlity` varchar(200) DEFAULT NULL,
  `Date` varchar(200) DEFAULT NULL,
  KEY `Distributor_id` (`Distributor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `disorderreq` */

insert  into `disorderreq`(`Distributor_id`,`Distributor_name`,`Quanlity`,`Date`) values (1,'null','23','25/10/19  13:33:58'),(1,'null','55','31/10/19  13:43:25');

/*Table structure for table `distributor_register` */

DROP TABLE IF EXISTS `distributor_register`;

CREATE TABLE `distributor_register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `distributor_id` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `file` text,
  `address` text,
  `status` varchar(200) DEFAULT 'Un-Authorized',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `distributor_register` */

insert  into `distributor_register`(`id`,`distributor_id`,`username`,`password`,`mobile`,`mail`,`file`,`address`,`status`) values (1,'ID_1','testdistributor1','test123','1234567890','testdistributor1@gmail.com','Authorize.png','chennai','Authorized');

/*Table structure for table `doorassembly` */

DROP TABLE IF EXISTS `doorassembly`;

CREATE TABLE `doorassembly` (
  `door_assembly_id` varchar(200) NOT NULL,
  `door_assembly_name` varchar(200) DEFAULT NULL,
  `door_assembly_group` int(200) DEFAULT NULL,
  `door_assembly_notes` varchar(200) DEFAULT NULL,
  `door_assembly_code` text,
  PRIMARY KEY (`door_assembly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorassembly` */

insert  into `doorassembly`(`door_assembly_id`,`door_assembly_name`,`door_assembly_group`,`door_assembly_notes`,`door_assembly_code`) values ('dao_00','Fully assembled',1,'Standard','00'),('dao_KD','Knocked Down',1,'10 & 12 OXXO Gliding Doors Are Only Available in Knocked Down','KD');

/*Table structure for table `doorcategory` */

DROP TABLE IF EXISTS `doorcategory`;

CREATE TABLE `doorcategory` (
  `door_category_id` int(200) NOT NULL,
  `door_category_name` varchar(255) DEFAULT NULL,
  `door_category_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorcategory` */

insert  into `doorcategory`(`door_category_id`,`door_category_name`,`door_category_code`) values (1,'Category A','A');

/*Table structure for table `doorcolor` */

DROP TABLE IF EXISTS `doorcolor`;

CREATE TABLE `doorcolor` (
  `door_color_id` varchar(255) NOT NULL,
  `door_color_name` varchar(255) DEFAULT NULL,
  `door_color_group` int(11) NOT NULL,
  `door_color_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorcolor` */

insert  into `doorcolor`(`door_color_id`,`door_color_name`,`door_color_group`,`door_color_code`) values ('dc_B','Gold Brass',1,'B'),('dc_D','Dark Brown',3,'D'),('dc_N','Satin Nickel',2,'N'),('dc_W','White',3,'W');

/*Table structure for table `doorfinishunit` */

DROP TABLE IF EXISTS `doorfinishunit`;

CREATE TABLE `doorfinishunit` (
  `door_finish_id` varchar(255) NOT NULL,
  `door_finish_name` varchar(255) DEFAULT NULL,
  `door_finish_group` int(11) NOT NULL,
  `door_finish_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_finish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorfinishunit` */

insert  into `doorfinishunit`(`door_finish_id`,`door_finish_name`,`door_finish_group`,`door_finish_code`) values ('df_002','Smooth White Interior/Smooth White Exterior',1,'002'),('df_003','White Wood Grain Interior/White Wood Grain Exterior',1,'003'),('df_2A2','Bronze Interior/Bronze Exterior',1,'2A2'),('df_2AS','Bronze Interior/ Smooth White Exterior',1,'2AS'),('df_2B2','Hunt Club Interior/ Hunt Club Exterior',1,'2B2'),('df_2BS','Hunt Club Interior/ Smooth White Exterior',1,'2BS'),('df_2C2','Brainstorm Bronze Interior/ Brainstorm Bronze Exterior',1,'2C2'),('df_2CS','Brainstorm Bronze Interior/ Smooth White Exterior',1,'2CS'),('df_2E2','Kilim Beige Interior/ Kilim Beige Exterior',1,'2E2'),('df_2ES','Kilim Beige Interior/ Smooth White Exterior',1,'2ES'),('df_300','Unstained Woodgrain Interior/Unstained Woodgrain Exterior',1,'300'),('df_302','White Wood Grain Interior/Smooth White Exterior',1,'302'),('df_3K2','Medium Oak Interior/Smooth White Exterior',1,'3K2'),('df_3KF','Medium Oak Interior/Medium Oak Exterior',1,'3KF'),('df_3M2','Dark Mahogany Interior/Smooth White Exterior',1,'3M2'),('df_3MF','Dark Mahogany Interior/Dark Mahogany Exterior',1,'3MF'),('df_3N2','Unstained Woodgrain Interior/Smooth White Exterior',1,'3N2'),('df_3R2','Golden Oak Interior/Smooth White Exterior',1,'3R2'),('df_3RF','Golden Oak Interior/Golden Oak Exterior',1,'3RF'),('df_SA2','Smooth White Interior/ Bronze Exterior',1,'SA2'),('df_SB2','Smooth White Interior/ Hunt Club Exterior',1,'SB2'),('df_SC2','Smooth White Interior/ Brainstorm Bronze Exterior',1,'SC2'),('df_SE2','Smooth White Interior/ Kilim Beige Exterior',1,'SE2');

/*Table structure for table `doorframe` */

DROP TABLE IF EXISTS `doorframe`;

CREATE TABLE `doorframe` (
  `door_frame_id` int(11) NOT NULL,
  `door_frame_name` varchar(255) DEFAULT NULL,
  `door_frame_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_frame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorframe` */

insert  into `doorframe`(`door_frame_id`,`door_frame_name`,`door_frame_code`) values (1,'Non - Impact Gliding Door','P');

/*Table structure for table `doorframethickness` */

DROP TABLE IF EXISTS `doorframethickness`;

CREATE TABLE `doorframethickness` (
  `door_frame_thickness_id` varchar(255) NOT NULL,
  `door_frame_thickness_size` varchar(255) DEFAULT NULL,
  `door_frame_thickness_group` int(11) NOT NULL,
  `door_frame_thickness_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_frame_thickness_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorframethickness` */

insert  into `doorframethickness`(`door_frame_thickness_id`,`door_frame_thickness_size`,`door_frame_thickness_group`,`door_frame_thickness_code`) values ('dft_4','4-9/16\"',1,'4'),('dft_6','6-9/16\"',1,'6');

/*Table structure for table `doorglasscoating` */

DROP TABLE IF EXISTS `doorglasscoating`;

CREATE TABLE `doorglasscoating` (
  `door_glass_coating_id` varchar(255) NOT NULL,
  `door_glass_coating_name` varchar(255) DEFAULT NULL,
  `door_glass_coating_group` int(11) NOT NULL,
  `door_glass_coating_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_glass_coating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorglasscoating` */

insert  into `doorglasscoating`(`door_glass_coating_id`,`door_glass_coating_name`,`door_glass_coating_group`,`door_glass_coating_code`) values ('dgc_0','Clear Mini Blind Glass',2,'0'),('dgc_4','LoE 340',1,'4'),('dgc_6','LoE 366',1,'6'),('dgc_E','LoE Mini Blind Glass',2,'E');

/*Table structure for table `doorglassdesign` */

DROP TABLE IF EXISTS `doorglassdesign`;

CREATE TABLE `doorglassdesign` (
  `door_glass_design_id` varchar(255) NOT NULL,
  `door_glass_design_name` varchar(255) DEFAULT NULL,
  `door_glass_design_group` int(11) NOT NULL,
  `door_glass_design_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_glass_design_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorglassdesign` */

insert  into `doorglassdesign`(`door_glass_design_id`,`door_glass_design_name`,`door_glass_design_group`,`door_glass_design_code`) values ('dgd_01','1 Lite, No Grid',2,'01'),('dgd_04_CS','4 Lite GBG (Cross Style)',1,'04'),('dgd_04_EL','4 Lite GBG (2Wx2H Equal LIte)',1,'04'),('dgd_06','6 Lite GBG (2Wx3H Equal LIte)',1,'06'),('dgd_08','8 Lite GBG (2Wx4H Equal LIte)',1,'08'),('dgd_09','9 Lite GBG (Prairie Style)',1,'09'),('dgd_10','10 Lite GBG (2Wx5H) Standard for 6/8,6/11 Height',1,'10'),('dgd_12','12 Lite GBG (2Wx6H) Standard on 8/0 Height',1,'12'),('dgd_15','15 Lite GBG (3Wx5H) Standard on 6/8,6/11 Height',1,'15'),('dgd_18','18 Lite GBG (3Wx6H) Standard on 8/0 Height',1,'18'),('dgd_4D_CS','4 Lite SDL (Cross Style)',1,'4D'),('dgd_4D_EL','4 Lite SDL (2Wx2H Equal LIte)',1,'4D'),('dgd_4S_EL','4 Lite SDL + GBG (2Wx2H Equal LIte)',2,'4S'),('dgd_4S_PS','4 Lite SDL + GBG (Prairie Style)',2,'4S'),('dgd_6D','6 Lite SDL (2Wx3H Equal LIte)',1,'6D'),('dgd_6S','6 Lite SDL + GBG (2Wx3H Equal LIte)',2,'6S'),('dgd_8D','8 Lite SDL (2Wx4H Equal LIte)',1,'8D'),('dgd_8S','8 Lite SDL + GBG (2Wx4H Equal LIte)',2,'8S'),('dgd_9D','9 Lite SDL (Prairie Style)',1,'9D'),('dgd_9S','9 Lite SDL + GBG (Prairie Style)',2,'9S'),('dgd_D0','10 Lite SDL',1,'D0'),('dgd_D2','12 Lite SDL',1,'D2'),('dgd_D5','15 Lite SDL',1,'D5'),('dgd_D8','18 Lite SDL',1,'D8'),('dgd_S0','10 Lite SDL + GBG (2Wx5H) Standard on 6/8,6/11 Height',2,'S0'),('dgd_S2','12 Lite SDL + GBG (2Wx6H) Standard on 8/0 Height',2,'S2'),('dgd_S5','15 Lite SDL + GBG (3Wx5H) Standard on 6/8,6/11 Height',2,'S5'),('dgd_S8','18 Lite SDL + GBG (3Wx6H) Standard on 8/0 Height',2,'S8');

/*Table structure for table `doorglassthickness` */

DROP TABLE IF EXISTS `doorglassthickness`;

CREATE TABLE `doorglassthickness` (
  `door_glass_thickness_id` int(11) NOT NULL,
  `door_glass_thickness_name` varchar(255) DEFAULT NULL,
  `door_glass_thickness_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_glass_thickness_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorglassthickness` */

insert  into `doorglassthickness`(`door_glass_thickness_id`,`door_glass_thickness_name`,`door_glass_thickness_code`) values (1,'Non-Impact Glass','58'),(2,'Mini Blind Glass','10');

/*Table structure for table `doorglasstype` */

DROP TABLE IF EXISTS `doorglasstype`;

CREATE TABLE `doorglasstype` (
  `door_glass_type_id` int(11) NOT NULL,
  `door_glass_type_name` varchar(255) DEFAULT NULL,
  `door_glass_type_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_glass_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorglasstype` */

insert  into `doorglasstype`(`door_glass_type_id`,`door_glass_type_name`,`door_glass_type_code`) values (1,'Non-Impact Glass(Standard)','LE'),(2,'Mini Blind Glass','BG');

/*Table structure for table `doorhandleset` */

DROP TABLE IF EXISTS `doorhandleset`;

CREATE TABLE `doorhandleset` (
  `door_handle_id` int(11) NOT NULL,
  `door_handle_name` varchar(255) DEFAULT NULL,
  `door_handle_notes` varchar(255) DEFAULT NULL,
  `door_handle_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_handle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorhandleset` */

insert  into `doorhandleset`(`door_handle_id`,`door_handle_name`,`door_handle_notes`,`door_handle_code`) values (1,'Standard Handle Set','Standard','C'),(2,'Straight Handle at Exterior Side','(**Available in Satin Nickel Only**)','T'),(3,'HPVD Handle set','Standard for HPVD','H');

/*Table structure for table `doorhandling` */

DROP TABLE IF EXISTS `doorhandling`;

CREATE TABLE `doorhandling` (
  `door_handling_id` varchar(255) NOT NULL,
  `door_panel_type` varchar(255) DEFAULT NULL,
  `door_panel_name` varchar(255) DEFAULT NULL,
  `door_panel_group` int(11) NOT NULL,
  `door_panel_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_handling_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorhandling` */

insert  into `doorhandling`(`door_handling_id`,`door_panel_type`,`door_panel_name`,`door_panel_group`,`door_panel_code`) values ('dhev_LS00','Two Panel','LS00 => XO',1,'LS00'),('dhev_LSS0','Third Panel','LSS0 => XO-O',1,'LSS0'),('dhev_S000','Single Panel','S000: Stationary Panel',1,'S000'),('dhev_SLS0','Third Panel','SLS0 => O-XO',1,'SLS0'),('dhev_SPLS','Four Panel','SPLS => OXXO',1,'SPLS'),('dhev_SR00','Two Panel','SR00 => OX',1,'SR00'),('dhev_SRS0','Third Panel','SRS0 => OX-O',1,'SRS0'),('dhev_SSR0','Third Panel','SSR0 => O-OX',1,'SSR0');

/*Table structure for table `doorheight` */

DROP TABLE IF EXISTS `doorheight`;

CREATE TABLE `doorheight` (
  `door_height_id` varchar(255) NOT NULL,
  `door_height_size` varchar(255) DEFAULT NULL,
  `door_height_group` int(11) NOT NULL,
  `door_height_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_height_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorheight` */

insert  into `doorheight`(`door_height_id`,`door_height_size`,`door_height_group`,`door_height_code`) values ('dh_0608','6 feet 8 inches',1,'0608'),('dh_0611','6 feet 11 inches',1,'0611'),('dh_0800','8 feet',2,'0800');

/*Table structure for table `doorlocksystem` */

DROP TABLE IF EXISTS `doorlocksystem`;

CREATE TABLE `doorlocksystem` (
  `door_lock_id` varchar(255) NOT NULL,
  `door_lock_name` varchar(255) DEFAULT NULL,
  `door_lock_group` int(11) NOT NULL,
  `door_lock_notes` varchar(255) DEFAULT NULL,
  `door_lock_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_lock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorlocksystem` */

insert  into `doorlocksystem`(`door_lock_id`,`door_lock_name`,`door_lock_group`,`door_lock_notes`,`door_lock_code`) values ('LS:1','Single Lock',1,'Standard on 6/8, 6/11 Height Gliding Door','1'),('LS:2','Two point lock',1,'optional for 6/8,6/11 Height Gliding Door Only','2'),('LS:3','Three point lock',2,'Standard on all 8inch Height Gliding Door','3');

/*Table structure for table `doormodel` */

DROP TABLE IF EXISTS `doormodel`;

CREATE TABLE `doormodel` (
  `door_model_id` int(20) NOT NULL,
  `door_model_name` varchar(255) DEFAULT NULL,
  `door_model_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doormodel` */

insert  into `doormodel`(`door_model_id`,`door_model_name`,`door_model_code`) values (1,'Patio Doors','PD');

/*Table structure for table `doorpredrill` */

DROP TABLE IF EXISTS `doorpredrill`;

CREATE TABLE `doorpredrill` (
  `predrill_id` int(11) NOT NULL,
  `need_predrill` bit(1) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`predrill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorpredrill` */

insert  into `doorpredrill`(`predrill_id`,`need_predrill`,`status`) values (1,'','YES'),(2,'\0','NO');

/*Table structure for table `doortype` */

DROP TABLE IF EXISTS `doortype`;

CREATE TABLE `doortype` (
  `door_type_id` int(11) NOT NULL,
  `door_type_name` varchar(255) DEFAULT NULL,
  `door_type_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doortype` */

insert  into `doortype`(`door_type_id`,`door_type_name`,`door_type_code`) values (1,'Gliding','G');

/*Table structure for table `doorwidth` */

DROP TABLE IF EXISTS `doorwidth`;

CREATE TABLE `doorwidth` (
  `door_width_id` varchar(255) NOT NULL,
  `door_width_size` varchar(255) DEFAULT NULL,
  `door_width_group` int(11) NOT NULL,
  `door_width_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`door_width_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doorwidth` */

insert  into `doorwidth`(`door_width_id`,`door_width_size`,`door_width_group`,`door_width_code`) values ('dw_01_0206','2 feet 6 inches',1,'0206'),('dw_01_0500','5 feet',1,'0500'),('dw_01_0706','7 feet 6 inches',1,'0706'),('dw_01_1000','10 feet',1,'1000'),('dw_02_0300','3 feet',2,'0300'),('dw_02_0600','6 feet',2,'0600'),('dw_02_0900','9 feet',2,'0900'),('dw_02_1200','12 feet',2,'1200'),('dw_03_0400','4 feet',3,'0400'),('dw_03_0800','8 feet',3,'0800'),('dw_03_1200','12 feet',3,'1200');

/*Table structure for table `manufacturer` */

DROP TABLE IF EXISTS `manufacturer`;

CREATE TABLE `manufacturer` (
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `manufacturer` */

insert  into `manufacturer`(`username`,`password`) values ('manufacturer','12345');

/*Table structure for table `orderreq` */

DROP TABLE IF EXISTS `orderreq`;

CREATE TABLE `orderreq` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `Dealer_name` varchar(200) DEFAULT NULL,
  `Dealer_id` varchar(200) DEFAULT NULL,
  `Distributor_name` varchar(200) DEFAULT NULL,
  `Type` varchar(200) DEFAULT NULL,
  `quanlity` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `Confirmed_By` varchar(200) DEFAULT '-',
  KEY `S.No` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `orderreq` */

insert  into `orderreq`(`sno`,`Dealer_name`,`Dealer_id`,`Distributor_name`,`Type`,`quanlity`,`date`,`status`,`Confirmed_By`) values (1,'testdealer1','1','testdistributor1','InDirect','3','18/11/19  19:33:42','Accepted','Manufacturer');

/*Table structure for table `paneltype` */

DROP TABLE IF EXISTS `paneltype`;

CREATE TABLE `paneltype` (
  `panel_id` int(11) NOT NULL,
  `panel_name` varchar(255) DEFAULT NULL,
  `panel_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`panel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paneltype` */

insert  into `paneltype`(`panel_id`,`panel_name`,`panel_code`) values (1,'Full view : (Glass: 21-5/16x 67\")','16'),(2,'Full view : (Glass: 20\" x 80\")','19'),(3,'Full view : (Glass: 27-5/16\"x 67\")','14'),(4,'Full view : (Glass: 26\" x 80\")','1L'),(5,'Full view : (Glass: 38\" x 67\")','1L'),(6,'Full view : (Glass: 38\" x 80\")','1L'),(7,'3/4 Lite Panel View: (Glass: 20\" x 48\")','28'),(8,'3/4 Lite Panel View: (Glass: 20\" x 64\")','2A'),(9,'3/4 Lite Panel View: (Glass: 26\" x 48\")','27'),(10,'3/4 Lite Panel View: (Glass: 26\" x 64\")','29');

/*Table structure for table `placeorder` */

DROP TABLE IF EXISTS `placeorder`;

CREATE TABLE `placeorder` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(200) DEFAULT NULL,
  `door_category` varchar(200) DEFAULT NULL,
  `door_model` text,
  `door_type` text,
  `door_frame` text,
  `door_width` text,
  `door_height` text,
  `door_panel` text,
  `door_handling` text,
  `door_assembly` text,
  `door_finish` text,
  `glass_design` text,
  `glass_type` text,
  `glass_coating` text,
  `glass_thickness` text,
  `glass_handleset` text,
  `glass_lock` text,
  `color` text,
  `predrill` text,
  `frame_thickness` text,
  `dname` varchar(200) DEFAULT 'Manufacturer',
  `name` varchar(200) DEFAULT NULL,
  `did` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `dte` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'waiting',
  `confrimed_by` varchar(200) DEFAULT '-',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `placeorder` */

insert  into `placeorder`(`id`,`orderid`,`door_category`,`door_model`,`door_type`,`door_frame`,`door_width`,`door_height`,`door_panel`,`door_handling`,`door_assembly`,`door_finish`,`glass_design`,`glass_type`,`glass_coating`,`glass_thickness`,`glass_handleset`,`glass_lock`,`color`,`predrill`,`frame_thickness`,`dname`,`name`,`did`,`type`,`dte`,`status`,`confrimed_by`) values (1,'345632','Category A','Patio Doors','Gliding','Non - Impact Gliding Door','2 feet 6 inches','6 feet 11 inches','3/4 Lite Panel View: (Glass: 26','SSR0 => O-OX','Fully assembled','Golden Oak Interior/Smooth White Exterior','18 Lite SDL','Non-Impact Glass(Standard)','LoE 366','Non-Impact Glass','Standard Handle Set','Two point lock','Gold Brass','1','4-9/16','testdistributor1','testdealer1','ID_1','InDirect','11/12/19 18:49:37','Accepted','Manufacturer');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productid` int(11) unsigned NOT NULL,
  `door_category_id` int(11) DEFAULT NULL,
  `door_model_id` int(11) DEFAULT NULL,
  `door_type_id` int(11) DEFAULT NULL,
  `door_frame_id` int(11) DEFAULT NULL,
  `door_width_group` int(11) DEFAULT NULL,
  `door_height_group` int(11) DEFAULT NULL,
  `panel_id` int(11) DEFAULT NULL,
  `door_panel_group` int(11) DEFAULT NULL,
  `door_assembly_group` int(11) DEFAULT NULL,
  `door_finish_group` int(11) DEFAULT NULL,
  `door_glass_design_group` int(11) DEFAULT NULL,
  `door_glass_type_id` int(11) DEFAULT NULL,
  `door_glass_coating_group` int(11) DEFAULT NULL,
  `door_glass_thickness_id` int(11) DEFAULT NULL,
  `door_handle_id` int(11) DEFAULT NULL,
  `door_lock_group` int(11) DEFAULT NULL,
  `door_color_group` int(11) DEFAULT NULL,
  `predrill_id` int(11) DEFAULT NULL,
  `door_frame_thickness_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`productid`,`door_category_id`,`door_model_id`,`door_type_id`,`door_frame_id`,`door_width_group`,`door_height_group`,`panel_id`,`door_panel_group`,`door_assembly_group`,`door_finish_group`,`door_glass_design_group`,`door_glass_type_id`,`door_glass_coating_group`,`door_glass_thickness_id`,`door_handle_id`,`door_lock_group`,`door_color_group`,`predrill_id`,`door_frame_thickness_group`) values (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1),(3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1),(4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1),(5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1),(6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,2,1,1),(7,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1),(8,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,1),(9,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,3,1,1),(10,1,1,1,1,1,1,1,1,1,1,2,1,1,1,2,1,2,1,1),(11,1,1,1,1,1,1,1,1,1,1,2,1,1,1,3,1,1,1,1),(12,1,1,1,1,1,1,1,1,1,1,2,1,1,1,3,1,2,1,1),(13,1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1),(14,1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,2,1,1),(15,1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,3,1,1),(17,1,1,1,1,1,1,1,1,1,1,2,2,2,2,3,1,1,1,1),(18,1,1,1,1,1,1,1,1,1,1,2,2,2,2,3,1,2,1,1),(19,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,2,1,1,1),(20,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,2,2,1,1),(21,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,2,3,1,1),(22,1,1,1,1,1,2,2,1,1,1,1,1,1,1,2,2,2,1,1),(23,1,1,1,1,1,2,2,1,1,1,1,1,1,1,3,2,1,1,1),(24,1,1,1,1,1,2,2,1,1,1,1,1,1,1,3,2,2,1,1),(25,1,1,1,1,1,2,2,1,1,1,2,1,1,1,1,2,1,1,1),(26,1,1,1,1,1,2,2,1,1,1,2,1,1,1,1,2,2,1,1),(27,1,1,1,1,1,2,2,1,1,1,2,1,1,1,1,2,3,1,1),(28,1,1,1,1,1,2,2,1,1,1,2,1,1,1,2,2,2,1,1),(29,1,1,1,1,1,2,2,1,1,1,2,1,1,1,3,2,1,1,1),(30,1,1,1,1,1,2,2,1,1,1,2,1,1,1,3,2,2,1,1),(31,1,1,1,1,1,2,2,1,1,1,2,2,2,2,1,2,1,1,1),(32,1,1,1,1,1,2,2,1,1,1,2,2,2,2,1,2,2,1,1),(33,1,1,1,1,1,2,2,1,1,1,2,2,2,2,1,2,3,1,1),(34,1,1,1,1,1,2,2,1,1,1,2,2,2,2,2,2,2,1,1),(35,1,1,1,1,1,2,2,1,1,1,2,2,2,2,3,2,1,1,1),(36,1,1,1,1,1,2,2,1,1,1,2,2,2,2,3,2,2,1,1),(37,1,1,1,1,2,1,3,1,1,1,1,1,1,1,1,1,1,1,1),(38,1,1,1,1,2,1,3,1,1,1,1,1,1,1,1,1,2,1,1),(39,1,1,1,1,2,1,3,1,1,1,1,1,1,1,1,1,3,1,1),(40,1,1,1,1,2,1,3,1,1,1,1,1,1,1,2,1,2,1,1),(41,1,1,1,1,2,1,3,1,1,1,1,1,1,1,3,1,1,1,1),(42,1,1,1,1,2,1,3,1,1,1,1,1,1,1,3,1,2,1,1),(43,1,1,1,1,2,1,3,1,1,1,2,1,1,1,1,1,1,1,1),(44,1,1,1,1,2,1,3,1,1,1,2,1,1,1,1,1,2,1,1),(45,1,1,1,1,2,1,3,1,1,1,2,1,1,1,1,1,3,1,1),(46,1,1,1,1,2,1,3,1,1,1,2,1,1,1,2,1,2,1,1),(47,1,1,1,1,2,1,3,1,1,1,2,1,1,1,3,1,1,1,1),(48,1,1,1,1,2,1,3,1,1,1,2,1,1,1,3,1,2,1,1),(49,1,1,1,1,2,1,3,1,1,1,2,2,2,2,1,1,1,1,1),(50,1,1,1,1,2,1,3,1,1,1,2,2,2,2,1,1,2,1,1),(51,1,1,1,1,2,1,3,1,1,1,2,2,2,2,1,1,3,1,1),(52,1,1,1,1,2,1,3,1,1,1,2,2,2,2,2,1,2,1,1),(53,1,1,1,1,2,1,3,1,1,1,2,2,2,2,3,1,1,1,1),(54,1,1,1,1,2,1,3,1,1,1,2,2,2,2,3,1,2,1,1),(55,1,1,1,1,2,2,4,1,1,1,1,1,1,1,1,2,1,1,1),(56,1,1,1,1,2,2,4,1,1,1,1,1,1,1,1,2,2,1,1),(57,1,1,1,1,2,2,4,1,1,1,1,1,1,1,1,2,3,1,1),(58,1,1,1,1,2,2,4,1,1,1,1,1,1,1,2,2,2,1,1),(59,1,1,1,1,2,2,4,1,1,1,1,1,1,1,3,2,1,1,1),(60,1,1,1,1,2,2,4,1,1,1,1,1,1,1,3,2,2,1,1),(61,1,1,1,1,2,2,4,1,1,1,2,1,1,1,1,2,1,1,1),(62,1,1,1,1,2,2,4,1,1,1,2,1,1,1,1,2,2,1,1),(63,1,1,1,1,2,2,4,1,1,1,2,1,1,1,1,2,3,1,1),(64,1,1,1,1,2,2,4,1,1,1,2,1,1,1,2,2,2,1,1),(65,1,1,1,1,2,2,4,1,1,1,2,1,1,1,3,2,1,1,1),(66,1,1,1,1,2,2,4,1,1,1,2,1,1,1,3,2,2,1,1),(67,1,1,1,1,2,2,4,1,1,1,2,2,2,2,1,2,1,1,1),(68,1,1,1,1,2,2,4,1,1,1,2,2,2,2,1,2,2,1,1),(69,1,1,1,1,2,2,4,1,1,1,2,2,2,2,1,2,3,1,1),(70,1,1,1,1,2,2,4,1,1,1,2,2,2,2,2,2,2,1,1),(71,1,1,1,1,2,2,4,1,1,1,2,2,2,2,3,2,1,1,1),(72,1,1,1,1,2,2,4,1,1,1,2,2,2,2,3,2,2,1,1),(73,1,1,1,1,3,1,5,1,1,1,1,1,1,1,1,1,1,1,1),(74,1,1,1,1,3,1,5,1,1,1,1,1,1,1,1,1,2,1,1),(75,1,1,1,1,3,1,5,1,1,1,1,1,1,1,1,1,3,1,1),(76,1,1,1,1,3,1,5,1,1,1,1,1,1,1,2,1,2,1,1),(77,1,1,1,1,3,1,5,1,1,1,1,1,1,1,3,1,1,1,1),(78,1,1,1,1,3,1,5,1,1,1,1,1,1,1,3,1,2,1,1),(79,1,1,1,1,3,1,5,1,1,1,2,1,1,1,1,1,1,1,1),(80,1,1,1,1,3,1,5,1,1,1,2,1,1,1,1,1,2,1,1),(81,1,1,1,1,3,1,5,1,1,1,2,1,1,1,1,1,3,1,1),(82,1,1,1,1,3,1,5,1,1,1,2,1,1,1,2,1,2,1,1),(83,1,1,1,1,3,1,5,1,1,1,2,1,1,1,3,1,1,1,1),(84,1,1,1,1,3,1,5,1,1,1,2,1,1,1,3,1,2,1,1),(85,1,1,1,1,3,1,5,1,1,1,2,2,2,2,1,1,1,1,1),(86,1,1,1,1,3,1,5,1,1,1,2,2,2,2,1,1,2,1,1),(87,1,1,1,1,3,1,5,1,1,1,2,2,2,2,1,1,3,1,1),(88,1,1,1,1,3,1,5,1,1,1,2,2,2,2,2,1,2,1,1),(89,1,1,1,1,3,1,5,1,1,1,2,2,2,2,3,1,1,1,1),(90,1,1,1,1,3,1,5,1,1,1,2,2,2,2,3,1,2,1,1),(91,1,1,1,1,3,2,6,1,1,1,1,1,1,1,1,2,1,1,1),(92,1,1,1,1,3,2,6,1,1,1,1,1,1,1,1,2,2,1,1),(93,1,1,1,1,3,2,6,1,1,1,1,1,1,1,1,2,3,1,1),(94,1,1,1,1,3,2,6,1,1,1,1,1,1,1,2,2,2,1,1),(95,1,1,1,1,3,2,6,1,1,1,1,1,1,1,3,2,1,1,1),(96,1,1,1,1,3,2,6,1,1,1,1,1,1,1,3,2,2,1,1),(97,1,1,1,1,3,2,6,1,1,1,2,1,1,1,1,2,1,1,1),(98,1,1,1,1,3,2,6,1,1,1,2,1,1,1,1,2,2,1,1),(99,1,1,1,1,3,2,6,1,1,1,2,1,1,1,1,2,3,1,1),(100,1,1,1,1,3,2,6,1,1,1,2,1,1,1,2,2,2,1,1),(101,1,1,1,1,3,2,6,1,1,1,2,1,1,1,3,2,1,1,1),(102,1,1,1,1,3,2,6,1,1,1,2,1,1,1,3,2,2,1,1),(103,1,1,1,1,3,2,6,1,1,1,2,2,2,2,1,2,1,1,1),(104,1,1,1,1,3,2,6,1,1,1,2,2,2,2,1,2,2,1,1),(105,1,1,1,1,3,2,6,1,1,1,2,2,2,2,1,2,3,1,1),(106,1,1,1,1,3,2,6,1,1,1,2,2,2,2,2,2,2,1,1),(107,1,1,1,1,3,2,6,1,1,1,2,2,2,2,3,2,1,1,1),(108,1,1,1,1,3,2,6,1,1,1,2,2,2,2,3,2,2,1,1),(109,1,1,1,1,1,1,7,1,1,1,1,1,1,1,1,1,1,1,1),(110,1,1,1,1,1,1,7,1,1,1,1,1,1,1,1,1,2,1,1),(111,1,1,1,1,1,1,7,1,1,1,1,1,1,1,1,1,3,1,1),(112,1,1,1,1,1,1,7,1,1,1,1,1,1,1,2,1,2,1,1),(113,1,1,1,1,1,1,7,1,1,1,1,1,1,1,3,1,1,1,1),(114,1,1,1,1,1,1,7,1,1,1,1,1,1,1,3,1,2,1,1),(115,1,1,1,1,1,1,7,1,1,1,2,1,1,1,1,1,1,1,1),(116,1,1,1,1,1,1,7,1,1,1,2,1,1,1,1,1,2,1,1),(117,1,1,1,1,1,1,7,1,1,1,2,1,1,1,1,1,3,1,1),(118,1,1,1,1,1,1,7,1,1,1,2,1,1,1,2,1,2,1,1),(119,1,1,1,1,1,1,7,1,1,1,2,1,1,1,3,1,1,1,1),(120,1,1,1,1,1,1,7,1,1,1,2,1,1,1,3,1,2,1,1),(121,1,1,1,1,1,2,8,1,1,1,1,1,1,1,1,2,1,1,1),(122,1,1,1,1,1,2,8,1,1,1,1,1,1,1,1,2,2,1,1),(123,1,1,1,1,1,2,8,1,1,1,1,1,1,1,1,2,3,1,1),(124,1,1,1,1,1,2,8,1,1,1,1,1,1,1,2,2,2,1,1),(125,1,1,1,1,1,2,8,1,1,1,1,1,1,1,3,2,1,1,1),(126,1,1,1,1,1,2,8,1,1,1,1,1,1,1,3,2,2,1,1),(127,1,1,1,1,1,2,8,1,1,1,2,1,1,1,1,2,1,1,1),(128,1,1,1,1,1,2,8,1,1,1,2,1,1,1,1,2,2,1,1),(129,1,1,1,1,1,2,8,1,1,1,2,1,1,1,1,2,3,1,1),(130,1,1,1,1,1,2,8,1,1,1,2,1,1,1,2,2,2,1,1),(131,1,1,1,1,1,2,8,1,1,1,2,1,1,1,3,2,1,1,1),(132,1,1,1,1,1,2,8,1,1,1,2,1,1,1,3,2,2,1,1),(133,1,1,1,1,2,1,9,1,1,1,1,1,1,1,1,1,1,1,1),(134,1,1,1,1,2,1,9,1,1,1,1,1,1,1,1,1,2,1,1),(135,1,1,1,1,2,1,9,1,1,1,1,1,1,1,1,1,3,1,1),(136,1,1,1,1,2,1,9,1,1,1,1,1,1,1,2,1,2,1,1),(137,1,1,1,1,2,1,9,1,1,1,1,1,1,1,3,1,1,1,1),(138,1,1,1,1,2,1,9,1,1,1,1,1,1,1,3,1,2,1,1),(139,1,1,1,1,2,1,9,1,1,1,2,1,1,1,1,1,1,1,1),(140,1,1,1,1,2,1,9,1,1,1,2,1,1,1,1,1,2,1,1),(141,1,1,1,1,2,1,9,1,1,1,2,1,1,1,1,1,3,1,1),(142,1,1,1,1,2,1,9,1,1,1,2,1,1,1,2,1,2,1,1),(143,1,1,1,1,2,1,9,1,1,1,2,1,1,1,3,1,1,1,1),(144,1,1,1,1,2,1,9,1,1,1,2,1,1,1,3,1,2,1,1),(145,1,1,1,1,2,2,10,1,1,1,1,1,1,1,1,2,1,1,1),(146,1,1,1,1,2,2,10,1,1,1,1,1,1,1,1,2,2,1,1),(147,1,1,1,1,2,2,10,1,1,1,1,1,1,1,1,2,3,1,1),(148,1,1,1,1,2,2,10,1,1,1,1,1,1,1,2,2,2,1,1),(149,1,1,1,1,2,2,10,1,1,1,1,1,1,1,3,2,1,1,1),(150,1,1,1,1,2,2,10,1,1,1,1,1,1,1,3,2,2,1,1),(151,1,1,1,1,2,2,10,1,1,1,2,1,1,1,1,2,1,1,1),(152,1,1,1,1,2,2,10,1,1,1,2,1,1,1,1,2,2,1,1),(153,1,1,1,1,2,2,10,1,1,1,2,1,1,1,1,2,3,1,1),(154,1,1,1,1,2,2,10,1,1,1,2,1,1,1,2,2,2,1,1),(155,1,1,1,1,2,2,10,1,1,1,2,1,1,1,3,2,1,1,1),(156,1,1,1,1,2,2,10,1,1,1,2,1,1,1,3,2,2,1,1);

/*Table structure for table `salemanager` */

DROP TABLE IF EXISTS `salemanager`;

CREATE TABLE `salemanager` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `salem_id` varchar(200) DEFAULT NULL,
  `salem_name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Active',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `salemanager` */

insert  into `salemanager`(`sno`,`salem_id`,`salem_name`,`pass`,`mail`,`address`,`phone`,`status`) values (1,'ID_1','salemanager','manager','salesmanager@gmail.com','chennai','9988147852','Active');

/*Table structure for table `saleperson` */

DROP TABLE IF EXISTS `saleperson`;

CREATE TABLE `saleperson` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(200) DEFAULT NULL,
  `person_name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `saleperson` */

insert  into `saleperson`(`id`,`person_id`,`person_name`,`pass`,`mail`,`address`,`phone`,`status`) values (1,'ID_1','saleperson','person','salesperson@gmail.com','com','897369852','Active');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
