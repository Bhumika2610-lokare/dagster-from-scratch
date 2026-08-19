# Day 16 - SQL Filtering & Sorting

## Goal
Learn how to pick out only the rows you want (filtering), and how to
control the order they show up in (sorting).

## Why This Matters
Yesterday you learned to CREATE, INSERT, SELECT, UPDATE, and DELETE.
But `SELECT * FROM students` always shows EVERYTHING. In the real world,
tables can have millions of rows — you almost never want to see all of
them at once. Filtering and sorting are how you find exactly what you
need.

## WHERE (Filtering)
WHERE lets you only see rows that match a rule.
```sql
SELECT * FROM students WHERE grade = 10;
```
This means: "show me only the rows where grade is 10."

Common comparisons:
   * `=`  equal to
   * `!=` not equal to
   * `>`  greater than
   * `<`  less than
   * `>=` greater than or equal to
   * `<=` less than or equal to

## AND / OR (Combining Rules)
AND
Both conditions must be true.
```sql
SELECT * FROM students WHERE section = 'A' AND grade >= 9;
```

OR
At least one condition must be true.
```sql
SELECT * FROM students WHERE section = 'B' OR grade = 10;
```

## LIKE (Text Matching)
LIKE lets you search for a pattern in text instead of an exact match.
The `%` symbol means "anything can go here."
```sql
SELECT * FROM students WHERE name LIKE 'R%';
```
This finds every name that starts with "R".

## ORDER BY (Sorting)
ORDER BY changes what order the rows are shown in.
```sql
SELECT * FROM students ORDER BY grade DESC;
```
   * `ASC`  = smallest to largest (this is the default, so you can leave
     it out if you want)
   * `DESC` = largest to smallest

## LIMIT (Showing Fewer Rows)
LIMIT tells the database to only give back a certain number of rows.
```sql
SELECT * FROM students LIMIT 3;
```
This is especially useful together with ORDER BY, for example finding
the single highest grade in the table:
```sql
SELECT * FROM students ORDER BY grade DESC LIMIT 1;
```

## Project
Student Records System (continued from Day 15)

Files:
   * `main.sql` — all the SQL commands for this project, with comments
     explaining each step. Paste any part into SQLite Online and run it.

## How to Run
Open https://sqliteonline.com/ (or any SQLite tool), paste in the contents
of `main.sql`, and click Run. You can also select just one part (like one
SELECT line) and run only that part to see what it does.

## What I Learned
   * Filtering rows with WHERE
   * Comparison operators (=, !=, >, <, >=, <=)
   * Combining conditions with AND / OR
   * Pattern matching text with LIKE and %
   * Sorting results with ORDER BY (ASC / DESC)
   * Limiting how many rows come back with LIMIT
