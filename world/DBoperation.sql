--CREATE USER 'summer'@'localhost' IDENTIFIED BY 'summer';
--
--DROP USER summer;

--CREATE DATABASE summerDB;

grant select on aspire.* to visitor@localhost identified by 'visitor';		--普通用户

--grant select,insert,update,delete,create,drop 						
--on aspire.* to administrator@localhost identified by 'administrator';		--管理员

grant all on aspire.* to administrator@localhost identified by 'administrator';		--管理员

--grant select,insert,update,delete,create,drop,index,alter,grant,references,reload,shutdown,process,file 
--on aspire.* to summer@localhost identified by 'summer';

create table testTable(
	id int(5),
	name varchar(20)
);

drop table testTable;


--select count(rid) 
--from registerFile r
--where r.registerDate=current_date();
--
--select count(lid)
--from registerFile r, logFile l
--where r.registerDate=current_date() and l.logDate=current_date() and l.username=r.username;
--
--select count(rid)
--from recommendFile r
--where r.recommendDate=current_date();
--
--
--insert into orderFile(recommendUsername, orderUsername, business, orderDate, clientType, channelName) values('老幺','赵五','moviecard',
--
--delete from orderFile where orderUsername = '赵五' and business='moviecard';
--
--update orderFile set orderDate=str_to_date('2016-12-12','%Y-%m-%d') where orderUsername = '赵五' and business='moviecard';
--
--
--select count(oid)
--    	from orderFile o, registerFile r
--    	where o.orderDate=current_date()
--	    	and r.registerDate=current_date()
--	    	and o.orderUsername=r.username 
--	    	and o.channelName='commonChannel'
--	    	and o.clientType='H5Only'



		select count(temp1.m1)
		from (select DISTINCT orderMobile m1
				from orderFile l1
				where str_to_date('2016-12-31 23:59:59','%Y-%m-%d %T')>=l1.orderDate 
					and l1.orderDate>=str_to_date('2016-12-1 00:00:00','%Y-%m-%d %T')
					and l1.channelName='sichuanChannel'
					and l1.clientType ='Android') temp1, 
			(select DISTINCT orderMobile m2
				from orderFile l2
				where str_to_date('2016-12-1 00:00:00','%Y-%m-%d %T')>=l2.orderDate 
					and l2.orderDate>=str_to_date('2016-11-1 00:00:00','%Y-%m-%d %T')
					and l2.channelName='sichuanChannel'
					and l2.clientType ='Android') temp2,
			(select mobile m3 from userInfo u where u.province='provinceShanDong') temp3
		where temp1.m1=temp2.m2 and temp1.m1=temp3.m3




		select count(temp1.m1)
		from (select DISTINCT srcMobile m1
				from recommendFile l1
				where str_to_date('2016-10-31 23:59:59','%Y-%m-%d %T')>=l1.recommendDate 
					and l1.recommendDate>=str_to_date('2016-9-31 23:59:59','%Y-%m-%d %T')
					and l1.channelName='jifenChannel'
					and l1.clientType = 'Android') temp1, 
			(select DISTINCT srcMobile m2
				from recommendFile l2
				where str_to_date('2016-9-31 23:59:59','%Y-%m-%d %T')>=l2.recommendDate 
					and l2.recommendDate>=str_to_date('2016-8-31 23:59:59','%Y-%m-%d %T')
					and l2.channelName='jifenChannel'
					and l2.clientType = 'Android') temp2,
			(select mobile m3 from userInfo u where u.province='provinceMakao') temp3
		where temp1.m1=temp2.m2 and temp1.m1=temp3.m3






















