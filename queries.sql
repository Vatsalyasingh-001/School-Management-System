use school;

# 1. List all students in a specific class (e.g., "10A").

SELECT * FROM Students
WHERE class = '10A';

# 2. Find the teachers who teach "Mathematics".

SELECT first_name, last_name
FROM Teachers
JOIN Subjects ON Teachers.subject_id = Subjects.subject_id
WHERE Subjects.subject_name = 'Mathematics';


#3. Get a count of students in each class.
SELECT class, COUNT(student_id) AS student_count
FROM Students
GROUP BY class;


# 4. Retrieve the attendance record of a specific student (e.g., student_id = 1) for January 2024.
SELECT * FROM Attendance
WHERE student_id = 1 AND date BETWEEN '2024-01-01' AND '2024-01-31';


# 5. List the grades of all students for each subject.
SELECT Students.first_name, Students.last_name, Subjects.subject_name, Grades.grade
FROM Grades
JOIN Students ON Grades.student_id = Students.student_id
JOIN Subjects ON Grades.subject_id = Subjects.subject_id
ORDER BY Students.student_id, Subjects.subject_id;


# 6. Find students with perfect attendance (e.g., never marked "Absent").

SELECT DISTINCT Students.student_id, Students.first_name, Students.last_name
FROM Students
LEFT JOIN Attendance ON Students.student_id = Attendance.student_id
WHERE Attendance.status != 'Absent' OR Attendance.status IS NULL;


#7. Get the average grade of each student.

SELECT Students.student_id, Students.first_name, Students.last_name, AVG(CASE 
     WHEN Grades.grade = 'A' THEN 4
     WHEN Grades.grade = 'B' THEN 3
     WHEN Grades.grade = 'C' THEN 2
     WHEN Grades.grade = 'D' THEN 1
     WHEN Grades.grade = 'F' THEN 0
     ELSE NULL END) AS average_grade
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id
GROUP BY Students.student_id;


#8. List classes and the teachers assigned to each class.

SELECT Classes.class_name, Teachers.first_name, Teachers.last_name
FROM Classes
JOIN Teachers ON Classes.teacher_id = Teachers.teacher_id;


# 9. Find all students who received a grade of "A" in any subject.

SELECT Students.first_name, Students.last_name, Subjects.subject_name, Grades.grade
FROM Grades
JOIN Students ON Grades.student_id = Students.student_id
JOIN Subjects ON Grades.subject_id = Subjects.subject_id
WHERE Grades.grade = 'A';

# 10. Get the total number of days each student was present in January 2024.

SELECT Students.student_id, Students.first_name, Students.last_name, COUNT(*) AS days_present
FROM Attendance
JOIN Students ON Attendance.student_id = Students.student_id
WHERE Attendance.status = 'Present' AND Attendance.date BETWEEN '2024-01-01' AND '2024-01-31'
GROUP BY Students.student_id;
