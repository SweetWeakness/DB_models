insert into address (address_id, city_nm, street_nm, building_num) values (111, 'Moscow', 'Pervomayskaya', 1);
insert into address (address_id, city_nm, street_nm, building_num) values (112, 'Moscow', 'Dolgoprudnaya', 1);
insert into address (address_id, city_nm, street_nm, building_num) values (113, 'Moscow', 'Pervomayskaya', 2);
insert into address (address_id, city_nm, street_nm, building_num) values (114, 'Moscow', 'Pervomayskaya', 3);
insert into address (address_id, city_nm, street_nm, building_num) values (115, 'Moscow', 'Pervomayskaya', 4);
insert into address (address_id, city_nm, street_nm, building_num) values (116, 'Moscow', 'Dolgoprudnaya', 2);
insert into address (address_id, city_nm, street_nm, building_num) values (117, 'Moscow', 'Dolgoprudnaya', 3);
insert into address (address_id, city_nm, street_nm, building_num) values (118, 'Moscow', 'Wall st', 1);
insert into address (address_id, city_nm, street_nm, building_num) values (119, 'Moscow', 'Wall st', 2);
insert into address (address_id, city_nm, street_nm, building_num) values (120, 'Moscow', 'Castle st', 10);

insert into firm (firm_id, building_id, description_txt, owner_nm, firm_nm) VALUES (11, 111, 'Firm, making food', 'Ivan Ivanov', 'Best food');
insert into firm (firm_id, building_id, description_txt, owner_nm, firm_nm) VALUES (12, 112, 'Firm, making non food products', 'Sergey Gorbunov', 'Comfortable home');
insert into firm (firm_id, building_id, description_txt, owner_nm, firm_nm) VALUES (13, 116, 'Firm, making laptops', 'Timur Nurgaliev', 'Wish');
insert into firm (firm_id, building_id, description_txt, owner_nm, firm_nm) VALUES (14, 117, 'Firm, making PC', 'Vladislav Vlasov', 'Apple');

insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (1, 11, 'Milk Cow', 'Natural milk', 'food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (2, 11, 'Bread Our Country', 'Bread, made on own firm meal', 'food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (3, 11, 'Water Holy Spring', 'Water from spring', 'food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (4, 11, 'Meat Miratorg', 'Fresh meat', 'food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (5, 12, 'Chair Kayo', 'Made in China', 'non food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (6, 12, 'Table Alore', 'Made in China', 'non food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (7, 12, 'Toilet Kantor', 'Made in Russia', 'non food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (8, 13, 'Sony Xperia', 'Made in Thailand', 'non food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (9, 13, 'Xiaomi A2', 'Made in China', 'non food');
insert into product (product_id, firm_id, product_nm, description_txt, type_nm) VALUES  (10, 14, 'Iphone XI', 'Made in USA', 'non food');

insert into employees (employee_id, firm_id, employee_full_nm, employee_birth_dt, employee_rank_num) VALUES (1111, 11, 'Daniil Grigoryevich Shirshin', '20000318', 1);
insert into employees (employee_id, firm_id, employee_full_nm, employee_birth_dt, employee_rank_num) VALUES (1112, 11, 'Vladislav Yaskevich', '19890412', 10);
insert into employees (employee_id, firm_id, employee_full_nm, employee_birth_dt, employee_rank_num) VALUES (1113, 12, 'Nikita Sergeevich', '19990509', 2);
insert into employees (employee_id, firm_id, employee_full_nm, employee_birth_dt, employee_rank_num) VALUES (1114, 13, 'Anna Erokhina', '20000617', 1);
insert into employees (employee_id, firm_id, employee_full_nm, employee_birth_dt, employee_rank_num) VALUES (1115, 14, 'Blagoi Dimitrov Sergeevich', '20000105', 3);
insert into employees (employee_id, firm_id, employee_full_nm, employee_birth_dt, employee_rank_num) VALUES (1116, 14, 'Timur Nurgaliev', '19990414', 3);

insert into stock (stock_id, frim_id, building_id) VALUES (21, 11, 113);
insert into stock (stock_id, frim_id, building_id) VALUES (22, 11, 114);
insert into stock (stock_id, frim_id, building_id) VALUES (23, 12, 112);
insert into stock (stock_id, frim_id, building_id) VALUES (24, 13, 115);
insert into stock (stock_id, frim_id, building_id) VALUES (25, 14, 119);

insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (101, 1, 100, '20170302');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (102, 2, 12, '20161104');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (103, 3, 1000, '20151223');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (104, 4, 1132, '20190616');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (105, 5, 102, '20180825');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (106, 6, 123, '20180531');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (107, 7, 840, '20170917');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (108, 8, 6230, '20150110');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (109, 9, 19, '20000202');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (110, 10, 80, '20101201');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (111, 6, 230, '20180518');
insert into supply (supply_id, product_id, product_cnt, supply_dt) VALUES (112, 4, 450, '20190306');

insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (21, 101, 1112);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (22, 102, 1111);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (22, 103, 1112);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (22, 104, 1112);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (23, 105, 1113);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (23, 106, 1113);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (23, 107, 1113);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (24, 108, 1114);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (24, 109, 1114);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (25, 110, 1115);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (23, 111, 1113);
insert into product_on_stock (stock_id, supply_id, employee_id) VALUES (21, 112, 1111);