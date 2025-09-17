-- ==============================================
-- Week 7: Database Design and Normalization
-- Author: Augusto Mate
-- Goal: Apply 1NF and 2NF normalization using SQL
-- ==============================================

-- ----------------------------------------------
-- Question 1: First Normal Form (1NF)
-- ----------------------------------------------

-- Drop the table if it already exists
DROP TABLE IF EXISTS ProductDetail_1NF;

-- Create normalized table
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Insert each product as a separate row
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

-- ----------------------------------------------
-- Question 2: Second Normal Form (2NF)
-- ----------------------------------------------

-- Drop dependent tables first due to FK constraint
DROP TABLE IF EXISTS OrderItems;
DROP TABLE IF EXISTS CustomerOrders;

-- Create table to store order and customer (OrderID → CustomerName)
CREATE TABLE CustomerOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

-- Create table to store products and quantities per order
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES CustomerOrders(OrderID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Insert into CustomerOrders
INSERT INTO CustomerOrders (OrderID, CustomerName) VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

-- Insert into OrderItems
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);
