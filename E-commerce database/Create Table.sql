CREATE TABLE CUSTOMERS (
    ID INT PRIMARY Key,
    Name VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO CUSTOMERS VALUES
(1, "Jack Francis", "USA"),
(2, "Togo Shinji", "Japan"),
(3, "Francois Louis", "France"),
(4, "Lao Tze", "China"),
(5, "Dimitri Legasov", "Russia"),
(6, "Mahmoud Zain", "United Arab Emirates"),
(7, "Henry William", "Britain");

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Item VARCHAR(50),
    Pricing FLOAT,
    Inventory INT
);

INSERT INTO Products VALUES
(101, 'Wireless Mouse', 25.99, 120),
(102, 'Mechanical Keyboard', 79.50, 60),
(103, 'USB-C Charger', 18.00, 200),
(104, '27-inch Monitor', 189.99, 35),
(105, 'Gaming Headset', 59.99, 80),
(106, 'External Hard Drive 1TB', 64.99, 50),
(107, 'Webcam HD', 39.00, 75),
(108, 'Laptop Stand', 22.49, 90),
(109, 'Bluetooth Speaker', 44.90, 110),
(110, 'Smartwatch', 129.99, 40);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS(ID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Orders VALUES
(1, 1, 101, 2, '2025-04-20'),  -- Jack Francis bought 2 Wireless Mice
(2, 3, 105, 1, '2025-04-21'),  -- Francois Louis bought 1 Gaming Headset
(3, 2, 104, 1, '2025-04-22'),  -- Togo Shinji bought 1 Monitor
(4, 4, 103, 3, '2025-04-22'),  -- Lao Tze bought 3 USB-C Chargers
(5, 5, 106, 2, '2025-04-23'),  -- Dimitri Legasov bought 2 External Drives
(6, 6, 110, 1, '2025-04-24'),  -- Mahmoud Zain bought 1 Smartwatch
(7, 7, 102, 1, '2025-04-24'),  -- Henry William bought 1 Keyboard
(8, 1, 109, 1, '2025-04-25');  -- Jack Francis bought 1 Bluetooth Speaker



CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    Amount FLOAT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(30),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Payments VALUES
(1, 1, 51.98, '2025-04-20', 'Credit Card'),         -- 2 x $25.99
(2, 2, 59.99, '2025-04-21', 'PayPal'),              -- 1 x $59.99
(3, 3, 189.99, '2025-04-22', 'Credit Card'),        -- 1 x $189.99
(4, 4, 54.00, '2025-04-22', 'Debit Card'),          -- 3 x $18.00
(5, 5, 129.98, '2025-04-23', 'Bank Transfer'),      -- 2 x $64.99
(6, 6, 129.99, '2025-04-24', 'Cash on Delivery'),   -- 1 x $129.99
(7, 7, 79.50, '2025-04-24', 'Credit Card'),         -- 1 x $79.50
(8, 8, 44.90, '2025-04-25', 'Credit Card');         -- 1 x $44.90
