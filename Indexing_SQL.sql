use studentdb;

CREATE TABLE students1 (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    major VARCHAR(50),
    gpa DECIMAL(3, 2),
    email VARCHAR(100),
    enrollment_date DATE
);

INSERT INTO students1 (student_id, first_name, last_name, major, gpa, email, enrollment_date)
VALUES
(1, 'John', 'Doe', 'Computer Science', 3.5, 'john.doe@university.edu', '2020-09-01'),
(2, 'Jane', 'Smith', 'Mathematics', 3.8, 'jane.smith@university.edu', '2019-09-01'),
(3, 'Emily', 'Jones', 'Physics', 3.9, 'emily.jones@university.edu', '2018-09-01'),
(4, 'Michael', 'Brown', 'Chemistry', 3.6, 'michael.brown@university.edu', '2021-09-01'),
(5, 'Sarah', 'Davis', 'Biology', 3.7, 'sarah.davis@university.edu', '2020-09-01');


CREATE INDEX idx_last_name
ON students1 (last_name);

	EXPLAIN SELECT *
	FROM students1
	WHERE last_name = 'Smith';

DROP INDEX idx_last_name ON students1;
EXPLAIN SELECT * FROM students1 WHERE last_name = 'Smith';




