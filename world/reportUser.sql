drop table if exists reportUser;
drop table if exists reportUserPrivilege;

create table reportUserPrivilege(
	rid int(5) NOT NULL auto_increment,
	name varchar(20) NOT NULL unique,
	PRIMARY KEY(rid)
);
insert into reportUserPrivilege(name) values('visitor');
insert into reportUserPrivilege(name) values('administrator');

create table reportUser(
	rid int(5) NOT NULL auto_increment,
	name varchar(20) NOT NULL unique,
	privilege varchar(20) NOT NULL,
	password varchar(64) NOT NULL,
	PRIMARY KEY(rid),
	constraint reportUser_privilege_fk foreign key(privilege) references reportUserPrivilege(name)
);
insert into reportUser(name, privilege, password) values('visitor1','visitor','3642364244384236393633453441323534424636443437363033393046444443');
insert into reportUser(name, privilege, password) values('visitor2','visitor','4443304141453541443439423533353332384538464636353836434534434239');























