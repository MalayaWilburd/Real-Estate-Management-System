-- SAMPLE DATA FOR REAL ESTATE MANAGEMET SYSTEM DATABASE


-- COMPANY SAMPLE DATA
INSERT INTO Company (Name, StreetAddress, City, State, Phone, Email) VALUES
('Company 1', '123 Main St', 'Little Rock', 'AR', '501-123-4510', 'contact1@company.com'),
('Company 2', '123 Main St', 'Dallas', 'TX', '501-123-4511', 'contact2@company.com'),
('Company 3', '123 Main St', 'Los Angeles', 'CA', '501-123-4512', 'contact3@company.com'),
('Company 4', '234 Main St', 'Kansas', 'MO', '501-234-5688', 'contact4@company.com');

-- PROPERTY SAMPLE DATA
INSERT INTO Property (CompanyID, ComplexName, StreetAddress, City, State, PropertyType, SqFt, PurchaseDate, 
PurchaseAmount, MortgageEMI) VALUES
(1, 'Complex 1', '123 Oak Rd', 'Little Rock', 'AR', 'Apartment', 5000, '2024-01-01', 500000.00, 2500.00),
(2, 'Complex 2', '456 Oak Rd', 'Dallas', 'TX', 'Apartment', 5000, '2024-01-01', 500000.00, 2500.00),
(3, 'Complex 3', '789 Oak Rd', 'Los Angeles', 'CA', 'Apartment', 5000, '2024-01-01', 500000.00, 2500.00),
(4, 'House 1', '80 South St.', 'Kansas', 'MO', 'House', 7000, '2025-01-01', 2000000.00, 500000.00),
(4, 'House 2', '789 Pine St', 'Little Rock', 'AR', 'Apartment', 4000, '2025-05-01', 400000.00, 2000.00),
(3, 'House 3', '456 South St.', 'Dallas', 'TX', 'House', 2500, '2025-02-01', 750000.00, 3500.00),
(2, 'Lakeside Villas', '303 Lakeview Dr', 'Dallas', 'TX', 'Apartment', 6200, '2024-07-01', 650000.00, 2700.00),
(1, 'Hilltop Homes', '400 Ridge Rd', 'Little Rock', 'AR', 'House', 5200, '2025-03-15', 450000.00, 2100.00),
(3, 'Palm Grove', '789 Beach Blvd', 'Los Angeles', 'CA', 'Apartment', 7500, '2024-09-10', 950000.00, 4800.00),
(2, 'Cityview Apartments', '123 Elm St', 'Houston', 'TX', 'Apartment', 5500, '2024-05-01', 600000.00, 2800.00),
(3, 'Sunset Apartments', '456 Sunset Blvd', 'San Francisco', 'CA', 'Apartment', 4800, '2024-06-15', 450000.00, 2200.00),
(4, 'Mountain View', '789 Mountain Rd', 'Denver', 'CO', 'House', 6000, '2025-01-01', 1200000.00, 4500.00),
(2, 'Riverside Complex', '234 River Rd', 'Austin', 'TX', 'Apartment', 7000, '2025-02-15', 850000.00, 3100.00),
(1, 'Pinewood Residence', '987 Pine St', 'New Orleans', 'LA', 'House', 8000, '2025-04-01', 1300000.00, 6000.00);

-- UNIT SAMPLE DATA
INSERT INTO Unit (PropertyID, Rooms, Baths, Garage, Stories, FloorNumber, Type, unitNumber) VALUES
(1, 1, 1.0, FALSE, NULL, 1, 'Apartment Unit', 'A11'),
(2, 4, 1.0, FALSE, NULL, 1, 'Apartment Unit', 'A12'),
(3, 2, 2.0, FALSE, NULL, 1, 'Apartment Unit', 'A13'),
(4, 2, 2.5, TRUE, 2, NULL, 'House', null), -- House (no floor/unit number needed)
(5, 3, 3, TRUE, 1, NULL, 'House', null),
(6, 5, 3, FALSE, 2, NULL, 'House', null),

-- Lakeside Villas (Apartment)
(7, 2, 1.5, FALSE, NULL, 2, 'Apartment Unit', 'B201'),
(7, 1, 1.0, FALSE, NULL, 1, 'Apartment Unit', 'B102'),

-- Hilltop Homes (House)
(8, 4, 3.0, TRUE, 1, NULL, 'House', null),

