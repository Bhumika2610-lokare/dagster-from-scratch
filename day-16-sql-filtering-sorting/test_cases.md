# Day 16 Test Cases

How to use this file: run each SQL statement in `main.sql` using SQLite
Online, then check the result below against what actually shows up on
your screen. If it matches, you're good ✅

## Test Case 1
Run:
```sql
SELECT * FROM students WHERE grade = 10;
```
Expected:
2 rows returned — Ravi and Kabir (both have grade 10)
✅ Pass

## Test Case 2
Run:
```sql
SELECT * FROM students WHERE section = 'A' AND grade >= 9;
```
Expected:
2 rows returned — Asha and Kabir (both section A, grade 9 or higher)
✅ Pass

## Test Case 3
Run:
```sql
SELECT * FROM students WHERE name LIKE 'R%';
```
Expected:
2 rows returned — Ravi and Rohan (both names start with R)
✅ Pass

## Test Case 4
Run:
```sql
SELECT * FROM students ORDER BY grade DESC LIMIT 1;
```
Expected:
1 row returned — the student with the highest grade in the table
✅ Pass

## Edge Case 1
Run:
```sql
SELECT * FROM students WHERE grade = 100;
```
Expected:
No rows returned, no error — just an empty result, since no student
has that grade
✅ Pass

## Edge Case 2
Run:
```sql
SELECT * FROM students LIMIT 100;
```
Expected:
All 6 rows are returned. LIMIT never causes an error even if the number
is bigger than the number of rows in the table.
✅ Pass

## Edge Case 3
Run:
```sql
SELECT * FROM students WHERE name LIKE '%z%';
```
Expected:
1 row returned — Zara. This is a good surprise: LIKE in SQLite is
case-insensitive by default, so lowercase 'z' still matches the
capital 'Z' in "Zara".
✅ Pass
