/*
SQLyog Ultimate v9.33 GA
MySQL - 5.6.9-rc-log : Database - thtest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `action` */

DROP TABLE IF EXISTS `action`;

CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `rowRequired` enum('y','n') NOT NULL DEFAULT 'y',
  `type` enum('p','s','o') NOT NULL DEFAULT 'p',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`),
  KEY `rowRequired` (`rowRequired`),
  KEY `type` (`type`),
  KEY `toggle1` (`toggle`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `action` */

insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (1,'Список','index','n','s',0,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (2,'Детали','form','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (3,'Сохранить','save','y','s',0,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (4,'Удалить','delete','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (5,'Выше','up','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (6,'Ниже','down','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (7,'Статус','toggle','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (18,'Обновить кэш','cache','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (19,'Обновить sitemap.xml','sitemap','n','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (20,'Авторизация','login','y','o',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (33,'Автор','author','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (34,'PHP','php','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (35,'JS','js','y','s',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (36,'Проверить','check','y','p',1,'y');
insert  into `action`(`id`,`title`,`alias`,`rowRequired`,`type`,`display`,`toggle`) values (37,'Сбросить','reset','y','p',1,'y');

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `postcode` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `status` enum('pend','done') NOT NULL DEFAULT 'pend',
  `llcQty` int(11) NOT NULL DEFAULT '0',
  `updated` date NOT NULL DEFAULT '0000-00-00',
  `captchaCode` int(11) NOT NULL DEFAULT '0',
  `captchaTask` varchar(255) NOT NULL DEFAULT '',
  `dadata` text NOT NULL,
  `isMass` enum('unknown','yes','no') NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `isMass` (`isMass`),
  FULLTEXT KEY `dadata` (`dadata`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (1,'630128 Новосибирск ул Демакова, 30',630128,'Новосибирск','ул Демакова, 30','done',22,'2017-10-14',890289,'195503463','[{\"source\":\"630128 Новосибирск ул Демакова, 30\",\"result\":\"г Новосибирск, ул Демакова, д 30\",\"postal_code\":\"630090\",\"country\":\"Россия\",\"region_fias_id\":\"1ac46b49-3209-4814-b7bf-a509ea1aecd9\",\"region_kladr_id\":\"5400000000000\",\"region_with_type\":\"Новосибирская обл\",\"region_type\":\"обл\",\"region_type_full\":\"область\",\"region\":\"Новосибирская\",\"area_fias_id\":null,\"area_kladr_id\":null,\"area_with_type\":null,\"area_type\":null,\"area_type_full\":null,\"area\":null,\"city_fias_id\":\"8dea00e3-9aab-4d8e-887c-ef2aaa546456\",\"city_kladr_id\":\"5400000100000\",\"city_with_type\":\"г Новосибирск\",\"city_type\":\"г\",\"city_type_full\":\"город\",\"city\":\"Новосибирск\",\"city_area\":null,\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":\"р-н Советский\",\"city_district_type\":\"р-н\",\"city_district_type_full\":\"район\",\"city_district\":\"Советский\",\"settlement_fias_id\":null,\"settlement_kladr_id\":null,\"settlement_with_type\":null,\"settlement_type\":null,\"settlement_type_full\":null,\"settlement\":null,\"street_fias_id\":\"2fcb96d8-0bd6-4fb3-9b3e-e57a82cd8e8b\",\"street_kladr_id\":\"54000001000036200\",\"street_with_type\":\"ул Демакова\",\"street_type\":\"ул\",\"street_type_full\":\"улица\",\"street\":\"Демакова\",\"house_fias_id\":\"510d409c-e46c-468c-a8b0-fdb1d2044272\",\"house_kladr_id\":\"5400000100003620065\",\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"30\",\"block_type\":null,\"block_type_full\":null,\"block\":null,\"flat_type\":null,\"flat_type_full\":null,\"flat\":null,\"flat_area\":null,\"square_meter_price\":null,\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"510d409c-e46c-468c-a8b0-fdb1d2044272\",\"fias_level\":\"8\",\"kladr_id\":\"5400000100003620065\",\"capital_marker\":\"2\",\"okato\":\"50401384000\",\"oktmo\":\"50701000001\",\"tax_office\":\"5473\",\"tax_office_legal\":\"5473\",\"timezone\":\"UTC+7\",\"geo_lat\":\"54.8600587\",\"geo_lon\":\"83.1153367\",\"beltway_hit\":null,\"beltway_distance\":null,\"qc_geo\":0,\"qc_complete\":5,\"qc_house\":2,\"qc\":0,\"unparsed_parts\":null,\"metro\":null}]','yes');
insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (2,'142402 Московская обл.Ногинский р-н,г. Ногинск улица Ильича пром площадка №1 строение 2',142402,'Московская обл.Ногинский р-н,г. Ногинск','улица Ильича пром площадка №1 строение 2','done',0,'2017-10-14',233502,'195504355','[{\"source\":\"142402 Московская обл.Ногинский р-н,г. Ногинск улица Ильича пром площадка №1 строение 2\",\"result\":\"Московская обл, г Ногинск, тер Промплощадка N 1, д 1 стр 2\",\"postal_code\":\"142402\",\"country\":\"Россия\",\"region_fias_id\":\"29251dcf-00a1-4e34-98d4-5c47484a36d4\",\"region_kladr_id\":\"5000000000000\",\"region_with_type\":\"Московская обл\",\"region_type\":\"обл\",\"region_type_full\":\"область\",\"region\":\"Московская\",\"area_fias_id\":\"8bb0a0d8-975e-4a08-bc16-3960a8137992\",\"area_kladr_id\":\"5002100000000\",\"area_with_type\":\"Ногинский р-н\",\"area_type\":\"р-н\",\"area_type_full\":\"район\",\"area\":\"Ногинский\",\"city_fias_id\":\"40ae04e3-9a69-44ea-8bd7-6c6f08e1a4ca\",\"city_kladr_id\":\"5002100100000\",\"city_with_type\":\"г Ногинск\",\"city_type\":\"г\",\"city_type_full\":\"город\",\"city\":\"Ногинск\",\"city_area\":null,\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":null,\"city_district_type\":null,\"city_district_type_full\":null,\"city_district\":null,\"settlement_fias_id\":\"67b74474-ccce-4d1f-b62a-9019e11fd911\",\"settlement_kladr_id\":\"50021001000050600\",\"settlement_with_type\":\"тер Промплощадка N 1\",\"settlement_type\":\"тер\",\"settlement_type_full\":\"территория\",\"settlement\":\"Промплощадка N 1\",\"street_fias_id\":null,\"street_kladr_id\":null,\"street_with_type\":null,\"street_type\":null,\"street_type_full\":null,\"street\":null,\"house_fias_id\":null,\"house_kladr_id\":null,\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"1\",\"block_type\":\"стр\",\"block_type_full\":\"строение\",\"block\":\"2\",\"flat_type\":null,\"flat_type_full\":null,\"flat\":null,\"flat_area\":null,\"square_meter_price\":null,\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"67b74474-ccce-4d1f-b62a-9019e11fd911\",\"fias_level\":\"65\",\"kladr_id\":\"50021001000050600\",\"capital_marker\":\"1\",\"okato\":\"46239501000\",\"oktmo\":\"46639101001\",\"tax_office\":\"5031\",\"tax_office_legal\":\"5031\",\"timezone\":\"UTC+3\",\"geo_lat\":\"55.8686239\",\"geo_lon\":\"38.4621635\",\"beltway_hit\":null,\"beltway_distance\":null,\"qc_geo\":4,\"qc_complete\":10,\"qc_house\":10,\"qc\":0,\"unparsed_parts\":null,\"metro\":null}]','no');
insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (3,'142190 г Москва г Троицк Октябрьский проспект, д. 13, оф.IV',142190,'г Москва г Троицк','Октябрьский проспект, д. 13, оф.IV','pend',0,'0000-00-00',0,'','[{\"source\":\"142190 г Москва г Троицк Октябрьский проспект, д. 13, оф.IV\",\"result\":\"г Москва, г Троицк, пр-кт Октябрьский, д 13\",\"postal_code\":\"108840\",\"country\":\"Россия\",\"region_fias_id\":\"0c5b2444-70a0-4932-980c-b4dc0d3f02b5\",\"region_kladr_id\":\"7700000000000\",\"region_with_type\":\"г Москва\",\"region_type\":\"г\",\"region_type_full\":\"город\",\"region\":\"Москва\",\"area_fias_id\":null,\"area_kladr_id\":null,\"area_with_type\":null,\"area_type\":null,\"area_type_full\":null,\"area\":null,\"city_fias_id\":\"7dde11f6-f6ab-4a05-8052-78e0cab8fc59\",\"city_kladr_id\":\"7700000500000\",\"city_with_type\":\"г Троицк\",\"city_type\":\"г\",\"city_type_full\":\"город\",\"city\":\"Троицк\",\"city_area\":\"Троицкий\",\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":\"округ Троицкий\",\"city_district_type\":\"округ\",\"city_district_type_full\":\"округ\",\"city_district\":\"Троицкий\",\"settlement_fias_id\":null,\"settlement_kladr_id\":null,\"settlement_with_type\":null,\"settlement_type\":null,\"settlement_type_full\":null,\"settlement\":null,\"street_fias_id\":\"12640432-7239-4e1f-a510-879333b8ae51\",\"street_kladr_id\":\"77000005000000100\",\"street_with_type\":\"пр-кт Октябрьский\",\"street_type\":\"пр-кт\",\"street_type_full\":\"проспект\",\"street\":\"Октябрьский\",\"house_fias_id\":\"3174d7e0-4e86-4dff-b969-869691341ade\",\"house_kladr_id\":\"7700000500000010023\",\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"13\",\"block_type\":null,\"block_type_full\":null,\"block\":null,\"flat_type\":null,\"flat_type_full\":null,\"flat\":null,\"flat_area\":null,\"square_meter_price\":\"123077\",\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"3174d7e0-4e86-4dff-b969-869691341ade\",\"fias_level\":\"8\",\"kladr_id\":\"7700000500000010023\",\"capital_marker\":\"0\",\"okato\":\"45298578001\",\"oktmo\":\"45931000\",\"tax_office\":\"7751\",\"tax_office_legal\":\"7751\",\"timezone\":\"UTC+3\",\"geo_lat\":\"55.476394\",\"geo_lon\":\"37.2962275\",\"beltway_hit\":\"OUT_MKAD\",\"beltway_distance\":\"20\",\"qc_geo\":0,\"qc_complete\":9,\"qc_house\":2,\"qc\":1,\"unparsed_parts\":\"ОФ, ИВ\",\"metro\":null}]','unknown');
insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (4,'195271 г. Санкт-Петербург ул. Бестужевская, д. 10, пом. 41Н',195271,'г. Санкт-Петербург','ул. Бестужевская, д. 10, пом. 41Н','pend',0,'0000-00-00',0,'','[{\"source\":\"195271 г. Санкт-Петербург ул. Бестужевская, д. 10, пом. 41Н\",\"result\":\"г Санкт-Петербург, ул Бестужевская, д 10, оф 41Н\",\"postal_code\":\"195271\",\"country\":\"Россия\",\"region_fias_id\":\"c2deb16a-0330-4f05-821f-1d09c93331e6\",\"region_kladr_id\":\"7800000000000\",\"region_with_type\":\"г Санкт-Петербург\",\"region_type\":\"г\",\"region_type_full\":\"город\",\"region\":\"Санкт-Петербург\",\"area_fias_id\":null,\"area_kladr_id\":null,\"area_with_type\":null,\"area_type\":null,\"area_type_full\":null,\"area\":null,\"city_fias_id\":null,\"city_kladr_id\":null,\"city_with_type\":null,\"city_type\":null,\"city_type_full\":null,\"city\":null,\"city_area\":null,\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":\"р-н Калининский\",\"city_district_type\":\"р-н\",\"city_district_type_full\":\"район\",\"city_district\":\"Калининский\",\"settlement_fias_id\":null,\"settlement_kladr_id\":null,\"settlement_with_type\":null,\"settlement_type\":null,\"settlement_type_full\":null,\"settlement\":null,\"street_fias_id\":\"af5bf7f8-c977-417a-a1ef-40134f1a3179\",\"street_kladr_id\":\"78000000000016400\",\"street_with_type\":\"ул Бестужевская\",\"street_type\":\"ул\",\"street_type_full\":\"улица\",\"street\":\"Бестужевская\",\"house_fias_id\":\"46fe5a51-5e44-4163-964f-e87ebf0d2af1\",\"house_kladr_id\":\"7800000000001640107\",\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"10\",\"block_type\":null,\"block_type_full\":null,\"block\":null,\"flat_type\":\"оф\",\"flat_type_full\":\"офис\",\"flat\":\"41Н\",\"flat_area\":null,\"square_meter_price\":null,\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"46fe5a51-5e44-4163-964f-e87ebf0d2af1\",\"fias_level\":\"8\",\"kladr_id\":\"7800000000001640107\",\"capital_marker\":\"0\",\"okato\":\"40273565000\",\"oktmo\":\"40332000\",\"tax_office\":\"7804\",\"tax_office_legal\":\"7804\",\"timezone\":\"UTC+3\",\"geo_lat\":\"59.9865947\",\"geo_lon\":\"30.393557\",\"beltway_hit\":\"IN_KAD\",\"beltway_distance\":null,\"qc_geo\":0,\"qc_complete\":0,\"qc_house\":2,\"qc\":0,\"unparsed_parts\":null,\"metro\":[{\"distance\":2.8,\"line\":\"Кировско-Выборгская\",\"name\":\"Политехническая\"},{\"distance\":2.7,\"line\":\"Кировско-Выборгская\",\"name\":\"Лесная\"},{\"distance\":2.1,\"line\":\"Кировско-Выборгская\",\"name\":\"Площадь Мужества\"}]}]','unknown');
insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (5,'344019 РОСТОВ-НА- ДОНУ КРАСНОФЛОТСКИЙ дом № 22, кв.132',344019,'РОСТОВ-НА- ДОНУ','КРАСНОФЛОТСКИЙ дом № 22, кв.132','pend',0,'0000-00-00',0,'','[{\"source\":\"344019 РОСТОВ-НА- ДОНУ КРАСНОФЛОТСКИЙ дом № 22, кв.132\",\"result\":\"г Ростов-на-Дону, пер Краснофлотский, д 22, кв 132\",\"postal_code\":\"344019\",\"country\":\"Россия\",\"region_fias_id\":\"f10763dc-63e3-48db-83e1-9c566fe3092b\",\"region_kladr_id\":\"6100000000000\",\"region_with_type\":\"Ростовская обл\",\"region_type\":\"обл\",\"region_type_full\":\"область\",\"region\":\"Ростовская\",\"area_fias_id\":null,\"area_kladr_id\":null,\"area_with_type\":null,\"area_type\":null,\"area_type_full\":null,\"area\":null,\"city_fias_id\":\"c1cfe4b9-f7c2-423c-abfa-6ed1c05a15c5\",\"city_kladr_id\":\"6100000100000\",\"city_with_type\":\"г Ростов-на-Дону\",\"city_type\":\"г\",\"city_type_full\":\"город\",\"city\":\"Ростов-на-Дону\",\"city_area\":null,\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":null,\"city_district_type\":null,\"city_district_type_full\":null,\"city_district\":null,\"settlement_fias_id\":null,\"settlement_kladr_id\":null,\"settlement_with_type\":null,\"settlement_type\":null,\"settlement_type_full\":null,\"settlement\":null,\"street_fias_id\":\"e304e28f-5942-444e-8fa2-a8310de979a1\",\"street_kladr_id\":\"61000001000081100\",\"street_with_type\":\"пер Краснофлотский\",\"street_type\":\"пер\",\"street_type_full\":\"переулок\",\"street\":\"Краснофлотский\",\"house_fias_id\":\"d58bed90-d73a-4832-9715-7ec9b5f98805\",\"house_kladr_id\":\"6100000100008110008\",\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"22\",\"block_type\":null,\"block_type_full\":null,\"block\":null,\"flat_type\":\"кв\",\"flat_type_full\":\"квартира\",\"flat\":\"132\",\"flat_area\":null,\"square_meter_price\":\"80000\",\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"d58bed90-d73a-4832-9715-7ec9b5f98805\",\"fias_level\":\"8\",\"kladr_id\":\"6100000100008110008\",\"capital_marker\":\"2\",\"okato\":\"60401000000\",\"oktmo\":\"60701000001\",\"tax_office\":\"6195\",\"tax_office_legal\":\"6195\",\"timezone\":\"UTC+3\",\"geo_lat\":\"47.2240875\",\"geo_lon\":\"39.7483518\",\"beltway_hit\":null,\"beltway_distance\":null,\"qc_geo\":0,\"qc_complete\":0,\"qc_house\":2,\"qc\":0,\"unparsed_parts\":null,\"metro\":null}]','unknown');
insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (6,'125368 г Москва, ул Барышиха, д 19',125368,'г Москва,','ул Барышиха, д 19','pend',0,'0000-00-00',0,'','[{\"source\":\"125368 г Москва, ул Барышиха, д 19\",\"result\":\"г Москва, ул Барышиха, д 19\",\"postal_code\":\"125368\",\"country\":\"Россия\",\"region_fias_id\":\"0c5b2444-70a0-4932-980c-b4dc0d3f02b5\",\"region_kladr_id\":\"7700000000000\",\"region_with_type\":\"г Москва\",\"region_type\":\"г\",\"region_type_full\":\"город\",\"region\":\"Москва\",\"area_fias_id\":null,\"area_kladr_id\":null,\"area_with_type\":null,\"area_type\":null,\"area_type_full\":null,\"area\":null,\"city_fias_id\":null,\"city_kladr_id\":null,\"city_with_type\":null,\"city_type\":null,\"city_type_full\":null,\"city\":null,\"city_area\":\"Северо-западный\",\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":\"р-н Митино\",\"city_district_type\":\"р-н\",\"city_district_type_full\":\"район\",\"city_district\":\"Митино\",\"settlement_fias_id\":null,\"settlement_kladr_id\":null,\"settlement_with_type\":null,\"settlement_type\":null,\"settlement_type_full\":null,\"settlement\":null,\"street_fias_id\":\"4cc42e87-e4be-404b-b2bc-626a97d5b817\",\"street_kladr_id\":\"77000000000352400\",\"street_with_type\":\"ул Барышиха\",\"street_type\":\"ул\",\"street_type_full\":\"улица\",\"street\":\"Барышиха\",\"house_fias_id\":\"494f0306-1bf5-463c-9525-91e32e892343\",\"house_kladr_id\":\"7700000000035240056\",\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"19\",\"block_type\":null,\"block_type_full\":null,\"block\":null,\"flat_type\":null,\"flat_type_full\":null,\"flat\":null,\"flat_area\":null,\"square_meter_price\":\"179199\",\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"494f0306-1bf5-463c-9525-91e32e892343\",\"fias_level\":\"8\",\"kladr_id\":\"7700000000035240056\",\"capital_marker\":\"0\",\"okato\":\"45283559000\",\"oktmo\":\"45367000\",\"tax_office\":\"7733\",\"tax_office_legal\":\"7733\",\"timezone\":\"UTC+3\",\"geo_lat\":\"55.844454\",\"geo_lon\":\"37.349031\",\"beltway_hit\":\"OUT_MKAD\",\"beltway_distance\":\"3\",\"qc_geo\":0,\"qc_complete\":5,\"qc_house\":2,\"qc\":0,\"unparsed_parts\":null,\"metro\":[{\"distance\":2.3,\"line\":\"Арбатско-Покровская\",\"name\":\"Волоколамская\"},{\"distance\":1.1,\"line\":\"Арбатско-Покровская\",\"name\":\"Пятницкое шоссе\"},{\"distance\":0.8,\"line\":\"Арбатско-Покровская\",\"name\":\"Митино\"}]}]','unknown');
insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (7,'620100 Екатеринбург Восточная, 160 А, помещение 17',620100,'Екатеринбург','Восточная, 160 А, помещение 17','pend',0,'0000-00-00',0,'','[{\"source\":\"620100 Екатеринбург Восточная, 160 А, помещение 17\",\"result\":\"г Екатеринбург, ул Восточная, д 160А, оф 17\",\"postal_code\":\"620100\",\"country\":\"Россия\",\"region_fias_id\":\"92b30014-4d52-4e2e-892d-928142b924bf\",\"region_kladr_id\":\"6600000000000\",\"region_with_type\":\"Свердловская обл\",\"region_type\":\"обл\",\"region_type_full\":\"область\",\"region\":\"Свердловская\",\"area_fias_id\":null,\"area_kladr_id\":null,\"area_with_type\":null,\"area_type\":null,\"area_type_full\":null,\"area\":null,\"city_fias_id\":\"2763c110-cb8b-416a-9dac-ad28a55b4402\",\"city_kladr_id\":\"6600000100000\",\"city_with_type\":\"г Екатеринбург\",\"city_type\":\"г\",\"city_type_full\":\"город\",\"city\":\"Екатеринбург\",\"city_area\":null,\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":null,\"city_district_type\":null,\"city_district_type_full\":null,\"city_district\":null,\"settlement_fias_id\":null,\"settlement_kladr_id\":null,\"settlement_with_type\":null,\"settlement_type\":null,\"settlement_type_full\":null,\"settlement\":null,\"street_fias_id\":\"b07f122a-8f43-4be1-88c4-7022e5aacb3a\",\"street_kladr_id\":\"66000001000024100\",\"street_with_type\":\"ул Восточная\",\"street_type\":\"ул\",\"street_type_full\":\"улица\",\"street\":\"Восточная\",\"house_fias_id\":null,\"house_kladr_id\":null,\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"160А\",\"block_type\":null,\"block_type_full\":null,\"block\":null,\"flat_type\":\"оф\",\"flat_type_full\":\"офис\",\"flat\":\"17\",\"flat_area\":\"598.6\",\"square_meter_price\":null,\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"b07f122a-8f43-4be1-88c4-7022e5aacb3a\",\"fias_level\":\"7\",\"kladr_id\":\"66000001000024100\",\"capital_marker\":\"2\",\"okato\":\"65401000000\",\"oktmo\":\"65701000\",\"tax_office\":\"6600\",\"tax_office_legal\":\"6600\",\"timezone\":\"UTC+5\",\"geo_lat\":\"56.8394785\",\"geo_lon\":\"60.6327149\",\"beltway_hit\":null,\"beltway_distance\":null,\"qc_geo\":2,\"qc_complete\":10,\"qc_house\":10,\"qc\":0,\"unparsed_parts\":null,\"metro\":null}]','unknown');
insert  into `address`(`id`,`title`,`postcode`,`city`,`address`,`status`,`llcQty`,`updated`,`captchaCode`,`captchaTask`,`dadata`,`isMass`) values (8,'109382 Москва Совхозная, д. 10А, стр. 1',109382,'Москва','Совхозная, д. 10А, стр. 1','pend',0,'0000-00-00',0,'','[{\"source\":\"109382 Москва Совхозная, д. 10А, стр. 1\",\"result\":\"г Москва, ул Совхозная, д 10А стр 1\",\"postal_code\":\"109382\",\"country\":\"Россия\",\"region_fias_id\":\"0c5b2444-70a0-4932-980c-b4dc0d3f02b5\",\"region_kladr_id\":\"7700000000000\",\"region_with_type\":\"г Москва\",\"region_type\":\"г\",\"region_type_full\":\"город\",\"region\":\"Москва\",\"area_fias_id\":null,\"area_kladr_id\":null,\"area_with_type\":null,\"area_type\":null,\"area_type_full\":null,\"area\":null,\"city_fias_id\":null,\"city_kladr_id\":null,\"city_with_type\":null,\"city_type\":null,\"city_type_full\":null,\"city\":null,\"city_area\":\"Юго-восточный\",\"city_district_fias_id\":null,\"city_district_kladr_id\":null,\"city_district_with_type\":\"р-н Люблино\",\"city_district_type\":\"р-н\",\"city_district_type_full\":\"район\",\"city_district\":\"Люблино\",\"settlement_fias_id\":null,\"settlement_kladr_id\":null,\"settlement_with_type\":null,\"settlement_type\":null,\"settlement_type_full\":null,\"settlement\":null,\"street_fias_id\":\"9830d79c-0820-479f-bf49-41ff0736e7d3\",\"street_kladr_id\":\"77000000000021100\",\"street_with_type\":\"ул Совхозная\",\"street_type\":\"ул\",\"street_type_full\":\"улица\",\"street\":\"Совхозная\",\"house_fias_id\":\"986621e2-13f9-47f3-8614-4fbc4fe7a90f\",\"house_kladr_id\":\"7700000000002110033\",\"house_type\":\"д\",\"house_type_full\":\"дом\",\"house\":\"10А\",\"block_type\":\"стр\",\"block_type_full\":\"строение\",\"block\":\"1\",\"flat_type\":null,\"flat_type_full\":null,\"flat\":null,\"flat_area\":null,\"square_meter_price\":null,\"flat_price\":null,\"postal_box\":null,\"fias_id\":\"986621e2-13f9-47f3-8614-4fbc4fe7a90f\",\"fias_level\":\"8\",\"kladr_id\":\"7700000000002110033\",\"capital_marker\":\"0\",\"okato\":\"45290568000\",\"oktmo\":\"45389000\",\"tax_office\":\"7723\",\"tax_office_legal\":\"7723\",\"timezone\":\"UTC+3\",\"geo_lat\":\"55.6704451\",\"geo_lon\":\"37.7548731\",\"beltway_hit\":\"IN_MKAD\",\"beltway_distance\":null,\"qc_geo\":0,\"qc_complete\":5,\"qc_house\":2,\"qc\":0,\"unparsed_parts\":null,\"metro\":[{\"distance\":2.2,\"line\":\"Люблинско-Дмитровская\",\"name\":\"Волжская\"},{\"distance\":1.4,\"line\":\"Люблинско-Дмитровская\",\"name\":\"Братиславская\"},{\"distance\":0.8,\"line\":\"Люблинско-Дмитровская\",\"name\":\"Люблино\"}]}]','unknown');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profileId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`),
  KEY `profileId` (`profileId`),
  KEY `toggle` (`toggle`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`profileId`,`title`,`email`,`password`,`toggle`) values (1,1,'Павел Перминов','pavel.perminov.23@gmail.com','*8E1219CD047401C6FEAC700B47F5DA846A57ABD4','y');
