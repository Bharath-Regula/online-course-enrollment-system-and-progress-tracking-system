==========================================================
ONLINE COURSE ENROLMENT & PROGRESS TRACKING SYSTEM
==========================================================

Project Name: Online Course Enrolment and Progress Tracking System
Author: Regula Bharath
Date: 26/1/2026
Tools Used: MySQL, VS Code, SQLTools Extension
Project Type: DBMS industrial project

----------------------------------------------------------
1. PROJECT DESCRIPTION
----------------------------------------------------------

This project is a relational database system designed to manage 
course enrollments, track student progress, and generate 
performance reports for an online learning platform. 

Key Features:
- User roles: Admin, Instructor, Student
- Courses management and instructor assignment
- Student enrollment tracking
- Progress tracking and scores
- Performance report generation using SQL views and aggregate functions

----------------------------------------------------------
2. DATABASE DESIGN
----------------------------------------------------------

Entities:
1. Users
   - Attributes: id (PK), name, email, role
   - Roles include Admin, Instructor, Student

2. Courses
   - Attributes: id (PK), course_name, instructor_id (FK → Users.id)

3. Enrollments
   - Attributes: id (PK), user_id (FK → Users.id), course_id (FK → Courses.id), date_enrolled

4. Progress
   - Attributes: id (PK), enrollment_id (FK → Enrollments.id), score, completion_status

Relationships:
- Users ↔ Enrollments (1:M)
- Courses ↔ Enrollments (1:M)
- Enrollments ↔ Progress (1:M)
- Users (Instructor) ↔ Courses (1:M)

Normalization: All tables are in **Third Normal Form (3NF)**

----------------------------------------------------------
3. SETUP INSTRUCTIONS
----------------------------------------------------------

Step 1: Install MySQL Server and ensure it is running.
Step 2: Open VS Code and install the following extensions:
        - SQLTools
        - SQLTools MySQL/MariaDB Driver
Step 3: Create a new connection in SQLTools:
        - Server: localhost
        - Port: 3306
        - Username: root
        - Password: [your MySQL password]
Step 4: Open the file `online_learning_db.sql` in VS Code
Step 5: Connect to the MySQL server and execute the SQL script.
Step 6: Verify tables and reports using provided queries.

----------------------------------------------------------
4. SAMPLE QUERIES
----------------------------------------------------------

- View all students enrolled in courses:
  SELECT u.name, c.course_name, e.date_enrolled
  FROM Enrollments e
  JOIN Users u ON e.user_id = u.id
  JOIN Courses c ON e.course_id = c.id;

- Average score per student:
  SELECT u.name, AVG(p.score) AS avg_score
  FROM Users u
  JOIN Enrollments e ON u.id = e.user_id
  JOIN Progress p ON e.id = p.enrollment_id
  GROUP BY u.name;

- Create view for student performance:
  CREATE VIEW Student_Performance_Report AS
  SELECT u.name AS student_name,
         c.course_name,
         p.score,
         p.completion_status
  FROM Users u
  JOIN Enrollments e ON u.id = e.user_id
  JOIN Courses c ON e.course_id = c.id
  JOIN Progress p ON e.id = p.enrollment_id;

----------------------------------------------------------
5. ADVANTAGES
----------------------------------------------------------

- Structured and normalized database design (3NF)
- Referential integrity maintained using primary and foreign keys
- Supports multiple user roles and enrollment tracking
- Generates reports using views and aggregate functions
- Scalable for real-world online learning platforms

----------------------------------------------------------
6. FUTURE ENHANCEMENTS
----------------------------------------------------------

- Add frontend UI using HTML/CSS/JS
- Implement user authentication
- Add triggers and stored procedures
- Generate graphical reports and dashboards
- Integrate with backend frameworks like PHP or Python

----------------------------------------------------------
7. CONTACT
----------------------------------------------------------

Author: Regula Bharath
Email: regulabharath33@gmail.com


==========================================================
