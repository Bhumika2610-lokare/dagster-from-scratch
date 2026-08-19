# Day 17 - SQL Aggregations

## Goal
Learn how to summarize data — counting rows, adding up numbers, finding
averages, and grouping data into categories.

## Why This Matters
So far you've looked at individual rows. But a lot of real questions are
about the whole table at once: "how many students do we have?", "what's
the average grade?", "which section has the most students?" Aggregation
functions answer these kinds of questions.

## COUNT
Counts how many rows match.
```sql
SELECT COUNT(*) FROM students;
```
This tells you the total number of students in the table.

## SUM
Adds up all the values in a column.
```sql
SELECT SUM(grade) FROM students;
```
This adds every student's grade together into one total.

## AVG
Finds the average (mean) of a column.
```sql
SELECT AVG(grade) FROM students;
```

## MIN and MAX
MIN finds the smallest value, MAX finds the largest value.
```sql
SELECT MIN(grade) FROM students;
SELECT MAX(grade) FROM students;
```

## GROUP BY
GROUP BY splits your rows into groups based on a column, then runs the
aggregate function separately for each group instead of the whole table.
```sql
SELECT section, COUNT(*) FROM students GROUP BY section;
```
This answers: "how many students are in each section?" — one answer
per section, instead of one total number.

## HAVING
HAVING filters groups AFTER they've been grouped — it's like WHERE, but
for groups instead of individual rows.
```sql
SELECT section, COUNT(*) FROM students GROUP BY section HAVING COUNT(*) > 2;
```

Why not just use WHERE? Because WHERE runs BEFORE grouping happens, so it
can't filter on something like COUNT(*) — that number doesn't exist yet
at the WHERE stage. HAVING runs AFTER grouping, so it can.

## Project
Student Records System (continued from Day 15 & 16)

Files:
   * `main.sql` — all the SQL commands for this project, with comments
     explaining each step. Paste any part into SQLite Online and run it.

## How to Run
Open https://sqliteonline.com/ (or any SQLite tool), paste in the contents
of `main.sql`, and click Run. You can also select just one part and run
only that part to see what it does.

## What I Learned
   * Counting rows with COUNT
   * Adding values with SUM
   * Finding averages with AVG
   * Finding smallest/largest values with MIN and MAX
   * Splitting data into groups with GROUP BY
   * Filtering groups (not rows) with HAVING
   * Why WHERE can't filter on an aggregate, but HAVING can