insert  into `admin`(`id`,`profileId`,`title`,`email`,`password`,`toggle`) values (14,12,'Татьяна','main@tenderhelp.ru','*0D3DC0AC8220B4FF12465D834FBE53D5E231B604','y');

/*Table structure for table `columntype` */

DROP TABLE IF EXISTS `columntype`;

CREATE TABLE `columntype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `canStoreRelation` enum('y','n') NOT NULL DEFAULT 'n',
  `elementId` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `canStoreRelation` (`canStoreRelation`),
  KEY `elementId` (`elementId`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `columntype` */

insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (1,'Строка','VARCHAR(255)','y','22,23,1,7');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (3,'Число','INT(11)','y','3,21,4,5,23,1,18');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (4,'Текст','TEXT','y','6,7,8,13');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (5,'Цена','DECIMAL(11,2)','n','24');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (6,'Дата','DATE','n','12');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (7,'Год','YEAR','n','');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (8,'Время','TIME','n','17');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (9,'Момент','DATETIME','n','19');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (10,'Одно значение из набора','ENUM','n','5,23');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (11,'Набор значений','SET','n','23,1,6,7');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (12,'Правда/Ложь','BOOLEAN','n','9');
insert  into `columntype`(`id`,`title`,`type`,`canStoreRelation`,`elementId`) values (13,'Цвет','VARCHAR(10)','n','11');

/*Table structure for table `disabledfield` */

DROP TABLE IF EXISTS `disabledfield`;

CREATE TABLE `disabledfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `fieldId` int(11) NOT NULL DEFAULT '0',
  `defaultValue` varchar(255) NOT NULL DEFAULT '',
  `displayInForm` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `impact` enum('all','only','except') NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`),
  KEY `sectionId` (`sectionId`),
  KEY `fieldId` (`fieldId`),
  KEY `impact` (`impact`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

/*Data for the table `disabledfield` */

insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (84,146,961,'',0,'Аккаунт активирован','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (85,146,962,'',0,'Код активации','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (43,146,1108,'',0,'Настройки','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (94,146,1577,'',0,'Код','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (93,146,1576,'',0,'Дата последнего запроса','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (92,146,1575,'',0,'Смена пароля','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (91,146,1162,'',0,'ID пользователя в этой соц.сети','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (90,146,1163,'',0,'Какая','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (89,146,1161,'',0,'Социальные сети','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (88,146,698,'',0,'Подписался на рассылку','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (208,379,2181,'',0,'Порядок отображения','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (209,379,2172,'title',0,'Тэг','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (210,380,2181,'',0,'Порядок отображения','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (211,380,2172,'keywords',0,'Тэг','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (212,381,2181,'',0,'Порядок отображения','all');
insert  into `disabledfield`(`id`,`sectionId`,`fieldId`,`defaultValue`,`displayInForm`,`title`,`impact`) values (213,381,2172,'description',0,'Тэг','all');

/*Table structure for table `element` */

DROP TABLE IF EXISTS `element`;

CREATE TABLE `element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `storeRelationAbility` set('none','one','many') NOT NULL DEFAULT 'none',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `storeRelationAbility` (`storeRelationAbility`),
  KEY `storeRelationAbility_2` (`storeRelationAbility`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `element` */

insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (1,'Строка','string','none,many',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (4,'Приоритет отображения','move','none',1);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (5,'Радио-кнопки','radio','one',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (6,'Текст','textarea','none,many',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (7,'Чекбоксы','multicheck','many',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (9,'Чекбокс','check','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (11,'Цвет','color','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (12,'Календарь','calendar','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (13,'HTML-редактор','html','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (14,'Файл','upload','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (16,'Группа полей','span','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (17,'Время','time','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (18,'Число','number','none,one',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (19,'Момент','datetime','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (22,'Скрытое поле','hidden','none',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (23,'Список','combo','one,many',0);
insert  into `element`(`id`,`title`,`alias`,`storeRelationAbility`,`hidden`) values (24,'Цена','price','none',0);

/*Table structure for table `entity` */

DROP TABLE IF EXISTS `entity`;

CREATE TABLE `entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `extends` varchar(255) NOT NULL DEFAULT 'Indi_Db_Table',
  `system` enum('n','y','o') NOT NULL DEFAULT 'n',
  `useCache` tinyint(1) NOT NULL DEFAULT '0',
  `titleFieldId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `system` (`system`),
  KEY `titleFieldId` (`titleFieldId`)
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

/*Data for the table `entity` */

insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (1,'Тип столбца','columnType','Indi_Db_Table','y',0,1);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (2,'Сущность','entity','Indi_Db_Table','y',1,4);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (3,'Раздел','section','Indi_Db_Table','y',0,20);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (4,'Элемент управления','element','Indi_Db_Table','y',0,64);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (5,'Поле','field','Indi_Db_Table','y',1,7);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (6,'Значение из набора','enumset','Indi_Db_Table','y',0,16);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (7,'Действие','action','Indi_Db_Table','y',0,31);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (8,'Действие в разделе','section2action','Indi_Db_Table','y',0,27);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (9,'Столбец грида','grid','Indi_Db_Table','y',0,34);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (10,'Роль','profile','Indi_Db_Table','y',0,36);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (11,'Пользователь CMS','admin','Indi_Db_Table','y',0,39);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (20,'Копия','resize','Indi_Db_Table','y',0,107);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (25,'Статическая страница','staticpage','Indi_Db_Table','o',0,131);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (90,'Параметр настройки элемента управления','possibleElementParam','Indi_Db_Table','y',0,472);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (91,'Параметр настройки элемента управления, в контексте поля сущности','param','Indi_Db_Table','y',0,477);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (101,'Раздел фронтенда','fsection','Indi_Db_Table','y',1,559);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (195,'Фильтр','search','Indi_Db_Table','y',0,1443);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (128,'Фидбэк','feedback','Indi_Db_Table','o',0,678);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (129,'Подписчик','subscriber','Indi_Db_Table','o',0,682);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (130,'Пользователь','user','Indi_Db_Table','o',0,685);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (146,'Действие, возможное для использования в разделе фронтенда','faction','Indi_Db_Table','y',1,857);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (147,'Действие в разделе фронтенда','fsection2faction','Indi_Db_Table','y',1,860);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (160,'Посетитель','visitor','Indi_Db_Table','o',0,1100);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (162,'Компонент SEO-урла','url','Indi_Db_Table','y',0,0);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (171,'Отключенное поле','disabledField','Indi_Db_Table','y',0,1342);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (204,'Статический элемент','staticblock','Indi_Db_Table','o',0,1485);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (205,'Пункт меню','menu','Indi_Db_Table','o',0,1490);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (301,'Компонент содержимого meta-тега','metatag','Indi_Db_Table','y',0,0);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (305,'Уведомление','notice','Indi_Db_Table','y',0,2216);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (306,'Получатель уведомлений','noticeGetter','Indi_Db_Table','y',0,2230);
insert  into `entity`(`id`,`title`,`table`,`extends`,`system`,`useCache`,`titleFieldId`) values (307,'Адрес для проверки','address','Indi_Db_Table','n',0,2236);

/*Table structure for table `enumset` */

DROP TABLE IF EXISTS `enumset`;

CREATE TABLE `enumset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `move` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fieldId` (`fieldId`)
) ENGINE=MyISAM AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

/*Data for the table `enumset` */

insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1,3,'Нет','n',1);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (2,3,'Да','y',2);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (5,22,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',5);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (6,22,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',6);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (9,29,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включено','y',9);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (10,29,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключено','n',10);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (11,37,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',11);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (12,37,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',12);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (13,42,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',13);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (14,42,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',14);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (62,66,'Нет','none',62);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (63,66,'Только с одним значением ключа','one',63);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (64,66,'С набором значений ключей','many',64);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (87,111,'Поменять, но с сохранением пропорций','p',87);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (88,111,'Поменять','c',88);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (89,111,'Не менять','o',89);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (91,114,'Ширины','width',91);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (92,114,'Высоты','height',92);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (95,137,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включена','y',95);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (96,137,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключена','n',96);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (112,345,'Да','y',112);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (113,345,'Нет','n',113);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (122,0,'Всем друзьям, кроме указанных в разделе \"Исключения из правил доступа на просмотр блога\"','ae',122);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (162,455,'Переменная сущность','e',294);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (163,455,'Фильтрация','с',165);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (181,470,'Нет','none',164);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (183,470,'Да, для энного количества значений ключей','many',296);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (184,470,'Да, но для только одного значения ключа','one',295);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (187,455,'Отсутствует','u',148);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (213,557,'По возрастанию','ASC',297);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (214,557,'По убыванию','DESC',182);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (219,594,'Да','y',299);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (220,594,'Нет','n',300);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (227,612,'Проектная','n',301);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (228,612,'<span style=\'color: red\'>Системная</span>','y',186);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (241,689,'Мужской','m',427);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (242,689,'Женский','f',309);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (572,1365,'<font color=lime>Типовое</font>','o',461);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (571,1365,'<font color=red>Системное</font>','s',460);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (570,1365,'Проектное','p',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (580,1445,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (581,1445,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',464);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (979,2197,'<span class=\"i-color-box\" style=\"background: url(/i/admin/field/regular.png);\"></span>Обычное','regular',979);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (980,2197,'<span class=\"i-color-box\" style=\"background: url(/i/admin/field/required.png);\"></span>Обязательное','required',980);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (981,2197,'<span class=\"i-color-box\" style=\"background: url(/i/admin/field/readonly.png);\"></span>Только чтение','readonly',981);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (982,2197,'<span class=\"i-color-box\" style=\"background: url(/i/admin/field/hidden.png);\"></span>Скрытое','hidden',982);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (328,0,'Очень плохо','1',254);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (480,1040,'Одностроковый','s',408);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (478,1027,'Для jQuery.post()','j',407);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (479,1040,'Обычный','r',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (477,1027,'Обычное','r',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (574,1366,'<font color=red>Системный</font>','s',462);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (573,1366,'Проектный','p',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (575,1366,'<font color=lime>Типовой</font>','o',463);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (458,1009,'SQL-выражению','e',396);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (457,1009,'Одному из имеющихся столбцов','c',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (459,1011,'По возрастанию','ASC',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (460,1011,'По убыванию','DESC',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (484,1074,'Над записью','r',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (485,1074,'Над набором записей','rs',411);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (486,1074,'Только независимые множества, если нужно','n',412);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (509,689,'Не&nbsp;указан','n',192);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (567,1364,'Проектное','p',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (568,1364,'<font color=red>Системное</font>','s',458);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (569,1364,'<font color=lime>Типовое</font>','o',459);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (516,1163,'Никакая','n',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (517,1163,'Facebook','fb',432);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (518,1163,'Вконтакте','vk',433);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (519,1163,'Twitter','tw',434);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (976,2194,'many','many',976);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (977,2193,'Откл. поле','171',977);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (975,2194,'one','one',975);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (973,2193,'действие в разделе','8',973);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (972,2193,'действие','7',972);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (969,2176,'Запись','row',969);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (968,2176,'Действие','action',968);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (967,2176,'Раздел','section',967);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (974,2194,'none','none',974);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (566,612,'<font color=lime>Типовая</font>','o',457);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (582,1488,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (583,1488,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',465);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (584,1491,'Нет','n',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (585,1491,'Да','y',466);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (586,1494,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (587,1494,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',467);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (594,1515,'HTML','html',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (595,1515,'Строка','string',471);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (596,1515,'Текст','textarea',472);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (597,1495,'Да','y',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (598,1495,'Нет','n',473);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (608,1533,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',478);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (607,1533,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (962,2172,'&lt;title&gt;..&lt;/title&gt;','title',962);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (963,2172,'&lt;meta name=\"keywords\" content=\"..\"/&gt;','keywords',963);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (964,2172,'&lt;meta name=\"description\" content=\"..\"/&gt;','description',964);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (965,2173,'Статический','static',965);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (966,2173,'Динамический','dynamic',966);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (960,2159,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включен','y',0);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (961,2159,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключен','n',489);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (983,2202,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включено','y',983);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (984,2202,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключено','n',984);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (985,2203,'Всем пользователям','all',985);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (986,2203,'Только выбранным','only',986);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (987,2203,'Всем, кроме выбранных','except',987);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (988,2205,'Всем пользователям','all',988);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (989,2205,'Только выбранным','only',989);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (990,2205,'Всем, кроме выбранных','except',990);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (991,2207,'Все пользователи','all',991);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (992,2207,'Только выбранные','only',992);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (993,2207,'Все, кроме выбранных','except',993);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (994,2210,'<span class=\"i-color-box\" style=\"background: lightgray;\"></span>Выключен','0',994);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (995,2210,'<span class=\"i-color-box\" style=\"background: blue;\"></span>Включен','1',995);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (996,2212,'<span class=\"i-color-box\" style=\"background: blue;\"></span>Авто','auto',996);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (997,2212,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Отображать','yes',997);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (998,2212,'<span class=\"i-color-box\" style=\"background: red;\"></span>Не отображать','no',998);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (999,2213,'<span class=\"i-color-box\" style=\"background: blue;\"></span>Авто','auto',999);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1000,2213,'<span class=\"i-color-box\" style=\"background: yellow;\"></span>Отдельным запросом','yes',1000);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1001,2213,'<span class=\"i-color-box\" style=\"background: lime;\"></span>В том же запросе','no',1001);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1002,2214,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включено','auto',1002);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1003,2214,'<span class=\"i-color-box\" style=\"background: lightgray;\"></span>Выключено','n',1003);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1004,2219,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Включено','y',1004);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1005,2219,'<span class=\"i-color-box\" style=\"background: red;\"></span>Выключено','n',1005);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1006,2233,'<span class=\"i-color-box\" style=\"background: lightgray;\"></span>Нет','n',1006);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1007,2233,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Да','y',1007);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1008,2234,'<span class=\"i-color-box\" style=\"background: lightgray;\"></span>Нет','n',1008);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1009,2234,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Да','y',1009);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1010,2240,'Ожидает проверки','pend',1010);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1011,2240,'Проверен','done',1011);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1012,2249,'<span class=\"i-color-box\" style=\"background: lightgray;\"></span>Неизвестно','unknown',1012);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1013,2249,'<span class=\"i-color-box\" style=\"background: red;\"></span>Да','yes',1014);
insert  into `enumset`(`id`,`fieldId`,`title`,`alias`,`move`) values (1014,2249,'<span class=\"i-color-box\" style=\"background: lime;\"></span>Нет','no',1013);

/*Table structure for table `faction` */

DROP TABLE IF EXISTS `faction`;

CREATE TABLE `faction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `maintenance` enum('r','rs','n') NOT NULL DEFAULT 'r',
  `type` enum('o','s','p') NOT NULL DEFAULT 'p',
  PRIMARY KEY (`id`),
  KEY `maintenance` (`maintenance`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `faction` */

insert  into `faction`(`id`,`title`,`alias`,`maintenance`,`type`) values (1,'По умолчанию','index','rs','s');
insert  into `faction`(`id`,`title`,`alias`,`maintenance`,`type`) values (2,'Просмотр','details','r','s');
insert  into `faction`(`id`,`title`,`alias`,`maintenance`,`type`) values (3,'Изменить','form','r','s');
insert  into `faction`(`id`,`title`,`alias`,`maintenance`,`type`) values (5,'Добавить','create','n','s');
insert  into `faction`(`id`,`title`,`alias`,`maintenance`,`type`) values (6,'Активация аккаунта','activation','n','o');
insert  into `faction`(`id`,`title`,`alias`,`maintenance`,`type`) values (36,'Регистрация','registration','n','o');
insert  into `faction`(`id`,`title`,`alias`,`maintenance`,`type`) values (37,'Восстановление доступа','changepasswd','n','o');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `message` (`message`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `feedback` */

/*Table structure for table `field` */

DROP TABLE IF EXISTS `field`;

CREATE TABLE `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `columnTypeId` int(11) NOT NULL DEFAULT '0',
  `elementId` int(11) NOT NULL DEFAULT '0',
  `defaultValue` varchar(255) NOT NULL DEFAULT '',
  `move` int(11) NOT NULL DEFAULT '0',
  `relation` int(11) NOT NULL DEFAULT '0',
  `satellite` int(11) NOT NULL DEFAULT '0',
  `dependency` enum('e','с','u') NOT NULL DEFAULT 'u',
  `storeRelationAbility` enum('none','many','one') NOT NULL DEFAULT 'none',
  `alternative` varchar(255) NOT NULL DEFAULT '',
  `filter` varchar(255) NOT NULL DEFAULT '',
  `satellitealias` varchar(255) NOT NULL DEFAULT '',
  `mode` enum('regular','required','readonly','hidden') NOT NULL DEFAULT 'regular',
  `tooltip` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entityId` (`entityId`),
  KEY `columnTypeId` (`columnTypeId`),
  KEY `elementId` (`elementId`),
  KEY `relation` (`relation`),
  KEY `satellite` (`satellite`),
  KEY `dependency` (`dependency`),
  KEY `storeRelationAbility` (`storeRelationAbility`),
  KEY `mode` (`mode`),
  FULLTEXT KEY `tooltip` (`tooltip`)
) ENGINE=MyISAM AUTO_INCREMENT=2251 DEFAULT CHARSET=utf8;

/*Data for the table `field` */

insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1,1,'Наименование','title',1,1,'',1,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2,1,'Тип столбца MySQL','type',1,1,'',2,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (3,1,'Пригоден для хранения внешних ключей','canStoreRelation',10,5,'n',3,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (4,2,'Наименование','title',1,1,'',4,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (5,2,'Таблица БД','table',1,1,'',5,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (6,5,'Сущность, в структуру которой входит это поле','entityId',3,23,'0',6,2,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (7,5,'Наименование поля','title',1,1,'',7,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (8,5,'Наименование соответствующего полю столбца в  таблице БД','alias',1,1,'',8,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (9,5,'Тип столбца MySQL','columnTypeId',3,23,'0',12,1,10,'с','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (10,5,'Элемент управления','elementId',3,23,'0',11,4,470,'с','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (11,5,'Значение по умолчанию','defaultValue',1,1,'',13,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (12,5,'Ключи какой сущности будут храниться в этом поле','relation',3,23,'0',414,2,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (14,5,'Положение в списке','move',3,4,'0',413,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (15,6,'Поле','fieldId',3,23,'0',15,5,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (16,6,'Наименование','title',1,1,'',16,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (17,6,'Псевдоним','alias',1,1,'',17,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (18,3,'Подчинен разделу','sectionId',3,23,'0',19,3,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (19,3,'Cущность, закрепленная за разделом','entityId',3,23,'0',25,2,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2198,195,'Содержательность','consistence',12,9,'1',2198,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (20,3,'Наименование','title',1,1,'',18,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (21,3,'Контроллер','alias',1,1,'',21,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (22,3,'Статус','toggle',10,5,'y',20,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (23,3,'Положение в списке','move',3,4,'',443,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (25,3,'Записей на странице','rowsOnPage',3,1,'25',1278,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (26,8,'Раздел, за которым закреплено действие','sectionId',3,23,'',1,3,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (27,8,'Действие','actionId',3,23,'',1,7,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (28,8,'Профили пользователей, имеющих доступ к этому действию в этом разделе','profileIds',1,7,'14',1,10,0,'u','many','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (29,8,'Статус','toggle',10,5,'y',1,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (30,8,'Положение в списке','move',3,4,'',1,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (31,7,'Наименование','title',1,1,'',26,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (32,7,'Псевдоним','alias',1,1,'',27,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (33,9,'Раздел','sectionId',3,23,'',28,3,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (34,9,'Поле','fieldId',3,23,'',29,5,33,'с','one','entityId','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (35,9,'Очередность отображения столбца в гриде','move',3,4,'',1738,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (36,10,'Наименование','title',1,1,'',31,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (37,10,'Статус','toggle',10,5,'y',32,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (38,11,'Профиль','profileId',3,23,'',33,10,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (39,11,'Фамилия Имя','title',1,1,'',34,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (40,11,'Email (используется в качестве логина)','email',1,1,'',35,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (41,11,'Пароль','password',1,1,'',36,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (42,11,'Статус','toggle',10,5,'y',37,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (64,4,'Наименование','title',1,1,'',53,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (65,4,'Псевдоним','alias',1,1,'',54,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (66,4,'Способен работать с внешними ключами','storeRelationAbility',11,23,'none',55,6,0,'u','many','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1445,195,'Статус','toggle',10,5,'y',1316,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (92,4,'Скрывать при генерации формы','hidden',12,9,'0',72,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (106,20,'Поле','fieldId',3,23,'0',86,5,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (107,20,'Наименование','title',1,1,'',87,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (108,20,'Псевдоним','alias',1,1,'',88,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (109,20,'Ширина','masterDimensionValue',3,18,'0',91,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (110,20,'Высота','slaveDimensionValue',3,18,'0',93,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (111,20,'Размер','proportions',10,5,'o',89,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (112,20,'Ограничить пропорциональную <span id=\"slaveDimensionTitle\">высоту</span>','slaveDimensionLimitation',12,9,'1',92,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (114,20,'При расчете пропорций отталкиваться от','masterDimensionAlias',10,5,'width',90,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (131,25,'Наименование','title',1,1,'',101,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (133,25,'Псевдоним','alias',1,1,'',102,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (137,25,'Статус','toggle',10,5,'y',2208,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (345,7,'Для выполнения действия необходимо выбрать стоку','rowRequired',10,5,'y',308,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (377,6,'Порядок отображения','move',3,4,'0',338,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (383,5,'Столбец-satellite','satellite',3,23,'0',2197,5,6,'с','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (454,5,'Динамическое обновление','span',0,16,'',701,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (455,5,'Тип зависимости','dependency',10,5,'u',775,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (470,5,'Предназначено для хранения ключей','storeRelationAbility',10,23,'none',10,6,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (471,90,'Элемент управления','elementId',3,23,'0',429,4,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (472,90,'Наименование','title',1,1,'',430,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (473,90,'Псевдоним','alias',1,1,'',431,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (474,90,'Значение по умолчанию','defaultValue',1,1,'',432,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (475,1,'Пригоден для работы с элементами управления','elementId',1,23,'',433,4,0,'u','many','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (476,91,'В контексте какого поля','fieldId',3,23,'0',434,5,0,'u','one','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (477,91,'Параметр настройки','possibleParamId',3,23,'0',435,90,476,'с','one','elementId','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (478,91,'Значение параметра','value',4,6,'',436,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (502,3,'От какого класса наследовать класс контроллера','extends',1,1,'Indi_Controller_Admin',23,0,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (503,3,'Сортировка','defaultSortField',3,23,'0',514,5,19,'с','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2212,8,'South-панель','south',10,23,'auto',2212,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (555,2,'От какого класса наследовать','extends',1,1,'Indi_Db_Table',512,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (557,3,'Направление сортировки','defaultSortDirection',10,5,'ASC',1277,6,0,'u','none','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (559,101,'Наименование','title',1,1,'',517,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (560,101,'Псевдоним','alias',1,1,'',519,0,0,'u','none','0','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (563,101,'Прикрепленная сущность','entityId',3,23,'0',520,2,0,'u','one','0','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (566,5,'Если имя столбца-satellite не найдено, то по какому другому столбцу фильтровать','alternative',1,1,'',2199,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (581,101,'Соответствующий раздел бэкенда','sectionId',3,23,'0',534,3,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (585,101,'Порядок отображения соответствующего пункта в меню','move',3,4,'0',950,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (594,20,'Изменить оттенок','changeColor',10,5,'n',545,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (595,20,'Оттенок','color',13,11,'',546,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (612,2,'Тип','system',10,5,'n',559,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (678,128,'Имя','title',1,1,'',625,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (679,128,'Email','email',1,1,'',626,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (680,128,'Сообщение','message',4,6,'',627,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (681,128,'Дата','date',9,19,'<?=date(\'Y-m-d H:i:s\')?>',628,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (682,129,'Email','title',1,1,'',629,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (683,129,'Дата','date',6,12,'0000-00-00',630,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (684,130,'Email','email',1,1,'',633,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (685,130,'ФИО','title',1,1,'',632,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (686,130,'Пароль','password',1,1,'',634,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (689,130,'Пол','gender',10,5,'n',969,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (690,130,'Дата рождения','birth',6,12,'0000-00-00',1100,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (691,130,'Дата регистрации','registration',6,12,'<?=date(\'Y-m-d\')?>',636,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1364,7,'Тип','type',10,5,'p',2099,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1365,146,'Тип','type',10,5,'p',1293,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (698,130,'Подписался на рассылку','subscribed',12,9,'0',1443,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (699,130,'Последний визит','lastVisit',9,19,'',640,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1444,195,'Порядок отображения','move',3,4,'0',1315,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1442,195,'Раздел','sectionId',3,23,'0',1313,3,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1443,195,'Поле прикрепленной к разделу сущности','fieldId',3,23,'0',1314,5,1442,'с','one','entityId','`elementId` NOT IN (4,14,16,20,22)','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1441,2,'Включить в кэш','useCache',12,23,'0',1312,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (754,5,'Статическая фильтрация','filter',1,1,'',428,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (767,3,'Статическая фильтрация','filter',1,1,'',461,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (828,5,'Псевдоним поля для использования в satellite-функциональности','satellitealias',1,1,'',523,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (857,146,'Наименование','title',1,1,'',803,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (858,146,'Псевдоним','alias',1,1,'',804,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (859,147,'Раздел фронтенда','fsectionId',3,23,'0',805,101,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (860,147,'Действие','factionId',3,23,'0',806,146,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (868,101,'Вышестоящий раздел','fsectionId',3,5,'0',516,101,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (869,101,'Статическая фильтрация','filter',1,1,'',814,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (960,101,'Количество строк для отображения по умолчанию','defaultLimit',3,18,'20',951,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (961,130,'Аккаунт активирован','activated',12,9,'0',637,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (962,130,'Код активации','activationCode',1,1,'',639,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1366,3,'Тип','type',10,5,'p',22,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1009,101,'По умолчанию сортировка по','orderBy',10,5,'c',952,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1010,101,'Столбец сортировки','orderColumn',3,23,'0',953,5,563,'с','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1011,101,'Направление сортировки','orderDirection',10,5,'ASC',981,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1012,101,'SQL-выражение','orderExpression',1,1,'',982,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1027,147,'Тип','type',10,5,'r',968,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1028,130,'Аватар','avatar',0,14,'',1099,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1040,101,'Тип','type',10,5,'r',538,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1041,101,'Где брать идентификатор','where',1,1,'',983,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1042,101,'Действие по умолчанию','index',1,1,'',1403,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1074,146,'Выполнять maintenance()','maintenance',10,5,'r',1015,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1100,160,'Id сессии','title',1,1,'',1040,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1101,160,'Дата последней активности','lastActivity',9,19,'0000-00-00 00:00:00',1041,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1102,160,'Пользователь','userId',3,23,'0',1042,130,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1108,130,'Настройки','settings',0,16,'',1101,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1161,130,'Социальные сети','socialNetworks',0,16,'',1444,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1162,130,'ID пользователя в этой соц.сети','identifier',1,1,'',1707,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1163,130,'Какая','sn',10,5,'n',1445,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1191,147,'Не указывать действие при создании seo-урлов из системных','blink',12,9,'0',1259,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1192,162,'Раздел фронтенда','fsectionId',3,23,'0',1127,101,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1193,162,'Действие в разделе фронтенда','fsection2factionId',3,23,'0',1128,147,1192,'с','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1194,162,'Компонент','entityId',3,23,'0',1129,2,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1195,162,'Очередность','move',3,4,'0',1130,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1196,162,'Префикс','prefix',1,1,'',1131,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2196,9,'Вышестоящий столбец','gridId',3,23,'0',30,9,0,'u','one','','`sectionId` = \"<?=$this->sectionId?>\"','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2193,130,'set','entityId',11,7,'7',2195,6,0,'u','many','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2194,130,'asd','storeRelationAbility',11,7,'none',2193,6,0,'u','many','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2190,130,'тест','test',3,23,'0',2194,5,2193,'с','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2191,130,'testIds','testIds',1,7,'',2191,4,0,'u','many','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2184,195,'Игнорировать optionTemplate','ignoreTemplate',12,9,'1',2183,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2195,130,'Цвет','color',13,11,'',2190,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2183,195,'Статическая фильтрация','filter',1,1,'',2167,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2176,301,'Источник','source',10,23,'section',2176,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2177,301,'Сущность','entityId',3,23,'0',2177,2,0,'u','one','','`id` IN (<?=$this->foreign(\'fsectionId\')->entityRoute(true)?>)','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2178,301,'Свойство','fieldId',3,23,'0',2178,5,2177,'с','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2179,301,'Префикс','prefix',1,1,'',2179,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2180,301,'Постфикс','postfix',1,1,'',2180,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2181,301,'Порядок отображения','move',3,18,'0',2181,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2182,195,'Значение по умолчанию','defaultValue',1,1,'',2182,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1325,147,'Переименовать действие при генерации seo-урла','rename',12,9,'0',1260,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1326,147,'Псевдоним','alias',1,1,'',1261,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1327,147,'Настройки SEO','seoSettings',0,16,'',1126,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1337,10,'Cущность, экземпляры которой тоже будут иметь доступ к CMS с данным профилем','entityId',3,23,'0',1271,2,0,'u','one','','`system`!=\'y\'','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1341,171,'Раздел','sectionId',3,23,'0',1275,3,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1342,171,'Поле, которое должно быть отключено','fieldId',3,23,'0',1276,5,1341,'с','one','entityId','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1345,3,'Отключить кнопку Add','disableAdd',12,9,'0',2211,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1509,204,'Ширина','detailsHtmlWidth',3,18,'0',1383,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1532,171,'Значение по умолчанию','defaultValue',1,1,'',1402,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1485,204,'Наименование','title',1,1,'',1356,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1486,204,'Псевдоним','alias',1,1,'',1357,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1487,204,'Значение','detailsHtml',4,13,'',1382,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1488,204,'Статус','toggle',10,5,'y',1358,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1489,205,'Вышестояший пункт','menuId',3,23,'0',1359,205,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1490,205,'Наименование','title',1,1,'',1360,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1491,205,'Связан со статической страницей','linked',10,5,'n',1361,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1492,205,'Статическая страница','staticpageId',3,23,'0',1362,25,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1493,205,'Ссылка','url',1,1,'',1363,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1494,205,'Статус','toggle',10,23,'y',1364,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1495,205,'Отображать в нижнем меню','bottom',10,5,'y',1365,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1496,205,'Порядок отображения','move',3,4,'0',1366,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1814,25,'Контент','details',4,13,'',1667,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1510,204,'Контент','detailsSpan',0,16,'',1379,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1511,204,'Высота','detailsHtmlHeight',3,18,'200',1384,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1513,204,'Css класс для body','detailsHtmlBodyClass',1,1,'',1385,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1514,204,'Css стили','detailsHtmlStyle',4,6,'',1386,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1515,204,'Тип','type',10,5,'html',1380,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1516,204,'Значение','detailsString',1,1,'',1387,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1517,204,'Значение','detailsTextarea',4,6,'',1557,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2173,301,'Тип компонента','type',10,23,'static',2173,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2174,301,'Компонент','content',1,1,'',2174,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2175,301,'Шагов вверх','up',3,18,'0',2175,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2172,301,'Тэг','tag',10,23,'title',2172,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2171,301,'Действие','fsection2factionId',3,23,'0',2171,147,2170,'с','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2170,301,'Раздел','fsectionId',3,23,'0',2170,101,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1533,101,'Статус','toggle',10,5,'y',1429,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1554,3,'Связь с вышестоящим разделом по полю','parentSectionConnector',3,23,'0',310,5,19,'с','one','','`relation`!=\"0\"','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1560,101,'Связь с вышестоящим разделом по полю','parentSectionConnector',3,23,'0',815,5,868,'с','one','entityId','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1562,101,'От какого класса наследовать класс контроллера','extends',1,1,'',1431,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1575,130,'Смена пароля','changepasswd',0,16,'',1708,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1576,130,'Дата последнего запроса','changepasswdDate',9,19,'0000-00-00 00:00:00',1709,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1577,130,'Код','changepasswdCode',1,1,'',1710,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1658,195,'Альтернативное наименование','alt',1,1,'',1520,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2132,10,'Порядок отображения','move',3,4,'0',2132,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (1886,9,'Изменить название столбца на','alterTitle',1,1,'',2133,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2100,7,'Отображать в панели действий','display',12,9,'1',2100,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2131,10,'Dashboard','dashboard',1,1,'',2131,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2159,9,'Статус','toggle',10,5,'y',2165,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2161,171,'Отображать в форме','displayInForm',12,9,'0',2134,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2166,91,'Auto title','title',1,1,'',2166,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2163,2,'Заголовочное поле','titleFieldId',3,23,'0',2163,5,0,'u','one','','`entityId` = \"<?=$this->id?>\" AND `columnTypeId` != \"0\"','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2164,8,'Auto title','title',1,1,'',2164,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2165,9,'Auto title','title',1,1,'',2200,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2167,195,'Auto title','title',1,1,'',2184,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2168,147,'Auto title','title',1,1,'',2168,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2169,171,'Auto title','title',1,1,'',2169,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2197,5,'Режим','mode',10,23,'regular',9,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2199,5,'Подсказка','tooltip',4,6,'',95,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2200,9,'Подсказка','tooltip',4,6,'',2205,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2203,195,'Доступ','access',10,5,'all',2203,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2202,7,'Статус','toggle',10,23,'y',2202,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2204,195,'Выбранные','profileIds',1,7,'',2204,10,0,'u','many','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2205,9,'Доступ','access',10,5,'all',2206,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2206,9,'Выбранные','profileIds',1,7,'',2210,10,0,'u','many','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2207,171,'Влияние','impact',10,5,'all',2207,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2208,25,'Родительская страница','staticpageId',3,23,'0',1666,25,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2209,8,'Переименовать','rename',1,1,'',2209,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2210,9,'Редактор','editor',10,5,'0',2196,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2211,3,'Группировка','groupBy',3,23,'0',462,5,19,'с','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2213,3,'Режим подгрузки данных','rowsetSeparate',10,23,'auto',2213,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2214,8,'Автосайз окна','fitWindow',10,23,'auto',2214,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2215,10,'Максимальное количество окон','maxWindows',3,18,'15',2215,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2216,305,'Наименование','title',1,1,'',2216,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2217,305,'Сущность','entityId',3,23,'0',2217,2,0,'u','one','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2218,305,'Получатели','profileId',1,23,'',2218,10,0,'u','many','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2219,305,'Статус','toggle',10,23,'y',2219,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2220,305,'Счетчик','match',0,16,'',2220,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2221,305,'Отображение / SQL','matchSql',1,1,'',2221,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2222,305,'Изменение / PHP','matchPhp',1,1,'',2222,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2223,305,'Пункты меню','sectionId',1,23,'',2223,3,2217,'с','many','','FIND_IN_SET(`sectionId`, \"<?=Indi::model(\'Section\')->fetchAll(\'`sectionId` = \"0\"\')->column(\'id\', true)?>\")','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2224,305,'Цвет фона','bg',13,11,'212#d9e5f3',2224,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2225,305,'Сообщение при увеличении счетчика','tplUp',0,16,'',2227,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2226,305,'Заголовок','tplUpHeader',1,1,'',2228,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2227,305,'Текст','tplUpBody',4,6,'',2235,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2228,305,'При уменьшении счетчика','tplDown',4,6,'',2250,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2229,306,'Уведомление','noticeId',3,23,'0',2229,305,0,'u','one','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2230,306,'Роль','profileId',3,23,'0',2230,10,0,'u','one','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2231,306,'Критерий','criteria',1,1,'',2231,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2232,306,'Auto title','title',1,1,'',2232,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2233,306,'Дублирование на почту','mail',10,23,'n',2233,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2234,306,'Дублирование в ВК','vk',10,23,'n',2234,6,0,'u','one','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2235,305,'Цвет текста','fg',13,11,'216#044099',2225,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2236,307,'Адрес','title',1,1,'',2236,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2237,307,'Индекс','postcode',3,18,'0',2237,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2238,307,'Город','city',1,1,'',2238,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2239,307,'Улица, дом, офис','address',1,1,'',2239,0,0,'u','none','','','','required','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2240,307,'Статус','status',10,23,'pend',2241,6,0,'u','one','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2241,307,'Количество ЮЛ','llcQty',3,18,'0',2243,0,0,'u','none','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2242,307,'Обновлено','updated',6,12,'0000-00-00',2244,0,0,'u','none','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2247,307,'Стандартизация адреса','dadata',4,6,'',2249,0,0,'u','none','','','','hidden','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2243,307,'Файл капчи','captchaImg',0,14,'',2246,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2244,307,'Код капчи','captchaCode',3,18,'0',2248,0,0,'u','none','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2245,307,'Капча','captcha',0,16,'',2245,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2246,307,'Задача','captchaTask',1,1,'',2247,0,0,'u','none','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2248,307,'Результаты','result',0,16,'',2240,0,0,'u','none','','','','regular','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2249,307,'Адрес массовой регистрации','isMass',10,23,'unknown',2242,6,0,'u','one','','','','readonly','');
insert  into `field`(`id`,`entityId`,`title`,`alias`,`columnTypeId`,`elementId`,`defaultValue`,`move`,`relation`,`satellite`,`dependency`,`storeRelationAbility`,`alternative`,`filter`,`satellitealias`,`mode`,`tooltip`) values (2250,305,'Подсказка','tooltip',4,6,'',2226,0,0,'u','none','','','','regular','');

/*Table structure for table `fsection` */

DROP TABLE IF EXISTS `fsection`;

CREATE TABLE `fsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `move` int(11) NOT NULL DEFAULT '0',
  `fsectionId` int(11) NOT NULL DEFAULT '0',
  `filter` varchar(255) NOT NULL DEFAULT '',
  `defaultLimit` int(11) NOT NULL DEFAULT '20',
  `orderBy` enum('e','c') NOT NULL DEFAULT 'c',
  `orderColumn` int(11) NOT NULL DEFAULT '0',
  `orderDirection` enum('ASC','DESC') NOT NULL DEFAULT 'ASC',
  `orderExpression` varchar(255) NOT NULL DEFAULT '',
  `type` enum('s','r') NOT NULL DEFAULT 'r',
  `where` varchar(255) NOT NULL DEFAULT '',
  `index` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('n','y') NOT NULL DEFAULT 'y',
  `parentSectionConnector` int(11) NOT NULL DEFAULT '0',
  `extends` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `entityId` (`entityId`),
  KEY `sectionId` (`sectionId`),
  KEY `fsectionId` (`fsectionId`),
  KEY `type` (`type`),
  KEY `parentSectionConnector` (`parentSectionConnector`),
  KEY `orderBy` (`orderBy`),
  KEY `orderColumn` (`orderColumn`),
  KEY `orderDirection` (`orderDirection`),
  KEY `toggle` (`toggle`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

/*Data for the table `fsection` */

insert  into `fsection`(`id`,`title`,`alias`,`entityId`,`sectionId`,`move`,`fsectionId`,`filter`,`defaultLimit`,`orderBy`,`orderColumn`,`orderDirection`,`orderExpression`,`type`,`where`,`index`,`toggle`,`parentSectionConnector`,`extends`) values (8,'Пользователи','users',130,146,28,0,'',20,'c',0,'ASC','','r','','','y',0,'');
insert  into `fsection`(`id`,`title`,`alias`,`entityId`,`sectionId`,`move`,`fsectionId`,`filter`,`defaultLimit`,`orderBy`,`orderColumn`,`orderDirection`,`orderExpression`,`type`,`where`,`index`,`toggle`,`parentSectionConnector`,`extends`) values (37,'Статические страницы','static',25,30,39,0,'',20,'c',0,'ASC','','r','','','y',0,'');
insert  into `fsection`(`id`,`title`,`alias`,`entityId`,`sectionId`,`move`,`fsectionId`,`filter`,`defaultLimit`,`orderBy`,`orderColumn`,`orderDirection`,`orderExpression`,`type`,`where`,`index`,`toggle`,`parentSectionConnector`,`extends`) values (22,'Фидбэк','feedback',128,144,44,0,'',20,'c',0,'ASC','','s','\"\"','add','n',0,'');
insert  into `fsection`(`id`,`title`,`alias`,`entityId`,`sectionId`,`move`,`fsectionId`,`filter`,`defaultLimit`,`orderBy`,`orderColumn`,`orderDirection`,`orderExpression`,`type`,`where`,`index`,`toggle`,`parentSectionConnector`,`extends`) values (26,'Мой профиль','myprofile',130,0,22,39,'',20,'c',0,'ASC','','s','`id` = \'\'','form','y',0,'My');
insert  into `fsection`(`id`,`title`,`alias`,`entityId`,`sectionId`,`move`,`fsectionId`,`filter`,`defaultLimit`,`orderBy`,`orderColumn`,`orderDirection`,`orderExpression`,`type`,`where`,`index`,`toggle`,`parentSectionConnector`,`extends`) values (39,'Главная','index',0,0,8,0,'',20,'c',0,'ASC','','r','','','y',0,'');
insert  into `fsection`(`id`,`title`,`alias`,`entityId`,`sectionId`,`move`,`fsectionId`,`filter`,`defaultLimit`,`orderBy`,`orderColumn`,`orderDirection`,`orderExpression`,`type`,`where`,`index`,`toggle`,`parentSectionConnector`,`extends`) values (41,'Карта сайта','sitemap',101,113,41,0,'`toggle`=\"y\"',20,'c',585,'ASC','','r','','','y',0,'');

/*Table structure for table `fsection2faction` */

DROP TABLE IF EXISTS `fsection2faction`;

CREATE TABLE `fsection2faction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fsectionId` int(11) NOT NULL DEFAULT '0',
  `factionId` int(11) NOT NULL DEFAULT '0',
  `type` enum('j','r') NOT NULL DEFAULT 'r',
  `blink` tinyint(1) NOT NULL DEFAULT '0',
  `rename` tinyint(1) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fsectionId` (`fsectionId`),
  KEY `factionId` (`factionId`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

/*Data for the table `fsection2faction` */

insert  into `fsection2faction`(`id`,`fsectionId`,`factionId`,`type`,`blink`,`rename`,`alias`,`title`) values (126,8,37,'r',0,0,'','Восстановление доступа');
insert  into `fsection2faction`(`id`,`fsectionId`,`factionId`,`type`,`blink`,`rename`,`alias`,`title`) values (129,22,1,'r',0,0,'','По умолчанию');
insert  into `fsection2faction`(`id`,`fsectionId`,`factionId`,`type`,`blink`,`rename`,`alias`,`title`) values (124,26,3,'r',0,0,'','Изменить');
insert  into `fsection2faction`(`id`,`fsectionId`,`factionId`,`type`,`blink`,`rename`,`alias`,`title`) values (127,37,2,'r',0,0,'','Просмотр');
insert  into `fsection2faction`(`id`,`fsectionId`,`factionId`,`type`,`blink`,`rename`,`alias`,`title`) values (123,39,1,'r',0,0,'','По умолчанию');
insert  into `fsection2faction`(`id`,`fsectionId`,`factionId`,`type`,`blink`,`rename`,`alias`,`title`) values (128,41,1,'r',0,0,'','По умолчанию');
insert  into `fsection2faction`(`id`,`fsectionId`,`factionId`,`type`,`blink`,`rename`,`alias`,`title`) values (125,8,6,'r',0,0,'','Активация аккаунта');

/*Table structure for table `grid` */

DROP TABLE IF EXISTS `grid`;

CREATE TABLE `grid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `fieldId` int(11) NOT NULL DEFAULT '0',
  `move` int(11) NOT NULL DEFAULT '0',
  `alterTitle` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `title` varchar(255) NOT NULL DEFAULT '',
  `gridId` int(11) NOT NULL DEFAULT '0',
  `tooltip` text NOT NULL,
  `access` enum('all','only','except') NOT NULL DEFAULT 'all',
  `profileIds` varchar(255) NOT NULL DEFAULT '',
  `editor` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sectionId` (`sectionId`),
  KEY `fieldId` (`fieldId`),
  KEY `toggle` (`toggle`),
  KEY `gridId` (`gridId`),
  KEY `access` (`access`),
  KEY `profileIds` (`profileIds`),
  KEY `editor` (`editor`),
  FULLTEXT KEY `tooltip` (`tooltip`)
) ENGINE=MyISAM AUTO_INCREMENT=2362 DEFAULT CHARSET=utf8;

/*Data for the table `grid` */

insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1,2,1,1,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2,2,2,2,'','y','Тип столбца MySQL',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (3,2,3,3,'','y','Пригоден для хранения внешних ключей',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (4,5,4,4,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (5,5,5,5,'','y','Таблица БД',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (6,6,7,6,'','y','Наименование поля',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (7,6,8,7,'','y','Наименование соответствующего полю столбца в  таблице БД',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (8,6,9,8,'','y','Тип столбца MySQL',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (9,6,10,9,'','y','Элемент управления',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (10,6,11,11,'','y','Значение по умолчанию',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (11,6,12,13,'','y','Ключи какой сущности будут храниться в этом поле',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (13,6,14,2321,'','y','Положение в списке',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (14,7,19,16,'Сущность','y','Cущность, закрепленная за разделом',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (15,7,20,14,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (16,7,21,15,'','y','Контроллер',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (17,7,22,17,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (18,7,23,31,'','y','Положение в списке',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (20,7,25,2327,'','y','Записей на странице',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (23,8,27,23,'','y','Действие',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (24,8,29,24,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (25,8,30,2324,'','y','Положение в списке',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (26,10,31,26,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (27,10,32,27,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (29,11,2165,29,'Столбец','n','Столбец',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (30,11,35,2320,'','y','Очередность отображения столбца в гриде',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (32,13,36,32,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (33,13,37,33,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (34,12,16,34,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (35,12,17,35,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (36,14,39,36,'','y','Фамилия Имя',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (37,14,40,37,'','y','Email (используется в качестве логина)',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (38,14,41,38,'','y','Пароль',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (39,14,42,39,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (42,16,65,43,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (43,16,66,44,'','y','Способен работать с внешними ключами',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (46,16,64,42,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (89,22,107,56,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (90,22,108,57,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (91,22,109,59,'','y','Ширина',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (92,22,110,60,'','y','Высота',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (93,22,111,58,'','y','Размер',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (94,22,112,61,'','y','Ограничить пропорциональную <span id=\"slaveDimensionTitle\">высоту</span>',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (130,30,131,61,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (132,30,133,63,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2283,379,2174,1950,'Статический','y','Компонент',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2284,379,2175,1954,'','y','Шагов вверх',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (136,30,137,67,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (341,12,377,253,'','y','Порядок отображения',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (375,100,472,289,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (376,100,473,290,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (377,100,474,291,'','y','Значение по умолчанию',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (378,101,477,292,'','y','Параметр настройки',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (379,101,478,293,'','y','Значение параметра',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (383,8,28,2326,'','y','Профили пользователей, имеющих доступ к этому действию в этом разделе',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1335,7,1366,926,'','y','Тип',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1334,113,1040,925,'','y','Тип',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1333,172,1365,924,'','y','Тип',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1332,10,1364,923,'','y','Тип',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (420,113,559,328,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (421,113,560,329,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (424,113,563,330,'','y','Прикрепленная сущность',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (443,5,612,347,'','y','Тип',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (489,144,678,388,'','y','Имя',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (490,144,679,389,'','y','Email',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (491,144,681,391,'','y','Дата',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (492,145,682,391,'','y','Email',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (493,145,683,392,'','y','Дата',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (494,146,684,990,'','y','Email',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1470,146,685,392,'','y','ФИО',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1382,224,1444,929,'','y','Порядок отображения',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1384,224,1445,928,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (832,172,857,624,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (833,172,858,625,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (834,173,860,626,'','y','Действие',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1383,224,1443,926,'','y','Поле прикрепленной к разделу сущности',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1053,189,1102,772,'','y','Пользователь',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1052,189,1101,771,'','y','Дата последней активности',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1051,189,1100,770,'','y','Id сессии',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1039,172,1074,759,'','y','Выполнять maintenance()',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (979,173,1027,728,'','y','Тип',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1066,191,1194,782,'','y','Компонент',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1067,191,1195,783,'','y','Очередность',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1068,191,1196,784,'','y','Префикс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2319,146,699,2319,'','y','Последний визит',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2312,224,2183,2312,'','y','Статическая фильтрация',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2311,224,2182,2311,'','y','Значение по умолчанию',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2310,381,2181,1973,'','y','Порядок отображения',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2309,381,2180,1967,'','y','Постфикс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2308,381,2179,1966,'','y','Префикс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2305,381,2176,1971,'','y','Источник',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2307,381,2178,1970,'Динамический','y','Свойство',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2303,381,2174,1968,'Статический','y','Компонент',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2304,381,2175,1972,'','y','Шагов вверх',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2302,381,2173,1965,'','y','Тип компонента',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2300,380,2181,1964,'','y','Порядок отображения',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2299,380,2180,1958,'','y','Постфикс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2298,380,2179,1957,'','y','Префикс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2295,380,2176,1962,'','y','Источник',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2297,380,2178,1961,'Динамический','y','Свойство',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2293,380,2174,1959,'Статический','y','Компонент',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2294,380,2175,1963,'','y','Шагов вверх',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2292,380,2173,1956,'','y','Тип компонента',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2288,379,2179,1948,'','y','Префикс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2289,379,2180,1949,'','y','Постфикс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2290,379,2181,1955,'','y','Порядок отображения',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2287,379,2178,1951,'Динамический','y','Свойство',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2285,379,2176,1952,'','y','Источник',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1231,201,1342,851,'','y','Поле, которое должно быть отключено',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1439,232,1515,965,'','y','Тип',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2282,379,2173,1947,'','y','Тип компонента',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1421,232,1485,962,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1422,232,1486,963,'','y','Псевдоним',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1423,232,1488,1132,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1449,113,1533,989,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1448,201,1532,988,'','y','Значение по умолчанию',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1515,113,585,1036,'','y','Порядок отображения соответствующего пункта в меню',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1656,11,1886,1156,'','y','Изменить название столбца на',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1767,146,691,1222,'','y','Дата регистрации',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (1954,224,1658,1945,'','y','Альтернативное наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2280,201,2161,1946,'','y','Отображать в форме',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2320,11,2159,2322,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2321,6,2197,10,'','y','Режим',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2322,11,34,30,'','y','Поле',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2323,10,2202,2323,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2324,8,2209,2328,'','y','Переименовать',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2325,11,2210,2325,'','y','Редактор',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2326,8,2212,25,'РSП','y','РSП',0,'Режим отображения south-панели','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2327,7,2213,18,'РПД','y','РПД',0,'Режим подгрузки данных','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2328,8,2214,297,'','y','Автосайз окна',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2329,13,2215,2329,'МКО','y','МКО',0,'Максимальное количество окон','all','','1');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2330,385,2216,2329,'','y','Наименование',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2331,385,2217,2330,'','y','Сущность',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2332,385,2218,2331,'','y','Получатели',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2333,385,2219,2332,'','y','Статус',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2334,385,2220,2333,'','y','Счетчик',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2335,385,2221,2334,'','y','Отображение / SQL',2334,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2336,385,2222,2335,'','y','Изменение / PHP',2334,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2337,385,2223,2336,'','y','Пункты меню',2334,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2338,385,2224,2337,'','y','Цвет фона',2334,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2339,385,2225,2338,'','n','Сообщение при увеличении счетчика',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2340,385,2226,2339,'','y','Заголовок',2339,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2341,385,2227,2340,'','y','Текст',2339,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2342,385,2228,2341,'','y','При уменьшении счетчика',2339,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2343,386,2230,2341,'','y','Роль',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2344,386,2231,2342,'','y','Критерий',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2346,386,2233,2344,'Email','y','Email',0,'Дублирование на почту','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2347,386,2234,2345,'VK','y','VK',0,'Дублирование во ВКонтакте','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2348,385,2235,2348,'','y','Цвет текста',2334,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2349,387,2236,2348,'','y','Адрес',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2350,387,2237,2349,'','n','Индекс',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2351,387,2238,2350,'','n','Город',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2352,387,2239,2351,'','n','Улица, дом, офис',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2353,387,2240,2354,'','y','Статус',2360,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2354,387,2241,2353,'ЮЛ','y','ЮЛ',2360,'Количество юридических лиц','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2355,387,2242,2361,'','y','Обновлено',2360,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2356,387,2243,2355,'Файл','y','Файл',2358,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2357,387,2244,2359,'Код','y','Код',2358,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2358,387,2245,2360,'','y','Капча',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2359,387,2246,2356,'','y','Задача',2358,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2360,387,2248,2358,'','y','Результаты',0,'','all','','0');
insert  into `grid`(`id`,`sectionId`,`fieldId`,`move`,`alterTitle`,`toggle`,`title`,`gridId`,`tooltip`,`access`,`profileIds`,`editor`) values (2361,387,2249,2352,'АМР','y','АМР',2360,'Адрес массовой регистрации','all','','0');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `linked` enum('n','y') NOT NULL DEFAULT 'n',
  `staticpageId` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `bottom` enum('y','n') NOT NULL DEFAULT 'y',
  `move` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `menuId` (`menuId`),
  KEY `linked` (`linked`),
  KEY `staticpageId` (`staticpageId`),
  KEY `toggle` (`toggle`),
  KEY `bottom` (`bottom`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`menuId`,`title`,`linked`,`staticpageId`,`url`,`toggle`,`bottom`,`move`) values (1,0,'Курсы','n',0,'/courses','y','y',1);
insert  into `menu`(`id`,`menuId`,`title`,`linked`,`staticpageId`,`url`,`toggle`,`bottom`,`move`) values (5,0,'Сотрудничество','y',9,'','y','y',5);

/*Table structure for table `metatag` */

DROP TABLE IF EXISTS `metatag`;

CREATE TABLE `metatag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fsectionId` int(11) NOT NULL DEFAULT '0',
  `fsection2factionId` int(11) NOT NULL DEFAULT '0',
  `tag` enum('title','keywords','description') NOT NULL DEFAULT 'title',
  `type` enum('static','dynamic') NOT NULL DEFAULT 'static',
  `content` varchar(255) NOT NULL DEFAULT '',
  `up` int(11) NOT NULL DEFAULT '0',
  `source` enum('section','action','row') NOT NULL DEFAULT 'section',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `fieldId` int(11) NOT NULL DEFAULT '0',
  `prefix` varchar(255) NOT NULL DEFAULT '',
  `postfix` varchar(255) NOT NULL DEFAULT '',
  `move` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fsectionId` (`fsectionId`),
  KEY `fsection2factionId` (`fsection2factionId`),
  KEY `tag` (`tag`),
  KEY `type` (`type`),
  KEY `source` (`source`),
  KEY `entityId` (`entityId`),
  KEY `fieldId` (`fieldId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `metatag` */

insert  into `metatag`(`id`,`fsectionId`,`fsection2factionId`,`tag`,`type`,`content`,`up`,`source`,`entityId`,`fieldId`,`prefix`,`postfix`,`move`) values (2,37,127,'title','dynamic','',0,'row',25,131,'','',2);

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `profileId` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `matchSql` varchar(255) NOT NULL DEFAULT '',
  `matchPhp` varchar(255) NOT NULL DEFAULT '',
  `sectionId` varchar(255) NOT NULL DEFAULT '',
  `bg` varchar(10) NOT NULL DEFAULT '212#d9e5f3',
  `tplUpHeader` varchar(255) NOT NULL DEFAULT '',
  `tplUpBody` text NOT NULL,
  `tplDown` text NOT NULL,
  `fg` varchar(10) NOT NULL DEFAULT '216#044099',
  `tooltip` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entityId` (`entityId`),
  KEY `profileId` (`profileId`),
  KEY `toggle` (`toggle`),
  KEY `sectionId` (`sectionId`),
  FULLTEXT KEY `tplUpBody` (`tplUpBody`),
  FULLTEXT KEY `tplDown` (`tplDown`),
  FULLTEXT KEY `tooltip` (`tooltip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `notice` */

insert  into `notice`(`id`,`title`,`entityId`,`profileId`,`toggle`,`matchSql`,`matchPhp`,`sectionId`,`bg`,`tplUpHeader`,`tplUpBody`,`tplDown`,`fg`,`tooltip`) values (1,'Количество адресов массовой регистрации',307,'1','y','`isMass` = \"yes\"','$this->isMass == \'yes\'','387','000#ff0000','','','','000#ffffff','Количество адресов массовой регистрации');

/*Table structure for table `noticegetter` */

DROP TABLE IF EXISTS `noticegetter`;

CREATE TABLE `noticegetter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeId` int(11) NOT NULL DEFAULT '0',
  `profileId` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `mail` enum('n','y') NOT NULL DEFAULT 'n',
  `vk` enum('n','y') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`),
  KEY `noticeId` (`noticeId`),
  KEY `profileId` (`profileId`),
  KEY `mail` (`mail`),
  KEY `vk` (`vk`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `noticegetter` */

insert  into `noticegetter`(`id`,`noticeId`,`profileId`,`criteria`,`title`,`mail`,`vk`) values (1,1,1,'','Конфигуратор','n','n');

/*Table structure for table `param` */

DROP TABLE IF EXISTS `param`;

CREATE TABLE `param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL DEFAULT '0',
  `possibleParamId` int(11) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fieldId` (`fieldId`),
  KEY `possibleParamId` (`possibleParamId`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

/*Data for the table `param` */

insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (90,1487,13,'/css/style.css','Путь к css-нику для подцепки редактором');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (134,1814,5,'true','Во всю ширину');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (102,1487,5,'true','Во всю ширину');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (127,109,4,'px','Единица измерения');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (128,110,4,'px','Единица измерения');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (160,19,21,'system','Группировка опций по столбцу');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (156,18,21,'type','Группировка опций по столбцу');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (158,2190,21,'entityId','Группировка опций по столбцу');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (159,12,21,'system','Группировка опций по столбцу');
insert  into `param`(`id`,`fieldId`,`possibleParamId`,`value`,`title`) values (161,2237,3,'6','Максимальная длина в символах');

/*Table structure for table `possibleelementparam` */

DROP TABLE IF EXISTS `possibleelementparam`;

CREATE TABLE `possibleelementparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `defaultValue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `elementId` (`elementId`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `possibleelementparam` */

insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (3,18,'Максимальная длина в символах','maxlength','5');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (4,18,'Единица измерения','measure','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (5,13,'Во всю ширину','wide','0');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (6,7,'Количество столбцов','cols','1');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (7,13,'Высота в пикселях','height','200');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (28,19,'Отображаемый формат времени','displayTimeFormat','H:i');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (27,19,'Отображаемый формат даты','displayDateFormat','Y-m-d');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (26,12,'Отображаемый формат','displayFormat','Y-m-d');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (11,13,'Ширина в пикселях','width','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (12,13,'Css класс для body','bodyClass','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (13,13,'Путь к css-нику для подцепки редактором','contentsCss','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (14,13,'Стили','style','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (15,14,'Включать наименование поля в имя файла при download-е','appendFieldTitle','true');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (16,14,'Включать наименование сущности в имя файла при download-е','prependEntityTitle','true');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (17,13,'Путь к js-нику для подцепки редактором','contentsJs','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (18,13,'Скрипт','script','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (19,13,'Скрипт обработки исходного кода','sourceStripper','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (20,18,'Только для чтения','readonly','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (21,23,'Группировка опций по столбцу','groupBy','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (22,23,'Шаблон содержимого опции','optionTemplate','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (23,23,'Высота опции','optionHeight','14');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (24,23,'Дополнительно передавать параметры (в виде атрибутов)','optionAttrs','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (25,23,'Отключить лукап','noLookup','false');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (29,23,'Плейсхолдер','placeholder','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (30,1,'Только для чтения','readonly','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (31,1,'Максимальная длина в символах','maxlength','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (37,23,'Заголовочное поле','titleColumn','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (32,23,'Во всю ширину','wide','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (33,1,'Маска','inputMask','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (34,1,'Vtype','vtype','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (35,19,'When','when','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (36,12,'When','when','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (38,5,'Заголовочное поле','titleColumn','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (39,7,'Заголовочное поле','titleColumn','');
insert  into `possibleelementparam`(`id`,`elementId`,`title`,`alias`,`defaultValue`) values (40,6,'Разрешенные теги','allowedTags','');

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `dashboard` varchar(255) NOT NULL DEFAULT '',
  `move` int(11) NOT NULL DEFAULT '0',
  `maxWindows` int(11) NOT NULL DEFAULT '15',
  PRIMARY KEY (`id`),
  KEY `toggle` (`toggle`),
  KEY `entityId` (`entityId`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `profile` */

insert  into `profile`(`id`,`title`,`toggle`,`entityId`,`dashboard`,`move`,`maxWindows`) values (1,'Конфигуратор','y',0,'',1,15);
insert  into `profile`(`id`,`title`,`toggle`,`entityId`,`dashboard`,`move`,`maxWindows`) values (12,'Администратор','y',0,'/addresses/',12,15);
insert  into `profile`(`id`,`title`,`toggle`,`entityId`,`dashboard`,`move`,`maxWindows`) values (17,'Пользователь','y',130,'',17,15);

/*Table structure for table `resize` */

DROP TABLE IF EXISTS `resize`;

CREATE TABLE `resize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `masterDimensionValue` int(11) NOT NULL DEFAULT '0',
  `slaveDimensionValue` int(11) NOT NULL DEFAULT '0',
  `proportions` enum('p','c','o') NOT NULL DEFAULT 'o',
  `slaveDimensionLimitation` tinyint(1) NOT NULL DEFAULT '1',
  `masterDimensionAlias` enum('width','height') NOT NULL DEFAULT 'width',
  `changeColor` enum('y','n') NOT NULL DEFAULT 'n',
  `color` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fieldId` (`fieldId`),
  KEY `proportions` (`proportions`),
  KEY `masterDimensionAlias` (`masterDimensionAlias`),
  KEY `changeColor` (`changeColor`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

/*Data for the table `resize` */

/*Table structure for table `search` */

DROP TABLE IF EXISTS `search`;

CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `fieldId` int(11) NOT NULL DEFAULT '0',
  `move` int(11) NOT NULL DEFAULT '0',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `defaultValue` varchar(255) NOT NULL DEFAULT '',
  `filter` varchar(255) NOT NULL DEFAULT '',
  `ignoreTemplate` tinyint(1) NOT NULL DEFAULT '1',
  `consistence` tinyint(1) NOT NULL DEFAULT '1',
  `access` enum('all','only','except') NOT NULL DEFAULT 'all',
  `profileIds` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `sectionId` (`sectionId`),
  KEY `fieldId` (`fieldId`),
  KEY `toggle` (`toggle`),
  KEY `access` (`access`),
  KEY `profileIds` (`profileIds`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

/*Data for the table `search` */

insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (13,5,612,13,'y','','Тип','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (54,146,691,55,'y','','Дата регистрации','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (55,146,689,56,'y','','Пол','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (114,5,1441,114,'y','','Включить в кэш','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (116,7,1366,116,'y','','Тип','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (117,7,19,117,'y','','Cущность, закрепленная за разделом','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (118,7,22,118,'y','','Статус','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (119,387,2240,119,'y','','Статус','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (120,387,2249,120,'y','','Адрес массовой регистрации','','',1,1,'all','');
insert  into `search`(`id`,`sectionId`,`fieldId`,`move`,`toggle`,`alt`,`title`,`defaultValue`,`filter`,`ignoreTemplate`,`consistence`,`access`,`profileIds`) values (121,387,2237,121,'n','','Индекс','','',1,1,'all','');

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `move` int(11) NOT NULL DEFAULT '0',
  `rowsOnPage` int(11) NOT NULL DEFAULT '25',
  `extends` varchar(255) NOT NULL DEFAULT 'Indi_Controller_Admin',
  `defaultSortField` int(11) NOT NULL DEFAULT '0',
  `defaultSortDirection` enum('ASC','DESC') NOT NULL DEFAULT 'ASC',
  `filter` varchar(255) NOT NULL DEFAULT '',
  `disableAdd` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('s','p','o') NOT NULL DEFAULT 'p',
  `parentSectionConnector` int(11) NOT NULL DEFAULT '0',
  `groupBy` int(11) NOT NULL DEFAULT '0',
  `rowsetSeparate` enum('auto','yes','no') NOT NULL DEFAULT 'auto',
  PRIMARY KEY (`id`),
  KEY `sectionId` (`sectionId`),
  KEY `entityId` (`entityId`),
  KEY `toggle` (`toggle`),
  KEY `defaultSortField` (`defaultSortField`),
  KEY `defaultSortDirection` (`defaultSortDirection`),
  KEY `type` (`type`),
  KEY `parentSectionConnector` (`parentSectionConnector`),
  KEY `groupBy` (`groupBy`),
  KEY `rowsetSeparate` (`rowsetSeparate`)
) ENGINE=MyISAM AUTO_INCREMENT=388 DEFAULT CHARSET=utf8;

/*Data for the table `section` */

insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (1,0,0,'Конфигурация','','y',367,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (2,1,1,'Столбцы','columnTypes','n',6,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (5,1,2,'Сущности','entities','y',4,25,'Indi_Controller_Admin',4,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (6,5,5,'Поля в структуре','fields','y',7,25,'Indi_Controller_Admin',14,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (7,1,3,'Разделы','sections','y',2,25,'Indi_Controller_Admin',23,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (8,7,8,'Действия','sectionActions','y',8,25,'Indi_Controller_Admin',30,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (10,1,7,'Действия','actions','y',9,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (11,7,9,'Столбцы грида','grid','y',10,25,'Indi_Controller_Admin',35,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (12,6,6,'Возможные значения','enumset','y',11,25,'Indi_Controller_Admin',377,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (13,1,10,'Роли','profiles','y',5,25,'Indi_Controller_Admin',2132,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (14,13,11,'Пользователи','admins','y',13,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (16,1,4,'Элементы','controlElements','y',14,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (22,6,20,'Копии изображения','resize','y',19,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (29,0,0,'Контент','','y',113,25,'Indi_Controller_Admin',0,'ASC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (30,378,25,'Страницы','staticpages','n',316,25,'Indi_Controller_Admin',131,'ASC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (100,16,90,'Возможные параметры настройки','possibleParams','y',90,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (101,6,91,'Параметры','params','y',91,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (112,0,0,'Фронтенд','','n',371,25,'Indi_Controller_Admin',0,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (113,112,101,'Разделы','fsections','y',104,25,'Indi_Controller_Admin',585,'ASC','<?=$_SESSION[\'admin\'][\'profileId\']==1?\'1\':\'`toggle`=\"y\"\'?>',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (143,0,0,'Обратная связь','','n',358,25,'Indi_Controller_Admin',0,'ASC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (144,143,128,'Фидбэк','feedback','n',135,25,'Indi_Controller_Admin',681,'DESC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (145,143,129,'Подписчики','subscribers','n',165,25,'Indi_Controller_Admin',682,'ASC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (146,143,130,'Пользователи','users','n',225,25,'Indi_Controller_Admin',685,'DESC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (172,112,146,'Действия','factions','y',185,25,'Indi_Controller_Admin',857,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (173,113,147,'Действия','fsection2factions','y',161,25,'Indi_Controller_Admin',860,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (189,143,160,'Посетители','visitors','n',176,25,'Indi_Controller_Admin',1101,'DESC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (191,173,162,'Компоненты SEO-урла','seoUrl','y',178,25,'Indi_Controller_Admin',1195,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (381,173,301,'Компоненты meta description','metadescription','y',381,25,'Indi_Controller_Admin_Meta',2181,'ASC','`tag`= \"description\"',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (380,173,301,'Компоненты meta keywords','metakeywords','y',380,25,'Indi_Controller_Admin_Meta',2181,'ASC','`tag`= \"keywords\"',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (201,7,171,'Отключенные поля','disabledFields','y',188,25,'Indi_Controller_Admin',1342,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (224,7,195,'Фильтры','search','y',192,25,'Indi_Controller_Admin',1444,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (229,29,205,'Меню','menu','n',134,25,'Indi_Controller_Admin',1496,'ASC','',1,'p',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (232,378,204,'Элементы','staticblocks','n',232,25,'Indi_Controller_Admin',1485,'ASC','',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (379,173,301,'Компоненты title','metatitles','y',379,25,'Indi_Controller_Admin_Meta',2181,'ASC','`tag`= \"title\"',0,'o',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (378,0,0,'Статика','','n',144,30,'Indi_Controller_Admin',0,'ASC','',0,'p',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (385,1,305,'Уведомления','notices','y',385,25,'Indi_Controller_Admin',2216,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (386,385,306,'Получатели','noticeGetters','y',386,25,'Indi_Controller_Admin',2230,'ASC','',0,'s',0,0,'auto');
insert  into `section`(`id`,`sectionId`,`entityId`,`title`,`alias`,`toggle`,`move`,`rowsOnPage`,`extends`,`defaultSortField`,`defaultSortDirection`,`filter`,`disableAdd`,`type`,`parentSectionConnector`,`groupBy`,`rowsetSeparate`) values (387,29,307,'Адреса','addresses','y',387,25,'Indi_Controller_Admin',0,'ASC','',0,'p',0,0,'auto');

/*Table structure for table `section2action` */

DROP TABLE IF EXISTS `section2action`;

CREATE TABLE `section2action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `actionId` int(11) NOT NULL DEFAULT '0',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `move` int(11) NOT NULL DEFAULT '0',
  `profileIds` varchar(255) NOT NULL DEFAULT '14',
  `title` varchar(255) NOT NULL DEFAULT '',
  `rename` varchar(255) NOT NULL DEFAULT '',
  `south` enum('auto','yes','no') NOT NULL DEFAULT 'auto',
  `fitWindow` enum('auto','n') NOT NULL DEFAULT 'auto',
  PRIMARY KEY (`id`),
  KEY `sectionId` (`sectionId`),
  KEY `sectionId_2` (`sectionId`),
  KEY `actionId` (`actionId`),
  KEY `profileIds` (`profileIds`),
  KEY `toggle` (`toggle`),
  KEY `south` (`south`),
  KEY `fitWindow` (`fitWindow`)
) ENGINE=MyISAM AUTO_INCREMENT=1565 DEFAULT CHARSET=utf8;

/*Data for the table `section2action` */

insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1,2,1,'y',1,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (2,2,2,'y',2,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (3,2,3,'y',3,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (5,2,4,'n',5,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (6,5,1,'y',6,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (7,5,2,'y',7,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (8,5,3,'y',8,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (9,5,4,'y',9,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (10,6,1,'y',10,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (11,6,2,'y',11,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (12,6,3,'y',12,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (13,6,4,'y',13,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (14,7,1,'y',14,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (15,7,2,'y',15,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (16,7,3,'y',16,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (17,7,4,'y',17,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (18,6,5,'y',18,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (19,6,6,'y',19,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (20,8,1,'y',20,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (21,8,2,'y',21,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (22,8,3,'y',22,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (23,8,4,'y',23,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (24,8,5,'y',24,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (25,8,6,'y',25,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (26,7,5,'y',26,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (27,7,6,'y',27,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (28,10,1,'y',28,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (29,10,2,'y',29,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (30,10,3,'y',30,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (32,11,1,'y',31,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (33,11,2,'y',32,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (34,11,3,'y',33,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (35,11,4,'y',34,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (36,11,5,'y',35,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (37,11,6,'y',36,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (38,13,1,'y',37,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (39,13,2,'y',38,'1','Детали','','auto','n');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (40,13,3,'y',39,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (41,12,1,'y',40,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (42,12,2,'y',41,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (43,12,3,'y',42,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (44,12,4,'y',43,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (45,14,1,'y',44,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (46,14,2,'y',45,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (47,14,3,'y',46,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (48,14,4,'y',47,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (52,16,1,'y',51,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (53,16,2,'y',52,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (54,16,3,'y',53,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (67,7,7,'y',58,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (68,10,7,'y',59,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (69,11,7,'y',60,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (74,22,1,'y',65,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (75,22,2,'y',66,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (76,22,3,'y',67,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (77,22,4,'y',68,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (99,30,1,'y',69,'12,1,17','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (100,30,2,'y',70,'12,1,17','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (101,30,3,'y',71,'12,1,17','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (102,30,4,'y',72,'12,1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (103,30,7,'y',73,'12,1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (329,12,5,'y',299,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (330,12,6,'y',300,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (373,100,1,'y',343,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (374,100,2,'y',344,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (375,100,3,'y',345,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (376,100,4,'y',346,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (377,101,1,'y',347,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (378,101,2,'y',348,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (379,101,3,'y',349,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (380,101,4,'y',350,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (808,13,4,'y',589,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (806,10,4,'y',587,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (429,113,1,'y',399,'1,2','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (430,113,2,'y',400,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (431,113,3,'y',401,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (432,113,4,'y',402,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (874,5,18,'y',607,'1','Обновить кэш','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (532,144,1,'y',133,'1,2,4','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (533,144,2,'y',134,'1,2,4','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (534,144,3,'y',135,'1,2','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (535,144,4,'y',136,'1,2','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (536,145,1,'y',134,'1,2,4','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (537,145,2,'y',135,'1,2,4','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (538,145,3,'y',136,'1,2','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (539,145,4,'y',137,'1,2','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (540,146,1,'y',135,'12,1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (541,146,2,'y',136,'12,1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (542,146,3,'y',137,'12,1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (543,146,4,'y',138,'12,1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (833,16,4,'n',598,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (875,224,1,'y',608,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (876,224,2,'y',609,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (877,224,4,'y',611,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (878,224,3,'y',610,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (879,224,5,'y',612,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (880,224,6,'y',613,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (881,224,7,'y',614,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (642,172,1,'y',161,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (643,172,2,'y',162,'1,2,4','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (644,172,3,'y',163,'1,2','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (645,172,4,'y',164,'1,2','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (646,173,1,'y',162,'1,2','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (647,173,2,'y',163,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (648,173,3,'y',164,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (649,173,4,'y',165,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (730,189,1,'y',524,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (731,189,2,'y',525,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (732,189,3,'y',526,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (733,189,4,'y',527,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (740,191,1,'y',534,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (741,191,2,'y',535,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (742,191,3,'y',536,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (743,191,4,'y',537,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (744,191,5,'y',538,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (745,191,6,'y',539,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1548,7,34,'y',1548,'1','PHP','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1547,5,34,'y',1547,'1','PHP','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1546,5,33,'y',1546,'1','Автор','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1537,381,3,'y',1537,'1,12','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1536,381,2,'y',1536,'1,12','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1535,381,1,'y',1535,'1,12','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1534,380,6,'y',1534,'1,12','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1533,380,5,'y',1533,'1,12','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1531,380,3,'y',1531,'1,12','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1530,380,2,'y',1530,'1,12','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1529,380,1,'y',1529,'1,12','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1528,379,6,'y',1528,'1,12','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (789,201,1,'y',583,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (790,201,2,'y',584,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (791,201,3,'y',585,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (792,201,4,'y',586,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (898,229,1,'y',631,'1,2,9','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (899,229,2,'y',632,'1,2,9','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (900,229,3,'y',633,'1,2,9','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (901,229,4,'y',634,'1,2,9','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (910,232,1,'y',643,'12,1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (911,232,2,'y',644,'1,12','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (912,232,3,'y',645,'1,12','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (913,232,4,'y',646,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (921,229,5,'y',654,'1,2,9','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (922,229,6,'y',655,'1,2,9','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (933,229,7,'y',666,'1,2,9','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1527,379,5,'y',1527,'1,12','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (939,232,7,'y',672,'12,1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (946,113,7,'y',679,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (947,113,5,'y',680,'1,2','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (948,113,6,'y',681,'1,2','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (949,113,19,'y',682,'1,2','Обновить sitemap.xml','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1268,8,7,'y',1268,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1295,13,5,'y',1291,'1','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1296,13,6,'y',1292,'1','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1522,14,7,'y',1293,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1545,13,7,'y',1545,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1549,7,35,'y',1549,'1','JS','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1544,229,20,'y',1544,'12','Авторизация','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1540,381,6,'y',1540,'1,12','Ниже','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1539,381,5,'y',1539,'1,12','Выше','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1538,381,4,'y',1538,'1,12','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1532,380,4,'y',1532,'1,12','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1526,379,4,'y',1526,'1,12','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1525,379,3,'y',1525,'1,12','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1524,379,2,'y',1524,'1,12','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1523,379,1,'y',1523,'1,12','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1550,385,1,'y',1550,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1551,385,2,'y',1551,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1552,385,3,'y',1552,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1553,385,4,'y',1553,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1554,385,7,'y',1554,'1','Статус','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1555,386,1,'y',1555,'1','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1556,386,2,'y',1556,'1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1557,386,3,'y',1557,'1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1558,386,4,'y',1558,'1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1559,387,1,'y',1559,'1,12','Список','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1560,387,2,'y',1560,'12,1','Детали','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1561,387,3,'y',1561,'12,1','Сохранить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1562,387,4,'y',1562,'12,1','Удалить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1563,387,36,'y',1563,'12,1','Проверить','','auto','auto');
insert  into `section2action`(`id`,`sectionId`,`actionId`,`toggle`,`move`,`profileIds`,`title`,`rename`,`south`,`fitWindow`) values (1564,387,37,'y',1564,'12,1','Сбросить','','auto','auto');

/*Table structure for table `staticblock` */

DROP TABLE IF EXISTS `staticblock`;

CREATE TABLE `staticblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `detailsHtml` text NOT NULL,
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `detailsHtmlWidth` int(11) NOT NULL DEFAULT '0',
  `detailsHtmlHeight` int(11) NOT NULL DEFAULT '200',
  `detailsHtmlBodyClass` varchar(255) NOT NULL DEFAULT '',
  `detailsHtmlStyle` text NOT NULL,
  `type` enum('html','string','textarea') NOT NULL DEFAULT 'html',
  `detailsString` varchar(255) NOT NULL DEFAULT '',
  `detailsTextarea` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toggle` (`toggle`),
  KEY `type` (`type`),
  FULLTEXT KEY `detailsHtml` (`detailsHtml`),
  FULLTEXT KEY `detailsHtmlStyle` (`detailsHtmlStyle`),
  FULLTEXT KEY `detailsTextarea` (`detailsTextarea`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `staticblock` */

insert  into `staticblock`(`id`,`title`,`alias`,`detailsHtml`,`toggle`,`detailsHtmlWidth`,`detailsHtmlHeight`,`detailsHtmlBodyClass`,`detailsHtmlStyle`,`type`,`detailsString`,`detailsTextarea`) values (21,'sd','hello','Hello','y',443,81,'','','html','','');

/*Table structure for table `staticpage` */

DROP TABLE IF EXISTS `staticpage`;

CREATE TABLE `staticpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `toggle` enum('y','n') NOT NULL DEFAULT 'y',
  `details` text NOT NULL,
  `staticpageId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `toggle` (`toggle`),
  KEY `staticpageId` (`staticpageId`),
  FULLTEXT KEY `details` (`details`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `staticpage` */

insert  into `staticpage`(`id`,`title`,`alias`,`toggle`,`details`,`staticpageId`) values (9,'Страница не найдена','404','y','<strong>initial value1231231aaa</strong>',0);

/*Table structure for table `subscriber` */

DROP TABLE IF EXISTS `subscriber`;

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `subscriber` */

/*Table structure for table `url` */

DROP TABLE IF EXISTS `url`;

CREATE TABLE `url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fsectionId` int(11) NOT NULL DEFAULT '0',
  `fsection2factionId` int(11) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `move` int(11) NOT NULL DEFAULT '0',
  `prefix` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fsectionId` (`fsectionId`),
  KEY `fsection2factionId` (`fsection2factionId`),
  KEY `entityId` (`entityId`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `url` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `gender` enum('n','f','m') NOT NULL DEFAULT 'n',
  `birth` date NOT NULL DEFAULT '0000-00-00',
  `registration` date NOT NULL DEFAULT '0000-00-00',
  `subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `lastVisit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activationCode` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '0',
  `sn` enum('n','fb','vk','tw') NOT NULL DEFAULT 'n',
  `changepasswdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `changepasswdCode` varchar(255) NOT NULL DEFAULT '',
  `test` int(11) NOT NULL DEFAULT '0',
  `testIds` varchar(255) NOT NULL DEFAULT '',
  `entityId` set('7','8','171') NOT NULL DEFAULT '7',
  `storeRelationAbility` set('many','one','none') NOT NULL DEFAULT 'none',
  `color` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gender` (`gender`),
  KEY `sn` (`sn`),
  KEY `test` (`test`),
  KEY `testIds` (`testIds`),
  KEY `set` (`entityId`),
  KEY `storeRelationAbility` (`storeRelationAbility`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`email`,`title`,`password`,`gender`,`birth`,`registration`,`subscribed`,`lastVisit`,`activated`,`activationCode`,`identifier`,`sn`,`changepasswdDate`,`changepasswdCode`,`test`,`testIds`,`entityId`,`storeRelationAbility`,`color`) values (109,'asd@asd.asd','Первонах1','','n','0000-00-00','0000-00-00',0,'2014-09-24 07:59:38',0,'','0','n','0000-00-00 00:00:00','',0,'','7,8,171','','');

/*Table structure for table `visitor` */

DROP TABLE IF EXISTS `visitor`;

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lastActivity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=555197 DEFAULT CHARSET=utf8;

/*Data for the table `visitor` */

insert  into `visitor`(`id`,`title`,`lastActivity`,`userId`) values (555196,'3v0s0pvgep3itif9nq82eif0h0','2014-02-03 19:15:02',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
