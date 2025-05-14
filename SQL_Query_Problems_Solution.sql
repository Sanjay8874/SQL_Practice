use sql_problems;
#Create the Employee Table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10 , 2 ),
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

CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

INSERT INTO Products (id, name, price) VALUES
(101, 'Laptop', 1500.00),
(102, 'Mobile', 3000.00),
(103, 'Tablet', 4500.00),
(104, 'Monitor', 2000.00);

#Retrieve all columns from a table.
Select * from employees;
select * from department;
select * from products;
select * from attendance;
select * from customers;
select * from orders;

#Get names of all employees working in a specific department.
select name from employees where department="HR";


#Count the number of employees in each department.
select count(name) from employees where department="HR";
SELECT department, COUNT(*) AS employee_count
FROM Employees
GROUP BY department;

########################################################################################################
#Count the employee salary more then 50000
select department AS departmant_name, count(*) AS employee_count from employees where salary>50000 GROUP BY department;


#Get the average salary of all employees.
SELECT AVG(salary) as average_salary from employees;

#Get the average salary of all employees in each department.
SELECT department, AVG(salary) from employees group by department;

#Find employees who joined in a specific year.
SELECT name, joining_date from employees where joining_date LIKE '%2023%';

SELECT name, joining_date
FROM Employees
WHERE YEAR(joining_date) = 2023;

#Find employees whose name starts with a specific letter.
SELECT name from employees where name LIKE 'A%';

#Get departments that have more than 5 employees.
SELECT department, COUNT(*) AS employee_count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 2;

#Fetch duplicate records from a table.
SELECT name, department, COUNT(*) AS count
FROM Employees
GROUP BY name, department
HAVING COUNT(*) > 1;

#Fetch employee details with the second highest salary.

#OFFSET will skip the first row--> first is will skip and then limit the row
SELECT DISTINCT salary
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

#find employee detail for second highest salary
SELECT *
FROM Employees
WHERE salary = (
    SELECT DISTINCT salary
    FROM Employees
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);

SELECT *
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employees
    )
);
#######################################################################################################
