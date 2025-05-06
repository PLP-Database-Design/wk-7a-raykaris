-- Question 1
-- Transforming ProductDetail to 1NF
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';

-- Question 2
-- Step 1: Create the Orders table with no partial dependencies
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Step 2: Create the OrderItems table with full dependency on composite key
SELECT OrderID, Product, Quantity
FROM OrderDetails;
