CREATE DATABASE web_pjdb CHARACTER SET utf8 COLLATE utf8_general_ci;

grant select, insert, update, delete, create, drop
on web_pjdb.*
to 'ss'@'localhost'
identified by '6013';

use web_pjdb;

create table users(
id varchar(10) NOT NULL PRIMARY KEY,
password varchar(10) NOT NULL,
name varchar(10) NOT NULL,
address varchar(100) NOT NULL,
mobile varchar(11) NOT NULL,
email varchar(50) NOT NULL,
grade int NOT NULL
);

create table reply (
id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
board_id int NOT NULL,
contents varchar(255) NOT NULL
);

create table reservations(
id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
show_type int NOT NULL,
res_date date NOT NULL
);

create table boards(
id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
title varchar(100) NOT NULL,
author varchar(10) NOT NULL,
upload date NOT NULL,
contents varchar(1000) NOT NULL
);


insert into users(id, password, name, address, mobile, email, grade)
values('sooji','1234','choisooji','incheon','01090031747','chltnwl0701@naver.com', '1');
insert into users(id, password, name, address, mobile, email, grade)
values('suhyeon','5678','josuhyeon','bucheon','01094372647','flora123@mju.ac.kr', '2');
insert into users(id, password, name, address, mobile, email, grade)
values('son','0000','wonbin','suwon','01054321234','iamson@gmail.com', '1');


insert into reply(board_id, contents)
values('1', 'First!');
insert into reply(board_id, contents)
values('1', 'Two!');


insert into reservations(show_type, res_date)
values('1', '2014-12-11');
insert into reservations(show_type, res_date)
values('2', '2014-12-25');


insert into boards(title, author, upload, contents)
values('Test1','choi', now(), 'This is very comfortable! Thank you!');
insert into boards(title, author, upload, contents)
values('Test2','jo', now(), 'It is good page!');
