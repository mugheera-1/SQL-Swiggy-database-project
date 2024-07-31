-- create sql_case_study database

create database sql_case_study;

-- create users table 

create table users (user_id int, name varchar(255), email varchar(255), password varchar(255));

-- insert data into users table

insert into users (user_id, name, email, password) values
(1, 'Nitish', 'nitish@gmail.com', 'p252h'),
(3, 'Vartika', 'vartika@gmail.com', '9hu7j'),
(4, 'Ankit', 'ankit@gmail.com', 'lkko3'),
(5, 'Neha', 'neha@gmail.com', '3i7qm'),
(6, 'Anupama', 'anupama@gmail.com', '46rdw2'),
(7, 'Rishabh', 'rishabh@gmail.com', '4sw123');

-- create restaurants table

create table restaurants (r_id int, r_name varchar(255), cuisine varchar(255));

-- insert data into restaurants table

insert into restaurants (r_id, r_name, cuisine) values
(1,'dominos','Italian'),
(2,'kfc','American'),
(3,'box8','North Indian'),
(4,'Dosa Plaza','South Indian'),
(5,'China Town', 'Chinese');

-- create food table

create table food (f_id int, f_name varchar(255), type varchar(255));

-- insert data into food table

insert into food (f_id, f_name, type) values
(1, 'Non-veg Pizza','Non-veg'),
(2, 'Veg Pizza', 'Veg'),
(3, 'Choco Lava cake', 'Veg'),
(4, 'Chicken Wings', 'Non-veg'),
(5, 'Chicken Popcorn', 'Non-veg'),
(6, 'Rice Meal', 'Veg'),
(7, 'Roti meal', 'Veg'),
(8, 'Masala Dosa', 'Veg'),
(9, 'Rava Idli', 'Veg'),
(10,'Schezwan Noodles', 'Veg'),
(11,'Veg Manchurian','Veg');

-- create menu table

create table menu (menu_id int, r_id int, f_id int, price int);

-- insert data into menu table

insert into menu (menu_id, r_id, f_id, price) values
(1, 1, 1, 450),
(2, 1, 2, 400),
(3, 1, 3, 100),
(4, 2, 3, 115),
(5, 2, 4, 230),
(6, 2, 5, 300),
(7, 3, 3, 80),
(8, 3, 6, 160),
(9, 3, 7, 140),
(10, 4, 6, 230),
(11, 4, 8, 180),
(12, 4, 9, 120),
(13, 5, 6, 250),
(14, 5, 10, 220),
(15, 5, 11, 180);

-- create orders table

create table orders (order_id int, user_id int, r_id int, amount int, date date, partner_id int,
					delivery_time int, delivery_rating int, restaurant_rating int);
                    
-- insert data into orders table

insert into orders (order_id, user_id, r_id, amount, date, partner_id, delivery_time, delivery_rating, restaurant_rating) values
			(1001, 1, 1, 550, '2022-05-10', 1, 25, 5, 3),
