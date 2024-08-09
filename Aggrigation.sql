-- Aggrigate
-- Aggrigate funtion

-- 1-> SUM(), 2-> COUNT(), 3-> MAX(), 4-> MIN(), 5-> AVG()

-- Create Table

create table empdb.employeeSalary(
emp_id int PRIMARY KEY,
emp_Salary BIGINT
);

-- Insert value in table employeeSalary
INSERT INTO empdb.employeeSalary(emp_id,emp_Salary) 
VALUES
(1, 20.0),
(2, 30.0),
(3, 40.0),
(4, 50.0),
(5, 60.0)
;



select * from empdb.employee;
select * from empdb.employeeSalary;

INSERT INTO empdb.employee(emp_id, emp_name, emp_phone, emp_email)
VALUES
(3, "AJAY YADAV", "123654789", "kdfjh@gmail.com"),
(4, "UADAY YADAV", "1236547890", "kdkdrhtkfjh@gmail.com"),
(5, "Sandeep YADAV", "1236547891", "kmncvdfjh@gmail.com")
;

-- For better practice add sone more in both table
INSERT INTO empdb.employee(emp_id, emp_name, emp_phone, emp_email)
VALUES
(6, "sunil YADAV", "1236547894", "kderfjh@gmail.com"),
(7, "sunil Yadav", "845744567", "ehferjhfu@Wgmail.com"),
(8, "Anil Yadav","1236547894" ,"dkjsfgh@gmail.com" ),
(9, "pavan Yadav", "8467949567", "kdjghfjngkfn@gmail.com"),
(10, "Ankoos Yadav", "846548677949567", "kdjghfkuerhgjngkfn@gmail.com");


INSERT INTO empdb.employeeSalary(emp_id,emp_Salary) 
VALUES
(6, 100.0),
(7, 20.0),
(8, 10.0),
(9, 30.0),
(10, 120.0)
;

-- COUNT()

select COUNT(emp_Salary) from 
empdb.employeeSalary
where
emp_Salary = 20;


select MAX(emp_Salary) from 
empdb.employeeSalary
where emp_Salary<(select MAX(emp_Salary) from empdb.employeesalary);



