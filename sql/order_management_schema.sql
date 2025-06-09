CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Address VARCHAR(100)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(50),
    Location VARCHAR(100)
);

CREATE TABLE Items (
    ItemID INT PRIMARY KEY,
    Name VARCHAR(50),
    Quantity INT,
    Amount FLOAT,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE PaymentStatus (
    PaymentStatusID INT PRIMARY KEY,
    PaymentStatusName VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATETIME,
    ItemID INT,
    PaymentStatusID INT,
    CustomerID INT,
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID),
    FOREIGN KEY (PaymentStatusID) REFERENCES PaymentStatus(PaymentStatusID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
