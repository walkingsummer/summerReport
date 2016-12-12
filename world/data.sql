

drop table if exists registerFile;
drop table if exists logFile;
drop table if exists recommendFile;
drop table if exists orderFile;

drop table if exists clientTypeTable;
drop table if exists channelNameTable;
drop table if exists businessTable;
drop table if exists userInfo;


create table clientTypeTable(
	cid int(5) NOT NULL auto_increment,
	name varchar(20) NOT NULL unique,
	PRIMARY KEY(cid)
);
insert into clientTypeTable(name) values("H5");
insert into clientTypeTable(name) values("Android");



create table channelNameTable(
	cid int(5) NOT NULL auto_increment,
	name varchar(20) NOT NULL unique,
	PRIMARY KEY(cid)
);
insert into channelNameTable(name) values("commonChannel");
insert into channelNameTable(name) values("shandongChannel");
insert into channelNameTable(name) values("sichuanChannel");
insert into channelNameTable(name) values("jifenChannel");


create table businessTable(
	bid int(5) NOT NULL auto_increment,
	businessName varchar(20) NOT NULL unique,
	PRIMARY KEY(bid)
);
insert into businessTable(businessName) values('moviecard');
insert into businessTable(businessName) values('animation');
insert into businessTable(businessName) values('others');


create table userInfo (
	uid int(10) NOT NULL auto_increment,
	username varchar(20) NOT NULL unique,
	password varchar(20) NOT NULL,
	mobile varchar(20) NOT NULL unique,
	province varchar(20) NOT NULL,
	PRIMARY KEY(uid)
);


insert into userInfo(username, password, mobile, province) values("老幺", "yi1", "11111111111", "provinceGuangDong");
insert into userInfo(username, password, mobile, province) values("王二", "er2", "22222222222", "provinceGuangXi");
insert into userInfo(username, password, mobile, province) values("张三", "san3", "33333333333", "provinceShanDong");
insert into userInfo(username, password, mobile, province) values("李四", "si4", "44444444444", "provinceSiChuan");
insert into userInfo(username, password, mobile, province) values("赵五", "wu5", "55555555555", "provinceJiangXi");
insert into userInfo(username, password, mobile, province) values("宋六", "liu6", "66666666666", "provinceFuJian");
insert into userInfo(username, password, mobile, province) values("田七", "qi7", "77777777777", "provinceShanDong");
insert into userInfo(username, password, mobile, province) values("新八", "ba8", "88888888888", "provinceBeiJing");
insert into userInfo(username, password, mobile, province) values("牌九", "jiu9", "99999999999", "provinceHongKong");
insert into userInfo(username, password, mobile, province) values("银十", "ling0", "00000000000", "provinceMacao");



create table registerFile (
	rid int(10) NOT NULL auto_increment,
	mobile varchar(11) NOT NULL unique,
	registerDate date NOT NULL,
	clientType varchar(20) NOT NULL,
	channelName varchar(20) NOT NULL,
	PRIMARY KEY(rid),
	constraint registerfile_client_type_fk foreign key(clientType) references clientTypeTable(name),
	constraint registerfile_channel_name_fk foreign key(channelName) references channelNameTable(name),
	constraint registerfile_mobile_fk foreign key(mobile) references userInfo(mobile)
);


