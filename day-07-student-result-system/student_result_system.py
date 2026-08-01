print("=" * 40)
print("🎓 Student Result Management System")
print("=" * 40)

try:
    student_name = input("Enter Student Name: ")

    math = float(input("Enter Maths Marks: "))
    science = float(input("Enter Science Marks: "))
    english = float(input("Enter English Marks: "))

    if math < 0 or science < 0 or english < 0:
        raise ValueError

    if math > 100 or science > 100 or english > 100:
        raise ValueError

    total = math + science + english

    percentage = total / 3

    if percentage >= 90:
        grade = "A"
    elif percentage >= 75:
        grade = "B"
    elif percentage >= 60:
        grade = "C"
    else:
        grade = "D"

    print("\n📊 Result Summary")
    print("-" * 30)

    print(f"Student Name : {student_name}")
    print(f"Total Marks  : {total}")
    print(f"Percentage   : {percentage:.2f}%")
    print(f"Grade        : {grade}")

except ValueError:
    print("❌ Please enter valid marks between 0 and 100.")