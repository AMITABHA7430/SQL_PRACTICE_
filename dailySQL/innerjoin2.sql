-- LeetCode 1068: Product Sales Analysis I

-- Product table contains product_name.
-- Sales table contains year and price.
-- Both tables have product_id in common.

SELECT Product.product_name, Sales.year, Sales.price

-- Use INNER JOIN to combine matching records
-- from Sales and Product.
FROM Sales
INNER JOIN Product

-- Match the same product in both tables
ON Sales.product_id = Product.product_id;
