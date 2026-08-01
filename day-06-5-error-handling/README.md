# Day 6.5 - Error Handling

## Goal

Learn:

- try
- except
- ValueError
- Program Safety

---

## Why Error Handling?

Users make mistakes.

Instead of crashing the application, we handle errors gracefully.

Example:

```python
try:
    number = int(input())
except ValueError:
    print("Invalid Number")
```

---

## Mini Project

Safe Bill Calculator

Features:

- User Input
- GST Calculation
- Error Handling

---

## Real World Usage

Used in:

- Login Systems
- APIs
- Data Pipelines
- ETL Processes
- Dagster Assets

---

## What I Learned

- try
- except
- ValueError
- Defensive Coding