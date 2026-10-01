create database sushmi12db;
use sushmi12db;
CREATE TABLE Customers(
	Customer_ID INT PRIMARY KEY,
	Customrer_Name VARCHAR(50),
	City VARCHAR(50)
);

CREATE TABLE Orders(
	 Order_ID INT PRIMARY KEY,
     Customer_ID INT,
     Order_Date DATE,
     Order_Amount DECIMAL(10,2),
     FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
 CREATE TABLE Invoices (
	Invoice_ID INT PRIMARY KEY,
    Order_ID INT,
    Invoice_Date DATE,
    Payment_Amount DECIMAL(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
 
 CREATE TABLE Payments (
	Payments_ID INT PRIMARY KEY,
    Invoice_ID INT,
    Payment_Date DATE,
    Payment_Amount DECIMAL(10,2),
    FOREIGN KEY  (Invoice_ID) REFERENCES Invoices(Inovice_ID)
);

CREATE TABLE Ledger (
	Ledger_ID INT PRIMARY KEY,
    Customer_ID INT,
    Transactions_Date DATE,
    Debit DECIMAL(10,2),
    CrEdit DECIMAL (10,2),
    Description VARCHAR(100),
    FOREIGN KEY (Customer_ID) REFERENCES CustomerS(Customer_ID)
);
select*from Customers;
select*from Orders;
select*from Invoices;
select*from Payments;
select*from Ledger;
insert into customers values
(1001,"Bhoomika","Maharastra"),
(1002,"sonia","Pakistan"),
(1003,"iona","Banglore"),
(1004,"chaitra","Nepal"),
(1005,"Chinmay","Goa");
select* from customers;
INSERT INTO Orders VALUES
(4400,5001,'2025-10-5',8500),
(4401,5002,'2025-10-10',450),
(4402,5003,'2025-11-26',7630),
(4403,5004,'2025-11-27',500),
(4404,5005,'2025-12-8',650);
select* from Orders ;
INSERT INTO Invoices VALUES
(1, 4500, '2025-10-05', 8500),
(2, 4501, '2025-10-11', 450),
(3, 4502, '2025-11-26', 7630),
(4, 4503, '2025-11-28', 500),
(5, 4504, '2025-12-08', 650);

SELECT * FROM Invoices;
INSERT INTO Payments VALUES
(661, 1, '2025-11-05', 8500),
(662, 2, '2025-11-01', 450),
(663, 3, '2025-12-05', 7630),
(664, 4, '2025-12-10', 500),
(665, 5, '2025-12-25', 650);

SELECT * FROM Payments;



    

    

