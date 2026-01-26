--- Analyze total sales by country to identify which countries contribute the most to revenue.
SELECT
c.Country,
Round(SUM(o.Quantity * pr.Pricing), 2) as Total_revenues
FROM customers c, orders o, products pr
WHERE c.ID = o.CustomerID AND pr.ProductID = o.ProductID
GROUP BY c.Country
ORDER BY Total_revenues DESC;

--- Analyze total sales by country to identify which countries contribute the most to revenue.
SELECT
c.Country,
Round(SUM(o.Quantity * pr.Pricing), 2) as Total_revenues,
CASE 
  WHEN SUM(o.Quantity * pr.Pricing) >= 129 THEN "This country contributes to our revenues"
  Else "This country doesn't contribute to our revenues"
  END AS Revenue_Contribution_Status
FROM customers c, orders o, products pr
WHERE c.ID = o.CustomerID AND pr.ProductID = o.ProductID
GROUP BY c.Country
ORDER BY Total_revenues DESC;
