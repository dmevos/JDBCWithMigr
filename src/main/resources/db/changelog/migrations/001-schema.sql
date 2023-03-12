--liquibase formatted sql

--changeset osipov:1

create table customers
(
    id int primary key auto_increment,
    name           varchar(30) not null,
    surname        varchar(50) not null,
    age            smallint    not null check ( age > 0 and age < 130 ),
    phone_number   varchar(11)
);

insert into customers (name, surname, age, phone_number)
values ('Alexey', 'Petrov', 26, 89031111111);
insert into customers (name, surname, age, phone_number)
values ('alexey', 'Vasin', 27, 89032222222);
insert into customers (name, surname, age, phone_number)
values ('ALEXEY', 'Ivanov', 28, 89033333333);
insert into customers (name, surname, age, phone_number)
values ('Ivan', 'Kolin', 29, 89034444444);
insert into customers (name, surname, age, phone_number)
values ('Denis', 'Zhukov', 30, 89035555555);
insert into customers (name, surname, age, phone_number)
values ('Onufriy', 'Psaki', 31, 89036666666);
--rollback drop table customers;