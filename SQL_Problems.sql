use sql_problems;
#Create the Employee Table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    joining_date DATE,
    manager_id INT
);
#Insert Data in Employee Table
INSERT INTO Employees (id, name, department, salary, joining_date, manager_id) VALUES
(1, 'Alice', 'HR', 50000, '2023-01-15', NULL),
(2, 'Bob', 'IT', 70000, '2022-03-12', 1),
(3, 'Charlie', 'IT', 60000, '2023-05-20', 2),
(4, 'David', 'Finance', 65000, '2021-11-01', NULL),
(5, 'Eva', 'HR', 52000, '2023-07-18', 1),
(6, 'Frank', 'Finance', 64000, '2022-08-10', 4),
(7, 'Grace', 'IT', 70000, '2023-03-22', 2),
(8, 'Helen', 'Marketing', 58000, '2022-09-05', NULL),
(9, 'Ian', 'Marketing', 60000, '2023-06-25', 8),
(10, 'Jane', 'HR', 51000, '2022-04-10', 1);

#Create the Departmen Table and insert
CREATE Table Department(id INT PRIMARY KEY, name VARCHAR(250));
INSERT INTO Department(id, name) VALUES
(1,"HR"),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

#Create Table Customers and insert data
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    created_at DATE
);
#Create the Customers Table and insert data
INSERT INTO Customers (id, name, email, created_at) VALUES
(1, 'Rahul', 'rahul@example.com', '2023-01-10'),
(2, 'Sneha', 'sneha@example.com', '2023-02-15'),
(3, 'Arjun', 'arjun@example.com', '2023-03-20');

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
#Create the Orders Table and insert data
INSERT INTO Orders (id, customer_id, product_id, order_date, amount) VALUES
(1, 1, 101, '2023-01-15', 1500.00),
(2, 1, 102, '2023-02-17', 3000.00),
(3, 2, 103, '2023-03-22', 4500.00),
(4, 3, 101, '2023-04-10', 1500.00),
(5, 2, 102, '2023-05-25', 3000.00);

#Create the Attendance Table and insert data
CREATE TABLE Attendance (
    id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20)
);

INSERT INTO Attendance (id, employee_id, attendance_date, status) VALUES
(1, 1, '2023-04-01', 'Present'),
(2, 1, '2023-04-02', 'Present'),
(3, 1, '2023-04-03', 'Absent'),
(4, 2, '2023-04-01', 'Present'),
(5, 2, '2023-04-02', 'Present'),
(6, 2, '2023-04-03', 'Present'),
(7, 3, '2023-04-01', 'Absent'),
(8, 3, '2023-04-02', 'Absent'),
(9, 3, '2023-04-03', 'Present');
