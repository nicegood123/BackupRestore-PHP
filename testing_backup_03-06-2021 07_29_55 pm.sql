

CREATE TABLE `tbl_register` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `website` varchar(150) NOT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_register VALUES("1","Alvin","Samontina","samontina@gmail.com","12345678","fg.com");
INSERT INTO tbl_register VALUES("2","","Raniego","ggranraniego@gmail.com","11111111","fg.com");

