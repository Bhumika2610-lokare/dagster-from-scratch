print("📚 Student Database")

students = [
    {"name": "Kartik", "marks": 95},
    {"name": "Rahul", "marks": 88},
    {"name": "Priya", "marks": 91}
]

print("\nStudent Records")
print("-" * 30)

for student in students:
    print(
        f"Name: {student['name']} | Marks: {student['marks']}"
    )

total_marks = 0

for student in students:
    total_marks += student["marks"]

average_marks = total_marks / len(students)

print("-" * 30)
print(f"Average Marks: {average_marks:.2f}")