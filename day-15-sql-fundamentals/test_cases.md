# Day 15 Test Cases

How to use this file: run each SQL statement in `main.sql` using SQLite
Online, then check the result below against what actually shows up on
your screen. If it matches, you're good ✅

## Test Case 1
Run:
```sql
INSERT INTO students (name, grade) VALUES ('Zara', 9);
SELECT * FROM students WHERE name = 'Zara';
```
Expected:
A row showing Zara with grade 9 and section 'A' (the DEFAULT value)
✅ Pass

## Test Case 2
Run:
```sql
UPDATE students SET grade = 10 WHERE name = 'Zara';
SELECT * FROM students WHERE name = 'Zara';
```
Expected:
Zara's grade is now 10
✅ Pass

## Test Case 3
Run:
```sql
DELETE FROM students WHERE name = 'Zara';
SELECT * FROM students WHERE name = 'Zara';
```
Expected:
No rows returned — Zara is gone
✅ Pass

## Edge Case 1
Run this on a brand-new, empty table:
```sql
SELECT * FROM students;
```
Expected:
No rows returned, but also no error
✅ Pass

## Edge Case 2
Run:
```sql
UPDATE students SET grade = 5 WHERE name = 'NotReal';
```
Expected:
No error message, but also nothing actually changes since no row
matches the name 'NotReal'
✅ Pass

## Edge Case 3
Run:
```sql
DELETE FROM students WHERE name = 'NotReal';
```
Expected:
No error message, and the table is unaffected
✅ Pass

## Edge Case 4
Run:
```sql
INSERT INTO students (name, grade) VALUES (NULL, 9);
```
Expected:
An error: NOT NULL constraint failed: students.name
This is the NOT NULL rule protecting your data.
✅ Pass

