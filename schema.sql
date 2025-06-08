DROP DATABASE IF EXISTS CarDealershipDB;
CREATE DATABASE CarDealershipDB;
USE CarDealershipDB;


-- 1. Vehicles table
CREATE TABLE Vehicles (
    VIN VARCHAR(17) NOT NULL,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(20),
    price DECIMAL(10,2),
    mileage INT, 
    sold BIT NOT NULL,
    PRIMARY KEY(`VIN`)
);


-- 2. Dealership table
CREATE TABLE Dealerships (
    dealership_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(12),
    PRIMARY KEY(`dealership_id`)
);

-- 3. Inventory table 
CREATE TABLE Inventory (
    dealership_id INT NOT NULL,
    VIN VARCHAR(17) NOT NULL,
    PRIMARY KEY (dealership_id, VIN)
);

-- 4. SalesContracts table
CREATE TABLE Sales_contracts (
    sales_id INT,
    VIN VARCHAR(17) NOT NULL,
    sale_date DATE NOT NULL,
    sale_price DECIMAL(10,2) NOT NULL,
    customer_name VARCHAR(100),
    PRIMARY KEY (`sales_id`)
);

-- 5. LeaseContracts table 
CREATE TABLE Lease_contracts (
    lease_id INT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    lease_start_date DATE NOT NULL,
    lease_end_date DATE NOT NULL,
    monthly_payment DECIMAL(10,2) NOT NULL,
    customer_name VARCHAR(100),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

