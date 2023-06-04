
-- drop table


drop table credit_card;
drop table loan;
drop table account;
drop table branch;
drop table banker;
drop table customer;
drop table banker_information;



-- create table


create table customer(customer_id int not null, 
customer_name varchar(100),
customer_street varchar(100),
customer_city varchar(100));

alter table customer add primary key(customer_id);

create table banker_information(banker_id int not null,
banker_name varchar(100), 
banker_email varchar(100), 
primary key(banker_id));



create table banker(banker_id int not null,
customer_id int not null,
foreign key(customer_id) references customer on delete cascade,
foreign key(banker_id) references banker_information on delete cascade);



create table credit_card(card_number int not null,
card_limit int,
expire_date date,
customer_id int not null,
primary key(card_number),
foreign key(customer_id) references customer on delete cascade );



create table branch(branch_name varchar(100) not null,
branch_location varchar(100),
primary key(branch_name));



create table loan(loan_number int not null,
amount int,
customer_id int not null,
branch_name varchar(100) not null,
primary key(loan_number),
foreign key(customer_id) references customer on delete cascade,
foreign key(branch_name) references branch on delete cascade);




create table account(account_number int not null,
balance int check(balance >= 100000),
category varchar(100),
customer_id int not null,
primary key(account_number),
foreign key(customer_id) references customer on delete cascade);



--adding column in table

alter table customer add email char(20);

--modify column definition in table

alter table customer modify email varchar(27);

-- alter column name
alter table customer rename column email  to customer_emails;

--drop the column from table

alter table customer drop column customer_emails;


-- insert into customer
insert into customer(customer_id, customer_name,customer_street,customer_city) values(500, 'nafes', '500a','dinajpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(501, 'younus', '501a','rangpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(502, 'rizwan', '502a','dinajpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(503, 'ankon', '503a','rangpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(504, 'rabby', '504a','chandpur');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(505, 'ashfaq', '505a','savar');


insert into customer(customer_id, customer_name,customer_street,customer_city) values(506, 'akbar', '506a','Rajshahi');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(507, 'selim', '507a','Uttara');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(508, 'mustafa', '508a','Sonadanga');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(509, 'riyad', '509a','new jersy');
insert into customer(customer_id, customer_name,customer_street,customer_city) values(510, 'islam', '510a','new york');

-- insert into banker_information
insert into banker_information(banker_id, banker_name, banker_email) values(100, 'joy', 'joy@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(101, 'mahin', 'mahin@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(102, 'bilal', 'bilal@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(103, 'imtaig', 'imtaig@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(104, 'irham', 'irham@gmail.com');


insert into banker_information(banker_id, banker_name, banker_email) values(105, 'atiq', 'atiq@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(106, 'saad', 'saad@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(107, 'akash', 'akash@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(108, 'shuaib', 'shuaib@gmail.com');
insert into banker_information(banker_id, banker_name, banker_email) values(109, 'aumiyo', 'aumiyo@gmail.com');



-- insert into banker
insert into banker(banker_id, customer_id) values(100 ,500);
insert into banker(banker_id, customer_id) values(100 ,501);
insert into banker(banker_id, customer_id) values(101 ,502);
insert into banker(banker_id, customer_id) values(102 ,502);
insert into banker(banker_id, customer_id) values(103 ,503);
insert into banker(banker_id, customer_id) values(104 ,504);
insert into banker(banker_id, customer_id) values(104 ,505);

insert into banker(banker_id, customer_id) values(105 ,506);
insert into banker(banker_id, customer_id) values(106 ,507);
insert into banker(banker_id, customer_id) values(107 ,508);
insert into banker(banker_id, customer_id) values(108 ,509);
insert into banker(banker_id, customer_id) values(109 ,510);



-- insert into credit_card
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1001, 500000, '22-dec-2007', 500);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1002, 700000, '22-jan-2009', 501);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1003, 800000, '22-feb-2007', 502);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1004, 900000, '19-nov-2008', 503);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1005, 600000, '11-feb-2008', 504);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1006, 900000, '10-dec-2007', 504);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1007, 500000, '19-nov-2008', 503);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1008, 200000, '19-nov-2008', 502);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1009, 590000, '19-nov-2010', 503);
insert into credit_card(card_number, card_limit, expire_date, customer_id) values(1010, 700000, '19-nov-2011', 502);





