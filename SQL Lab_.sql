CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
-- Drop the tables if they exist
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;

-- Create the cars table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);
-- Create the salespersons table
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20)
);
-- Create the customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    address TEXT
);
-- Create the invoices table
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    salesperson_id INT,
    car_id INT,
    invoice_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);
SHOW TABLES;
DESCRIBE cars;
DESCRIBE salespersons;
DESCRIBE customers;
DESCRIBE invoices;