-- Palm Grove (Apartment)
(9, 3, 2.0, FALSE, NULL, 3, 'Apartment Unit', 'C301'),
(9, 2, 1.5, FALSE, NULL, 2, 'Apartment Unit', 'C202'),
(2, 3, 2.0, TRUE, 1, NULL, 'Apartment Unit', 'A101'),
(2, 1, 1.0, FALSE, NULL, 1, 'Apartment Unit', 'A102'),
(3, 2, 2.0, TRUE, 2, NULL, 'House', null), -- House (no floor/unit number needed)
(4, 3, 2.5, TRUE, 1, NULL, 'Apartment Unit', 'B103'),
(5, 2, 2.0, FALSE, NULL, 2, 'Apartment Unit', 'C201'),
(6, 4, 3.0, TRUE, 2, NULL, 'House', null), -- House (no floor/unit number needed)
(7, 3, 2.5, TRUE, 2, NULL, 'Apartment Unit', 'D102'),
(8, 4, 3.5, TRUE, 2, NULL, 'Apartment Unit', 'E201'),
(9, 2, 2.0, FALSE, NULL, 3, 'Apartment Unit', 'F301'),
(10, 5, 4.0, TRUE, 3, NULL, 'House', null), -- House (no floor/unit number needed)

-- Complex 10: Cityview Apartments (Houston, TX)
(10, 2, 1.5, FALSE, NULL, 1, 'Apartment Unit', 'CV101'),
(10, 3, 2.0, TRUE, NULL, 2, 'Apartment Unit', 'CV201'),
(10, 1, 1.0, FALSE, NULL, 3, 'Apartment Unit', 'CV301'),

-- Complex 11: Sunset Apartments (San Francisco, CA)
(11, 2, 1.5, FALSE, NULL, 1, 'Apartment Unit', 'SS101'),
(11, 2, 2.0, FALSE, NULL, 2, 'Apartment Unit', 'SS201'),
(11, 3, 2.5, TRUE, NULL, 3, 'Apartment Unit', 'SS301'),

-- Complex 12: Mountain View (Denver, CO) - It's a House
(12, 4, 3.0, TRUE, 2, NULL, 'House', null),

-- Complex 13: Riverside Complex (Austin, TX)
(13, 2, 1.5, FALSE, NULL, 1, 'Apartment Unit', 'RC101'),
(13, 2, 2.0, FALSE, NULL, 2, 'Apartment Unit', 'RC201'),
(13, 3, 2.5, TRUE, NULL, 3, 'Apartment Unit', 'RC301'),

-- Complex 14: Pinewood Residence (New Orleans, LA) - It's a House
(14, 5, 4.0, TRUE, 2, NULL, 'House', null);


-- TENANT SAMPLE DATA
INSERT INTO Tenant (FirstName, LastName, Email, Phone) VALUES
('John', 'Miller', 'johnm@email.com', '501-555-0300'),
('Sara', 'Nguyen', 'saran@email.com', '501-555-0301'),
('Carlos', 'Diaz', 'carlosd@email.com', '501-555-0302'),
('Olivia', 'Reed', 'oliviar@email.com', '501-555-0303'),
('Stacy', 'Stevens', 'tenant1@email.com', '501-555-0110'),
('Julius', 'Cortez', 'tenant2@email.com', '501-555-0111'),
('Michael', 'Butler', 'tenant3@email.com', '501-555-0112'),
('Kelsey', 'Shannon', 'tenant4@gmail.com', '501-345-0987'),
('David', 'Patterson', 'davidp@email.com', '501-555-0200'),
('Emily', 'Clark', 'emilyc@email.com', '501-555-0201'),
('Liam', 'Johnson', 'liamj@email.com', '901-555-1111'),
('Sophia', 'Martinez', 'sophiam@email.com', '602-555-2222'),
('Ethan', 'Walker', 'ethanw@email.com', '303-555-3333'),
('Ava', 'King', 'avak@email.com', '206-555-4444'),
('Mason', 'Wright', 'masonw@email.com', '901-555-5555'),
('Noah', 'Evans', 'noahe@email.com', '479-555-1200'),
('Isabella', 'Hughes', 'isah@email.com', '479-555-1201'),
('Lucas', 'Ramirez', 'lucasr@email.com', '479-555-1202'),
('Mila', 'Gonzales', 'milag@email.com', '479-555-1203'),
('James', 'Robinson', 'jamesr@email.com', '479-555-1204'),
('Emma', 'Davis', 'emma.d@email.com', '501-555-0304'),
('Olivia', 'Brown', 'olivia.b@email.com', '501-555-0305'),
('Sophia', 'Taylor', 'sophia.t@email.com', '501-555-0306'),
('Isabella', 'Harris', 'isabella.h@email.com', '501-555-0307'),
('Liam', 'Scott', 'liam.s@email.com', '501-555-0308'),
('Mason', 'Lopez', 'mason.l@email.com', '501-555-0309'),
('Noah', 'Gonzalez', 'noah.g@email.com', '501-555-0310'),
('Ava', 'Wilson', 'ava.w@email.com', '501-555-0311'),
('Mia', 'Moore', 'mia.m@email.com', '501-555-0312'),
('Zoe', 'Roberts', 'zoe.r@email.com', '501-555-0313');

