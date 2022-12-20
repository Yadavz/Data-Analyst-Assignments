create database task2;
use task2;

create table phones
( phn_name varchar(30) not null unique,
  phn_num int not null unique
);

insert into phones(phn_name , phn_num) values('Jack',1234);
insert into phones(phn_name , phn_num) values('Lena',3333);
insert into phones(phn_name , phn_num) values('Mark',9999);
insert into phones(phn_name , phn_num) values('Anna',7582);

select * from phones;

create table calls
( id int not null unique,
  caller int not null,
  callee int not null,
  duration int not null
);

insert into calls(id, caller, callee, duration) values(25,1234,7582,8);
insert into calls(id, caller, callee, duration) values(7,9999,7582,1);
insert into calls(id, caller, callee, duration) values(18,9999,3333,4);
insert into calls(id, caller, callee, duration) values(2,7582,3333,3);
insert into calls(id, caller, callee, duration) values(3,3333,1234,1);
insert into calls(id, caller, callee, duration) values(21,3333,1234,1);

select * from calls;

select p.phn_name from phones p left join calls c on p.phn_num in (c.caller, c.callee)
group by p.phn_name
having SUM(c.duration) >= 10
order by p.phn_name asc;
















  


















































































































