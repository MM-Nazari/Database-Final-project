-- Phase 02

create table Car(
VIN		int8 not null,
Orders_ID	int,
primary key		(VIN),
foreign key		(Orders_ID) references Orders(ID)
);

create table Orders(
ID		int not null auto_increment,
Type	varchar(50) not null,
primary key		(ID) 
);

create table Brand(
VIN		int8 not null,
Name	varchar(50) not null,
primary key		(VIN,Name),
foreign key		(VIN) references Car(VIN)
);

create table Model(
VIN		int8 not null,
Name	varchar(50) not null,
primary key		(VIN,Name),
foreign key		(VIN) references Car(VIN),
foreign key		(VIN) references Brand(VIN)
);

create table Options(
VIN		int8 not null,
color	varchar(50) not null,
gearbox_type	varchar(50) not null,
primary key		(VIN,color,gearbox_type),
foreign key		(VIN) references Car(VIN)
);

create table Customer(
national_ID		varchar(50) not null,
first_name		varchar(50) not null,
last_name		varchar(50) not null,
state		varchar(50) not null,
city		varchar(50) not null,
street		varchar(50) not null,
primary key		(national_ID),
foreign key		(national_ID) references Customer_Phone(national_ID)
);

create table Customer_Orders(
national_ID		varchar(50) not null,
Orders_ID		int,
primary key		(national_ID, Orders_ID),
foreign key		(national_ID) references Customer(national_ID),
foreign key		(national_ID) references Customer_Phone(national_ID),
foreign key		(Orders_ID) references Orders(ID)
);

create table Customer_phone(
national_ID		varchar(50) not null,
phone_number		varchar(50),
primary key		(national_ID,phone_number)
);

create table Spares(
ID		int not null auto_increment,
title	varchar(50) not null,
count		int not null,
Orders_ID	int,
Supplier_ID		int,
primary key		(ID),
foreign key		(Orders_ID) references Orders(ID),
foreign key		(title) references Spares_Price(title),
foreign key		(Supplier_ID) references Supplier(ID)
);

create table Spares_Price(
title	varchar(50) not null ,
price	varchar(50) not null,
primary key		(title)
);

create table Supplier(
ID		int not null auto_increment,
first_name		varchar(50) not null,
last_name		varchar(50) not null,
start_date		varchar(50) not null,
end_date		varchar(50) not null,
manager			varchar(50) not null,
state		varchar(50) not null,
city		varchar(50) not null,
street		varchar(50) not null,
primary key		(ID)
);
