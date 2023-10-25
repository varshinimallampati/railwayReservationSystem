insert into user(user_id,first_name,last_name,adhar_no,gender,age,mobile_no,email,city,state,pincode,_password,security_ques,security_ans)
values(1701,'vijay','sharma','309887340843','m',34,'9988776655',
'vijay1@gmail.com','vijayawada','andhra pradesh','520001','12345@#',
'favourite colour','red'),
(1702,'rohith','kumar','456709871234','m',45,'9809666555',
'rohith1kumar@gmail.com','guntur','andhra pradesh','522004','12@#345',
'favourite bike','bmw'),
(1703,'manasvi','sree','765843210987','f',20,'9995550666',
'manasvi57@gmail.com','guntur','andhra pradesh','522004','0987hii',
'favourite flower','rose');

insert into train(train_no,train_name,arrival_time,departure_time,availability_of_seats,date)
values(12711,'pinakini exp','113000','114000','a',20230410),
(12315,'cormandel exp','124500','125000','n',20230410),
(12255,'shatabdhi exp','135500','140000','n',20230411);

insert into station(no,name,hault,arrival_time,train_no)
values(111,'vijayawada',10,'113000',12711),
(222,'tirupathi',5,'114500',12315);

insert into train_status(train_no,w_seats1,b_seats1,b_seats2,a_seats1,a_seats2,w_seats2,fare1,fare2)values(12711,10,4,0,1,1,0,100,450),(12315,10,5,0,0,2,1,300,600),(12255,10,5,0,0,2,1,400,700);

insert into ticket(id,user_id,status,no_of_passengers,train_no)
values(4001,1701,'c',1,12711),
(4002,1702,'n',1,12315),
(4003,1701,'c',1,12711),
(4004,1702,'c',1,12255);

insert into  passenger(passenger_id,pnr_no,age,gender,user_id,reservation_status,seat_number,name,ticket_id)
values(5001,78965,45,'m',1701,'c','b6-45','ramesh',4001),
(5002,54523,54,'f',1701,'w','b3-21','surekha',4002),
(5003,55776,54,'m',1701,'c','b3-22','mukhesh',4003);

insert into starts(train_no,station_no) values(12711,111),(12315,222),(12255,222);

insert into stops_at(train_no,station_no)
values(12711,222),(12315,111),(12255,111);

insert into reaches(train_no,station_no,time)
values(12711,222,'040000'),(12315,111,'053500'),(12255,111,'060000');
insert into  books(user_id,id)
values(1701,4001),(1702,4002),(1701,4003),(1702,4004);


insert into cancel(user_id,id,passenger_id)
values(1701,4001,5001);


