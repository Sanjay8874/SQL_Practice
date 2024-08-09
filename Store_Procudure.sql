use studendb;

CREATE TABLE students2 (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    major VARCHAR(50),
    gpa DECIMAL(3, 2)
);

INSERT INTO students2 (student_id, first_name, last_name, major, gpa)
VALUES
(1, 'John', 'Doe', 'Computer Science', 3.5),
(2, 'Jane', 'Smith', 'Mathematics', 3.8),
(3, 'Emily', 'Jones', 'Physics', 3.9);

DELIMITER //

CREATE PROCEDURE GetStudentGPA (IN studentId INT, OUT studentGPA DECIMAL(3, 2))
BEGIN
    SELECT gpa INTO studentGPA
    FROM students2
    WHERE student_id = studentId;
END //
	  
      
DELIMITER ;



-- Declare a variable to hold the output 
SET @gpa = 0;

-- Call the stored procedure
CALL GetStudentGPA(1, @gpa);

-- Retrieve the value from the output variable
SELECT @gpa;

