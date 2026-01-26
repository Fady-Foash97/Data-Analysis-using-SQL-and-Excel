--- Calculate the average amount spent per order to understand customer spending behavior.
SELECT
c.Name,
ROUND(AVG(Amount), 2) as Average_amount_spent_per_order
FROM customers c, payments p, orders o
WHERE c.ID = o.CustomerID AND o.OrderID = p.OrderID
GROUP BY c.Name
ORDER BY Average_amount_spent_per_order DESC;