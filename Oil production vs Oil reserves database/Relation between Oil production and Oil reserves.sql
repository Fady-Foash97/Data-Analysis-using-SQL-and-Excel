SELECT o.Country, o.Daily_oil_production, o1.Oil_Reserves, o1.World_share FROM oil_production o, oil_reserves o1
WHERE o.Country = o1.Country
ORDER BY o.Daily_oil_production DESC
Limit 10;