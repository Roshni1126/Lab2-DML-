CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(100) NOT NULL,
    Last_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Hire_Date DATE
);
INSERT INTO Employee
(Employee_ID, First_Name, Last_Name, Email, Hire_Date)
VALUES
(100, 'Pranjul', 'Shukla', 'pranjulshukla123@gmail.com', '2026-08-17'),
(101, 'Mayur', 'Gowda', 'mayurgowda@gmail.com', '2026-08-17'),
(102, 'Sanjana', 'Gowda', 'sanjanagowda@gmail.com', '2026-08-17'),
(103, 'Sudhanva', 'YS', 'sudhanvays@gmail.com', '2026-08-17'),
(104, 'Sivesh', 'Kumar', 'siveshkumar@gmail.com', '2026-08-17');
SELECT * FROM Employee;
UPDATE Employee
SET Email = 'pranjul.new@gmail.com'
WHERE Employee_ID = 100;
DELETE FROM Employee
WHERE Employee_ID = 104;
SELECT * FROM Employee;


CREATE TABLE Department (
    Department_Name VARCHAR(100) NOT NULL,
    Department_ID VARCHAR(100) PRIMARY KEY,
    Manager_ID VARCHAR(100) NOT NULL,
    Salary VARCHAR(100) NOT NULL
);
INSERT INTO Department
(Department_Name, Department_ID, Manager_ID, Salary)
VALUES
('SOCSE', 'CS001', '0011', 100000),
('SOB', 'CS832', '0012', 95000),
('SOFMA', 'CS232', '0013', 200000),
('SOCSE', 'CS972', '0014', 90000),
('SDI', 'CS733', '0015', 80000);
SELECT * FROM Department;

UPDATE Department
SET Department_Name = 'SOCSE'
WHERE Department_ID = 'CS832';
DELETE FROM Department
WHERE Department_ID = 'CS733';
SELECT * FROM Department;


CREATE TABLE Assest (
    Assest_ID VARCHAR(100) PRIMARY KEY,
    Serial_Number VARCHAR(100) NOT NULL,
    Device_Type VARCHAR(100) NOT NULL,
    Return_Status VARCHAR(100) NOT NULL
);
INSERT INTO Assest
(Assest_ID, Serial_Number, Device_Type, Return_Status)
VALUES
('0001', 'C01', 'Laptop', 'Active'),
('0002', 'C02', 'PC', 'Active'),
('0003', 'C03', 'TAB', 'Active'),
('0004', 'C04', 'Laptop', 'Active'),
('0005', 'C05', 'MacBook', 'Active');
SELECT * FROM Assest;

UPDATE Assest
SET Return_Status = 'Returned'
WHERE Assest_ID = '0005';
DELETE FROM Assest
WHERE Assest_ID = '0004';
SELECT * FROM Assest;


CREATE TABLE Shifts (
    Shift_ID INT PRIMARY KEY,
    Shift_Name VARCHAR(100) NOT NULL,
    Start_Time VARCHAR(100) NOT NULL,
    End_Time VARCHAR(100) NOT NULL,
    Overtime VARCHAR(100) NOT NULL
);
INSERT INTO Shifts
(Shift_ID, Shift_Name, Start_Time, End_Time, Overtime)
VALUES
(1, '1ST', '4AM', '3PM', '8'),
(2, '2ND', '1PM', '12AM', '3'),
(3, '1ST', '4AM', '3PM', '7'),
(4, 'General', '7AM', '7PM', '8'),
(5, '2ST', '1PM', '12AM', '2');
SELECT * FROM Shifts;

UPDATE Shifts
SET End_Time = '1AM'
WHERE Shift_ID = 5;
DELETE FROM Shifts
WHERE Shift_ID = 5;
SELECT * FROM Shifts;


CREATE TABLE Contacts (
    Employee_ID VARCHAR(100) PRIMARY KEY,
    Contact_Name VARCHAR(100) NOT NULL,
    Contact_No VARCHAR(100) NOT NULL,
    Alternate_No VARCHAR(100) NOT NULL
);
INSERT INTO Contacts
(Employee_ID, Contact_Name, Contact_No, Alternate_No)
VALUES
('100', 'Pranjul_Shukla', '3920184592', '4985157632'),
('101', 'Mayur_Gowda', '4985276359', '0913781929'),
('102', 'Sanjana_Gowda', '4910475828', '9634852167'),
('103', 'Sudhanva_YS', '1038462758', '7985641238'),
('104', 'Sivesh_Kumar', '8937288347', '7895421683');
SELECT * FROM Contacts;

UPDATE Contacts
SET Alternate_No = '9999999999'
WHERE Employee_ID = '102';
DELETE FROM Contacts
WHERE Employee_ID = '104';
SELECT * FROM Contacts;