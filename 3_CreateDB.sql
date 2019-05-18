create table if not exists address
(
	"address_id" int
		constraint address_pk
			primary key,
	city_nm varchar(255) not null,
	street_nm varchar(255) not null,
	building_num int not null
);


create table if not exists firm
(
	firm_id int
		constraint firm_pk
			primary key,
	building_id int not null,
	description_txt varchar(255) not null,
	owner_nm varchar(255) not null,
	firm_nm varchar(255) not null
);

create table if not exists product
(
	product_id int
		constraint product_pk
			primary key,
	firm_id int not null,
	product_nm varchar(255) not null,
	description_txt varchar(255) not null,
	type_nm varchar(255) not null
);

create table if not exists employees
(
	employee_id int not null
		constraint employees_pk
			primary key,
	firm_id int not null,
	employee_full_nm VARCHAR(255) not null,
	employee_birth_dt date not null,
	employee_rank_num int not null
);

create table if not exists stock
(
	stock_id int
		constraint stock_pk
			primary key,
	frim_id int not null,
	building_id int not null
);

create table if not exists supply
(
	supply_id int
		constraint supply_pk
			primary key,
	product_id int not null,
	product_cnt int not null,
	supply_dt date not null
);


create table if not exists product_on_stock
(
	stock_id int not null,
	supply_id int
		constraint product_on_stock_pk
			primary key,
	employee_id int not null
);



create table if not exists product_x_stock as
  (select product_id, stock_id from product_on_stock inner join supply on supply.supply_id = product_on_stock.supply_id);

create table if not exists supply_x_firm as
  (select product.product_id, firm_id from supply inner join product on product.product_id = supply.product_id);