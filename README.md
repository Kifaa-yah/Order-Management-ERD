# Order-Management-System

This project contains the Entity Relationship Diagram (ERD) for an **Order Management System**. It models the relationships between customers, orders, items, suppliers, and payment status.

## 📌 Project Objective

To demonstrate understanding of database design principles and relational data modeling by creating a real-life ERD based on business rules.

## 🗂️ ERD Diagram

[View Order Management ERD](https://github.com/user-attachments/assets/bb66e83a-5817-44a5-b97a-9f15314a1ee5)

## ⚙️ Business Requirements & Assumptions

- A customer **can exist without placing an order**.
- An order **must belong to one customer**.
- A supplier **can exist without providing items**.
- An item **must belong to a supplier**.
- An order **can contain multiple items** → (*Future enhancement: create an `OrderItems` table for normalization.*)
- Payment status is tracked for each order.


🗄️ SQL Schema
The following SQL schema defines the structure of the Order Management System database. It includes tables for managing customers, suppliers, items, orders, and payment statuses.

📌 Schema Overview
| Table          | Description                       |
|----------------|-----------------------------------|
| `Customers`    | Stores customer details           |
| `Orders`       | Tracks customer orders            |
| `Items`        | Details of available items        |
| `Suppliers`    | Information about item suppliers  |
| `PaymentStatus`| Tracks payment progress/status    |


📝 SQL Script
[View SQL Script 

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200),
    Gender VARCHAR(10)
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

-- Suppliers Table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    Location VARCHAR(150)
);

-- Components Table
CREATE TABLE Components (
    ComponentID INT PRIMARY KEY,
    ComponentName VARCHAR(100) NOT NULL,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- ProductComponents Table (Associative Entity for Many-to-Many Relationship between Products and Components)
CREATE TABLE ProductComponents (
    ProductID INT,
    ComponentID INT,
    PRIMARY KEY (ProductID, ComponentID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (ComponentID) REFERENCES Components(ComponentID)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- OrderItems Table (to normalize Product-Order relationship)
CREATE TABLE OrderItems (
    OrderID INT,
    ProductID INT,
    Quantity INT DEFAULT 1,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
ng Order Management Schema.sql…]()




## 📄 Future Improvements
- Create normalized `OrderItems` table for Many-to-Many relationships.
- Populate with sample data for SQL practice.
- Design corresponding SQL schema.

## 📚 License

This project is licensed under the MIT License.

---
## 📬 Contact

Built by Kifaayah ✨!

Feel free to connect with me for feedback or contributions.

---

**Thank you for visiting this project!** ✨

