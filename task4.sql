--task 4
-- COUNT function is used to get the count of department entries, aliasing is used as "dept_count"
SELECT COUNT(department) AS dept_count FROM student;

-- SUM function is used to calculate the total marks of all students
SELECT SUM(marks) FROM student;

-- MIN function is used to find the lowest marks among all students
SELECT MIN(marks) FROM student;

-- MAX function is used to find the highest marks among all students
SELECT MAX(marks) FROM student;

-- AVG function is used to calculate the average marks of all students
SELECT AVG(marks) FROM student;

-- GROUP BY clause groups the data department-wise and AVG function calculates the average marks for each department
SELECT department, AVG(marks) AS avg_marks
FROM student
GROUP BY department;

-- GROUP BY clause groups the data department-wise, HAVING is used to filter departments having average marks greater than 70
SELECT department, AVG(marks) AS avg_marks
FROM student
GROUP BY department
HAVING AVG(marks) > 70;
