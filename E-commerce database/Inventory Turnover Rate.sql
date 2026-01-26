--- Analyze how fast each product is being sold based on its inventory level and order quantity.

SELECT
p.Item,
p.Inventory,
SUM(o.Quantity) as Quantity_sold,
ROUND(SUM(o.Quantity) * 1.0 / (p.Inventory + SUM(o.Quantity)), 2) AS sell_through_rate
FROM products p, orders o
WHERE p.ProductID = o.ProductID
GROUP BY p.Item, p.Inventory
ORDER BY sell_through_rate DESC; 