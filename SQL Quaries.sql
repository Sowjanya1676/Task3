#-------Use SELECT, WHERE, ORDER BY, GROUP BY------------------------
select * from projects;
select * from projects where country = "chennai";
select * from projects order by ProjectID;
select * from projects order by ProjectID desc;
select country,count(*) "No of backers" from projects group by country having count(backers_count);

#------Use JOINS (INNER, LEFT, RIGHT)----------------------------------------------------
SELECT order_id, product_name FROM orders Inner JOIN customer ON orders.Cust_id = customer.Cust_id;
SELECT order_id, product_name FROM orders left JOIN customer ON orders.Cust_id = customer.Cust_id;
SELECT order_id, product_name FROM orders Right JOIN customer ON orders.Cust_id = customer.Cust_id;

#-------Use aggregate functions (SUM, AVG)-----------------------------------------
select * from projects;
select country, sum(ProjectId) from projects group by Country;
select country, avg(backers_count) from projects group by country;
select country, min(backers_count) from projects group by country;
select country, max(backers_count) from projects group by country;

#------Create view for Analyze-------------------------------------------
create view Mini_Project AS Select ProjectID, Name, country, backers_count from projects where country = "US";

#---------Optimize queries with indexes--------------------------------
Create index idx_orders on orders(order_id,product_name);
Show index from orders;

#---------Write subqueries--------------------------
select ProjectID, name, country from projects where backers_count>(select avg(backers_count) from projects);












