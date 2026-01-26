--- Identify which payment methods are being used most frequently by customers.
SELECT
PaymentMethod,
Name
FROM payments, customers;

--- Identify which payment methods are being used most frequently by customers.
SELECT
PaymentMethod,
COUNT(Name) as Number_of_customers
FROM payments, customers
GROUP BY PaymentMethod;