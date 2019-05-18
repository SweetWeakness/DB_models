/*
1) Для табицы фирм
 */

insert into firm (firm_id, building_id, description_txt, owner_nm, firm_nm) VALUES
(15, 120, 'New firm', 'Alexey Kuptsov', 'Kupec');
select * from firm where firm_id = 15;
update firm set firm_id = 16 where firm_id = 15;
delete from firm where firm_id = 16;

/*
2) Для таблицы складов
 */

insert into stock (stock_id, frim_id, building_id) VALUES (1337, 11, 111);
select * from stock where stock_id = 1337;
update stock set stock_id = 137 where  stock_id = 1337;
delete from stock where stock_id = 137;