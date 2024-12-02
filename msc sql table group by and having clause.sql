use college4f;
select*from new_table;
SELECT product_name FROM new_table;
 SELECT DISTINCT product_name ,product_quantity FROM new_table
ORDER BY product_name ,product_quantity;
 # distinct or group by ko replacer krne k lie we r using group by functions
 select product_name,sum(product_quantity)as "total quantity sold" from new_table group by product_name;
 #find the average_price for each product
 select product_name,avg(product_quantity)as "average_price " from new_table group by product_name;
 # get total number of sales(sales_id count) for each region
 select region,count(sales_id)as "total sales_id" from new_table group by region;
 # find the regions where more than 15 items have been sold using having clause
 select region,sum(product_quantity)as "total number of sales"from new_table group by region having sum(product_quantity)>10;
 # find the total sales amount for each product  
select product_name,sum(price*product_quantity) from new_table group by product_name;
# find the regions where total sum exceeds 5000;
select region,sum(price*product_quantity)>=5000 from new_table group by region;
#find average quantity sold for each product and only show products with an average quality of 4.
SELECT product_name , avg(product_quantity)  as "average quqntity sold"
FROM new_table
GROUP BY product_name 
HAVING COUNT(product_quantity) >4;
#get the number of different products sold in each region on quqntity 
select region,COUNT(product_name) as "product sold" from new_table group by region;
#find the prodyuct with highest total same amount
select product_name,sum(price*product_quantity) as "total sales amount" from new_table group by product_name order by sum(price*product_quantity)desc limit 1;
