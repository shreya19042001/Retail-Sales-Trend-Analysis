SET GLOBAL local_infile = 1;

 USE salesdb;

 
mysql> LOAD DATA LOCAL INFILE 'C:/Users/shrey/OneDrive/Documents/sales_data.csv'
    -> INTO TABLE sales_data
    -> CHARACTER SET latin1
    -> FIELDS TERMINATED BY ','
    -> ENCLOSED BY '"'
    -> LINES TERMINATED BY '\n'
    -> IGNORE 1 ROWS;

    SELECT * FROM sales_data LIMIT 10;

    SELECT COUNT(*) FROM sales_data;

    SELECT SUM(Quantity) FROM sales_data;

    SELECT Country, COUNT(*) as orders
    -> FROM sales_data
    -> GROUP BY Country
    -> ORDER BY orders DESC
    -> LIMIT 5;