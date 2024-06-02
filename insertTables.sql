
-- Inserting data into Suppliers table
INSERT INTO Suppliers (SupNum, SupName, Phone, Type_S) VALUES
(1, 'Supplier A', 1234567890, 'Type 1');
INSERT INTO Suppliers (SupNum, SupName, Phone, Type_S) VALUES
(2, 'Supplier B', 2345678901, 'Type 2');
INSERT INTO Suppliers (SupNum, SupName, Phone, Type_S) VALUES
(3, 'Supplier C', 3456789012, 'Type 3');

-- Inserting data into General_Manager table
INSERT INTO General_Manager (GmID, GmName, Phone, Reports) VALUES
(1, 'GM Alice', 1231231234, 'Report 1');
INSERT INTO General_Manager (GmID, GmName, Phone, Reports) VALUES
(2, 'GM Bob', 2342342345, 'Report 2');

-- Inserting data into Department table
INSERT INTO Department (DeptName, GmID) VALUES
('HR', 1);
INSERT INTO Department (DeptName, GmID) VALUES
('Finance', 2);
INSERT INTO Department (DeptName, GmID) VALUES
('IT', 1);

-- Inserting data into Reservations table
INSERT INTO Reservations (DeptName, SupNum, ResDate) VALUES
('HR', 1, TO_DATE('2001-01-02', 'YYYY-MM-DD'));
INSERT INTO Reservations (DeptName, SupNum, ResDate) VALUES
('Finance', 2, TO_DATE('2011-11-12', 'YYYY-MM-DD'));
INSERT INTO Reservations (DeptName, SupNum, ResDate) VALUES
('IT', 3, TO_DATE('2023-06-09', 'YYYY-MM-DD'));

-- Inserting data into Employee table
INSERT INTO Employee (EmID, EmName, Phone, Hours, DeptName) VALUES
(1, 'Emp John', 3453453456, 40, 'HR');
INSERT INTO Employee (EmID, EmName, Phone, Hours, DeptName) VALUES
(2, 'Emp Jane', 4564564567, 35, 'Finance');
INSERT INTO Employee (EmID, EmName, Phone, Hours, DeptName) VALUES
(3, 'Emp Jack', 5675675678, 30, 'IT');

-- Inserting data into Department_Managers table
INSERT INTO Department_Managers (DmID, DmName, Phone, Reports, DeptName) VALUES
(1, 'DM Kate', 6786786789, 'HR Report', 'HR');
INSERT INTO Department_Managers (DmID, DmName, Phone, Reports, DeptName) VALUES
(2, 'DM Luke', 7897897890, 'Finance Report', 'Finance');
INSERT INTO Department_Managers (DmID, DmName, Phone, Reports, DeptName) VALUES
(3, 'DM Mike', 8908908901, 'IT Report', 'IT');

-- Inserting data into Inventory table
INSERT INTO Inventory (ItemID, ItemDes, Amount, ExDate, DeptName, ItemName) VALUES
(1, 'Item 1 Description', 100, TO_DATE('2013-01-01', 'YYYY-MM-DD'), 'HR', 'computer');
INSERT INTO Inventory (ItemID, ItemDes, Amount, ExDate, DeptName, ItemName) VALUES
(2, 'Item 2 Description', 200, TO_DATE('2005-11-01', 'YYYY-MM-DD'), 'Finance', 'sofa');
INSERT INTO Inventory (ItemID, ItemDes, Amount, ExDate, DeptName, ItemName) VALUES
(3, 'Item 3 Description', 300, TO_DATE('2001-01-02', 'YYYY-MM-DD'), 'IT','bed');