(1002, 1, 2, 415, '2022-05-26', 1, 19, 5, 2),
(1003, 1, 3, 240, '2022-06-15', 5, 29, 4, NULL),
(1004, 1, 3, 240, '2022-06-29', 4, 42, 3, 5),
(1005, 1, 3, 220, '2022-07-10', 1, 58, 1, 4),
(1006, 2, 1, 950, '2022-06-10', 2, 16, 5, NULL),
(1007, 2, 2, 530, '2022-06-23', 3, 60, 1, 5),
(1008, 2, 3, 240, '2022-07-07', 5, 33, 4, 5),
(1009, 2, 4, 300, '2022-07-17', 4, 41, 1, NULL),
(1010, 2, 5, 650, '2022-07-31', 1, 67, 1, 4),
(1011, 3, 1, 450, '2022-05-10', 2, 25, 3, 1),
(1012, 3, 4, 180, '2022-05-20', 5, 33, 4, 1),
(1013, 3, 2, 230, '2022-05-30', 4, 45, 3, NULL),
(1014, 3, 2, 230, '2022-06-11', 2, 55, 1, 2),
(1015, 3, 2, 230, '2022-06-22', 3, 21, 5, NULL),
(1016, 4, 4, 300, '2022-05-15', 3, 31, 5, 5),
(1017, 4, 4, 300, '2022-05-30', 1, 50, 1, NULL),
(1018, 4, 4, 400, '2022-06-15', 2, 40, 3, 5),
(1019, 4, 5, 400, '2022-06-30', 1, 70, 2, 4),
(1020, 4, 5, 400, '2022-07-15', 3, 26, 5, 3),
(1021, 5, 1, 550, '2022-07-01', 5, 22, 2, NULL),
(1022, 5, 1, 550, '2022-07-08', 1, 34, 5, 1),
(1023, 5, 2, 645, '2022-07-15', 4, 38, 5, 1),
(1024, 5, 2, 645, '2022-07-21', 2, 58, 2, 1),
(1025, 5, 2, 645, '2022-07-28', 2, 44, 4, NULL);

-- create delivery_partners table

create table delivery_partners (partner_id int, partner_name varchar(255));

-- insert data into delivery_partners table 

insert into delivery_partners (partner_id, partner_name) values
(1, 'Suresh'),
(2, 'Amit'),
(3, 'Lokesh'),
(4, 'Kartik'),
(5, 'Gyandeep');

-- create order_details table

create table order_details (id int, order_id int, f_id int);

-- insert data into order_details

insert into order_details (id, order_id, f_id) values
(1, 1001, 1),
(2, 1001, 3),
(3, 1002, 4),
(4, 1002, 3),
(5, 1003, 6),
(6, 1003, 3),
(7, 1004, 6),
(8, 1004, 3),
(9, 1005, 7),
(10, 1005, 3),
(11, 1006, 1),
(12, 1006, 2),
(13, 1006, 3),
(14, 1007, 4),
(15, 1007, 3),
(16, 1008, 6),
(17, 1008, 3),
(18, 1009, 8),
(19, 1009, 9),
(20, 1010, 10),
(21, 1010, 11),
(22, 1010, 6),
(23, 1011, 1),
(24, 1012, 8),
(25, 1013, 4),
(26, 1014, 4),
(27, 1015, 4),
(28, 1016, 8),
(29, 1016, 9),
(30, 1017, 8),
(31, 1017, 9),
(32, 1018, 10),
(33, 1018, 11),
(34, 1019, 10),
(35, 1019, 11),
(36, 1020, 10),
(37, 1020, 11),
(38, 1021, 1),
(39, 1021, 3),
(40, 1022, 1),
(41, 1022, 3),
(42, 1023, 3),
(43, 1023, 4),
(44, 1023, 5),
(45, 1024, 3),
(46, 1024, 4),
(47, 1024, 5),
(48, 1025, 3),
(49, 1025, 4),
(50, 1025, 5);

-- 1.Find customers who have never ordered
select u.user_id, u.name, o.order_id
from
users as u left join orders as o
on u.user_id = o.user_id
where o.order_id is null;

-- 2.Average Price/dish

select r.r_name, avg(m.price) as "Average_price/dish"
from
restaurants as r join menu as m
on r.r_id = m.r_id
group by r.r_name;


-- 3.Find the top restaurant in terms of the number of orders for a given month

select r.r_name, 
	   case 
       when month(o.date) = 1 then "January" 
       when month(o.date) = 2 then "February"
       when month(o.date) = 3 then "March"
       when month(o.date) = 4 then "April"
       when month(o.date) = 5 then "May"
       when month(o.date) = 6 then "June"
       when month(o.date) = 7 then "July"
       when month(o.date) = 8 then "August"
       when month(o.date) = 9 then "September"
       when month(o.date) = 10 then "October"
       when month(o.date) = 11 then "November"
       when month(o.date) = 12 then "December"
       end as month
       , count(o.order_id) as num_orders
