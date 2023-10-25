select u.user_id,concat(u.first_name,u.last_name)as name
from user u,train  t,ticket tc
where  u.user_id=tc.user_id and t.train_no=tc.train_no and t.train_name like 'pinakini exp';

--print details of passengers travelling under ticket no 4001
select *
from passenger
where ticket_id like 4001;

--display all those train no's which reach station no ------
select t.* 
from train t,station s,reaches r
where t.train_no=r.train_no and r.station_no=s.no and s.name like 'vijayawada';

--display time at which train no----- reaches station no ------
select r.*,s.name
from reaches r,station s
where r.station_no=s.no;

-- display details of all those users who cancled tickets for train no------
select u.*
from user u,cancel c,ticket t
where c.user_id=u.user_id and c.id=t.id and t.train_no like 12711;

-- diplay the train no with increasing order of the fares of class 1
select ts.train_no,ts.fare1,t.train_name
from train_status ts,train t
where t.train_no=ts.train_no
order by fare1 asc;


--display passenger details for train pinakini.
select p.* 
from passenger p,train t,ticket tc
where tc.train_no=t.train_no and tc.id=p.ticket_id and t.train_name like  
'pinakini exp'


--display immediate train from tirupathi to Vijayawada
select distinct t.*
from train t,station s,starts st,stops_at sa
where st.station_no=(select no from station where name like 'tirupathi') 
 and sa.station_no=(select no from station where name like 'vijayawada')
order by date;


--display the train no which haults for more time in station no---------
 select train_no 
from station having max(hault);

--display details of all those passengers whose status is confirmed for train no----
select t.*
from ticket t
where t.status like 'c' and t.train_no=12711;

