create database task3;
use task3;

create table transactions
(  amount int not null,
   transaction_date date not null ) ;
   
insert into transactions(amount,transaction_date) values(1000,'2020-01-06');
insert into transactions(amount,transaction_date) values(-10,'2020-01-14');
insert into transactions(amount,transaction_date) values(-75,'2020-01-20');
insert into transactions(amount,transaction_date) values(-5,'2020-01-25');
insert into transactions(amount,transaction_date) values(-4,'2020-01-29');
insert into transactions(amount,transaction_date) values(2000,'2020-03-10');
insert into transactions(amount,transaction_date) values(-75,'2020-03-12');
insert into transactions(amount,transaction_date) values(-20,'2020-03-15');
insert into transactions(amount,transaction_date) values(40,'2020-03-15');
insert into transactions(amount,transaction_date) values(-50,'2020-03-17');
insert into transactions(amount,transaction_date) values(200,'2020-10-10');
insert into transactions(amount,transaction_date) values(-200,'2020-10-10');

select * from transactions;

select sum(total_amon) - 5*(12 - sum(case when (debit <= -100) and (num_tran >= 3) then 1 else 0 end))
from (
select month(transaction_date) as mon,
sum(case when amount < 0 then amount else 0 end) as debit, 
sum(amount) total_amon,
count(*) num_tran
from transactions
group by month(transaction_date)) a









