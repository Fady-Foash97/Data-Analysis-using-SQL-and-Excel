
SELECT 
c.Name,
Count(p.PaymentDate) as Times_of_purchase,
p.PaymentMethod
FROM customers c, payments p, orders o
WHERE c.ID = o.CustomerID AND o.OrderID = p.OrderID
GROUP BY c.Name, p.PaymentMethod;