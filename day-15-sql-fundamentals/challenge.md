# Day 15 Challenges

Try these using `main.sql` in SQLite Online (https://sqliteonline.com/).

## Challenge 1: Search a Student
Write a SELECT statement that finds one student by name.

Hint:
```sql
SELECT * FROM students WHERE name = 'Asha';
```
Try changing 'Asha' to a name that doesn't exist. What do you get back?

## Challenge 2: Create a Books Table
Follow the same pattern used for the `students` table in `main.sql`.

Steps:
1. Write a `CREATE TABLE books` statement with these columns:
   * id (INTEGER, PRIMARY KEY)
   * title (TEXT, NOT NULL)
   * author (TEXT)
   * year_published (INTEGER)
2. Insert 3 books using `INSERT INTO books ...`
3. See all of them using `SELECT * FROM books;`

Tip: Copy the `students` table code from `main.sql` and just change the
table name and column names.

## Challenge 3: Add a UNIQUE Rule
Change the `name` column so no two students can have the same name.

Hint: Add the word `UNIQUE` right after `TEXT` in the name column:
```sql
name TEXT NOT NULL UNIQUE
```
Then try running two INSERT statements with the same name and see what
error message you get.

## Challenge 4: What Happens With the Wrong Data Type?
Try running this line and see what happens:
```sql
INSERT INTO students (name, grade) VALUES ('Test', 'nine');
```
`grade` is supposed to be a number (INTEGER), but here we're giving it text
('nine'). Does it fail, or does SQLite allow it anyway? Write down what
you observe.

## Bonus Challenge ⭐: Count and Sort (Preview)
These commands aren't covered yet, but try them anyway and see if you can
guess what they do — we'll cover them properly in the next few days.
```sql
SELECT COUNT(*) FROM students;
SELECT * FROM students ORDER BY grade DESC;
```

