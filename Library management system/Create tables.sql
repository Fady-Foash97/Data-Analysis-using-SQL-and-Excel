CREATE TABLE Branch (
    Branch_no VARCHAR(10) PRIMARY KEY,
    Branch_address VARCHAR(30),
    Contact_no VARCHAR(15)
);

CREATE TABLE Employee (
    Emp_id VARCHAR(10) PRIMARY KEY,
    Emp_name VARCHAR(30),
    Position VARCHAR(30),
    Salary DECIMAL(10,2)
);

CREATE TABLE Customer (
    Customer_id VARCHAR(10) PRIMARY KEY,
    Customer_name VARCHAR(30),
    Customer_address VARCHAR(30),
    Reg_date DATE
);

CREATE TABLE Books (
    ISBN VARCHAR(10) PRIMARY KEY,
    Book_title VARCHAR(50),
    Category VARCHAR(30),
    Rental_Price DECIMAL(10,2),
    Status ENUM('Yes','No'),
    Author VARCHAR(30),
    Publisher VARCHAR(30)
);
ALTER TABLE BOOKS Modify COLUMN ISBN VARCHAR(50);
ALTER TABLE BOOKS Modify COLUMN Book_title VARCHAR(100);

CREATE TABLE IssueStatus (
    Issue_Id VARCHAR(10) PRIMARY KEY,
    Issued_cost VARCHAR(30),
    Issued_book_name VARCHAR(150),
    Issue_date Date,
    IsBn_book VARCHAR(100),
    FOREIGN KEY (Isbn_book) REFERENCES books(ISBN),
    FOREIGN KEy (Issued_cost) REFERENCES customer(Customer_id)
);
CREATE TABLE ReturnStatus (
    Return_id VARCHAR(10) PRIMARY KEY,
    Return_cost VARCHAR(30),
    Return_book_name VARCHAR(50),
    Return_date DATE,
    IsBn_book2 VARCHAR(80),
    FOREIGN KEY (IsBn_book2) REFERENCES books(ISBN)
);

SHOW TABLES;
