print("📊 Sales Analyzer")

with open("sales.txt", "r") as file:
    sales = file.readlines()

total_sales = 0

for sale in sales:
    total_sales += int(sale.strip())

with open("report.txt", "w") as report:
    report.write(f"Total Sales: ₹{total_sales}")

print("✅ Report Generated!")