USE ggg;

INSERT INTO student (name, email) VALUES
('student1','s1@gmail.com'),('student2','s2@gmail.com'),
('student3','s3@gmail.com'),('Student4','s4@gmail.com'),
('Student5','s5@gmail.com'),('Student6','s6@gmail.com'),
('Student7','s7@gmail.com'),('Student8','s8@gmail.com'),
('Student9','s9@gmail.com'),('Student10','s10@gmail.com'),
('Student11','s11@gmail.com'),('Student12','s12@gmail.com'),
('Student13','s13@gmail.com'),('Student14','s14@gmail.com'),
('Student15','s15@gmail.com'),('Student16','s16@gmail.com'),
('Student17','s17@gmail.com'),('Student18','s18@gmail.com'),
('Student19','s19@gmail.com'),('Student20','s20@gmail.com');

INSERT INTO students (student_id, name) VALUES
(1,'Student1'),(2,'Student2'),(3,'Student3'),(4,'Student4'),
(5,'Student5'),(6,'Student6'),(7,'Student7'),(8,'Student8'),
(9,'Student9'),(10,'Student10'),
(11,'Student11'),(12,'Student12'),(13,'Student13'),(14,'Student14'),
(15,'Student15'),(16,'Student16'),(17,'Student17'),(18,'Student18'),
(19,'Student19'),(20,'Student20');

INSERT INTO courses (course_id, course_name) VALUES
(1,'DBMS');

INSERT INTO progress (student_id, course_id, marks, grade) VALUES
(1,1,85,'A'),(2,1,78,'B'),(3,1,90,'A'),(4,1,60,'C'),
(5,1,88,'A'),(6,1,72,'B'),(7,1,95,'A'),(8,1,67,'C'),
(9,1,80,'B'),(10,1,70,'B'),
(11,1,82,'A'),(12,1,76,'B'),(13,1,69,'C'),(14,1,91,'A'),
(15,1,84,'A'),(16,1,73,'B'),(17,1,66,'C'),(18,1,89,'A'),
(19,1,77,'B'),(20,1,92,'A');


INSERT INTO course (course_name, credits) VALUES
('DBMS',4),('Python',3),('Java',3),('Web Dev',4);

INSERT INTO enrollments (student_id, course_id, enrollment_date)
SELECT student_id, 1, CURDATE() FROM students;

INSERT INTO progresses (student_id, course_id, marks, grade) VALUES
(1,1,85,'A'), (2,1,78,'B'), (3,1,90,'A'),
(4,1,60,'C'), (5,1,88,'A'), (6,1,72,'B'),
(7,1,95,'A'), (8,1,67,'C'), (9,1,81,'A'),
(10,1,74,'B'), (11,1,69,'C'), (12,1,92,'A'),
(13,1,76,'B'), (14,1,84,'A'), (15,1,58,'D'),
(16,1,79,'B'), (17,1,91,'A'), (18,1,66,'C'),
(19,1,87,'A'), (20,1,73,'B');

SELECT*from student;
SELECT*FROM course;
SELECT*from progresses;

