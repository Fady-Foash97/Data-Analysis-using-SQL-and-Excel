--- Track daily or monthly sales trends to identify peak sales periods.
--- monthly
SELECT
DATE_FORMAT(OrderDate, '%Y%-%M') as Sales_month,
SUM(Quantity) as total_sold
FROM orders
GROUP BY Sales_month
Order BY Sales_month DESC;

--- daily
SELECT
DATE_FORMAT(OrderDate, '%d') as Sales_day,
SUM(Quantity) as total_sold
FROM orders
GROUP BY Sales_day
Order BY total_sold DESC;

--- daily by orderdate
SELECT
OrderDate,
SUM(Quantity) as total_sold
FROM orders
GROUP BY OrderDate
Order BY total_sold DESC;