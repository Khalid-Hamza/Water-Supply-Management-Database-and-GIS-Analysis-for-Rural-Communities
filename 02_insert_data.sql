---- INSERTING DATA INTO TABLE [NAPPE]
insert into nappe values 
	(1,'gharb','sables',ST_geomfromtext('polygon((394685 428004,446940 401546,476375 410475,474722 432965,421474 483567,394685 428004))',26191)),
	(2,'Sais phréatique','Calcaires',st_geomfromtext('polygon((510771 385900,513152 353356,532202 358119,587765 385106,579298 393573,510771 385900))',26191)),
	(3,'Sais profonde','Calcaires',st_geomfromtext('polygon((510771 385900,513152 353356,532202 358119,587765 385106,579298 393573,510771 385900))',26191)),
	(4,'Causse d’Ifrane','Dolomies',st_geomfromtext('polygon((533525 336158,520032 328221,513152 315785,516592 299381,531409 298587,544638 311552,538023 325046,533525 336158))',26191)),
	(5,'Moyen Atlas plissé','Calcaires',st_geomfromtext('polygon((593850 364733,578505 344625,556809 314198,534055 291973,508390 273134,521487 254481,576256 296947,621103 304091,656425 343778,613165 384260,593850 364733))',26191)),
	(6,'Causse de d’El Hajeb','Dolomies',st_geomfromtext('polygon((509713 351240,498071 345419,508390 324781,526382 334306,522413 349917,509713 351240))',26191))
	;
	
	
---- INSERTING DATA INTO TABLE [BOREHOLE]	
insert into borehole values
	(1238,'ouled taher',65,1,ST_geomfromtext('point(433353 425432)',26191)),
	(1256,'ait oufella',80,3,st_geomfromtext('point(527026 371013)',26191)),
	(1298,'ait brahim',75,3,st_geomfromtext('point(528000 359433)',26191)),
	(1320,'ras el ma',20,4,st_geomfromtext('point(524460 313534)',26191)),
	(1414,'ait bouhcine',65,3,st_geomfromtext('point(527699 364507)',26191)),
	(1889,'jniba',12,5,st_geomfromtext('point(568055 303259)',26191)),
	(2001,'Ait rbaa',5,2,st_geomfromtext('point(525565 361411)',26191)),
	(2056,'Ait Mansour',43,6,st_geomfromtext('point(503896 342990)',26191)),
	(2176,'ouled zaid',45,1,st_geomfromtext('point(426500 422702)',26191)),
	(3040,'laqsir',76,3,st_geomfromtext('point(517014 366222)',26191)),
	(3780,'el coucha',36,3,st_geomfromtext('point(521813 361113)',26191)),
	(3890,'ben smim',11,4,st_geomfromtext('point(520550 322690)',26191))
	;
	
	
	
-- INSERTING DATA INTO TABLE [DOUAR]
insert into douar values
	(1,'ait brahim',100,1,1298,ST_geomfromtext('point(527555 359433)',26191)),
	(2,'ben smim',320,2,3890,st_geomfromtext('point(519713 322890)',26191)),
	(3,'el coucha',544,3,3780,st_geomfromtext('point(521413 361333)',26191)),
	(4,'Ait rbaa',670,4,2001,st_geomfromtext('point(525145 360434)',26191)),
	(5,'ouled zaid',150,1,2176,st_geomfromtext('point(426469 422402)',26191)),
	(6,'jniba',430,2,1889,st_geomfromtext('point(567016 304504)',26191)),
	(7,'ait bouhcine',98,1,1414,st_geomfromtext('point(517672 364587)',26191)),
	(8,'ouled taher',212,1,1238,st_geomfromtext('point(429853 425946)',26191)),
	(9,'zaouya',321,2,3890,st_geomfromtext('point(521370 322506)',26191)),
	(10,'laqsir',540,3,3040,st_geomfromtext('point(518012 366168)',26191)),
	(11,'ait hammi',250,1,3040,st_geomfromtext('point(517463 367546)',26191)),
	(12,'Ait Mansour',400,2,2056,st_geomfromtext('point(504566 343130)',26191)),
	(13,'ras el ma',320,2,1320,st_geomfromtext('point(522912 317544)',26191)),
	(14,'ait oufella',127,1,1256,st_geomfromtext('point(522096 370916)',26191)),
	(15,'ain beida',400,2,1414,st_geomfromtext('point(525076 369881)',26191)),
	(16,'mograne',250,1,1238,st_geomfromtext('point(405070 423886)',26191)),
	(17,'rouazi',400,2,1256,st_geomfromtext('point(530935 371616)',26191)),
	(18,'touahriya',540,3,1414,st_geomfromtext('point(531252 369722)',26191)),
	(19,'tihli',400,2,1238,st_geomfromtext('point(458938 421656)',26191)),
	(20,'ouled hassoun',330,2,1414,st_geomfromtext('point(533238 371580)',26191))
	;
	
	