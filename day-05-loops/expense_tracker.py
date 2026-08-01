print("💰 Daily Expense Tracker")
print("-" * 30)

expenses = []

for i in range(5):
    expense = float(input(f"Enter Expense {i + 1}: ₹"))
    expenses.append(expense)

total_expense = sum(expenses)

print("\n📊 Expense Summary")
print("-" * 30)

for expense in expenses:
    print(f"₹{expense}")

print("-" * 30)
print(f"Total Expenses: ₹{total_expense}")