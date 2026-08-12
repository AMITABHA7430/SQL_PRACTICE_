-- LeetCode 1068: Product Sales Analysis I

-- Product contains the product name.
-- Sales contains the year and price of each sale.
-- We need to combine both tables using product_id.

SELECT Product.product_name, Sales.year, Sales.price

-- INNER JOIN returns only the rows where
-- a matching product_id exists in both tables.
FROM Sales
INNER JOIN Product

-- Match the product_id from Sales
-- with the product_id from Product.
ON Sales.product_id = Product.product_id;
