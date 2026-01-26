--- Compare the average order value for each payment method to see if certain methods are associated with larger or smaller orders.

SELECT
p.PaymentMethod,
ROUND(AVG(p.Amount), 2) AS Average_order_value,
COUNT(p.PaymentID) AS Number_of_orders
FROM payments p, orders o
WHERE p.OrderID = o.OrderID 
GROUP BY p.PaymentMethod
ORDER BY Average_order_value DESC;