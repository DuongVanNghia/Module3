create database team_football;
use team_football;

create table coach(
id int primary key auto_increment,
name varchar(50)
);

create table team(
id int primary key auto_increment,
name varchar(50),
id_coach int unique,
foreign key(id_coach) references coach(id)
);

create table `match`(
id int primary key auto_increment,
time datetime,
id_team1 int,
id_team2 int,
foreign key(id_team1) references team(id),
foreign key(id_team2) references team(id),
check(id_team1!=id_team2)
);
create table player(
id int primary key auto_increment,
name varchar(50),
id_team int,
foreign key (id_team) references team(id)
);
create table multi_position(
id int primary key auto_increment,
position varchar(50)
);
create table match_player(
	id_match int,
	id_player int,
    primary key(id_match, id_player),
    foreign key (id_match) references `match`(id),
    foreign key (id_player) references player(id)
);
