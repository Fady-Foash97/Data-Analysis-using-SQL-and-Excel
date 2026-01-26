--- Analyze the total revenue from different payment methods to determine the most popular methods
SELECT
pa.PaymentMethod,
ROUND(SUM(pr.Pricing * o.Quantity), 2) as Total_revenue
FROM payments pa, products pr, orders o
WHERE pa.OrderID = o.OrderID AND pr.ProductID = o.ProductID
GROUP BY pa.PaymentMethod
ORDER BY Total_revenue DESC;