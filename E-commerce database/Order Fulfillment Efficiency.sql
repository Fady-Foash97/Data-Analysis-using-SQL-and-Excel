--- Analyze if the current inventory is sufficient to fulfill demand based on historical orders.
SELECT
p1.Item,
p1.Inventory,
SUM(o.Quantity) as Total_Ordered,
   CASE
    WHEN p1.Inventory < SUM(o.Quantity) THEN "Insufficient stock"
    ELSE "Sufficient stock"
    END AS Inventory_status
FROM products p1, orders o, payments p2
WHERE p1.ProductID = o.ProductID AND o.OrderID = p2.OrderID
GROUP BY p1.Item, p1.Inventory;
