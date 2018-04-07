create database bamazon;
use bamazon;

create table products (
item_id int NOT NULL,
product_name varchar(150),
department_name varchar(150),
price decimal,
stock_quantity int NOT NULL,

PRIMARY KEY (item_id)
); 	

insert into products 
(item_id, product_name, department_name, price, stock_quantity) values 
(1, 'chairs', 'furniture', 100, 25),
(2, 'dolls', 'toys', 30, 30),
(3, 'tables', 'furniture', 200, 45),
(4, 'board_games', 'toys', 50, 40),
(5, 'powder', 'cosmetics', 13, 22),
(6, 'shirts', 'clothing', 15, 32),
(7, 'blouses', 'clothing', 38, 70),
(8, 'laptops', 'electronics', 799, 58),
(9, 'jackets', 'clothing', 90, 87),
(10, 'phones', 'electronics', 555, 23);

select * from products;
