-- USE REAL ESTATE MANAGEMENT SYSTEM DATABASE
USE REMS;

-- Retrieve all information about the previous tenant for a given house or apartment.
SELECT t.TenantID, t.FirstName, t.LastName, t.Email, t.Phone, th.PropertyID, th.MoveOutDate, th.MoveOutReason, th.Notes
FROM TenantHistory th
JOIN Tenant t ON th.TenantID = t.TenantID
WHERE th.PropertyID = 6;

-- Retrieve the information of the current tenant for a given house or apartment.
SELECT t.TenantID, t.FirstName, t.LastName, t.Email, t.Phone, l.UnitID, l.StartDate, l.EndDate, l.MonthlyRate
FROM Lease l
JOIN Tenant t ON l.TenantID = t.TenantID
WHERE l.IsActive = TRUE
AND l.UnitID = 8;


-- Retrieve all information about the current tenants for a given apartment complex.
SELECT t.TenantID, t.FirstName, t.LastName, t.Email, t.Phone, l.UnitID, u.UnitNumber, u.FloorNumber, l.StartDate, 
l.EndDate, l.MonthlyRate
FROM Lease l
JOIN Tenant t ON l.TenantID = t.TenantID
JOIN Unit u ON l.UnitID = u.UnitID
JOIN Property p ON u.PropertyID = p.PropertyID
WHERE l.IsActive = TRUE
AND p.ComplexName = 'House 1';

-- List all vacant/empty apartments/houses for a given company.
SELECT p.CompanyID, c.Name AS CompanyName, u.UnitID, p.ComplexName, p.StreetAddress AS PropertyAddress, u.type,
u.Rooms, u.Baths, u.Garage, u.Stories, u.FloorNumber
FROM Lease l
JOIN Unit u ON l.UnitID = u.UnitID
JOIN Property p ON u.PropertyID = p.PropertyID
JOIN Company c ON p.CompanyID = c.CompanyID
WHERE l.IsActive = FALSE AND C.name='Company 3';

-- Retrieve information on tenants who have not paid the current month's rent for a given apartment complex.
SELECT t.TenantID, t.FirstName, t.LastName, t.Email, t.Phone, p.ComplexName, u.UnitNumber, 
rp.PaymentDate, rp.Amount, rp.Status
FROM Lease l
JOIN Tenant t ON l.TenantID = t.TenantID
JOIN Unit u ON l.UnitID = u.UnitID
JOIN Property p ON u.PropertyID = p.PropertyID
LEFT JOIN RentPayment rp ON rp.LeaseID = l.LeaseID
WHERE p.ComplexName = 'Complex 1' AND (rp.Status = 'Unpaid' OR rp.PaymentDate IS NULL)
AND l.IsActive = TRUE;

-- Retrieve information on tenants who have not paid the current month's rent for a given company.
SELECT t.TenantID, t.FirstName, t.LastName, t.Email, t.Phone, p.StreetAddress, u.type as 'Type',
rp.PaymentDate, rp.Amount, rp.Status, c.Name AS CompanyName
FROM RentPayment rp
JOIN Lease l ON rp.LeaseID = l.LeaseID
JOIN Unit u ON l.UnitID = u.UnitID
JOIN Property p ON u.PropertyID = p.PropertyID
JOIN Tenant t ON l.TenantID = t.TenantID
JOIN Company c ON p.CompanyID = c.CompanyID
WHERE rp.Status = 'Unpaid' AND rp.PaymentDate BETWEEN '2025-04-01' AND '2025-04-30' AND c.CompanyID = 4; 


-- Retrieve all income and expenses within a specified time range for a given apartment complex/house.
SELECT 'Income' AS Type, rp.PaymentDate AS Date, rp.Amount AS Amount, NULL AS Category, NULL AS Description
FROM RentPayment rp
JOIN Lease l ON rp.LeaseID = l.LeaseID
JOIN Unit u ON l.UnitID = u.UnitID
JOIN Property p ON u.PropertyID = p.PropertyID
WHERE p.ComplexName = 'Complex 2'  -- Replace with the desired complex/house name
AND rp.PaymentDate BETWEEN '2025-01-01' AND '2025-04-30'  -- Replace with your time range

UNION ALL

SELECT 'Expense' AS Type, e.Date AS Date, e.Amount AS Amount, e.Category AS Category, e.Description AS Description
FROM Expenses e
JOIN Property p ON e.CompanyID = p.CompanyID
WHERE p.ComplexName = 'Complex 2' 
AND e.Date BETWEEN '2025-01-01' AND '2025-04-30'  
ORDER BY Date;

-- Retrieve all expenses for the specified company only.
SELECT *
FROM Expenses
WHERE CompanyID = 1;


-- Retrieve expenses categorized by type for a given apartment complex/house within a specified date range, grouped by month.
SELECT DATE_FORMAT(e.Date, '%Y-%m') AS Month, e.Category, SUM(e.Amount) AS TotalAmount
FROM Expenses e
JOIN Property p ON e.CompanyID = p.CompanyID
WHERE p.PropertyID = '3' AND e.Date BETWEEN '2025-01-01' AND '2025-02-01' 
GROUP BY Month, e.Category
ORDER BY Month, e.Category;

-- Display the complete rental history for a given apartment/house.
SELECT p.ComplexName, p.PropertyType, u.UnitNumber, t.FirstName AS TenantFirstName, t.LastName AS TenantLastName,
l.StartDate AS LeaseStartDate, l.EndDate AS LeaseEndDate
FROM Property p
JOIN Unit u ON p.PropertyID = u.PropertyID
JOIN Lease l ON u.UnitID = l.UnitID
JOIN Tenant t ON l.TenantID = t.TenantID
WHERE p.PropertyID = 2 
ORDER BY l.StartDate;

-- List the companies along with the count of House/Apartment Units owned by each company. 
-- Include columns 'CompanyName', 'Type' and 'Unit Counts' in your result.
SELECT company.name AS 'Company Name', unit.Type AS 'Type', COUNT(unit.unitID) AS 'Unit Counts'
FROM Company
JOIN Property ON company.companyID = property.companyID
JOIN Unit ON property.propertyID = unit.propertyID
GROUP BY unit.type, company.name, company.companyid;

