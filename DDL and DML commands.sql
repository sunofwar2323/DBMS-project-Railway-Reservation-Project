create table  USER1 
( 
user_id int primary key,  
first_name varchar(50), 
last_name varchar(50),  
adhar_no varchar(20), 
gender char,  
age int,  
mobile_no varchar(50),  
email varchar(50), 
city varchar(50), 
state varchar(50), 
pincode varchar(20),  
password varchar(50),  
security_ques varchar(50), 
security_ans varchar(50) 
)

insert into USER1 values (1701,'vijay', 'sharma', '309887340843','M',34,'9887786655','vijay1@gmail.com','vijayawada','andhrapradesh','520001','12345@#','favouritecolour','red');
insert into USER1 values (1702,'rohith','kumar','456709871234,','M',45,'9809666555','rohith1kumar@gmail.com','guntur','andhrapradesh','522004','12@#345','favouritebike','bmw');
insert into USER1 values (1703,'manasvi','sree','765843210987','F',20,'9995550666','manasvi57@gmail.com','guntur','andhrapradesh','522004','0987hii', 'favourite flower','rose');

create table  TRAIN3
( 
train_no int primary key,  
train_name varchar(50), 
arrival_time varchar(50),  
departure_time varchar(50),  
availability_of_seats char, 
date1 int
)

create table TRAIN_STATUS 
( 
 train_no int primary key,  
 b_seats1 int, 
 b_seats2 int, 
 a_seats1 int, 
 a_seats2 int, 
 w_seats1 int, 
 w_seats2 int, 
 fare1 float, 
 fare2 float 
)

create table  TICKET 
( 
ticket_id int primary key,  
user_id int,  
status varchar(30),  
no_of_passengers int,  
train_no int 
)

create table BOOKING 
(
passenger_id int primary key,  
pnr_no int,  
age int,  
gender char,  
user_id int,  
reservation_status char,  
seat_number varchar(5), 
pname varchar(50),  
ticket_id int,
ticket_price int,
ticket_status varchar(20)
)

create table PASSENGER 
(passenger_id int primary key,  
pnr_no int,  
age int,  
gender char,  
user_id int,  
reservation_status char,  
seat_number varchar(5),  
name varchar(50),  
ticket_id int 

)


create table STARTS 
(  
train_no int primary key, 
station_no int 
-- constraint foreign key(train_no) references TRAIN(train_no), 
-- constraint foreign key(station_no) references STATION(station_no) 
)

create table STOPS_AT 
(  
train_no int,  
station_no int  
-- constraint foreign 
-- key(train_no) references TRAIN(train_no),constraint foreign key(station_no) 
-- references STATION(no) 
)

create table  REACHE
( 
train_no int,  
station_no int,  
time1 number
-- constraint foreign key(train_no) references TRAIN(train_no) constraint 
-- foreign key(station_no) references STATION(no) 
)


create table CANCEL1 
( 
user_id int, 
id int,  
passenger_id int 
-- constraint 
-- foreign key(id) references TICKET(id), constraint foreign key(passenger_id) 
-- references PASSENGER(passenger_id),constraint foreign key(user_id) references 
-- USER(user_id) 
)


insert into USER1 values (1701,'vijay', 'sharma', '309887340843','M',34,'9887786655','vijay1@gmail.com','vijayawada','andhrapradesh','520001','12345@#','favouritecolour','red');
insert into USER1 values (1702,'rohith','kumar','456709871234,','M',45,'9809666555','rohith1kumar@gmail.com','guntur','andhrapradesh','522004','12@#345','favouritebike','bmw');
insert into USER1 values (1703,'manasvi','sree','765843210987','F',20,'9995550666','manasvi57@gmail.com','guntur','andhrapradesh','522004','0987hii', 'favourite flower','rose');


insert into TRAIN3 values(12711,'pinakini exp','113000','114000','A',20170410);
insert into TRAIN3 values(12315,'cormandel exp','124500','125000','B',20170410);


insert into TRAIN_STATUS values(12711,10,4,0,1,1,0,100,450);
insert into TRAIN_STATUS values(12315,10,5,0,0,2,1,300,600);
--(train_no, w_seats1, b_seats1, b_seats2, a_seats1, a_seats2,w_seats2,fare1 fare2) 

insert into TICKET values(4001,1701,'C',1,12711);
insert into TICKET values(4002,1702,'N',1,12315);
--(id, user_id, status, no_of passengers, train_no)

insert into BOOKING values(5001,78965,45, 'M',1701,'C','B6-45','ramesh',4001, 10000,'sleeperClass');
insert into BOOKING values(5002,54523,54,'F',1702,'W','B3-21','surekha',4002, 5400, 'GeneralClass');
insert into BOOKING values(5003,89233,64,'F',1703,'W','B3-25','surekha',4002, 4500, 'GeneralClass');

insert into PASSENGER values(5001,78965,45, 'M',1701,'C','B6-45','ramesh',4001);
insert into PASSENGER values(5002,54523,54,'F',1701,'W','B3-21','surekha',4002);
--(passenger_id, pnr_no, age, gender, user_id, reservation_status, seat _ number, name, ticket_id)

insert into STARTS values(12711,111);
insert into STARTS values(12315,222);

insert into STOPS_AT values(12711,222);
insert into STOPS_AT values(12315,111);

insert into REACHE values(12711,222,'040000');
insert into REACHE values(12315,111,'053500');



insert into CANCEL1 values (1701,4001,5001);
insert into CANCEL1 values (1702,4002,5002);