-- LEASE SAMPLE DATA
INSERT INTO Lease (TenantID, UnitID, StartDate, EndDate, MonthlyRate, IsActive) VALUES
(1, 3, '2022-03-01', '2023-02-28', 800.00, FALSE),
(2, 4, '2021-09-01', '2022-08-31', 750.00, FALSE),
(3, 5, '2022-01-15', '2022-12-31', 950.00, FALSE),
(4, 6, '2020-07-01', '2021-06-30', 780.00, FALSE),
(5, 1, '2023-01-01', '2023-12-31', 900.00, FALSE),
(6, 2, '2022-06-01', '2023-05-31', 850.00, FALSE),
(7, 1, '2025-01-01', '2025-12-31', 950.00, TRUE),
(8, 2, '2025-01-01', '2025-12-31', 970.00, TRUE),
(9, 3, '2025-01-01', '2025-12-31', 990.00, TRUE),
(10, 4, '2025-02-01', '2026-01-31', 980.00, TRUE),
(11, 5, '2025-06-01', '2026-05-31', 1100.00, TRUE),
(12, 6, '2025-06-15', '2026-06-14', 1150.00, TRUE),
(13, 4, '2025-07-01', '2026-06-30', 1300.00, TRUE),
(14, 2, '2025-08-01', '2026-07-31', 980.00, TRUE),
(15, 3, '2025-08-01', '2026-07-31', 990.00, TRUE),
(16, 7, '2025-06-01', '2026-05-31', 980.00, TRUE),
(17, 7, '2025-07-01', '2026-06-30', 850.00, TRUE),
(18, 8, '2025-07-15', '2026-07-14', 1400.00, TRUE),
(19, 9, '2025-08-01', '2026-07-31', 1350.00, TRUE);

-- RENT PAYMENT SAMPLE DATA
INSERT INTO RentPayment (LeaseID, PaymentDate, Amount, PaymentMethod, Status) VALUES
(1, '2025-01-01', 950.00, 'Cash', 'Paid'),
(1, '2025-02-01', 950.00, 'Cash', 'Paid'),
(1, '2025-03-01', 950.00, 'Cash', 'Paid'),
(1, '2025-04-01', 950.00, 'Cash', 'Paid'),
(1, '2025-05-01', 1050.00, 'Credit Card', 'Paid'),
(1, '2025-06-01', 1050.00, 'Credit Card', 'Paid'),

(2, '2025-01-01', 970.00, 'Check', 'Paid'),
(2, '2025-02-01', 970.00, 'Check', 'Paid'),
(2, '2025-03-01', 970.00, 'Check', 'Paid'),
(2, '2025-04-01', 970.00, 'Check', 'Paid'),
(2, '2025-06-01', 1150.00, 'Bank Transfer', 'Paid'),
(2, '2025-07-01', 1150.00, 'Bank Transfer', 'Unpaid'),

(3, '2025-01-01', 990.00, 'Cash', 'Paid'),
(3, '2025-02-01', 990.00, 'Cash', 'Paid'),
(3, '2025-03-01', 990.00, 'Cash', 'Paid'),
(3, '2025-04-01', 990.00, 'Cash', 'Unpaid'),
(3, '2025-07-01', 1000.00, 'Cash', 'Paid'),
(3, '2025-08-01', 1000.00, 'Cash', 'Paid'),

(4, '2025-02-01', 980.00, 'Cash', 'Paid'),
(4, '2025-03-01', 980.00, 'Cash', 'Paid'),
(4, '2025-04-01', 980.00, 'Cash', 'Unpaid'),
(4, '2025-08-01', 5000.00, 'Check', 'Unpaid'),
(5, '2025-06-01', 1100.00, 'Bank Transfer', 'Paid'),
(5, '2025-07-01', 1100.00, 'Bank Transfer', 'Paid'),
(6, '2025-06-15', 575.00, 'Cash', 'Paid'),  -- partial month
(6, '2025-07-15', 1150.00, 'Cash', 'Paid'),

(7, '2025-07-01', 1300.00, 'Credit Card', 'Paid'),
(7, '2025-08-01', 1300.00, 'Credit Card', 'Unpaid'),

