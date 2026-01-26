--- Identify total revenue of products sold.

SELECT
p1.Item,
SUM(p2.Amount) as total_sold
FROM products p1, payments p2, orders o
WHERE p1.ProductID = o.ProductID AND o.OrderID = p2.OrderID
GROUP BY p1.Item;