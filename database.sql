 drop database RCS;
create database RCS;
use RCS;
Create table customer
(
	customer_id int primary key,
	first_name varchar(50),
	sur_name varchar(50),
	cnic int,
	email varchar(50),
	customer_type varchar(50),
	company_name varchar(50),
	registeration_date date
)

Create table car
(
	car_id int primary key,
	car_type varchar(50),
	car_color varchar(50),
	charge int,
	email varchar(50),
	car_producer varchar(50),
	car_name varchar(50),
	manufacturing_date date,
	registeration_num int
)

Create table customer_address
(
	street_num int primary key,
	street_name varchar(50),
	city_name varchar(50),
	postal_code int,
	country varchar(50),
	customer_id int,
	phone_num int,
	FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id) on delete cascade
)

Create table booking
(
	booking_num int primary key,
	customer_id int,
	car_id int,
	booking_date date,
	return_date date,
	time_stamp varchar(50),
	
	FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id) on delete cascade,
        FOREIGN KEY (car_id)
        REFERENCES car(car_id) on delete cascade
)