(8, '2025-08-01', 980.00, 'Check', 'Paid'),
(9, '2025-08-01', 990.00, 'Cash', 'Paid'),
(11, '2025-06-01', 980.00, 'Cash', 'Paid'),
(11, '2025-07-01', 980.00, 'Cash', 'Paid'),

(12, '2025-10-01', 980.00, 'Credit Card', 'Paid'),
(12, '2025-11-01', 980.00, 'Bank Transfer', 'Unpaid'),
(12, '2025-12-01', 980.00, 'Cash', 'Paid'),
-- Lease 13
(13, '2025-10-01', 1290.00, 'Cash', 'Unpaid'),
(13, '2025-11-01', 1290.00, 'Bank Transfer', 'Unpaid'),
(13, '2025-12-01', 1290.00, 'Credit Card', 'Paid'),
-- Lease 14
(14, '2025-11-01', 1040.00, 'Bank Transfer', 'Paid'),
(14, '2025-12-01', 1040.00, 'Credit Card', 'Paid'),
(14, '2026-01-01', 1040.00, 'Cash', 'Unpaid'),
-- Lease 15
(15, '2025-11-01', 1050.00, 'Credit Card', 'Paid'),
(15, '2025-12-01', 1050.00, 'Bank Transfer', 'Paid'),
(15, '2026-01-01', 1050.00, 'Cash', 'Paid'),
-- Lease 16
(16, '2025-12-01', 1150.00, 'Bank Transfer', 'Unpaid'),
(16, '2026-01-01', 1150.00, 'Credit Card', 'Paid'),
(16, '2026-02-01', 1150.00, 'Cash', 'Paid'),
-- Lease 17
(17, '2025-12-01', 920.00, 'Cash', 'Unpaid'),
(17, '2026-01-01', 920.00, 'Bank Transfer', 'Paid'),
(17, '2026-02-01', 920.00, 'Credit Card', 'Unpaid'),
-- Lease 18
(18, '2025-12-01', 1200.00, 'Credit Card', 'Paid'),
(18, '2026-01-01', 1200.00, 'Bank Transfer', 'Paid'),
(18, '2026-02-01', 1200.00, 'Cash', 'Paid'),
-- Lease 19
(19, '2025-12-01', 1500.00, 'Cash', 'Paid'),
(19, '2026-01-01', 1500.00, 'Credit Card', 'Paid'),
(19, '2026-02-01', 1500.00, 'Bank Transfer', 'Paid');

-- TENANT HISTORY SAMPLE DATA
INSERT INTO TenantHistory (TenantID, PropertyID, MoveOutDate, MoveOutReason, Notes) VALUES
(1, 1, '2024-12-31', 'Relocation', 'Moved to another state for job'),
(2, 2, '2025-01-15', 'Rent Increase', 'Couldn’t afford the new rate'),
(3, 3, '2025-02-01', 'Purchased Home', 'Bought their own house'),
(4, 4, '2025-02-28', 'Maintenance Issues', 'Complained about frequent plumbing issues'),
(5, 1, '2025-04-30', 'Job Transfer', 'Relocated to New York for new position'),
(3, 2, '2024-05-31', 'Rent Too High', 'Moved to cheaper apartment'),
(6, 2, '2024-06-01', 'Eviction', 'Repeated late payments'),
(10, 5, '2024-05-31', 'Lease Ended', 'Did not renew lease'),
(2, 3, '2024-07-31', 'Job Relocation', 'Moved to San Francisco'),
(4, 1, '2024-06-30', 'Family Reasons', 'Returned to live with family'),
(7, 6, '2024-06-30', 'Lease Ended', 'Moved to family house'),
(8, 5, '2024-06-30', 'Noise Complaints', 'Multiple neighbor reports'),
(10, 3, '2024-07-15', 'Maintenance Delay', 'Air conditioning issues not resolved'),
(6, 1, '2024-08-01', 'Personal Reasons', 'Moved back to hometown'),
(9, 4, '2024-06-30', 'Bought Condo', 'Purchased condo nearby'),
(11, 6, '2024-07-31', 'Eviction', 'Violation of lease terms'),
(12, 7, '2024-08-01', 'Job Transfer', 'Moved to Chicago'),
(13, 8, '2024-07-15', 'Lease Ended', 'Chose not to renew lease'),
(14, 9, '2024-07-31', 'Maintenance Issues', 'Frequent power outages'),
(15, 9, '2024-07-31', 'Moved In With Partner', 'No longer needed separate unit'),
(16, 1, '2024-08-31', 'Relocation', 'Moved to another city for grad school'),
(17, 2, '2024-08-31', 'Personal Reasons', 'Moved closer to family'),
(18, 3, '2024-08-31', 'Rent Too High', 'Downgraded to save money'),
(19, 5, '2024-08-31', 'Noise Complaints', 'Disturbances from neighbors'),
(20, 6, '2024-08-31', 'Safety Concerns', 'Did not feel safe in area');


