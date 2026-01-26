--- Analyze the total spend per customer over time to identify high-value customers.

SELECT
c.Name,
SUM(p.Amount) as Total_spent
FROM customers c, payments p, orders o
WHERE c.ID = o.CustomerID AND p.OrderID = o.OrderID
GROUP BY c.Name
ORDER BY Total_spent DESC;