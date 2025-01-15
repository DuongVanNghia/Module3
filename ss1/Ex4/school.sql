create database school;
use school;

create table teacher(
id int primary key auto_increment,
name varchar(50) 
);

create table student(
id int primary key auto_increment,
name varchar(50),
id_teacher int,
foreign key (id_teacher) references teacher(id)
);

