# Day 15 - SQL Fundamentals

## Goal
Understand what SQL is, how tables are structured, and the core commands
used to create and manage data.

## What is SQL?
SQL (Structured Query Language) is how we talk to a database.
Think of a database like a big digital notebook, and SQL is the language
you use to write in it, read from it, or erase things from it.

We use SQL to create tables, store data, and ask questions about that data.

## Think of a Table Like an Excel Sheet
If you have ever used Excel or Google Sheets, a SQL table is basically the
same idea:
   * Columns → the headings across the top (Name, Grade, Section)
   * Rows → each line below the headings (one row = one student)
   * Primary Key → a special column that gives every row its own unique ID
     number, so no two rows ever get mixed up (usually called `id`)

## Data Types
Every column has to say what kind of data it will hold. Here are the ones
we use in this project:

INTEGER
A whole number, with no decimal point. Example: 9, 100, -5

TEXT
Any word or sentence. Must be written in quotes. Example: "Asha"

REAL
A number with a decimal point. Example: 91.5

NULL
Means "nothing was entered here". It is not the same as 0 or an empty
sentence — it simply means the value is missing.

## Constraints (Rules for a Column)
A constraint is a rule you attach to a column so the database keeps your
data clean and correct.

PRIMARY KEY
Every row must have a different value in this column. Used for the `id`
column so every row can be told apart.

NOT NULL
This column can never be left empty. If you try to save a row without it,
the database will refuse and show an error.

DEFAULT
If you don't provide a value for this column, the database will
automatically fill in a value for you.

## SQL Commands Used
CREATE TABLE
Builds a brand-new, empty table with the columns you choose.

INSERT INTO
Adds one new row of data into the table.

SELECT
Reads/looks at the data already in the table.

UPDATE
Changes a value that is already saved.

DELETE
Removes a row from the table completely.

## Project
Student Records System

Files:
   * `main.sql` — all the SQL commands for this project, with comments
     explaining each step. Paste any part into SQLite Online and run it.

Features:
   * Add Student
   * View All Students
   * Update Grade
   * Delete Student

## How to Run
Open https://sqliteonline.com/ (or any SQLite tool), paste in the contents
of `main.sql`, and click Run. You can also select just one part (like one
INSERT line) and run only that part to see what it does.

## What I Learned
   * What SQL is, in plain words
   * How a table is like a spreadsheet (columns, rows, primary key)
   * Data Types (INTEGER, TEXT, REAL, NULL)
   * Constraints that keep data clean (NOT NULL, DEFAULT, PRIMARY KEY)
   * Basic SQL Syntax (CREATE, INSERT, SELECT, UPDATE, DELETE)
   * Writing plain SQL in a `.sql` file

