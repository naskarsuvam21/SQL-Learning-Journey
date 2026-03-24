-- Day 1: SQL Fundamentals & Table Creation
-- Based on handwritten notes from 23/03/26

-- 1. Create a new database
CREATE DATABASE wscube;
USE wscube;

-- 2. Create 'users' table with proper data types
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    password VARCHAR(100),
    contact VARCHAR(15),
    address TEXT,
    dob DATE,
    gender ENUM('M', 'F', 'Other'),
    status BOOLEAN DEFAULT 1
);

-- 3. Insert sample data
INSERT INTO users (id, name, email, password, contact, address, dob, gender, status)
VALUES (1, 'John', 'john123@gmail.com', '5234', '+9198745536', 'Jodhpur', '1999-01-10', 'M', 1);

-- 4. Verify data retrieval
SELECT * FROM users;
