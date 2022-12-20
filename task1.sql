create database task1;
use task1;

create table shopping_history
(  product varchar(100), 
   quantity int not null,
   unit_price int not null 
);
   
insert into shopping_history(product, quantity, unit_price) values('milk',3,10);
insert into shopping_history(product, quantity, unit_price) values('bread',7,3);
insert into shopping_history(product, quantity, unit_price) values('bread',5,4);
insert into shopping_history(product, quantity, unit_price) values('butter',9,2);
insert into shopping_history(product, quantity, unit_price) values('butter',12,1);

select * from shopping_history;

select product , sum(quantity*unit_price) as total_price from shopping_history
group by product
order by product;