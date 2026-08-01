# Day 6 - File Handling

## Goal

Learn:

- Reading Files
- Writing Files
- Data Processing
- Basic CSV Concepts

---

## What is a File?

A file stores information on a computer.

Examples:

- notes.txt
- sales.csv
- customers.csv

---

## Reading a File

```python
with open("sales.txt", "r") as file:
    data = file.readlines()
```

---

## Writing a File

```python
with open("report.txt", "w") as file:
    file.write("Hello")
```

---

## Mini Project

Sales Analyzer

Features:

- Reads sales data
- Calculates total sales
- Generates report

---

## Real World Usage

Used in:

- Data Engineering
- ETL Pipelines
- Reporting Systems
- Analytics Dashboards

---

## What I Learned

- open()
- readlines()
- write()
- File Processing