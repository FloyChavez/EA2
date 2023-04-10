drop database if exists Login;
create database Login;
use Login;

create table Usuario (
nombre varchar(30),
apellido varchar(30),
email varchar(30),
password varchar(30)
);

select * from Usuario