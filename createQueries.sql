create table if not exists user(user_id int primary key,first_name varchar(50),last_name varchar(50),adhar_no varchar(20),gender char,age int,mobile_no varchar(50),email varchar(50),city varchar(50),state varchar(50),pincode varchar(20),_password varchar(50),security_ques varchar(50),security_ans varchar(50));

create table if not exists train(train_no int primary key,train_name varchar(50),arrival_time time,departure_time time,availability_of_seats char,date date);

create table if not exists station(no int ,name varchar(50),hault int,arrival_time time, train_no int, primary key(no,train_no),constraint foreign key(train_no) references train(train_no));

create table if not exists train_status(train_no int primary key,b_seats1 int,b_seats2 int,a_seats1 int,a_seats2 int,w_seats1 int,w_seats2 int,fare1 float,fare2 float);

create table if not exists ticket(id int primary key,user_id  int,status varchar(10),no_of_passengers int,train_no int,constraint foreign key(user_id) references user(user_id),constraint foreign key(train_no) references train(train_no));

create table if not exists passenger(passenger_id int primary key,pnr_no int,age int,gender char,user_id int,reservation_status char,seat_number varchar(5),name varchar(50),ticket_id int,constraint foreign key(user_id) references user(user_id),constraint foreign key(ticket_id) references ticket(id));

create table if not exists starts(train_no int primary key,station_no int,constraint foreign key(train_no) references train(train_no),constraint foreign key(station_no) references station(no));
create table if not exists stops_at(train_no int,station_no int,constraint foreign key(train_no) references train(train_no),constraint foreign key(station_no) references station(no));

create table if not exists reaches(train_no int,station_no int,time time,constraint foreign key(train_no) references train(train_no),constraint foreign key(station_no) references station(no));

create table if not exists books(user_id int,id int,constraint foreign key(user_id) references user(user_id),constraint foreign key(id) references ticket(id));

create table if not exists cancel(user_id int,id int,passenger_id int,constraint foreign key(id) references ticket(id),constraint foreign key(passenger_id) references passenger(passenger_id),constraint foreign key(user_id) references user(user_id));