from
restaurants as r join orders as o
on r.r_id = o.r_id
group by r.r_name, month
order by num_orders desc;


-- 4.Restaurants with monthly sales greater than x 1000

select r.r_name, month(date) as month, year(date) as year, sum(o.amount) as sales
from 
restaurants as r join orders as o
on r.r_id = o.r_id
group by r.r_name, month, year
having sales > 1000;



-- 5.Show all orders with order details for a particular customer in a particular date range

select u.user_id, u.name, o.order_id, f.f_name, r.r_name, o.amount
from
orders as o inner join order_details as od
on o.order_id = od.order_id
inner join restaurants as r
on o.r_id = r.r_id
inner join food as f
on od.f_id = f.f_id
inner join users as u
on u.user_id = o.user_id
where date between "2022-01-01" and "2022-6-15" and u.user_id = 1;

-- 6.Find restaurants with max repeated customers

with cte_order_count as (
select r.r_id, r.r_name, o.user_id, count(user_id) as order_count
from 
restaurants as r join orders as o
on r.r_id = o.r_id
group by r.r_id, r.r_name, o.user_id
),

cte_repeated_customers as (
select r_id, r_name, user_id
from cte_order_count
where order_count > 1
),

cte_repeated_customer_count as (
select r_id, r_name, count(user_id) as repeated_customer_count
from cte_repeated_customers
group by r_id, r_name
)

select r_id, r_name, repeated_customer_count
from cte_repeated_customer_count 
order by repeated_customer_count desc
limit 1;



-- 7.Month over month revenue growth of Swiggy
with monthly_revenue as (
select year(date) as year, month(date) as month, sum(amount) as revenue
from orders
group by year, month
),
monthly_growth as (
select year, month, revenue, lag(revenue) over (order by year, month) as prev_revenue
from monthly_revenue
)
select year, month, revenue, (((revenue-prev_revenue)/prev_revenue)*100) as revenue_growth
from monthly_growth
where prev_revenue is not null;


-- 8.Customer — favourite food

with cte_order_count as (
select o.user_id,u.name, f.f_name, count(*) as order_count
from
orders as o inner join order_details as od
on o.order_id = od.order_id
inner join food as f
on f.f_id = od.f_id
inner join users as u
on o.user_id = u.user_id
group by o.user_id,u.name, f.f_name
order by u.user_id, order_count desc
),
cte_rank_fav_food as (
select user_id, name, f_name, order_count, rank() over (partition by user_id order by order_count desc) as rank_fav_food
from cte_order_count
)
select * from cte_rank_fav_food
where rank_fav_food = 1;


-- 9.Find the most loyal customers for all restaurant
with cte_order_count as (
select r.r_name, u.name, count(*) as order_count
from
restaurants as r join orders as o
on r.r_id = o.r_id
join users as u
on u.user_id = o.user_id
group by r.r_name, u.name
order by order_count desc
),
cte_loyal_customer as (
select *, rank() over (partition by r_name order by order_count desc) as rank_loyal_customer
from cte_order_count
)
select *
from cte_loyal_customer
where rank_loyal_customer = 1;


-- 10.Month-over-month revenue growth of a restaurant
with cte_revenue as (
select r.r_name, year(o.date) as year, month(o.date) as month, sum(amount) as revenue
from 
restaurants as r join orders as o
on r.r_id = o.r_id
group by r.r_name, year, month
order by r_name, year, month
),
cte_prev_revenue as (
select *, lag(revenue) over (partition by r_name order by r_name, year, month) as prev_revenue
from cte_revenue
)
select *, ((revenue-prev_revenue)/prev_revenue)*100 as revenue_growth
from cte_prev_revenue
where prev_revenue is not null;








                   