-- insert into branch
insert into branch(branch_name, branch_location) values('sonali', 'wari');
insert into branch(branch_name, branch_location) values('rupali', 'dhaka');
insert into branch(branch_name, branch_location) values('janata', 'khulna');
insert into branch(branch_name, branch_location) values('agrani', 'jessore');
insert into branch(branch_name, branch_location) values('islami', 'faridpur');
insert into branch(branch_name, branch_location) values('bd bank', 'dhaka');
insert into branch(branch_name, branch_location) values('krishi', 'khustia');
insert into branch(branch_name, branch_location) values('silpo', 'Rajshahi');
insert into branch(branch_name, branch_location) values('pubali', 'Mirpur');
insert into branch(branch_name, branch_location) values('southeast', 'Gulshan');

-- insert into loan
insert into loan(loan_number, amount, customer_id, branch_name)  values(5001, 100000, 500, 'sonali');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5002, 200000, 501, 'rupali');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5003, 350000, 502, 'janata');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5004, 490000, 503, 'agrani');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5005, 580000, 504, 'islami');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5006, 660000, 504, 'islami');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5007, 870000, 505, 'islami');


insert into loan(loan_number, amount, customer_id, branch_name)  values(5008, 680000, 503, 'agrani');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5009, 560000, 503, 'agrani');
insert into loan(loan_number, amount, customer_id, branch_name)  values(5010, 970000, 503,'agrani');







-- insert into account
insert into account(account_number, balance, category, customer_id) values(10001, 100000, 'general', 500);
insert into account(account_number, balance, category, customer_id) values(10002, 200000, 'premium', 501);
insert into account(account_number, balance, category, customer_id) values(10003, 300000, 'standard', 502);
insert into account(account_number, balance, category, customer_id) values(10004, 400000, 'premium', 503);
insert into account(account_number, balance, category, customer_id) values(10005, 500000, 'gold', 504);
insert into account(account_number, balance, category, customer_id) values(10006, 700000, 'premium', 504);

insert into account(account_number, balance, category, customer_id) values(10007, 5000, 'general', 500);
insert into account(account_number, balance, category, customer_id) values(10008, 700000, 'premium', 503);
insert into account(account_number, balance, category, customer_id) values(10009, 1000000, 'gold', 504);
insert into account(account_number, balance, category, customer_id) values(10010, 800000, 'premium', 504);






-- show all tables
select * from customer;
select * from banker_information;
select * from banker;
select * from credit_card;
select * from loan;
select * from branch;
select * from account;



--updating the data in table
--changing  city of specified customers
--update customer set customer_name='karim' where customer_city='Rajshahi';    
update customer set customer_city='Rajshahi'where customer_name='ankon' ;  


-- delete a row
delete from loan where loan_number = 5007;



-- select method
select account_number as acc_no from account;


-- select distinct method
select distinct (customer_city) from customer;


-- like method
select customer_name from customer where customer_city like '%dinajpur%';
---project




--set membership(in, not in)


--finding name of customers name that has 's' in the end & 'a'in the name
select customer_name from customer where customer_name like '%s' and customer_name in (select customer_name from customer where customer_name like '%a%'); 
--finding distinct names that has 's' in the end & 'a'in the name
select distinct(customer_name) from customer where customer_name like '%s' and customer_name in (select customer_name from customer where customer_name like '%a%'); 


--finding name of customers name that has 's' in the end & doesn't have 'a'in the name
select customer_name from customer where customer_name like '%s' and customer_name not in (select customer_name from customer where customer_name like '%a%'); 
--finding distinct names that has 's' in the end & 'a'in the name
select distinct(customer_name) from customer where customer_name like '%s' and customer_name  not in (select customer_name from customer where customer_name like '%a%'); 



---some,all


--finding out customer whose balance is higher than at least one member with at least balance 100000
 select customer_name from customer where customer_id in (select customer_id from account where balance > some (select balance from account where balance >= 100000));

--finding out customer whose balance higher than all the customer with at least balance 100000
select customer_name from customer where customer_id in (select customer_id from account where balance > all (select balance from account where balance >= 100000));

--finding out customer whose balance is higher or equal than all the customer with at least balance 100000  
select customer_name from customer where customer_id in (select customer_id from account where  balance >=some(select balance from account where balance>=100000));  



--(exists, not exists)

