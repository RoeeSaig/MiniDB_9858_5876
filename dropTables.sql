-- dropTables.sql

-- Drop Inventory table first due to foreign key constraint
DROP TABLE Inventory;

-- Drop Reservations table next due to foreign key constraint
DROP TABLE Reservations;

-- Drop Employee table next due to foreign key constraint
DROP TABLE Employee;

-- Drop Department_Managers table next due to foreign key constraint
DROP TABLE Department_Managers;

-- Drop Department table next due to foreign key constraint
DROP TABLE Department;

-- Drop General_Manager table next
DROP TABLE General_Manager;

-- Drop Suppliers table last
DROP TABLE Suppliers;
