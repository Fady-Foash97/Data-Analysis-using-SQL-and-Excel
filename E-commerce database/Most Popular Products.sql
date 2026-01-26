--- Identify which products are being sold the most.

SELECT
p1.Item,
SUM(o.Quantity) as Total_units_sold
FROM products p1, orders o, payments p2
WHERE p1.ProductID = o.ProductID AND o.OrderID = p2.OrderID
GROUP BY p1.Item
ORDER BY Total_units_sold DESC;