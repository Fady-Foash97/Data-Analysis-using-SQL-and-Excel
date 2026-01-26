--- Identify products with low inventory levels and suggest restocking.
SELECT 
Item,
Inventory,
 CASE
   WHEN Inventory < 50 THEN "Restock needed"
   ELSE "Sufficient stock"
 END AS Stock_status
FROM products
ORDER BY Inventory;