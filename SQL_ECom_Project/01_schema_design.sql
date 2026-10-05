create database ecommerce_logistics;
use ecommerce_logistics;

create table customers(
customer_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) not null unique,
created_at timestamp default current_timestamp
);

create table products(
product_id int primary key auto_increment,
name varchar(50) not null,
category varchar(50) not null,
price decimal(10,2) not null,
stock_quantity int not null check(stock_quantity>=0)
);

create table orders(
order_id int auto_increment primary key,
customer_id int,
order_date date not null,
status varchar(20) default 'Pending',
foreign key (customer_id) references customers(customer_id) on delete cascade
);

create table order_items(
order_item int auto_increment primary key,
order_id int,
product_id int,
quantity int not null check (quantity>0),
price_at_purchase decimal(10,2) not null,
foreign key (order_id) references orders(order_id) on delete cascade,
foreign key (product_id) references products(product_id) on delete restrict
);

create table payments(
payment_id int auto_increment primary key,
order_id int,
payment_method varchar(20) not null,
amount_paid decimal(10,2) not null,
payment_time timestamp default current_timestamp,
foreign key (order_id) references orders(order_id)
);