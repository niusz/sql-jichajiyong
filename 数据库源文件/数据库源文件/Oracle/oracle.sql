--------------------------------------------------------
--  DDL for Table bookinfo
--------------------------------------------------------

  CREATE TABLE bookinfo 
   (	ISBN VARCHAR2(50), 
	BookName VARCHAR2(50), 
	Type VARCHAR2(50), 
	publisher VARCHAR2(50), 
	Writer VARCHAR2(50), 
	Introduce CLOB, 
	
Price NUMBER, 
	pDate DATE, 
	INTime DATE, 
	newbook NUMBER, 
	commend NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table bookinfo_zerobasis
--------------------------------------------------------

  CREATE TABLE bookinfo_zerobasis 
   (	ISBN VARCHAR2(50), 
	BookName VARCHAR2(50), 
	Type VARCHAR2(50), 
	publisher VARCHAR2(50), 
	Writer VARCHAR2(50), 
	Introduce CLOB, 
	Price NUMBER, 
	pDate VARCHAR2(50), 
	INTime DATE, 
	newbook NUMBER, 
	commend NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table bookpub
--------------------------------------------------------

  CREATE TABLE bookpub 
   (	��� NUMBER, 
	���� VARCHAR2(50), 
	���� VARCHAR2(50), 
	�ۼ� FLOAT(126), 
	�������� DATE, 
	��һ�γ������� DATE
   ) ;
--------------------------------------------------------
--  DDL for Table brand
--------------------------------------------------------

  CREATE TABLE brand 
   (	id NUMBER, 
	name VARCHAR2(60), 
	logo VARCHAR2(80), 
	describe CLOB, 
	url VARCHAR2(255), 
	sort NUMBER, 
	cat_name VARCHAR2(128), 
	
parent_cat_id NUMBER, 
	cat_id NUMBER, 
	is_hot NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table goods
--------------------------------------------------------

  CREATE TABLE goods 
   (	goods_id NUMBER, 
	cat_id NUMBER, 
	extend_cat_id NUMBER, 
	goods_sn VARCHAR2(60), 
	goods_name VARCHAR2(120), 
	click_count NUMBER, 
brand_id NUMBER, 
	store_count NUMBER, 
	comment_count NUMBER, 
	weight NUMBER, 
	market_price NUMBER, 
	shop_price NUMBER, 
	cost_price NUMBER, 
	keywords VARCHAR2(255), 
	goods_remark VARCHAR2(255), 
	goods_content CLOB, 
	original_img VARCHAR2(255), 
	is_real NUMBER, 
	is_on_sale NUMBER, 
	is_free_shipping NUMBER, 	
on_time NUMBER, 
	sort NUMBER, 
	is_recommend NUMBER, 
	is_new NUMBER, 
	is_hot NUMBER, 
	last_update NUMBER, 
	goods_type NUMBER, 
	spec_type NUMBER, 	
give_integral NUMBER, 
	exchange_integral NUMBER, 
	suppliers_id NUMBER, 
	sales_sum NUMBER, 
	prom_type NUMBER, 
	prom_id NUMBER, 
	commission NUMBER, 	
spu VARCHAR2(128), 
	sku VARCHAR2(128), 
	shipping_area_ids VARCHAR2(255)
   ) ;

--------------------------------------------------------
--  DDL for Table goods_type
--------------------------------------------------------

  CREATE TABLE goods_type 
   (	id NUMBER, 
	name VARCHAR2(60)
   ) ;
--------------------------------------------------------
--  DDL for Table orderform
--------------------------------------------------------

  CREATE TABLE orderform 
   (	order_id NUMBER, 
	order_sn VARCHAR2(20), 
	user_id NUMBER, 
	order_status NUMBER, 
	shipping_status NUMBER, 
	pay_status NUMBER, 
	consignee VARCHAR2(60), 
	country NUMBER, 
	province NUMBER, 
	city NUMBER, 
	district NUMBER, 
	twon NUMBER, 
	address VARCHAR2(255), 	
zipcode VARCHAR2(60), 
	mobile VARCHAR2(60), 
	email VARCHAR2(60), 
	pay_code VARCHAR2(32), 
	pay_name VARCHAR2(120), 
	goods_price NUMBER, 
	order_amount NUMBER, 	
total_amount NUMBER, 
	add_time NUMBER, 
	shipping_time NUMBER, 
	confirm_time NUMBER, 
	pay_time NUMBER, 
	discount NUMBER, 
	user_note VARCHAR2(255), 	
admin_note VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table user_address
--------------------------------------------------------

  CREATE TABLE user_address 
   (	address_id NUMBER, 
	user_id NUMBER, 
	consignee VARCHAR2(60), 
	email VARCHAR2(60), 
	country NUMBER, 
	province NUMBER, 
	city NUMBER, 
	district NUMBER, 
	twon NUMBER, 
	address VARCHAR2(120), 
	zipcode VARCHAR2(60), 
	mobile VARCHAR2(60), 
	is_default NUMBER, 
	is_pickup NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table users
--------------------------------------------------------

  CREATE TABLE users 
   (	user_id NUMBER(38,0), 
	email VARCHAR2(60), 
	password VARCHAR2(32), 
	sex NUMBER(38,0), 
	birthday DATE, 
	pay_points NUMBER(38,0),
address_id NUMBER(38,0), 
	reg_time DATE, 
	last_login DATE, 
	last_ip VARCHAR2(15), 
	qq VARCHAR2(20), 
	mobile VARCHAR2(20), 
	mobile_validated NUMBER(38,0),
oauth VARCHAR2(10), 
	openid VARCHAR2(100), 
	head_pic VARCHAR2(255), 
	province NUMBER(38,0), 
	city NUMBER(38,0), 
	district NUMBER(38,0), 
	email_validated NUMBER(38,0), 
	nickname VARCHAR2(50), 
	level_1 NUMBER(38,0), 
	discount NUMBER(10,2), 
	total_amount NUMBER(10,2), 
	is_lock NUMBER(38,0), 
	token VARCHAR2(64)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE goods
--   FILTER = none used
---------------------------------------------------
REM INSERTING into goods
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (39,191,0,'MR100001','��Ϊ M2 10.0 ƽ�����',52,1,1000,3,1000,2388,2288,1500,null,'�������̳Ǹ�,ע��������30Ԫ����ȯ,ȫ����69ȫ������,ȫ����299��20Ԫ�Ż�ȯ,ȫ����399�͵�ӰƱ,��999���������ξ�����Ʊ1��',null,'/Public/upload/goods/2016/01-13/5695b2f14616a.jpg',1,1,0,0,50,1,0,1,0,15,15,0,100,0,0,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (41,191,0,'MR100001','��Ϊ M2 8Ӣ��ƽ�����',42,1,1000,3,1000,1688,1588,1200,null,'�������̳Ǹ�,ע��������30Ԫ����ȯ,ȫ����69ȫ������,ȫ����299��20Ԫ�Ż�ȯ,ȫ����399�͵�ӰƱ,��999���������ξ�����Ʊ1��',null,'/Public/upload/goods/2016/01-13/5695bf6426994.jpg',1,1,0,0,50,1,0,1,0,15,15,0,0,0,0,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (49,123,0,'MR100001','��ҫ����5X �����ֻ�',98,1,1000,3,639,1099,999,900,null,'�������̳Ǹ�,ע��������30Ԫ����ȯ,ȫ����69ȫ������,ȫ����299��20Ԫ�Ż�ȯ,ȫ����399�͵�ӰƱ,��999���������ξ�����Ʊ1��',null,'/Public/upload/goods/2016/01-13/569600e533b20.jpg',1,1,0,0,50,1,0,1,0,4,4,0,0,0,0,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (51,123,0,'MR100001','��Ϊ Mate 8 64GB',19,1,1000,3,685,3799,3699,3500,null,'�������̳Ǹ�,ע��������30Ԫ����ȯ,ȫ����69ȫ������,ȫ����299��20Ԫ�Ż�ȯ,ȫ����399�͵�ӰƱ,��999���������ξ�����Ʊ1��',null,'/Public/upload/goods/2016/01-13/56960907f26d1.jpg',1,1,0,0,50,1,0,1,0,4,4,0,0,0,0,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (56,130,0,'MR100001','����55M5 ����Һ������',58,15,598,3,14500,3899,3799,3500,null,'�������̳Ǹ�,ע��������30Ԫ����ȯ,ȫ����69ȫ������,ȫ����299��20Ԫ�Ż�ȯ,ȫ����399�͵�ӰƱ,��999���������ξ�����Ʊ1��',null,'/Public/upload/goods/2016/01-14/56970fc50a9f3.jpg',1,1,0,1460973760,50,1,0,1,0,18,18,0,100,0,1,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (57,130,0,'MR100001','TCL D50A710 Һ������',60,6,590,4,14500,2899,2799,2400,null,'�������̳Ǹ�,ע��������30Ԫ����ȯ,ȫ����69ȫ������,ȫ����299��20Ԫ�Ż�ȯ,ȫ����399�͵�ӰƱ,��999���������ξ�����Ʊ1��',null,'/Public/upload/goods/2016/01-14/569710f50e7d8.jpg',1,1,0,0,50,1,0,1,0,18,18,0,0,0,5,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (58,130,0,'MR100001','���� LED55EC290N Һ������',25,19,598,4,14500,3299,3199,2988,null,'�������̳Ǹ�,ע��������30Ԫ����ȯ,ȫ����69ȫ������,ȫ����299��20Ԫ�Ż�ȯ,ȫ����399�͵�ӰƱ,��999���������ξ�����Ʊ1��',null,'/Public/upload/goods/2016/01-14/56971493d2f2d.jpg',1,1,0,0,50,1,0,1,0,18,18,0,0,0,1,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (106,131,0,'MR100001','���� BCD-572WDPM�����',27,14,1000,0,500,3499,3399,3155,null,null,null,'/Public/upload/goods/2016/04-19/5715eb397e45c.jpg',1,1,0,1461054636,50,1,0,1,0,29,0,0,100,0,0,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (109,131,0,'MR100001','���� BCD-535WKZM�����',17,15,1000,0,500,3599,3499,3299,null,null,null,'/Public/upload/goods/2016/04-19/5715f7c928765.jpg',1,1,0,1461057566,50,1,0,1,0,29,0,0,0,0,0,0,0,0,null,null,null);
Insert into goods 
(goods_id,cat_id,extend_cat_id,goods_sn,goods_name,click_count,brand_id,store_count,comment_count,weight,market_price,shop_price,cost_price,keywords,goods_remark,goods_content,original_img,is_real,is_on_sale,is_free_shipping,on_time,sort,is_recommend,is_new,is_hot,last_update,goods_type,spec_type,give_integral,exchange_integral,suppliers_id,sales_sum,prom_type,prom_id,commission,spu,sku,shipping_area_ids) values (114,104,0,'MR100001','���� D7200�������',15,4,1000,0,500,3999,3899,3100,null,null,null,'/Public/upload/goods/2016/04-20/5717341543764.jpg',1,1,0,1461138489,50,1,0,1,0,0,0,0,0,0,0,0,0,0,null,null,null);

---------------------------------------------------
--   END DATA FOR TABLE goods
---------------------------------------------------



---------------------------------------------------
--   DATA FOR TABLE goods_type
--   FILTER = none used
---------------------------------------------------
REM INSERTING into goods_type
Insert into goods_type (id,name) values (4,'�ֻ�');
Insert into goods_type (id,name) values (8,'��ױƷ');
Insert into goods_type (id,name) values (15,'ƽ�����');
Insert into goods_type (id,name) values (16,'·����');
Insert into goods_type (id,name) values (18,'����');
Insert into goods_type (id,name) values (29,'����');

---------------------------------------------------
--   END DATA FOR TABLE goods_type
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE brand
--   FILTER = none used
---------------------------------------------------
REM INSERTING into brand
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (65,'ŷ�±�/OLDENBURGER','/Public/upload/brand/2016/04-01/65393334.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (66,'����/Devondale','/Public/upload/brand/2016/04-01/66125076.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (67,'��ά��/Primavita','/Public/upload/brand/2016/04-01/67795819.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (68,'������/Suki','/Public/upload/brand/2016/04-01/68598971.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (69,'��������/DEEP BLUE HEALTH','/Public/upload/brand/2016/04-01/69391027.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (70,'����/BEIER','/Public/upload/brand/2016/04-01/70604849.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (71,'��ŵ˹/Lemnos','/Public/upload/brand/2016/04-01/71497320.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (72,'��Ľ/swiss mooh','/Public/upload/brand/2016/04-01/72743881.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (73,'����/Emmi','/Public/upload/brand/2016/04-01/73942431.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (74,'������/CARSLAN','/Public/upload/brand/2016/04-01/74239114.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (75,'����ҽ','/Public/upload/brand/2016/04-01/75738470.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (76,'��/Dabao','/Public/upload/brand/2016/04-01/76310470.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (77,'���˱���/INOHERB','/Public/upload/brand/2016/04-01/77556921.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (78,'��ޢ/LANCOME','/Public/upload/brand/2016/04-01/78349746.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (79,'��ŷȪ/BIOTHERM','/Public/upload/brand/2016/04-01/79703643.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (80,'ٻ��/CLINIQUE','/Public/upload/brand/2016/04-01/80395614.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (81,'����/Fancl','/Public/upload/brand/2016/04-01/81893872.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (82,'��֥/LANEIGE','/Public/upload/brand/2016/04-01/82908621.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (83,'����/PUREMILD','/Public/upload/brand/2016/04-01/83927215.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (84,'������ɯ','/Public/upload/brand/2016/04-01/84746188.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (85,'����/DANZ','/Public/upload/brand/2016/04-01/85462658.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (86,'������','/Public/upload/brand/2016/04-01/86537612.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (87,'�ѹ�','/Public/upload/brand/2016/04-01/87593560.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (88,'ŷ����/L OREAL','/Public/upload/brand/2016/04-01/88659066.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (89,'��������','/Public/upload/brand/2016/04-01/89922656.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (90,'¡����/LONGLIQI','/Public/upload/brand/2016/04-01/90108596.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (91,'����/Guerlain','/Public/upload/brand/2016/04-01/91237054.jpg',null,null,50,'���ݻ���ϴ������ԡ',0,6,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (92,'������/Dumex','/Public/upload/brand/2016/04-01/92781124.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (93,'����/Wyeth','/Public/upload/brand/2016/04-01/93783239.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (94,'����','/Public/upload/brand/2016/04-01/94943447.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (95,'��ʿ��/YASHILY','/Public/upload/brand/2016/04-01/95842071.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (96,'������/BEINGMATE','/Public/upload/brand/2016/04-01/96409237.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (97,'������','/Public/upload/brand/2016/04-01/97803784.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (98,'�ֱ���/IMPERIAL.XO','/Public/upload/brand/2016/04-01/98314041.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (99,'��Ԫ','/Public/upload/brand/2016/04-01/99242987.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (100,'Ŧ����/Nouriz','/Public/upload/brand/2016/04-01/100190280.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (101,'����/GlodMax','/Public/upload/brand/2016/04-01/101393664.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (102,'����/Devondale','/Public/upload/brand/2016/04-01/102442251.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (103,'��ά��/Primavita','/Public/upload/brand/2016/04-01/103324176.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (104,'����/Karicare','/Public/upload/brand/2016/04-01/104321127.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (105,'�ظ���/Topfer','/Public/upload/brand/2016/04-01/105312255.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (106,'��һ/wissun','/Public/upload/brand/2016/04-01/106399954.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (107,'ţ�̿�/Neolac','/Public/upload/brand/2016/04-01/107720013.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (108,'��������/Karivita','/Public/upload/brand/2016/04-01/108548654.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (109,'���Ա���/JUST BABY','/Public/upload/brand/2016/04-01/109868933.jpg',null,null,50,'ĸӤ��Ʒ�����',0,10,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (110,'����/JOLLY','/Public/upload/brand/2016/04-01/110609024.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (111,'��¶ʿ/Walch','/Public/upload/brand/2016/04-01/111614874.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (112,'��¶/Dettol','/Public/upload/brand/2016/04-01/112169735.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (113,'��ܼ�/MAGIC AMAH','/Public/upload/brand/2016/04-01/113123071.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (114,'����ʿ/Walex','/Public/upload/brand/2016/04-01/114141336.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (115,'����','/Public/upload/brand/2016/04-01/115543133.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (116,'����/Kami','/Public/upload/brand/2016/04-01/116731246.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (117,'����','/Public/upload/brand/2016/04-01/117184045.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (118,'魾�','/Public/upload/brand/2016/04-01/118318765.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (119,'����/Liby','/Public/upload/brand/2016/04-01/119589166.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (229,'����','/Public/upload/brand/2016/04-01/229179211.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (230,'NIKKO','/Public/upload/brand/2016/04-01/230466860.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (231,'��̤/ANTA','/Public/upload/brand/2016/04-01/231306597.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (232,'���ױ���/Columbia','/Public/upload/brand/2016/04-01/232205111.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (233,'����/Puma','/Public/upload/brand/2016/04-01/233266552.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (234,'������','/Public/upload/brand/2016/04-01/234818313.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (235,'���ɱ�/FREE SOLDIER','/Public/upload/brand/2016/04-01/235421185.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (236,'�˸���','/Public/upload/brand/2016/04-01/236376388.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (237,'����/Onlly','/Public/upload/brand/2016/04-01/237991979.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (238,'������/HENG SHOU TANG','/Public/upload/brand/2016/04-01/238521133.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (239,'������','/Public/upload/brand/2016/04-01/239934796.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (240,'��Ҷ','/Public/upload/brand/2016/04-01/240841220.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (241,'������','/Public/upload/brand/2016/04-01/241414868.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (242,'̩��','/Public/upload/brand/2016/04-01/242447195.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (243,'����Դ/Besunyen','/Public/upload/brand/2016/04-01/243581805.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (244,'������','/Public/upload/brand/2016/04-01/244446481.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (245,'���ϰ�ҩ/YunnanBaiyao','/Public/upload/brand/2016/04-01/245644592.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (246,'��Ԫ','/Public/upload/brand/2016/04-01/246118374.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (247,'����K','/Public/upload/brand/2016/04-01/247346588.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (248,'��ҽ��','/Public/upload/brand/2016/04-01/248289047.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (249,'����','/Public/upload/brand/2016/04-01/249640527.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (250,'Ŧ��˼/Nemans','/Public/upload/brand/2016/04-01/250406546.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (251,'����','/Public/upload/brand/2016/04-01/251763519.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (252,'��Ԫ��','/Public/upload/brand/2016/04-01/252115792.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (253,'UTU','/Public/upload/brand/2016/04-01/253712048.jpg',null,null,50,'�����̲�����е����',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (254,'ELLE','/Public/upload/brand/2016/04-01/254833584.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (255,'��ʿ����/SWISSGEAR','/Public/upload/brand/2016/04-01/255116973.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (256,'�ų�/Gucci','/Public/upload/brand/2016/04-01/256123593.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (257,'��羼�/Bottega Veneta','/Public/upload/brand/2016/04-01/257718530.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (258,'����/MIU MIU','/Public/upload/brand/2016/04-01/258471365.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (259,'���ؽ�/MONTAGUT','/Public/upload/brand/2016/04-01/259741326.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (260,'ƻ��/Apple','/Public/upload/brand/2016/04-01/260959323.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (261,'���ζ�/CHANEL','/Public/upload/brand/2016/04-01/261969348.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (262,'����/CELINE','/Public/upload/brand/2016/04-01/262641763.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (263,'������/Oiwas','/Public/upload/brand/2016/04-01/263920953.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (264,'������/EMPORIO ARMANI','/Public/upload/brand/2016/04-01/264119857.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (265,'����/BEIER','/Public/upload/brand/2016/04-01/265423876.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (266,'Amii','/Public/upload/brand/2016/04-01/266416653.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (267,'��˹����/Bostanten','/Public/upload/brand/2016/04-01/267290228.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (268,'����/A-ZA','/Public/upload/brand/2016/04-01/268952072.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (269,'��·��/CLUCI','/Public/upload/brand/2016/04-01/269291491.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (270,'DOODOO','/Public/upload/brand/2016/04-01/270217910.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (271,'����˹͡/Lafestin','/Public/upload/brand/2016/04-01/271733526.jpg',null,null,50,'���Ƥ��',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (272,'ELLE','/Public/upload/brand/2016/04-01/272952841.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (273,'����/Longines','/Public/upload/brand/2016/04-01/273431567.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (274,'�ͱ���/Burberry','/Public/upload/brand/2016/04-01/274917410.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (275,'���ν��/Transformers','/Public/upload/brand/2016/04-01/275985223.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (276,'����A��/Doraemon','/Public/upload/brand/2016/04-01/276769039.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (277,'ʩ��������/Swarovski','/Public/upload/brand/2016/04-01/277253479.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (278,'GUESS','/Public/upload/brand/2016/04-01/278237026.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (279,'����/Montblanc','/Public/upload/brand/2016/04-01/279229693.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (280,'ޢ��/COACH','/Public/upload/brand/2016/04-01/280597543.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (281,'��Ÿ��/Sea-Gull','/Public/upload/brand/2016/04-01/281516601.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (282,'��ʿ��/Disney','/Public/upload/brand/2016/04-01/282848635.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (283,'����/Tissot','/Public/upload/brand/2016/04-01/283801312.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (120,'ʨ��/LION','/Public/upload/brand/2016/04-01/120630062.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (121,'����','/Public/upload/brand/2016/04-01/121911230.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (122,'����','/Public/upload/brand/2016/04-01/122213186.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (123,'������','/Public/upload/brand/2016/04-01/123387347.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (124,'��ɡ/EVER GREEN','/Public/upload/brand/2016/04-01/124513058.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (125,'ԣ��','/Public/upload/brand/2016/04-01/125814001.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (126,'���/Attack','/Public/upload/brand/2016/04-01/126246475.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (127,'С��','/Public/upload/brand/2016/04-01/127922052.jpg',null,null,50,'������ࡢֽ������',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (128,'����/sunya','/Public/upload/brand/2016/04-01/128577108.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (129,'����','/Public/upload/brand/2016/04-01/129651733.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (130,'˫��/shineway','/Public/upload/brand/2016/04-01/130390505.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (131,'�踣��/HUNG FOOK TONG','/Public/upload/brand/2016/04-01/131927655.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (132,'ζǧ����/AJISEN RAMEN','/Public/upload/brand/2016/04-01/132569088.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (133,'����/Yurun','/Public/upload/brand/2016/04-01/133733801.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (134,'˼��/SYNEAR','/Public/upload/brand/2016/04-01/134167153.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (135,'����/Anchor','/Public/upload/brand/2016/04-01/135488531.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (136,'ŷ�±�/OLDENBURGER','/Public/upload/brand/2016/04-01/136685873.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (137,'����/Devondale','/Public/upload/brand/2016/04-01/137919580.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (138,'��ŵ��/Canola','/Public/upload/brand/2016/04-01/138448294.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (139,'NPG','/Public/upload/brand/2016/04-01/139139056.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (140,'��֥ţ/The Laughing Cow','/Public/upload/brand/2016/04-01/140674337.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (141,'�ƶ���/KERCHIN','/Public/upload/brand/2016/04-01/141618444.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (142,'������/Suki','/Public/upload/brand/2016/04-01/142755801.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (143,'������','/Public/upload/brand/2016/04-01/143863604.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (144,'������ͷ','/Public/upload/brand/2016/04-01/144731356.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (145,'����','/Public/upload/brand/2016/04-01/145589770.jpg',null,null,50,'����ʳƷ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (146,'����/huale','/Public/upload/brand/2016/04-01/146161550.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (147,'�ð���/hao ban lv','/Public/upload/brand/2016/04-01/147496551.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (148,'������','/Public/upload/brand/2016/04-01/148603805.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (149,'ŵ����/noyoke','/Public/upload/brand/2016/04-01/149242932.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (150,'����ܰ/Canasin','/Public/upload/brand/2016/04-01/150887417.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (151,'������/PULADA','/Public/upload/brand/2016/04-01/151922271.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (152,'���ؽ�/MONTAGUT','/Public/upload/brand/2016/04-01/152488558.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (153,'����','/Public/upload/brand/2016/04-01/153337304.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (154,'��ޱ/Lavie','/Public/upload/brand/2016/04-01/154205276.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (155,'����ū','/Public/upload/brand/2016/04-01/155875140.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (156,'���Ԫ��','/Public/upload/brand/2016/04-01/156132492.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (157,'����','/Public/upload/brand/2016/04-01/157282263.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (158,'·;��','/Public/upload/brand/2016/04-01/158337002.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (159,'��֮��','/Public/upload/brand/2016/04-01/159439532.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (160,'�չ�����','/Public/upload/brand/2016/04-01/160632479.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (161,'ͼǿ/TU QIANF TOWEL','/Public/upload/brand/2016/04-01/161837182.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (162,'���³�Ʒ','/Public/upload/brand/2016/04-01/162354470.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (163,'�����Ҿ�/luc life','/Public/upload/brand/2016/04-01/163149822.jpg',null,null,50,'�ҾӼҷġ����߲;�',0,4,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (164,'ɳ��/VS','/Public/upload/brand/2016/04-01/164835397.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (165,'����','/Public/upload/brand/2016/04-01/165511437.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (166,'����/HITACHI','/Public/upload/brand/2016/04-01/166679556.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (167,'������/bero','/Public/upload/brand/2016/04-01/167990386.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (168,'�Ź�','/Public/upload/brand/2016/04-01/168938119.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (169,'SKG','/Public/upload/brand/2016/04-01/169964404.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (170,'�׼�/Yijan','/Public/upload/brand/2016/04-01/170384133.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (171,'��ŷŷĽ/nathome','/Public/upload/brand/2016/04-01/171795599.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (172,'˫��/twinbird','/Public/upload/brand/2016/04-01/172687521.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (173,'��Ц','/Public/upload/brand/2016/04-01/173705456.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (174,'������/KASRROW','/Public/upload/brand/2016/04-01/174790078.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (175,'������/PHILIPS','/Public/upload/brand/2016/04-01/175549835.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (176,'�¹�����/BRAUN','/Public/upload/brand/2016/04-01/176280477.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (177,'����˹��/BESTDAY','/Public/upload/brand/2016/04-01/177493969.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (178,'����˹/MKS','/Public/upload/brand/2016/04-01/178969265.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (179,'����/kangfu','/Public/upload/brand/2016/04-01/179787469.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (180,'����','/Public/upload/brand/2016/04-01/180363864.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (181,'����/RIWA','/Public/upload/brand/2016/04-01/181639318.jpg',null,null,50,'��С�ҵ硢���硢����',0,2,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (182,'����/hp','/Public/upload/brand/2016/04-01/182443569.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (183,'����/DELL','/Public/upload/brand/2016/04-01/183692877.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (184,'ƻ��/Apple','/Public/upload/brand/2016/04-01/184234555.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (185,'΢��/Microsoft','/Public/upload/brand/2016/04-01/185100878.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (186,'��˶/ASUS','/Public/upload/brand/2016/04-01/186984866.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (187,'ThinkPad','/Public/upload/brand/2016/04-01/187800433.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (188,'�廪ͬ��','/Public/upload/brand/2016/04-01/188539425.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (189,'��ʿ��/Kingston','/Public/upload/brand/2016/04-01/189988024.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (190,'΢��/MSI','/Public/upload/brand/2016/04-01/190315029.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (191,'��ܰ��/KAI XIN BAO','/Public/upload/brand/2016/04-01/191294512.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (192,'����/ViewSonic','/Public/upload/brand/2016/04-01/192575350.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (193,'����/Lenovo','/Public/upload/brand/2016/04-01/193460131.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (194,'�곞/acer','/Public/upload/brand/2016/04-01/194205935.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (195,'��������/WD','/Public/upload/brand/2016/04-01/195609490.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (196,'����/SAMSUNG','/Public/upload/brand/2016/04-01/196989205.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (197,'����/SONY','/Public/upload/brand/2016/04-01/197626574.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (198,'ŵ����/NOKIA','/Public/upload/brand/2016/04-01/198179458.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (199,'����/BenQ','/Public/upload/brand/2016/04-01/199929742.jpg',null,null,50,'���ԡ�ƽ�塢�칫�豸',0,3,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (200,'��������/PLAYBOY','/Public/upload/brand/2016/04-01/200177865.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (201,'���ϴ�˹/adidas','/Public/upload/brand/2016/04-01/201446728.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (202,'��˾��/Bosideng','/Public/upload/brand/2016/04-01/202207473.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (203,'��ʨ/Tonlion','/Public/upload/brand/2016/04-01/203889642.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (204,'��¹','/Public/upload/brand/2016/04-01/204588204.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (205,'��ά˹/Jeanswest','/Public/upload/brand/2016/04-01/205229968.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (206,'��ˮ����','/Public/upload/brand/2016/04-01/206711856.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (207,'��̤/ANTA','/Public/upload/brand/2016/04-01/207573565.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (208,'����˹','/Public/upload/brand/2016/04-01/208617098.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (209,'ONEBUYE','/Public/upload/brand/2016/04-01/209735668.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (210,'����/TOYOUTH','/Public/upload/brand/2016/04-01/210764480.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (211,'�ſ�ϣ/YAKEXI','/Public/upload/brand/2016/04-01/211515887.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (212,'����/Youmi','/Public/upload/brand/2016/04-01/212911422.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (213,'����/MengNa','/Public/upload/brand/2016/04-01/213473205.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (214,'A21','/Public/upload/brand/2016/04-01/214787222.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (215,'OopsCiah','/Public/upload/brand/2016/04-01/215800982.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (216,'����/nomi','/Public/upload/brand/2016/04-01/216768051.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (217,'ɭ��/Semir','/Public/upload/brand/2016/04-01/217201953.jpg',null,null,50,'�������¡�Ьѥͯװ',0,5,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (218,'����/kawasaki','/Public/upload/brand/2016/04-01/218751956.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (219,'��/Reebok','/Public/upload/brand/2016/04-01/219163226.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (220,'�Ϳ�/NIKE','/Public/upload/brand/2016/04-01/220833859.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (221,'���ϴ�˹/adidas','/Public/upload/brand/2016/04-01/221231286.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (222,'��ʿ��/Disney','/Public/upload/brand/2016/04-01/222180557.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (223,'�ز�/Xtep','/Public/upload/brand/2016/04-01/223486993.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (224,'361��','/Public/upload/brand/2016/04-01/224405722.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (225,'����/Warrior','/Public/upload/brand/2016/04-01/225420581.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (226,'����/Converse','/Public/upload/brand/2016/04-01/226844900.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (227,'����/CAMEL','/Public/upload/brand/2016/04-01/227506658.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (228,'̽·��/Toread','/Public/upload/brand/2016/04-01/228130514.jpg',null,null,50,'�˶�����',0,8,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (1,'��Ϊ/HUAWEI','/Public/upload/brand/2016/04-01/1584936.jpg',null,null,50,'�ֻ������롢���',1,12,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (4,'����/SONY','/Public/upload/brand/2016/04-01/4178854.jpg',null,null,50,'�ֻ������롢���',1,1,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (5,'ŵ����/NOKIA','/Public/upload/brand/2016/04-01/5498254.jpg',null,null,50,'�ֻ������롢���',1,1,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (6,'TCL','/Public/upload/brand/2016/04-01/6592544.jpg',null,null,50,'�ֻ������롢���',1,1,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (7,'������/PHILIPS','/Public/upload/brand/2016/04-01/7956109.jpg',null,null,50,'�ֻ������롢���',1,1,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (8,'OPPO','/Public/upload/brand/2016/04-01/8351889.jpg',null,null,50,'�ֻ������롢���',1,1,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (9,'ƻ��/Apple','/Public/upload/brand/2016/04-01/9515283.jpg',null,null,50,'�ֻ������롢���',1,1,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (14,'����/Haier','/Public/upload/brand/2016/04-01/14393692.jpg',null,null,50,'�ֻ������롢���',2,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (15,'����/SAMSUNG','/Public/upload/brand/2016/04-01/15993682.jpg',null,null,50,'�ֻ������롢���',2,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (19,'����/Hisense','/Public/upload/brand/2016/04-01/19907879.jpg',null,null,50,'�ֻ������롢���',2,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (20,'ϲ֮��/STRONG','/Public/upload/brand/2016/04-01/20438571.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (21,'������˹/Alpenliebe','/Public/upload/brand/2016/04-01/21232385.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (22,'����/chun guang','/Public/upload/brand/2016/04-01/22637808.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (23,'�˸���','/Public/upload/brand/2016/04-01/23714849.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (24,'�ʹ�/Danisa','/Public/upload/brand/2016/04-01/24379574.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (25,'����/PO-LI','/Public/upload/brand/2016/04-01/25158007.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (26,'�Ŷ���','/Public/upload/brand/2016/04-01/26461917.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (27,'����/yida','/Public/upload/brand/2016/04-01/27948968.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (28,'ĸ��','/Public/upload/brand/2016/04-01/28979757.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (29,'Ʒ��/Pringles','/Public/upload/brand/2016/04-01/29834216.jpg',null,null,50,'��ʳ�ز�������',3,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (30,'����/Lay s','/Public/upload/brand/2016/04-01/30199893.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (31,'��������/Doritos','/Public/upload/brand/2016/04-01/31794610.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (32,'��ʦ��/Master Kong','/Public/upload/brand/2016/04-01/32635995.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (33,'��ζ��','/Public/upload/brand/2016/04-01/33320385.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (34,'�̵�/green king','/Public/upload/brand/2016/04-01/34723611.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (35,'�Ϻü�/Oishi','/Public/upload/brand/2016/04-01/35786151.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (36,'����/lifefun','/Public/upload/brand/2016/04-01/36895162.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (37,'��ζ��','/Public/upload/brand/2016/04-01/37725891.jpg',null,null,50,'��ʳ�ز�������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (38,'���/QUAKER','/Public/upload/brand/2016/04-01/38654946.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (39,'����/KRAFT','/Public/upload/brand/2016/04-01/39107965.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (40,'άά','/Public/upload/brand/2016/04-01/40154135.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (41,'������/Ovaltine','/Public/upload/brand/2016/04-01/41110107.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (42,'����/MG','/Public/upload/brand/2016/04-01/42865774.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (43,'����','/Public/upload/brand/2016/04-01/43194427.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (44,'����/Soyfresh','/Public/upload/brand/2016/04-01/44859786.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (45,'����','/Public/upload/brand/2016/04-01/45582409.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (46,'����԰','/Public/upload/brand/2016/04-01/46877969.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (47,'��԰/COUNTRY GOODNESS','/Public/upload/brand/2016/04-01/47229913.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (48,'������/LIVING PLANET','/Public/upload/brand/2016/04-01/48508993.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (49,'��˹��/PASCUAL','/Public/upload/brand/2016/04-01/49202172.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (50,'ϲ��','/Public/upload/brand/2016/04-01/50663406.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (51,'ŷ�±�/OLDENBURGER','/Public/upload/brand/2016/04-01/51748797.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (52,'����/Devondale','/Public/upload/brand/2016/04-01/52648629.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (53,'����','/Public/upload/brand/2016/04-01/53178771.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (54,'����','/Public/upload/brand/2016/04-01/54643960.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (55,'ȸ��/Nestle','/Public/upload/brand/2016/04-01/55935455.jpg',null,null,50,'�����Ʒ����ˮ������',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (56,'����/Soyfresh','/Public/upload/brand/2016/04-01/56575570.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (57,'������/SUNTORY','/Public/upload/brand/2016/04-01/57371582.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (58,'��԰/COUNTRY GOODNESS','/Public/upload/brand/2016/04-01/58791506.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (59,'������/LIVING PLANET','/Public/upload/brand/2016/04-01/59424261.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (60,'��˹��/PASCUAL','/Public/upload/brand/2016/04-01/60936691.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (61,'������ŵ/GRANAROLO','/Public/upload/brand/2016/04-01/61189978.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (62,'����','/Public/upload/brand/2016/04-01/62627920.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (63,'Ŧ����/Nouriz','/Public/upload/brand/2016/04-01/63199591.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (64,'����/Anchor','/Public/upload/brand/2016/04-01/64128866.jpg',null,null,50,'����ʳƷ������ţ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (284,'������/TIAN WANG','/Public/upload/brand/2016/04-01/284185226.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (285,'��ά˹/Levi s','/Public/upload/brand/2016/04-01/285630310.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (286,'������/EMPORIO ARMANI','/Public/upload/brand/2016/04-01/286474111.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (287,'÷��/Titoni','/Public/upload/brand/2016/04-01/287984454.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (288,'�żΰ���/DG','/Public/upload/brand/2016/04-01/288628964.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (289,'BUREI','/Public/upload/brand/2016/04-01/289453979.jpg',null,null,50,'�鱦/��Ʒ/�ֱ�/�۾�',0,7,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (290,'�Ѱ�','/Public/upload/brand/2016/04-01/290885330.jpg',null,null,50,'ͼ����־',0,11,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (291,'һ��һ��/Infeel.Me','/Public/upload/brand/2016/04-01/291413494.jpg',null,null,50,'ͼ����־',0,11,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (292,'����','/Public/upload/brand/2016/04-01/292775631.jpg',null,null,50,'ͼ����־',0,11,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (293,'������˹/Electrolux','/Public/upload/brand/2016/04-01/293296984.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (294,'�ֱȱ�/LEBIBI','/Public/upload/brand/2016/04-01/294704165.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (295,'����/Uncle Wang','/Public/upload/brand/2016/04-01/295972808.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (296,'����','/Public/upload/brand/2016/04-01/296822103.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (297,'����/Cuckoo','/Public/upload/brand/2016/04-01/297918701.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (298,'����/EUPA','/Public/upload/brand/2016/04-01/298802493.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (299,'����/LIVEN','/Public/upload/brand/2016/04-01/299496771.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (300,'��ܰ��/KAI XIN BAO','/Public/upload/brand/2016/04-01/300515255.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (301,'���Ӵ�','/Public/upload/brand/2016/04-01/301828503.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (302,'�����/Carori','/Public/upload/brand/2016/04-01/302702188.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (303,'��Ұ/UCHINO','/Public/upload/brand/2016/04-01/303869757.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (304,'������','/Public/upload/brand/2016/04-01/304951962.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (305,'׿��/ZoomLand','/Public/upload/brand/2016/04-01/305785766.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (306,'С��/Bear','/Public/upload/brand/2016/04-01/306375125.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (307,'����/Joyoung','/Public/upload/brand/2016/04-01/307826141.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (308,'�µ�˫��/AULDEY','/Public/upload/brand/2016/04-01/308979098.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (309,'�ı�/auby','/Public/upload/brand/2016/04-01/309199865.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (310,'�����/Philippi','/Public/upload/brand/2016/04-01/310243179.jpg',null,null,50,'������Ʒ����Ʒ��',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (311,'���/BAND-AID','/Public/upload/brand/2016/04-01/311450299.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (312,'���ϰ�ҩ/YunnanBaiyao','/Public/upload/brand/2016/04-01/312793539.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (313,'����/SINO','/Public/upload/brand/2016/04-01/313730175.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (314,'���Ϻ�ŵ/HAINUO','/Public/upload/brand/2016/04-01/314278225.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (315,'����','/Public/upload/brand/2016/04-01/315276605.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (316,'������/SIEMENS','/Public/upload/brand/2016/04-01/316142160.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (317,'ǿ��/Johnson','/Public/upload/brand/2016/04-01/317886071.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (318,'����','/Public/upload/brand/2016/04-01/318902139.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (319,'����/KANGFEI','/Public/upload/brand/2016/04-01/319389434.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (320,'�ɺ���','/Public/upload/brand/2016/04-01/320121835.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (321,'�����','/Public/upload/brand/2016/04-01/321526928.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (322,'ŷķ��/Omron','/Public/upload/brand/2016/04-01/322286795.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (323,'��Ծ/yuyue','/Public/upload/brand/2016/04-01/323423162.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (324,'����/Abbott','/Public/upload/brand/2016/04-01/324479440.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (325,'������/Loboor','/Public/upload/brand/2016/04-01/325862121.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (326,'���˴��/microlife','/Public/upload/brand/2016/04-01/326654067.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (327,'������/arkray','/Public/upload/brand/2016/04-01/327462164.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (328,'������/AND','/Public/upload/brand/2016/04-01/328511849.jpg',null,null,50,'����ҩƷ��ҽ����е',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (329,'�ǰͿ�/STARBUCKS','/Public/upload/brand/2016/04-01/329851025.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (330,'����/KRAFT','/Public/upload/brand/2016/04-01/330175833.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (331,'����/Merries','/Public/upload/brand/2016/04-01/331140814.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (332,'�ƴ�/Centrum','/Public/upload/brand/2016/04-01/332865939.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (333,'LG','/Public/upload/brand/2016/04-01/333803015.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (334,'�ƶ���/Caltrate','/Public/upload/brand/2016/04-01/334173965.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (335,'��ʿ��/Lindt','/Public/upload/brand/2016/04-01/335443487.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (336,'����/Post','/Public/upload/brand/2016/04-01/336838583.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (337,'����/Devondale','/Public/upload/brand/2016/04-01/337577465.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (338,'����/GOO.N','/Public/upload/brand/2016/04-01/338620339.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (339,'ȸ��/Nestle','/Public/upload/brand/2016/04-01/339104559.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (340,'�͹���/WaKODO','/Public/upload/brand/2016/04-01/340176657.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (341,'����/Karicare','/Public/upload/brand/2016/04-01/341483752.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (342,'����/summer eve','/Public/upload/brand/2016/04-01/342136831.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (343,'����/Heinz','/Public/upload/brand/2016/04-01/343108404.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (344,'����/MISSHA','/Public/upload/brand/2016/04-01/344877035.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (345,'�ļѱ�/BLACKMORES','/Public/upload/brand/2016/04-01/345381250.jpg',null,null,50,'������Ʒ',0,0,0);
Insert into brand (id,name,logo,describe,url,sort,cat_name,parent_cat_id,cat_id,is_hot) values (346,'ŵ����/Nutrilon','/Public/upload/brand/2016/04-01/346495315.jpg',null,null,50,'������Ʒ',0,0,0);

---------------------------------------------------
--   END DATA FOR TABLE brand
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE orderform
--   FILTER = none used
---------------------------------------------------
REM INSERTING into orderform
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (826,'201706081729418431',2589,4,1,1,'С��',0,7531,7532,0,7710,'���ڶ������϶�·4003�������������B��4¥','12323','18910441212',null,null,null,399,399,399,1483203600,0,1496914220,1496914187,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (827,'201706081732158111',2589,4,1,1,'С��',0,7531,7532,0,7710,'���ڶ������϶�·4003�������������B��4¥','12323','18910441212',null,null,null,2000,2000,2000,1488474000,0,1496914366,1496914341,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (828,'201706090846205237',2589,4,1,1,'С��',0,7531,7532,0,7710,'���ڶ������϶�·4003�������������B��4¥','12323','18910441212',null,null,null,1999,1999,1999,1488474000,0,1496969232,1496969187,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (829,'201706090849505219',2589,4,1,1,'С��',0,7531,7532,0,7710,'���ڶ������϶�·4003�������������B��4¥','12323','18910441212',null,null,null,1399,1399,1399,1491152400,0,1496969417,1496969396,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (830,'201706191623342538',2589,1,0,1,'С��',0,7531,7532,0,7710,'���ڶ������϶�·4003�������������B��4¥','12323','18910441212',null,null,null,48,48,48,1493744400,0,0,0,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (831,'201706191706011466',2589,1,0,1,'���տƼ�',0,7531,7532,7533,0,'����������·104��¥4��402��','131200','13578982158',null,null,null,96,96,96,1493744400,0,0,0,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (832,'201706191721157693',2589,2,1,1,'���տƼ�',0,7531,7532,7533,0,'����������·104��¥4��402��','131200','13578982158',null,null,null,96,96,96,1497864075,0,1506494083,1497865238,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (833,'201706201658329117',2589,4,1,1,'���տƼ�',0,7531,7532,7533,0,'����������·104��¥4��402��','131200','13578982158',null,null,null,1999,1999,1999,1497949112,0,1506491492,1497949119,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (835,'201709271519568300',2589,0,0,1,'andy',0,7531,7532,7534,7535,'�Ϻ�������������·21��',null,'13211111111',null,null,null,48,48,48,1506496796,0,0,1506496804,0,null,null);
Insert into orderform 
(order_id,order_sn,user_id,order_status,shipping_status,pay_status,consignee,country,province,city,district,twon,address,zipcode,mobile,email,pay_code,pay_name,goods_price,order_amount,total_amount,add_time,shipping_time,confirm_time,pay_time,discount,user_note,admin_note) values (836,'201709271605249732',2589,4,1,1,'andy',0,7531,7532,7534,7535,'�Ϻ�������������·21��',null,'13211111111',null,null,null,18000,18000,18000,1506499524,0,1506499958,1506499531,0,null,null);

---------------------------------------------------
--   END DATA FOR TABLE orderform
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE bookpub
--   FILTER = none used
---------------------------------------------------
REM INSERTING into bookpub
Insert into bookpub (���,����,����,�ۼ�,��������,��һ�γ�������) values (1,'ASP.NET��Ŀ����ȫ��ʵ¼','�����',59,to_timestamp('01-12��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-3�� -18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'));
Insert into bookpub (���,����,����,�ۼ�,��������,��һ�γ�������) values (2,'ASP.NET���򿪷���������ڰ�','��ΰ���',89,to_timestamp('12-11��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('01-5�� -18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'));
Insert into bookpub (���,����,����,�ۼ�,��������,��һ�γ�������) values (3,'ASP.NET���翪��ʵ����ѧ�ֲ�','����ΰ��',86,to_timestamp('25-1�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-4�� -18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'));
Insert into bookpub (���,����,����,�ۼ�,��������,��һ�γ�������) values (4,'ASP.NET2.0��������ѧ�ֲ�','�����',78,to_timestamp('05-6�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('01-10��-18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'));
Insert into bookpub (���,����,����,�ۼ�,��������,��һ�γ�������) values (5,'ASP.NET������������','��С�Ƶ�',75,to_timestamp('05-3�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('07-8�� -18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'));
Insert into bookpub (���,����,����,�ۼ�,��������,��һ�γ�������) values (6,'ASP.NET�����̱�׼�̳�','�����',88,to_timestamp('06-4�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('08-8�� -18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'));
Insert into bookpub (���,����,����,�ۼ�,��������,��һ�γ�������) values (7,'SQLӦ���뿪����������','����ΰ��',89,to_timestamp('03-11��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('11-11��-18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'));

---------------------------------------------------
--   END DATA FOR TABLE bookpub
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE bookinfo_zerobasis
--   FILTER = none used
---------------------------------------------------
REM INSERTING into bookinfo_zerobasis
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-1','�����ѧJava','�����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,'2017��8��',to_timestamp('25-10��-17 11.25.17.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-2','�����ѧAndroid','�����ϵ��','���ִ�ѧ������','���տƼ�',null,89.8,'2017��9��',to_timestamp('25-10��-17 11.27.26.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-3','�����ѧC����','�����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,'2017��9��',to_timestamp('25-10��-17 11.33.10.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-4','�����ѧPHP','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,'2017��9��',to_timestamp('25-10��-17 11.32.17.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-5','�����ѧC#','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,'2017��10��',to_timestamp('17-3�� -18 11.35.13.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-6','�����ѧJavaScript','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,'2017��10��',to_timestamp('17-3�� -18 11.37.35.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-7','�����ѧHTML5+CSS3','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,'2017��12��',to_timestamp('17-3�� -18 11.40.13.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo_zerobasis (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-8','�����ѧOracle','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,'2018��1��',to_timestamp('23-1�� -18 10.05.53.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);

---------------------------------------------------
--   END DATA FOR TABLE bookinfo_zerobasis
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE bookinfo
--   FILTER = none used
---------------------------------------------------
REM INSERTING into bookinfo
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-4','JavaWeb��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-4�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 02.58.19.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-5','C++��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-5�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 02.58.59.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-6','JSP��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-4�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 02.59.49.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-7','PHP��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-4�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 03.12.36.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-8','C#��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-4�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 03.13.49.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-9','ASP.NET��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-7�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('05-2�� -18 09.18.52.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12085-1','Android���ʱ��200��','200��ϵ��','���ִ�ѧ������','���տƼ�',null,89.8,to_timestamp('01-8�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-3�� -18 09.05.36.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12085-2','Java���ʱ��200��','200��ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('01-8�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-3�� -18 09.07.14.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12085-3','C���Ծ��ʱ��200��','200��ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('01-9�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-3�� -18 09.10.37.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12085-4','C#���ʱ��200��','200��ϵ��','���ִ�ѧ������','���տƼ�',null,89.8,to_timestamp('01-10��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-3�� -18 09.11.54.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12085-5','Visual Basic���ʱ��200��','200��ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('01-11��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-3�� -18 09.13.38.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-1','�����ѧJava','�����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-8�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.25.17.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-2','�����ѧAndroid','�����ϵ��','���ִ�ѧ������','���տƼ�',null,89.8,to_timestamp('01-9�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.27.26.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-3','�����ѧC����','�����ϵ��','���ִ�ѧ������','���տƼ�',null,69.8,to_timestamp('01-9�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.33.10.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-4','�����ѧPHP','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('01-9�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.32.17.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-5','�����ѧC#','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('01-10��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.35.13.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-6','�����ѧJavaScript','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('01-10��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.37.35.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-7','�����ѧHTML5+CSS3','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('01-10��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.40.13.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12073-8','�����ѧOracle','�����ϵ��','���ִ�ѧ������','���տƼ�',null,79.8,to_timestamp('09-1�� -18 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('17-3�� -18 11.41.53.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-12763-3','Visual Basic���ݿ⿪��ʵ������','Visual Basicϵ�д���','��е��ҵ������','��־�����ߴ��ޡ��｡��',null,48,to_timestamp('01-8�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.35.41.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-12812-5','Visual FoxPro���ݿ⿪��ʵ������','Visual FoxProϵ�д���','��е��ҵ������','����Ө�������ԡ�����',null,48,to_timestamp('01-9�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.37.21.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-13024-3','Power Builder���ݿ⿪��ʵ������','PowerBuilderϵ�д���','��е��ҵ������','��������������������Ӣ',null,43,to_timestamp('01-9�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.39.35.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-13900-3','Delphi���ݿ⿪��ʵ������','Delphϵ�д���','��е��ҵ������','��������֣������֣����',null,49,to_timestamp('01-2�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.41.29.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-14939-4','PowerBuilder ���ʱ��200��','PowerBuilderϵ�д���','��е��ҵ������','���������������������',null,39,to_timestamp('01-9�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.43.35.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-14967-X','Visual FoxPro ���ʱ��200��','Visual FoxProϵ�д���','��е��ҵ������','�����ԡ����ػ��������',null,39,to_timestamp('01-8�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.45.29.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-15531-9','ASP���ݿ⿪��ʵ������','ASPϵ�д���','��е��ҵ������','���ϡ����Ƿ���������',null,36,to_timestamp('01-12��-15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.47.50.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-15821-0','Delphi����Ӧ������Ŀʵ��','Delphiϵ�д���','��е��ҵ������','���� �����µ�',null,39,to_timestamp('01-1�� -16 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('15-12��-15 04.50.47.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-15860-1','Visual Basic����Ӧ������Ŀʵ��',null,'��е��ҵ������','�ߴ��ޡ�����',null,43,to_timestamp('01-1�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('23-10��-16 04.52.33.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-15960-8','Visual C��������Ӧ������Ŀʵ��','Visual C����ϵ�д���','��е��ҵ������','���ꡢ��ΰ������ص�',null,41,to_timestamp('01-1�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('23-10��-16 04.54.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-15984-5','JSP����Ӧ������Ŀʵ��','JSPϵ�д���','��е��ҵ������','��������ΰ�������',null,38,to_timestamp('01-2�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('23-10��-16 04.55.28.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-16332-X','ASP����Ӧ������Ŀʵ��','ASPϵ�д���','��е��ҵ������','�����ԡ�ţǿ��������',null,42,to_timestamp('01-4�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('23-10��-16 04.56.47.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-111-16490-4','Visual Basic ��Ϣϵͳ����ʵ����ѡ','Visual Basicϵ�д���','��е��ҵ������','�ߴ��ޡ������ҫͥ��',null,44,to_timestamp('01-7�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('23-10��-16 04.58.17.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-1','Java��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,59.8,to_timestamp('01-3�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 02.53.55.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-2','C������Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,59.8,to_timestamp('01-4�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 02.55.09.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);
Insert into bookinfo (ISBN,BookName,Type,publisher,Writer,Introduce,Price,pDate,INTime,newbook,commend) values ('7-110-12000-3','Android��Ŀ����ʵս����','��Ŀ����ϵ��','���ִ�ѧ������','���տƼ�',null,59.8,to_timestamp('01-5�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('22-1�� -18 02.57.14.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1);

---------------------------------------------------
--   END DATA FOR TABLE bookinfo
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE users
--   FILTER = none used
---------------------------------------------------
REM INSERTING into users
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (1,'240874144@qq.com','1234567',1,to_timestamp('04-3�� -86 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),1,1,to_timestamp('19-2�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('11-11��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),'0.0.0.0','511482696','13800138006',1,null,null,null,5827,6542,6563,1,'Andy',4,0.92,63136.04,0,'00a1c0366b96e5c3bfff8bd1d85fa557');
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (2,'vip@dsads.com','1234567',0,to_timestamp('15-6�� -87 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0,to_timestamp('22-6�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('11-11��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null,null,0,null,null,null,0,0,0,0,null,1,1,5663.56,0,null);
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (5,'zuanshi@qqh.com','1234567',1,to_timestamp('13-7�� -90 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),5281,3,to_timestamp('04-3�� -16 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('05-12��-16 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),'127.0.0.1','398145057','13800138070',0,null,null,null,0,0,0,0,null,1,1,965.63,0,null);
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (13,'abc@sohu.com','1234567',0,to_timestamp('17-11��-89 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0,to_timestamp('07-8�� -15 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('18-7�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null,null,0,'alipay','2088502287689843',null,0,0,0,0,'֧�����û�',1,1,1666.26,0,null);
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (14,'3665696@qq.com','1234567',0,to_timestamp('28-1�� -84 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0,to_timestamp('07-11��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('29-8�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null,null,0,'alipay','2088702176714764',null,0,0,0,0,'֧�����û�',1,1,3996.88,0,null);
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (17,'569696326@qq.com','1234567',2,to_timestamp('21-7�� -76 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),10,0,to_timestamp('12-12��-16 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('11-11��-17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null,'15889560679',0,null,null,null,0,0,0,0,'΢���û�',1,1,13266.36,0,null);
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (19,'ab_cd@sina.com','1234567',0,to_timestamp('17-10��-72 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0,to_timestamp('20-8�� -16 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('12-4�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null,null,0,'qq','FCC5C85BED6E6ABC35419FE368A00727',null,0,0,0,0,'QQ�û�',1,1,0,0,null);
Insert into users 
(user_id,email,password,sex,birthday,pay_points,address_id,reg_time,last_login,last_ip,qq,mobile,mobile_validated,oauth,openid,head_pic,province,city,district,email_validated,nickname,level_1,discount,total_amount,is_lock,token) values (23,'_xor@163.com','1234567',0,to_timestamp('09-7�� -60 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),0,0,to_timestamp('27-5�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('28-7�� -17 12.00.00.000000000 ����','DD-MON-RR HH.MI.SS.FF AM'),null,null,null,0,'qq','7EDE8DFC152E4775A9C2364F6AF8EE0F',null,0,0,0,0,'QQ�û�',1,1,0,0,null);

---------------------------------------------------
--   END DATA FOR TABLE users
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE user_address
--   FILTER = none used
---------------------------------------------------
REM INSERTING into user_address
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (8,20,'   ������',null,0,19,241,2370,0,'�����������Ļ���·130��',null,'13554754891',0,0);
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (9,20,'��Į��ӥ',null,0,1,36,397,0,'��������������8��',null,'13554745866',1,0);
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (10,21,'          ����',null,0,2,37,401,0,'�����г��������˽�56��','518116','13800138000',1,0);
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (11,23,'�¼���',null,0,1,2,3,0,'�Ϻ��������Ͼ���·1618��',null,'13012345678',0,0);
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (13,24,'      �����',null,1,636,1291,1319,1320,'�������и�����·36��','123456','13554754711',1,0);
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (14,24,'  �������',null,1,338,339,361,362,'������ӱ�·����һ��18��','123456','13554754132',0,0);
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (15,24,'���',null,1,338,569,586,587,'�������и�����·26��','123456','13554754711',1,0);
Insert into user_address (address_id,user_id,consignee,email,country,province,city,district,twon,address,zipcode,mobile,is_default,is_pickup) values (16,40,'ʯ����',null,1,10808,10809,10811,10812,'�������ǳ���������40��',null,'18988888888',1,0);

---------------------------------------------------
--   END DATA FOR TABLE user_address
---------------------------------------------------



