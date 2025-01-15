create database bank_account;
use bank_account;

create table client(
id int primary key auto_increment,
name varchar(50) not null
);

create table acount(
id int primary key auto_increment,
blance decimal,
id_client int unique,
foreign key (id_client) references client(id)
);

