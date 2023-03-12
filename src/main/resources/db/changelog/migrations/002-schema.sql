--liquibase formatted sql

--changeset osipov:2
create table orders
(
    id int primary key auto_increment,
    date date,
    customer_id int,
    product_name varchar(50),
    amount decimal(8,2),
    foreign key (customer_id) references customers(id)
);

insert into orders (date, customer_id, product_name, amount)
values ('2023-01-01', 1, 'Валенки', 123.22);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-02', 1, 'Фуфайка', 222.33);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-02', 1, 'Шапка', 23.44);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-03', 2, 'Ноутбук', 500.13);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-03', 2, 'Наушники', 10.10);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-03', 3, 'Яблочный сок', 5);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-03', 4, 'Билет в театр', 15.90);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-03', 5, 'Перфоратор', 85.99);
insert into orders (date, customer_id, product_name, amount)
values ('2023-01-03', 6, 'Англо-Русский словарь', 1000.65);
--rollback drop table orders;