create database registro;
use registro;
create table users (
	id int primary key auto_increment,
    uname varchar(50),
    upassword varchar(50),
    uemail varchar(50),
    umobile varchar(20)
);

desc users; /*para mostrar la tabla users*/
select * from users;
/*delete from users where id = 6; Se usa para eliminar a los usuarios*/