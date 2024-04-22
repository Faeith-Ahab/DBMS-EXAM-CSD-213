DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;
CREATE TABLE Students(
Sno VARCHAR(100) NOT NULL,
Sname VARCHAR(255) NOT NULL,
SGPA INT,
Scity VARCHAR(200),
Cno VARCHAR(100)
);
INSERT INTO Students( Sno, Sname, SGPA, Scity, Cno)
VALUES
     ('S1', 'Saman', 2.60, 'Kegalle', 'C1'),
('S2', 'Kamal', 2.45, 'Kandy', 'C2'),
('S3', 'Joe', 3.20, 'Galle', 'C3'),
('S4', 'Ruwan', 4.00, 'Kandy', 'C1'),
('S5', 'Asela', 3.50, 'Jaffna', 'C4'),
('S6', 'Asanka', 2.88, 'Galle', 'C2'),
('S7', 'Wasana', 2.75, 'Colombo', 'C3'),
('S8', 'Dilini', 3.35, 'Kandy', 'C1'),
('S9', 'Aruna', 2.76, 'Galle', 'C4'),
('S10', 'Gavani', 3.00, 'Jaffna', 'C4');


CREATE TABLE courses(
Cno VARCHAR(100),
Cname VARCHAR(255) NOT NULL,
Cduration INT
);
INSERT INTO courses(Cno, Cname, Cduration)
VALUES
    ('C1', 'HNDA', 4),
('C2', 'HNDIT', 2),
('C3', 'HNDM', 3),
('C4', 'HNDE', 2);
SELECT * FROM students;
SELECT * FROM courses;

SELECT
  Sname, SGPA
FROM
   Students;
   
   
SELECT
   Sname
FROM
   Students
WHERE
  SGPA > 3.00;
 
SELECT Cno, COUNT(*) as NumberOfStudents
FROM Students
GROUP BY Cno;

SELECT sname, SGPA, cname
FROM students
JOIN courses ON students.Cno = courses.Cno;

SELECT *
FROM Students
ORDER BY SGPA ASC;


--ROLE OF DB ADMIN

--Designing database
--Managing a database
--Troubleshooting the database
--Optimising performance of the database
--Ensuring databackup
