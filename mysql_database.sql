create database bloodbank;
use bloodbank;

create table bloodrequest (
  name varchar(200) not null,
  mobilenumber varchar(200) not null,
  email varchar(200) not null unique, 
  bloodgroup varchar(10) not null,
  status varchar(100) not null
  );

 select * from bloodrequest;

 create table donor (
   id int auto_increment primary key,
   name varchar(200) not null,
   father varchar(200) not null,
   mother varchar(200) not null,
   mobilenumber varchar(10) not null unique,
   gender enum('Male', 'Female','Other') not null,
   email varchar(200) not null,
   bloodgroup varchar(20) not null,
   address varchar(200) not null,
   created_at timestamp default current_timestamp
   );

 select * from donor;
 
 Create table stock(
   bloodgroup varchar(100),
   units varchar(50)
   );
   
  insert into stock values('A+','100');
  insert into stock values('A-','100');
  insert into stock values('B+','100');
  insert into stock values('B-','100');
  insert into stock values('O+','100');
  insert into stock values('O-','100');
  insert into stock values('AB+','100');
  insert into stock values('AB-','100');
  
  select * from Stock;
