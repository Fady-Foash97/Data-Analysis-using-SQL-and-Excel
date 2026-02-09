SELECT Customer_name FROM customer WHERE Reg_date < '2022-01-01' AND Customer_id NOT IN
(SELECT issued_cost FROM issuestatus);