--finding a customer with bank balance >100000  if the bank account category is general 
select * from customer where exists ( select * from account where customer.customer_id = account.customer_id and account.balance > 10000 and account.category = 'general');


 --finding a customer with bank balance >10000  if the bank account category is general
--The main query selects those where subquery returns false; id -500 will not be shown   
select * from customer where not exists ( select * from account where customer.customer_id = account.customer_id and account.balance > 10000 and account.category = 'general');



--(string operation)
  
--finding info of branch with ending 'i'
select * from branch where branch_name like '%i'; 
--finding info of bank with name of length 3   
select * from branch  where branch_name like '___';   


-- order by ascending order by default
select * from customer order by customer_city;
-- order by descending order
select * from customer order by customer_city desc;



-- aggregate function
--total row in table
select count(*) from account;
select count(*) from customer;
--total_amount from loan
select sum(amount) as total_amount from loan;
--avg_amount from loan
select avg(amount) as avg_amount from loan;
--max user balance   
select max(balance) from account; 
--min user balance 
select min(balance) from account;   






-- group by and having

select count(amount), branch_name from loan group by(branch_name);

select customer_id, count(card_number) from credit_card group by(customer_id) having count(card_limit) > 1;




-- subquery
select card_number, customer_id from credit_card where card_number in (select card_number from credit_card where card_limit > 200000);

-- subquery object
select c.card_number , c.customer_id from credit_card c where c.card_number in (select o.card_number from credit_card o where o.card_limit > 200000);




-- union operator
select branch_name from branch union select branch_name from loan; 
select customer_id from customer union all select customer_id from credit_card;

-- intersect operator
select customer_id from customer intersect select customer_id from credit_card;

-- minus operator
select customer_id from customer minus select customer_id from credit_card;


--with clause

--finding info of  the highest balance using with clause

with max_balance as (select max(balance) as maximum_balance from account)
select * from account  ,max_balance where account.balance=max_balance.maximum_balance ; 


-- join operator

select a.account_number, a.balance, c.customer_name from account a join customer c on a.customer_id = c.customer_id;

-- using
select a.account_number, a.balance, c.customer_name from account a join customer c using(customer_id);

-- natural join
select a.account_number, a.balance, c.customer_name from account a natural join customer c;

-- outer join

-- left outer join(strong left table)
select  c.customer_name, a.account_number, a.balance from customer c left outer join account a on a.customer_id = c.customer_id;

-- right outer join
select  b.branch_name ,l.loan_number, l.customer_id from loan l right outer join branch b on b.branch_name = l.branch_name;

-- full outer join
select  b.branch_name ,l.loan_number, l.customer_id from loan l full outer join branch b on b.branch_name = l.branch_name;




--view

--creating a view of all customer who have gold category bank account

create view gold_accounts as select customer_name from customer where customer_id in (select customer_id from account where category = 'gold');


--pl/sql

set serveroutput on
declare
   max_loan_amount  number;
begin
   select max(amount) into max_loan_amount
   from loan;
   dbms_output.put_line('the maximum loan amount is: ' || max_loan_amount);
end;
/

set serveroutput on
declare
   min_balance  account.balance%type;
begin
   select min(a.balance) into min_balance from account a join customer c using(customer_id);
   dbms_output.put_line('the minimum balance is  : ' || min_balance);
 end;
/


--cursor pl/sql loop

set serveroutput on
declare
   cursor cust_cur is select customer_name, customer_city from customer;
   cust_rec cust_cur%rowtype;
   counter number := 0;
begin
   open cust_cur;
   loop
      fetch cust_cur into cust_rec;
      exit when cust_cur%notfound or counter >= 3;
      counter := counter + 1;
      dbms_output.put_line('customer_name: ' || cust_rec.customer_name || ' ' || 'customer_city: ' || cust_rec.customer_city);
   end loop;
   close cust_cur;
end;
/





-- plsql procedure
set serveroutput on;
create or replace procedure get_acc is 
    acc_no account.account_number%type;
begin
    select account_number into acc_no
    from account
    where balance = (select max(balance) from account);
    dbms_output.put_line('balance is: ' || acc_no);
end;
/
show errors;


-- plsql function
set serveroutput on
create or replace function avg_card_limit return number is
   avg_card credit_card.card_limit%type;
begin
  select avg(card_limit) into avg_card
  from credit_card;
   return avg_card;
end;
/


begin
dbms_output.put_line('average credit card limit: ' || avg_card_limit);
end;
/





