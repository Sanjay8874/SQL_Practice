INSERT INTO studentdb.students(std_Id, std_FirstName, std_LastName, std_phone, std_Email) VALUES
(1,"Sanjay", "Yadav", "0123456789", "sdfsd@gmail.com"),
(2,"AJAY", "Yadav", "01234567891", "sdwefsd@gmail.com"),
(3,"Uday", "Yadav", "01234567892", "wesdfsd@gmail.com"),
(4,"Vinod", "Yadav", "01234567893", "rtsdfsd@gmail.com"),
(5,"Sandep", "Yadav", "01234567894", "skjdfnsdfsd@gmail.com");


INSERT INTO studentdb.familydetail(std_Id, FatherName, Address ) VALUES 
(2,"Rajpati Yadav", "Jaunpur, up"),
(3,"Mangala Yadav", "Jaunpur1, up"),
(5,"Kamala Yadav", "Jaunpur2, up");

select * from studentdb.students;
select * from studentdb.familydetail;

-- Now JOIN
-- INNER JOIN
select * from studentdb.students AS s
INNER JOIN studentdb.familydetail AS f
ON s.std_Id = f.std_Id;

-- LEFT JOIN
select * from studentdb.students AS s
LEFT JOIN studentdb.familydetail AS f
ON s.std_Id = f.std_Id;

-- If we want to retrive student first namd and father name then we can wrire query like this.
select s.std_FirstName, f.FatherName from studentdb.students AS s
LEFT JOIN studentdb.familydetail AS f
ON s.std_Id = f.std_Id;

-- insert one row in familydetail table
 INSERT INTO studentdb.familydetail(std_Id, FatherName, Address ) VALUES 
(7,"XYZ", "Jaunpur3, up");

-- check total data values
select * from studentdb.familydetail;

-- Right Join
select * from studentdb.students AS s
RIGHT JOIN studentdb.familydetail AS f
ON s.std_Id = f.std_Id;

-- Full Join
select * from studentdb.students AS s
LEFT JOIN studentdb.familydetail AS f
ON s.std_Id = f.std_Id
UNION
select * from studentdb.students AS s
RIGHT JOIN studentdb.familydetail AS f
ON s.std_Id = f.std_Id;

-- Find the Student name using address = Jaunpur2, up
select s.std_FirstName, s.std_LastName, f.FatherName from 
studentdb.students as s LEFT JOIN studentdb.familydetail as f
ON s.std_Id = f.std_Id
WHERE f.Address = "Jaunpur2, up"
 ;
 
 -- I want to change value from sandeep to Vinod and from vinod to Sandeep
 
 update studentdb.students
 set std_FirstName = "Vinod"
 where std_Id = 5;
 ;
 
  update studentdb.students
 set std_FirstName = "Sandeep"
 where std_Id =4;
 ;
 
 -- To Understand the JOIN for more the one table lets make one more table
 
 Create table studentdb.studentsubject(
 std_subId INT PRIMARY KEY NOT NULL,
 std_Subject VARCHAR(255)
 );
 
 INSERT INTO studentdb.studentsubject(std_subId, std_Subject) VALUES
 (1, "Hindi"),
 (2, "English"),
 (3, "Math"),
 (4, "Physics"),
 (5, "Chemistry") ;
 
 select * from studentdb.studentsubject;

-- find name of student using marks table...
select s.std_FirstName, s.std_LastName, s.std_phone
 from studentdb.students as s 
JOIN 
studentdb.familydetail as f ON
s.std_Id = f.std_Id
JOIN 
studentdb.studentsubject as ss
ON
s.std_Id=ss.std_subId

where std_subId = 5;
;


