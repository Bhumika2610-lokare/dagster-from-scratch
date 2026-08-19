# Day 16 Challenges

Try these using `main.sql` in SQLite Online (https://sqliteonline.com/).
Use the same `students` table already set up in `main.sql`.

## Challenge 1: Find Students Below a Grade
Write a query that shows only students with a grade below 9.

Hint:
```sql
SELECT * FROM students WHERE grade < 9;
```

## Challenge 2: Find Students Whose Name Ends in a Letter
Write a query that finds every student whose name ends with the letter 'a'.

Hint: `%` can go on either side of the letter, or both.
```sql
SELECT * FROM students WHERE name LIKE '%a';
```

## Challenge 3: Two Rules at Once
Write a query that shows students in section B who also have a grade of
9 or higher.

Hint: You will need `WHERE`, `AND`, and `>=` together.

## Challenge 4: Sort by Two Things
Sort students first by section (A to Z), and within each section, by
grade (highest first).

Hint: ORDER BY can take two columns, separated by a comma:
```sql
SELECT * FROM students ORDER BY section ASC, grade DESC;
```

## Challenge 5: Find the Lowest Grade
Write a single query that returns only the one student with the lowest
grade in the whole table.

Hint: Combine ORDER BY with LIMIT 1.

## Bonus Challenge ⭐: Build Your Own Filter
Add 3 more students to the table with grades and sections of your choice.
Then write a query using WHERE, LIKE, ORDER BY, and LIMIT all in the same
statement, to answer a question you make up yourself — for example,
"who are the top 2 students in section A whose name contains the letter e?"
