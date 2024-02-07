create database if not exists libes
default character set utf8
default collate utf8_hungarian_ci;

grant all privileges
on libes.*
to libes@localhost
identified by 'titok';

use libes;

create table if not exists books(
    id int not null primary key auto_increment,
    title varchar(50),
    author varchar(50),
    genre varchar(50)
);

create table loans(
    id int not null primary key auto_increment,
    date date,
    bookId int,
    studentId int
);