insert into registerFile (mobile, registerDate, clientType, channelName) values ("11111111111", current_timestamp(), "H5", "commonChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("22222222222", str_to_date('2016-2-22 22:22:22','%Y-%m-%d %T'), "Android", "shandongChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("33333333333", current_timestamp(), "Android", "shandongChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("44444444444", str_to_date('2016-4-4 11:11:11','%Y-%m-%d %T'), "Android", "jifenChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("55555555555", str_to_date('2016-5-5 5:5:5','%Y-%m-%d %T'), "Android", "jifenChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("66666666666", current_timestamp(), "H5", "commonChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("77777777777", str_to_date('2016-7-7 10:10:10','%Y-%m-%d %T'), "Android", "shandongChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("88888888888", str_to_date('2016-8-8 8:8:8','%Y-%m-%d %T'), "Android", "sichuanChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("99999999999", str_to_date('2016-9-9 9:9:9','%Y-%m-%d %T'), "H5", "sichuanChannel");
insert into registerFile (mobile, registerDate, clientType, channelName) values ("00000000000", str_to_date('2000-10-10 10:10:10','%Y-%m-%d %T'), "H5", "jifenChannel");



create table logFile(
	lid int(10) NOT NULL auto_increment,
	mobile varchar(11) NOT NULL,
	logDate Date NOT NULL,
	clientType varchar(20) NOT NULL,
	channelName varchar(20) NOT NULL,
	PRIMARY KEY(lid),
	constraint logfile_client_type_fk foreign key(clientType) references clientTypeTable(name),
	constraint logfile_channel_name_fk foreign key(channelName) references channelNameTable(name),
	constraint logfile_mobile_fk foreign key(mobile) references userInfo(mobile)
);
insert into logFile (mobile, logDate, clientType, channelName)values("11111111111",current_timestamp(), 'H5','commonChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("22222222222",str_to_date('2016-6-6 6:6:6','%Y-%m-%d %T'), 'H5','commonChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("33333333333",current_timestamp(), 'Android','sichuanChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("44444444444",current_timestamp(), 'H5','commonChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("55555555555",str_to_date('2016-6-6 6:6:6','%Y-%m-%d %T'), 'H5','sichuanChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("66666666666",current_timestamp(), 'H5','shandongChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("77777777777",str_to_date('2016-7-7 11:11:11','%Y-%m-%d %T'), 'H5','shandongChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("88888888888",current_timestamp(), 'Android','sichuanChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("99999999999",current_timestamp(), 'Android','commonChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("00000000000",str_to_date('2016-6-6 6:6:6','%Y-%m-%d %T'), 'Android','sichuanChannel');
insert into logFile (mobile, logDate, clientType, channelName)values("00000000000",str_to_date('2016-7-6 6:6:6','%Y-%m-%d %T'), 'Android','sichuanChannel');


create table recommendFile(
	rid int(10) NOT NULL auto_increment,
	srcMobile varchar(11) NOT NULL,
	destMobile varchar(11) NOT NULL,
	business varchar(20) NOT NULL,
	recommendDate Date NOT NULL,
	clientType varchar(20) NOT NULL,
	channelName varchar(20) NOT NULL,
	PRIMARY KEY(rid),
	constraint recommendfile_client_type_fk foreign key(clientType) references clientTypeTable(name),
	constraint recommendfile_channel_name_fk foreign key(channelName) references channelNameTable(name),
	constraint recommendfile_srcMobile_fk foreign key(srcMobile) references userInfo(mobile),
	constraint recommendfile_destMobile_fk foreign key(destMobile) references userInfo(mobile),
	constraint recommendfile_business_fk foreign key(business) references businessTable(businessName)
);
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('11111111111','22222222222','moviecard',current_timestamp(),'H5','commonChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('11111111111','22222222222','others',current_timestamp(),'H5','commonChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('11111111111','33333333333','animation',current_timestamp(),'H5','jifenChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('22222222222','11111111111','moviecard',str_to_date('2016-12-12 12:12:12','%Y-%m-%d %T'),'Android','shandongChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('55555555555','44444444444','moviecard',str_to_date('2016-9-8 9:8:8','%Y-%m-%d %T'),'Android','jifenChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('66666666666','99999999999','moviecard',current_timestamp(),'H5','shandongChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('66666666666','33333333333','others',current_timestamp(),'H5','commonChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('77777777777','00000000000','animation',current_timestamp(),'H5','jifenChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('88888888888','77777777777','moviecard',str_to_date('2016-9-9 9:9:9','%Y-%m-%d %T'),'Android','sichuanChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('00000000000','77777777777','moviecard',str_to_date('2016-9-8 9:8:9','%Y-%m-%d %T'),'Android','jifenChannel');
insert into recommendFile(srcMobile, destMobile, business, recommendDate, clientType, channelName) values('00000000000','88888888888','animation',str_to_date('2016-10-23 9:18:9','%Y-%m-%d %T'),'Android','jifenChannel');



create table orderFile(
	oid int(10) NOT NULL auto_increment,
	recommendMobile varchar(11) default NULL,
	orderMobile varchar(11) NOT NULL,
	business varchar(20) NOT NULL,
	orderDate Date NOT NULL,
	clientType varchar(20) NOT NULL,
	channelName varchar(20) NOT NULL,
	PRIMARY KEY(oid),
	constraint orderfile_client_type_fk foreign key(clientType) references clientTypeTable(name),
	constraint orderfile_channel_name_fk foreign key(channelName) references channelNameTable(name),
	constraint orderfile_srcMobile_fk foreign key(recommendMobile) references userInfo(Mobile),
	constraint orderfile_destMobile_fk foreign key(orderMobile) references userInfo(Mobile),
	constraint orderfile_business_fk foreign key(business) references businessTable(businessName)
);
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('11111111111','22222222222','animation',current_timestamp(),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('11111111111','33333333333','animation',current_timestamp(),'H5','shandongChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('11111111111','44444444444','moviecard',str_to_date('2016-12-12 12:12:12','%Y-%m-%d %T'),'H5','shandongChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('11111111111','55555555555','moviecard',str_to_date('2016-12-12 12:12:12','%Y-%m-%d %T'),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('55555555555','11111111111','animation',current_timestamp(),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('99999999999','88888888888','animation',current_timestamp(),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('99999999999','00000000000','others',current_timestamp(),'H5','shandongChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('99999999999','55555555555','others',str_to_date('2016-9-9 9:9:9','%Y-%m-%d %T'),'H5','shandongChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('99999999999','77777777777','moviecard',str_to_date('2016-9-10 9:10:9','%Y-%m-%d %T'),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('00000000000','66666666666','animation',current_timestamp(),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('00000000000','77777777777','animation',current_timestamp(),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('88888888888','77777777777','animation',str_to_date('2016-11-27 12:12:12', '%Y-%m-%d %T'),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('88888888888','77777777777','moviecard',str_to_date('2016-11-27 12:12:12', '%Y-%m-%d %T'),'Android','sichuanChannel');
insert into orderFile(recommendMobile, orderMobile, business, orderDate, clientType, channelName) values('88888888888','66666666666','moviecard',str_to_date('2016-11-27 12:12:12', '%Y-%m-%d %T'),'Android','sichuanChannel');



















