print("💰 Safe Bill Calculator")

try:
    bill_amount = float(input("Enter Bill Amount: ₹"))

    if bill_amount < 0:
        raise ValueError

    gst = bill_amount * 0.18
    final_amount = bill_amount + gst

    print(f"GST: ₹{gst}")
    print(f"Final Amount: ₹{final_amount}")

except ValueError:
    print("❌ Invalid bill amount.")