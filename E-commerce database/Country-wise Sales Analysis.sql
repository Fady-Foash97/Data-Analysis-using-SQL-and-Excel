--- Identify how much each country contributes to the total sales.

SELECT 
c.Country,
SUM(p.Amount) as Total_sales
FROM customers c, payments p, orders o
WHERE c.ID = o.CustomerID AND o.OrderID = p.OrderID
GROUP BY c.Country
ORDER BY Total_sales DESC;