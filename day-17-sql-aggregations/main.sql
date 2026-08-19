-- ============================================
-- Day 17 - SQL Aggregations
-- This file has ONLY plain SQL — no Python.
-- Paste any part into SQLite Online (https://sqliteonline.com/) and run it.
-- ============================================


-- STEP 0: Set up the same students table with sample data.

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    grade INTEGER,
    section TEXT DEFAULT 'A'
);

INSERT INTO students (name, grade, section) VALUES ('Asha', 9, 'A');
INSERT INTO students (name, grade, section) VALUES ('Ravi', 10, 'B');
INSERT INTO students (name, grade, section) VALUES ('Meera', 8, 'A');
INSERT INTO students (name, grade, section) VALUES ('Kabir', 10, 'A');
INSERT INTO students (name, grade, section) VALUES ('Zara', 7, 'B');
INSERT INTO students (name, grade, section) VALUES ('Rohan', 9, 'B');

SELECT * FROM students;


-- STEP 1: COUNT
-- COUNT tells you how many rows there are.

-- Total number of students
SELECT COUNT(*) FROM students;

-- Number of students in section A
SELECT COUNT(*) FROM students WHERE section = 'A';


-- STEP 2: SUM
-- SUM adds up all the values in a column.

-- Total of every student's grade added together
SELECT SUM(grade) FROM students;


-- STEP 3: AVG
-- AVG gives you the average (mean) value of a column.

-- Average grade across all students
SELECT AVG(grade) FROM students;


-- STEP 4: MIN and MAX
-- MIN finds the smallest value, MAX finds the largest value.

SELECT MIN(grade) FROM students;
SELECT MAX(grade) FROM students;

-- You can also combine several of these in one query
SELECT MIN(grade), MAX(grade), AVG(grade) FROM students;


-- STEP 5: GROUP BY
-- GROUP BY splits rows into groups, based on a column, and runs the
-- aggregate function separately for each group.

-- How many students are in each section?
SELECT section, COUNT(*) FROM students GROUP BY section;

-- What is the average grade in each section?
SELECT section, AVG(grade) FROM students GROUP BY section;

-- What is the highest grade in each section?
SELECT section, MAX(grade) FROM students GROUP BY section;


-- STEP 6: HAVING
-- HAVING is like WHERE, but it filters groups AFTER GROUP BY has run,
-- instead of filtering individual rows before grouping.
-- (You cannot use WHERE with an aggregate function like COUNT — that's
-- exactly why HAVING exists.)

-- Only show sections that have more than 2 students
SELECT section, COUNT(*) FROM students GROUP BY section HAVING COUNT(*) > 2;


-- ============================================
-- BONUS: Putting it all together
-- ============================================

-- For each section, show how many students are in it and their
-- average grade, but only for sections where the average grade is
-- above 8.
SELECT section, COUNT(*) AS student_count, AVG(grade) AS avg_grade
FROM students
GROUP BY section
HAVING AVG(grade) > 8;
