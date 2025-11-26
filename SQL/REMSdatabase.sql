-- Database: Real Estate Management System

CREATE DATABASE REMS;
USE REMS;

-- COMPANY TABLE
CREATE TABLE Company (
	CompanyID INT PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(100),
	StreetAddress VARCHAR(100),
	City VARCHAR(100),
	State VARCHAR(100),
	Phone VARCHAR(100),
	Email VARCHAR(100)
);

-- PROPERTY TABLE
CREATE TABLE Property (
	PropertyID INT PRIMARY KEY AUTO_INCREMENT,
    CompanyID INT REFERENCES Company(CompanyID),
    ComplexName VARCHAR(100),
    StreetAddress VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    PropertyType VARCHAR(100),
    SqFt INT,
    PurchaseDate DATE,
    PurchaseAmount DECIMAL(12,2),
    MortgageEMI DECIMAL(10,2),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

-- HOUSE TABLE
CREATE TABLE Unit (
    UnitID INT PRIMARY KEY AUTO_INCREMENT,
    PropertyID INT REFERENCES Property(PropertyID),
    Rooms INT,
    Baths DOUBLE,
    Garage BOOLEAN,
    Stories INT,
    FloorNumber INT,
    Type VARCHAR(100),
    UnitNumber VARCHAR(100),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);

-- TENANT TABLE
CREATE TABLE Tenant (
    TenantID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(100)
);

-- LEASE TABLE
CREATE TABLE Lease (
    LeaseID INT PRIMARY KEY AUTO_INCREMENT,
    TenantID INT REFERENCES Tenant(TenantID),
    UnitID INT REFERENCES Unit(UnitID),
    StartDate DATE,
    EndDate DATE,
    MonthlyRate DECIMAL(10,2),
    IsActive BOOLEAN,
    FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID),
    FOREIGN KEY (UnitID) REFERENCES Unit(UnitID)
);

-- RENT PAYMENT TABLE
CREATE TABLE RentPayment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    LeaseID INT REFERENCES Lease(LeaseID),
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(100),
    Status VARCHAR(100),
    FOREIGN KEY (LeaseID) REFERENCES Lease(LeaseID)
);

-- TENANT HISTORY TABLE
CREATE TABLE TenantHistory (
    TenantID INT REFERENCES Tenant(TenantID),
    PropertyID INT REFERENCES Property(PropertyID),
    MoveOutDate DATE,
    MoveOutReason VARCHAR(100),
    Notes VARCHAR(100),
    PRIMARY KEY (TenantID, PropertyID),
    FOREIGN KEY(TenantID) REFERENCES Tenant(TenantID),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);

-- EXPENSES TABLE
CREATE TABLE Expenses (
    ExpenseID INT PRIMARY KEY AUTO_INCREMENT,
    CompanyID INT REFERENCES Company(CompanyID),
    Date Date,
    Amount DECIMAL(10,2),
    Category VARCHAR(100),
    Description VARCHAR(100),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);
