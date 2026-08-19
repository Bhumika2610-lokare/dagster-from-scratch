# Day 17 Test Cases

How to use this file: run each SQL statement in `main.sql` using SQLite
Online, then check the result below against what actually shows up on
your screen. If it matches, you're good ✅

## Test Case 1
Run:
```sql
SELECT COUNT(*) FROM students;
```
Expected:
6 (the total number of students in the table)
✅ Pass

## Test Case 2
Run:
```sql
SELECT SUM(grade) FROM students;
```
Expected:
53 (all six grades — 9+10+8+10+7+9 — added together)
✅ Pass

## Test Case 3
Run:
```sql
SELECT AVG(grade) FROM students;
```
Expected:
Approximately 8.83 (53 divided by 6 students)
✅ Pass

## Test Case 4
Run:
```sql
SELECT section, COUNT(*) FROM students GROUP BY section;
```
Expected:
2 rows returned — one for section A (3 students) and one for section B
(3 students)
✅ Pass

## Edge Case 1
Run:
```sql
SELECT COUNT(*) FROM students WHERE grade = 100;
```
Expected:
0 — COUNT still works even when nothing matches, it just returns 0
instead of showing an error
✅ Pass

## Edge Case 2
Run:
```sql
SELECT section, COUNT(*) FROM students GROUP BY section HAVING COUNT(*) > 10;
```
Expected:
No rows returned. Both sections have only 3 students, so neither passes
the "more than 10" rule — but no error happens.
✅ Pass

## Edge Case 3
Run this WITHOUT HAVING, using WHERE instead:
```sql
SELECT section, COUNT(*) FROM students GROUP BY section WHERE COUNT(*) > 2;
```
Expected:
An error! WHERE cannot filter using COUNT(*) because WHERE runs before
grouping happens. This is exactly why HAVING exists — go back and try
the same thing with HAVING instead of WHERE, and it will work.