-- EXPENSES (January to April)
INSERT INTO Expenses (CompanyID, Date, Amount, Category, Description) VALUES
(1, '2025-01-01', 399.07, 'Maintenance', 'General property upkeep'),
(2, '2025-01-01', 875.51, 'Utilities', 'Water and electricity bills'),
(3, '2025-01-01', 846.70, 'Repairs', 'Roof leak repairs'),
(4, '2025-01-01', 1000.00, 'Property Tax', 'Quarterly property tax payment'),

(1, '2025-02-01', 410.25, 'Insurance', 'Property insurance premium'),
(2, '2025-02-01', 890.30, 'Maintenance', 'Landscaping and lawn care'),
(3, '2025-02-01', 860.90, 'Repairs', 'HVAC system repair'),
(4, '2025-02-01', 1010.00, 'Utilities', 'Water and gas bills'),

(1, '2025-03-01', 420.10, 'Maintenance', 'Pest control service'),
(2, '2025-03-01', 905.40, 'Insurance', 'Annual insurance renewal'),
(3, '2025-03-01', 870.20, 'Repairs', 'Plumbing system fixes'),
(4, '2025-03-01', 1020.00, 'Property Tax', 'Quarterly property tax payment'),

(1, '2025-04-01', 430.00, 'Utilities', 'Electricity and waste management'),
(2, '2025-04-01', 920.00, 'Maintenance', 'Parking lot resurfacing'),
(3, '2025-04-01', 880.00, 'Repairs', 'Window replacements'),
(4, '2025-04-01', 1030.00, 'Insurance', 'Additional coverage premium'),

(1, '2025-05-01', 500.00, 'Maintenance', 'Elevator service repairs'),
(2, '2025-05-01', 780.00, 'Utilities', 'Water and gas'),
(3, '2025-05-01', 1500.00, 'Major Repairs', 'Roof replacement for building A'),
(4, '2025-05-01', 1300.00, 'Insurance', 'Annual premium payment'),

(1, '2025-06-01', 460.00, 'Maintenance', 'Fire alarm inspection'),
(2, '2025-06-01', 950.00, 'Utilities', 'June utility bill'),
(3, '2025-06-01', 890.00, 'Repairs', 'Broken fence repair'),

(4, '2025-07-01', 1400.00, 'Property Tax', 'Quarterly tax'),
(1, '2025-07-01', 490.00, 'Insurance', 'Flood coverage addition'),
(2, '2025-07-01', 800.00, 'Maintenance', 'Driveway paving'),

(3, '2025-08-01', 1600.00, 'Major Repairs', 'Structural inspection and fixes'),
(4, '2025-08-01', 1350.00, 'Insurance', 'Storm damage insurance update'),
(1, '2025-08-01', 520.00, 'Utilities', 'Electricity and trash removal'),
(2, '2025-06-15', 1200.00, 'Renovation', 'Updated kitchen fixtures'),
(1, '2025-07-01', 620.00, 'Pest Control', 'Quarterly spraying service'),
(3, '2025-07-10', 2100.00, 'Major Repairs', 'Foundation repair work'),
(4, '2025-08-01', 1500.00, 'Property Tax', 'Late tax penalty fee'),
(1, '2023-01-15',  150.00, 'Maintenance', 'Fixing plumbing issues in unit A1.'),
(1, '2023-01-01', 100.00, 'Utilities',  'Water bill for Riverside Apartments.'),
(2, '2023-01-10',  200.00, 'Maintenance', 'Repairing roof leaks at Pinewood Heights.'),
(3, '2023-01-01', 120.00, 'Utilities', 'Electricity bill for Hillcrest Towers.'),
(4, '2023-01-05',  250.00, 'Maintenance', 'Repainting exterior of Sunnydale Homes.'),
(3,  '2023-01-01', 110.00, 'Utilities', 'Gas bill for Maple Grove Complex.'),
(4,  '2023-01-12', 180.00, 'Maintenance', 'Repairing HVAC units at Cedar Ridge Estate.'),
(1, '2023-01-01', 130.00, 'Utilities', 'Water bill for Sunnydale Homes.'),
(2, '2023-01-08', 160.00,'Maintenance', 'Fixing broken elevator at Riverside Apartments.'),
(3, '2023-01-01',  140.00, 'Utilities', 'Electricity bill for Cedar Ridge Estate.');