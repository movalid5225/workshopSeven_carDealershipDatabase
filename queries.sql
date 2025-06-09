-- 1.Get all dealerships
SELECT * FROM dealerships;

-- 2.Find all vehicles for dealership with id = 1
SELECT v.*
FROM Vehicles v
JOIN Inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 1;

-- 3.Find a car by VIN
SELECT * FROM vehicles WHERE VIN = '1HGCM82633A004352';

-- 4.Find the dealership where a certain car is located, by VIN
SELECT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '1HGCM82633A004352';

-- 5.Find all dealerships that have a certain car type 
SELECT DISTINCT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.VIN = v.VIN
WHERE v.make = 'Honda';

-- 6.Get all sales information for a specific dealer for a specific date range 
SELECT sc.*
FROM sales_contracts sc
JOIN inventory i ON sc.VIN = i.VIN
WHERE i.dealership_id = 2
AND sc.sale_date BETWEEN '2024-01-01' AND '2024-06-01';

 

 
