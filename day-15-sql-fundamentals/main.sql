-- ============================================
-- Day 15 - SQL Fundamentals
-- This file has ONLY plain SQL — no Python.
-- You can paste any part of this into SQLite Online
-- (https://sqliteonline.com/) and run it to see what happens.
-- ============================================


-- STEP 1: Create a table
-- Think of this like designing an empty Excel sheet before adding data.
-- We are telling the database the name of each column and what
-- kind of data it will hold.
--
--   id       -> a whole number that is unique for every row (PRIMARY KEY)
--   name     -> text, and it can never be left empty (NOT NULL)
--   grade    -> a whole number
--   section  -> text, and if we don't give one, it will use 'A' (DEFAULT)

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    grade INTEGER,
    section TEXT DEFAULT 'A'
);


-- STEP 2: Insert data (add rows)
-- Each INSERT adds one new row to the table.

INSERT INTO students (name, grade, section) VALUES ('Asha', 9, 'A');
INSERT INTO students (name, grade, section) VALUES ('Ravi', 10, 'B');

-- We can also skip the section. Since section has a DEFAULT value,
-- SQLite will automatically fill it in with 'A' for us.
INSERT INTO students (name, grade) VALUES ('Meera', 8);


-- STEP 3: Read data (SELECT)
-- This shows every row and every column in the students table.

SELECT * FROM students;

-- You can also select just one or two columns instead of everything.
SELECT name, grade FROM students;


-- STEP 4: Update data
-- This changes Asha's grade from 9 to 10.
-- The "WHERE" part is important — without it, EVERY row would be updated!

UPDATE students SET grade = 10 WHERE name = 'Asha';

SELECT * FROM students;


-- STEP 5: Delete data
-- This removes Meera's row completely.
-- Just like UPDATE, always use WHERE, or you will delete every row.

DELETE FROM students WHERE name = 'Meera';

SELECT * FROM students;


-- ============================================
-- BONUS: Trying to break the rules (constraints)
-- These next two lines are supposed to FAIL. That is expected —
-- it shows the constraints are protecting your data.
-- ============================================

-- This will fail because "name" has a NOT NULL rule.
-- INSERT INTO students (name, grade) VALUES (NULL, 7);

-- This will fail if "id" already exists once, because id is a PRIMARY KEY.
-- INSERT INTO students (id, name, grade) VALUES (1, 'Duplicate', 5);

-- Remove the "--" in front of either line above and run it yourself
-- to see the real error message.
