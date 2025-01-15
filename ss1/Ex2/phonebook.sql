create database phonebook;
use phonebook;

create table Person(
id int primary key auto_increment,
Name varchar(50)
);

create table Numberphone(
id int primary key auto_increment,
Number varchar(50),
person_id int,
FOREIGN KEY (person_id) references Person(id)
);

create table Email(
id int primary key auto_increment,
Email_address varchar(255) not null,
person_id int,
foreign key(person_id) references Person(id)
);