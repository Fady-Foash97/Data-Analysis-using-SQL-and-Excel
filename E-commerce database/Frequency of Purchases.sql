--- Determine how often each customer places an order.

SELECT 
c.Name,
Count(p.PaymentDate) as Times_of_purchase
FROM customers c, payments p, orders o
WHERE c.ID = o.CustomerID AND o.OrderID = p.OrderID
GROUP BY c.Name;

