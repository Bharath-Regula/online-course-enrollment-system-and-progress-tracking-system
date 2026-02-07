use ggg;

-- View all students
SELECT * FROM student;

-- Student enrollment details
SELECT s.name, c.course_name, e.enrollment_date
FROM student s
JOIN enrollments e ON s.student_id = e.student_id
JOIN course c ON e.course_id = c.course_id;

-- Student progress report
SELECT s.name, c.course_name, p.marks, p.grade
FROM progresses p
JOIN students s ON p.student_id = s.student_id
JOIN course c ON p.course_id = c.course_id;

-- Average marks per course
SELECT c.course_name, AVG(p.marks) AS average_marks
FROM progresses p
JOIN course c ON p.course_id = c.course_id
GROUP BY c.course_name;

-- Top performers
SELECT s.name, p.marks
FROM progresses p
JOIN student s ON p.student_id = s.student_id
WHERE p.marks >= 85;
