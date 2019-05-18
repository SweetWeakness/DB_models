/*
1) ADDRESS
 */

create view address_view as
  (select concat('**', right(cast(address_id as varchar(10)), 1)) as address_id, city_nm as City, street_nm as street, building_num as building from address
    order by city_nm, street_nm, building_num);

select * from address_view;

/*
2) EMPLOYEES
 */

create view employees_view as
  (select concat('**', right(cast(employee_id as varchar(10)), 2)) as employee_aid, employee_full_nm as full_name, employee_birth_dt as birth_date, employee_rank_num as rank from employees
    order by employee_full_nm, employee_birth_dt, employee_rank_num);

select * from employees_view;

/*
3) FIRM
 */

create view firm_view as
  (select concat('*', right(cast(firm_id as varchar(10)), 1)) as firm_id, firm_nm as firm_name, owner_nm as owner, description_txt as firm_description from firm
    order by firm_nm, owner_nm, description_txt);

select * from firm_view;

/*
4) PRODUCT
 */

create view product_view as
  (select concat('*', right(cast(firm_id as varchar(10)), 1)) as firm_id, product_nm as product_name, description_txt as description, type_nm as type from product
    order by product_name, description, type);

/*
5) SUPPLY (сложное представление)
 */

create view supply_view as
  (select concat('**', right(cast(supply_id as varchar(10)), 1)) as supply_id, supply_dt as supply_date, product_nm as product_name, product_cnt as amount_of_product, firm_nm as producing_firm from supply
    inner join product on product.product_id = supply.product_id
    inner join firm on firm.firm_id = product.firm_id
    order by supply_date, product_name, amount_of_product);

select * from supply_view;

/*
6) STOCK (сложное представление)
 */

create view stock_view as
  (select concat('*', right(cast(stock_id as varchar(10)), 1)) as stock_id, firm_nm as firm_name, city_nm as city, street_nm as street, building_num as building from stock
    inner join address on address.address_id = stock.building_id
    inner join  firm on firm.firm_id = stock.frim_id
    order by firm_name, city, street, building);

select * from stock_view;