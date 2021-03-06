

CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `check_number` varchar(11) DEFAULT NULL,
  `check_amount` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

INSERT INTO bank VALUES("1","BDO","Buhangin","0918238329","3000.00");
INSERT INTO bank VALUES("2","BPI","Tagum","2118223329","5000.00");
INSERT INTO bank VALUES("3","BDO","Matina","0918238329","3000.00");
INSERT INTO bank VALUES("4","BDO","Maa","0918238329","5000.00");
INSERT INTO bank VALUES("5","BDO","Maa","1231232","3000.00");
INSERT INTO bank VALUES("6","BPI","Toril","0918238329","5000.00");
INSERT INTO bank VALUES("7","BDO","Tagum","0918238329","5000.00");
INSERT INTO bank VALUES("8","BPI","Buhangin","1231232","50000.00");
INSERT INTO bank VALUES("9","BPI","Buhangin","0918238329","50000.00");
INSERT INTO bank VALUES("10","BDO","Matina","0918238329","3000.00");
INSERT INTO bank VALUES("11","BPI","Buhangin","0918238329","5000.00");
INSERT INTO bank VALUES("12","BDO","Maa","1231232","3000.00");
INSERT INTO bank VALUES("13","BDO","Maa","0918238329","3000.00");
INSERT INTO bank VALUES("14","BDO","Tagum","1231232","5000.00");
INSERT INTO bank VALUES("15","BDO","Matina","0918238329","50000.00");
INSERT INTO bank VALUES("16","BDO","Matina","2118223329","50000.00");
INSERT INTO bank VALUES("17","BDO","Maa","1231232","5000.00");



CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(100) NOT NULL,
  `cart_code` int(11) DEFAULT 0,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4;

INSERT INTO cart VALUES("339","-1","1023","1","702001");
INSERT INTO cart VALUES("340","-1","1023","1","702002");
INSERT INTO cart VALUES("341","-1","1023","1","702003");
INSERT INTO cart VALUES("342","-1","1023","1","702004");
INSERT INTO cart VALUES("343","-1","1023","1","702005");
INSERT INTO cart VALUES("344","-1","1011","1","702006");
INSERT INTO cart VALUES("345","100012","1010","1","702007");
INSERT INTO cart VALUES("346","100009","1000","1","702008");
INSERT INTO cart VALUES("347","-1","1012","1","702009");
INSERT INTO cart VALUES("349","-1","1023","1","702010");
INSERT INTO cart VALUES("350","-1","1023","1","702011");
INSERT INTO cart VALUES("351","-1","1023","1","702012");
INSERT INTO cart VALUES("352","-1","1023","1","702013");
INSERT INTO cart VALUES("355","-1","1023","1","702014");
INSERT INTO cart VALUES("356","-1","1023","1","702014");
INSERT INTO cart VALUES("357","100013","1023","1","702015");
INSERT INTO cart VALUES("358","-1","1023","1","702016");
INSERT INTO cart VALUES("359","-1","1023","1","702017");
INSERT INTO cart VALUES("360","-1","1023","1","702018");
INSERT INTO cart VALUES("361","-1","1023","1","702019");
INSERT INTO cart VALUES("362","100012","1023","1","702020");
INSERT INTO cart VALUES("363","-1","1011","1","702021");
INSERT INTO cart VALUES("364","-1","1023","1","702022");
INSERT INTO cart VALUES("365","-1","1011","1","702023");
INSERT INTO cart VALUES("367","-1","1023","1","702024");
INSERT INTO cart VALUES("368","100013","1023","1","702025");
INSERT INTO cart VALUES("369","100013","1011","1","702025");
INSERT INTO cart VALUES("370","-1","1023","1","702026");
INSERT INTO cart VALUES("372","-1","1010","1","702027");
INSERT INTO cart VALUES("375","-1","1011","1","702031");
INSERT INTO cart VALUES("383","100013","1011","1","702028");
INSERT INTO cart VALUES("384","100013","1011","1","702029");
INSERT INTO cart VALUES("385","100013","1012","2","702030");
INSERT INTO cart VALUES("415","100011","1023","12","702032");
INSERT INTO cart VALUES("420","-1","1027","2","702033");
INSERT INTO cart VALUES("431","-1","1028","2","1");



CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

INSERT INTO category VALUES("0","Unclassified item","1");
INSERT INTO category VALUES("1","Motorcyle Parts","1");
INSERT INTO category VALUES("2","Auto Parts","1");
INSERT INTO category VALUES("13","Gloves","1");
INSERT INTO category VALUES("14","Helmet","1");
INSERT INTO category VALUES("15","Tires","1");
INSERT INTO category VALUES("16","Mirror","1");
INSERT INTO category VALUES("17","Shabu","0");
INSERT INTO category VALUES("18","fawefwe","0");



CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(65) NOT NULL,
  `description` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(100) NOT NULL,
  `sold` int(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1038 DEFAULT CHARSET=utf8mb4;

INSERT INTO product VALUES("1000","RED REV Super Limiter Cut","Exclusive Part for RaceExclusive Japan Spec. Vehicle*It will not work properly in case of replacing it with full scale meter.*The vehicle that powered up by mounting the RED REV is limited to NSR250R (90-93), RVF400, ZEPHYR400χ.Other vehicle is a speed limiter cut.*The graph data on the photo is RVF400.","2499.12","1","2","1","100002","1","2020-09-16 01:42:02");
INSERT INTO product VALUES("1010","GOODS	Half Helmet FLAMES","Color: BlueSize: FreeA simple half-helmet.Simple half-helmet with Flames design.Ideal for painted bases.*There is some fading, discoloration, etc. for long-term storage products. Please purchase on a paint basis.*This is a decorative helmet. Please do not wear when riding a motorcycle.","1294.90","308","33","1","100003","1","2020-12-03 01:42:02");
INSERT INTO product VALUES("1011","DRC Street Radiator Hose Set","Color: RedSilicon Radiator HoseIt reinforced by a multilayer structure of silicon material and high strength fiber that withstand from minus 40 to 260 degrees.It is excellent resistance to pressure and heat, minimizing the expansion of hoses even under harsh conditions.The engine performance is fully pulled out securing a stable cooling water flow.","500.00","276","69","0","0","1","2020-04-11 01:42:02");
INSERT INTO product VALUES("1012","TANAX	Cowling Mirror 7","[Color] Black[Material]Housing/Bracket: Aluminum Die CastingBase: Zinc Die Casting[Quantity] Mirror Body x1pc.It is a new type cowling mirror appearance.It adopted the anti-dazzling ","2807.99","26","25","16","100002","1","2020-02-22 01:42:02");
INSERT INTO product VALUES("1023","Dogs","                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam laborum incidunt voluptatum, reprehenderit molestiae, aspernatur eius error similique vitae temporibus laboriosam unde? Deserunt amet labore eligendi explicabo, possimus fugiat sint?","76.25","1076","72","2","100003","1","2021-02-17 20:19:26");
INSERT INTO product VALUES("1027","EK CHAIN	QX-ring Seal Chain","","2498.42","121","2","1","0","1","2020-12-16 01:21:33");
INSERT INTO product VALUES("1028","BEAMSUniversal Silencer","","13083.84","2","0","1","0","1","2020-12-16 01:37:36");
INSERT INTO product VALUES("1029","NOLAN	N405 GT","","12058.11","32","0","14","100004","1","2020-12-16 01:39:54");
INSERT INTO product VALUES("1030","GK-132 Rain Over Gloves","","1627.67","21","0","1","100003","1","2020-12-16 01:42:02");
INSERT INTO product VALUES("1031","YG-084R All-Weather Glove","","1627.67","233","0","13","100004","1","2020-12-16 01:43:24");
INSERT INTO product VALUES("1032","Half Finger Gloves","","2148.64","1232","0","2","0","1","2020-12-16 01:44:28");
INSERT INTO product VALUES("1033","Titanium Caliper Bolt","","10174.58","23","0","2","100002","1","2020-12-16 01:53:29");
INSERT INTO product VALUES("1034","Radial Monoblock Caliper Kit","fajlkdjf;awefawefawefawef","26442.52","4","0","1","0","1","2020-12-16 01:55:05");
INSERT INTO product VALUES("1035","PRO Phil Air Chuck","","3076.76","12","0","2","100002","1","2020-12-16 01:56:53");
INSERT INTO product VALUES("1036","Rear Sets 4 Position","","26233.39","0","0","0","0","1","2020-12-16 01:58:10");
INSERT INTO product VALUES("1037","heheawe","uyuy","123.12","233","0","0","100002","0","2021-02-17 20:36:18");



CREATE TABLE `sales` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` float(10,2) NOT NULL DEFAULT 0.00,
  `discount` float(10,2) DEFAULT 0.00,
  `total` float(10,2) NOT NULL,
  `payment_method` varchar(50) DEFAULT 'Cash Payment',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO sales VALUES("702002","-1","0.00","15.05","60.20","Cash Payment","2020-12-14 13:07:28");
INSERT INTO sales VALUES("702003","-1","0.00","0.00","75.25","Cash Payment","2020-12-14 13:07:56");
INSERT INTO sales VALUES("702025","100013","0.00","115.05","529.23","Check Payment","2020-12-14 14:04:19");
INSERT INTO sales VALUES("702026","-1","0.00","0.00","84.28","Cash Payment","2020-12-14 14:05:23");
INSERT INTO sales VALUES("702027","-1","0.00","0.00","1450.29","Cash Payment","2020-12-14 14:08:59");
INSERT INTO sales VALUES("702028","100013","0.00","0.00","560.00","Cash on Delivery","2020-12-16 00:57:30");
INSERT INTO sales VALUES("702029","100013","0.00","0.00","560.00","Cash on Delivery","2020-12-16 01:05:59");
INSERT INTO sales VALUES("702030","100013","0.00","0.00","6289.90","Cash on Delivery","2020-12-16 01:15:26");
INSERT INTO sales VALUES("702031","-1","0.00","0.00","560.00","Cash Payment","2020-12-16 02:58:45");
INSERT INTO sales VALUES("702032","100011","0.00","0.00","1011.36","Cash Payment","2020-12-18 01:45:32");
INSERT INTO sales VALUES("702033","-1","0.00","999.37","4597.09","Cash Payment","2020-12-09 01:51:49");



CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100021 DEFAULT CHARSET=utf8mb4;

INSERT INTO supplier VALUES("100002","Samya","Japan Ambots","+639192791759","1");
INSERT INTO supplier VALUES("100003","NCCC","Tagum","+639192791759","0");
INSERT INTO supplier VALUES("100004","Viva Royal Trading CO.","Taiwan, Province Of China","+639192791759","1");
INSERT INTO supplier VALUES("100005","Continental Engines LTD","Southern Asia India","+639192791753","1");
INSERT INTO supplier VALUES("100006","SANWU ELECTRIC INDUSTRY CO.","DISTRICT, GUANGZHOU,CHINA","+639192791751","1");
INSERT INTO supplier VALUES("100007","LUNG KU MACHINERY CO., LTD","ROAD TALI CITY, TAICHUNG TW","+639123789162","1");
INSERT INTO supplier VALUES("100008","Hehe","awts ge2x","+639123789182","0");



CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text DEFAULT 'No address inputted',
  `email` varchar(200) NOT NULL,
  `password` varchar(128) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO user VALUES("100010","Gisan Geff Raniego","No address inputted","geff@gmail.com","ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413","1","1","2020-12-16 01:42:02");
INSERT INTO user VALUES("100011","Carlos Echavez","No address inputted","kekebeke@gmail.com","3ef5f67410cc79ab1578bb12a753720c8a62a0306441e7c3fa99484cdf2944f363b05f772878ba28155b5d0e29de49bdac746e08a07928d1a08ff1db71814aa5","1","1","2020-12-21 01:25:11");

