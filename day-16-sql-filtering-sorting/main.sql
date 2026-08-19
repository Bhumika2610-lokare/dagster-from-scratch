-- ============================================
-- Day 16 - SQL Filtering & Sorting
-- This file has ONLY plain SQL — no Python.
-- Paste any part into SQLite Online (https://sqliteonline.com/) and run it.
-- ============================================


-- STEP 0: Set up the table from Day 15 and add a few more students
-- so we have enough data to practice filtering and sorting on.

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


-- STEP 1: Filtering with WHERE
-- WHERE lets you only see rows that match a condition, instead of
-- every row in the table.

-- Only students with grade 10
SELECT * FROM students WHERE grade = 10;

-- Students with grade greater than or equal to 9
SELECT * FROM students WHERE grade >= 9;

-- Students NOT in section A
SELECT * FROM students WHERE section != 'A';


-- STEP 2: Combining conditions with AND / OR
-- AND -> both conditions must be true
-- OR  -> at least one condition must be true

-- Students in section A AND grade 9 or higher
SELECT * FROM students WHERE section = 'A' AND grade >= 9;

-- Students in section B OR grade exactly 10
SELECT * FROM students WHERE section = 'B' OR grade = 10;


-- STEP 3: Matching text with LIKE
-- LIKE lets you search for a pattern instead of an exact match.
-- % means "any characters can go here"

-- Names that start with 'R'
SELECT * FROM students WHERE name LIKE 'R%';

-- Names that contain the letter 'a' anywhere
SELECT * FROM students WHERE name LIKE '%a%';


-- STEP 4: Sorting with ORDER BY
-- ORDER BY changes the order the rows are shown in.
-- ASC = smallest to largest (this is the default)
-- DESC = largest to smallest

-- Sort students by grade, lowest first
SELECT * FROM students ORDER BY grade ASC;

-- Sort students by grade, highest first
SELECT * FROM students ORDER BY grade DESC;

-- Sort alphabetically by name
SELECT * FROM students ORDER BY name ASC;


-- STEP 5: Limiting results with LIMIT
-- LIMIT tells the database to only give back a certain number of rows.
-- Very useful when a table has thousands of rows and you only want to
-- see a few.

-- Only show the first 3 rows
SELECT * FROM students LIMIT 3;

-- Combine ORDER BY and LIMIT to find the TOP student by grade
SELECT * FROM students ORDER BY grade DESC LIMIT 1;


-- ============================================
-- BONUS: Putting it all together
-- ============================================

-- Find the top 3 students by grade, only in section A,
-- sorted from highest grade to lowest.
SELECT * FROM students
WHERE section = 'A'
ORDER BY grade DESC
LIMIT 3;
