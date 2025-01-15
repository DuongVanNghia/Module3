create database storebook;
use storebook;

create table author(
id int primary key auto_increment,
name varchar(50)
);

create table staff(
id int primary key auto_increment,
name varchar(50),
address varchar(255)
);
create table book(
id int primary key auto_increment,
name varchar(50),
gia decimal,
author_id int not null,
staff_id int not null,
FOREIGN KEY (author_id)  REFERENCES author(id),
FOREIGN KEY(staff_id) REFERENCES staff(id)
);



