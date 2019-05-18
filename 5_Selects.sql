/*
1) Найти адрес здания, по типу ИКЕА (в ней расположена и фирма и склад)
*/

select street_nm as street, building_num as building_number from stock
inner join firm
on firm.firm_id = stock.frim_id and firm.building_id = stock.building_id
inner join address
on address.address_id = stock.building_id;

/*
2) Найти адрес свободных зданий
*/

select street_nm as street, building_num as building_number from address
where address_id in (select address_id from address
except
                        (select building_id from stock
                        union
                        select building_id from firm) );
/*
3) Найти все фирмы, производящие более 2 различных продуктов
*/

select distinct firm_nm as firm, count(product_nm) as products_amount from product
inner join firm on firm.firm_id = product.firm_id
group by firm_nm
having count(product_nm) > 2;

/*
4) Найти сотрудника, осуществлявшего поставку Iphone XI
 */

select t1.employee_full_nm as full_name from employees t1
inner join product_on_stock t2 on t1.employee_id = t2.employee_id
where supply_id in
      (select supply_id from supply a1
        inner join product a2 on a1.product_id = a2.product_id
        where product_nm = 'Iphone XI');


/*
5) Отсортировать список компаний и их сотрудников (вначале по компании, затем по ранку сотрудников)
 */

 select firm_nm, employee_full_nm, employee_rank_num from firm
inner join employees on employees.firm_id = firm.firm_id
order by firm_nm, employees.employee_rank_num