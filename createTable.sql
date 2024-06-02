CREATE TABLE Suppliers
(
    SupNum      INT         NOT NULL,
    SupName     VARCHAR(20) NOT NULL,
    Phone       INT         NOT NULL,
    Type_S        VARCHAR(20) NOT NULL,
    PRIMARY KEY (SupNum)
);

CREATE TABLE General_Manager
(
    GmID        INT         NOT NULL,
    GmName      VARCHAR(20) NOT NULL,
    Phone       INT         NOT NULL,
    Reports     VARCHAR(100) NOT NULL,
    PRIMARY KEY (GmID)
);

CREATE TABLE Department
(
    DeptName    VARCHAR(20)     NOT NULL,
    GmID        INT         NOT NULL,
    PRIMARY KEY (DeptName),
    FOREIGN KEY (GmID) REFERENCES General_Manager(GmID)
);

CREATE TABLE Reservations
(
    DeptName    VARCHAR(20)     NOT NULL,
    SupNum      INT         NOT NULL,
    ResDate     DATE        NOT NULL,
    PRIMARY KEY (DeptName, SupNum),
    FOREIGN KEY (DeptName) REFERENCES Department(DeptName),
    FOREIGN KEY (SupNum) REFERENCES Suppliers(SupNum)
);

CREATE TABLE Employee
(
    EmID        INT         NOT NULL,
    EmName      VARCHAR(20) NOT NULL,
    Phone       INT         NOT NULL,
    Hours       INT         NOT NULL,
    DeptName    VARCHAR(20)     NOT NULL,
    PRIMARY KEY (EmID),
    FOREIGN KEY (DeptName) REFERENCES Department(DeptName)
);

CREATE TABLE Department_Managers
(
    DmID        INT         NOT NULL,
    DmName      VARCHAR(20) NOT NULL,
    Phone       INT         NOT NULL,
    Reports     VARCHAR(100) NOT NULL,
    DeptName    VARCHAR (20)    NOT NULL,
    PRIMARY KEY (DmID),
    FOREIGN KEY (DeptName) REFERENCES Department(DeptName)
);

CREATE TABLE Inventory
(
    ItemID      INT         NOT NULL,
    ItemDes     VARCHAR(100) NOT NULL,
    Amount      INT         NOT NULL,
    ExDate      DATE        NOT NULL,
    DeptName    VARCHAR(20)     NOT NULL,
    ItemName    VARCHAR(20)     NOT NULL,
    PRIMARY KEY (ItemID),
    FOREIGN KEY (DeptName) REFERENCES Department(DeptName)
);
