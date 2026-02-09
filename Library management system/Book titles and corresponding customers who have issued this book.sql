SELECT i.Issued_book_name, c.Customer_name FROM issuestatus i, customer c
WHERE i.Issued_cost = c.Customer_id;