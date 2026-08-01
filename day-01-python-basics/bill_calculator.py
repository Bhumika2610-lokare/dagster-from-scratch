print("=" * 30)
print("🍕 Welcome to Kartik Restaurant 🍔")
print("=" * 30)

pizza_price = 300
burger_price = 150
coke_price = 50

print("\nMenu")
print(f"Pizza  : ₹{pizza_price}")
print(f"Burger : ₹{burger_price}")
print(f"Coke   : ₹{coke_price}")

total_bill = pizza_price + burger_price + coke_price

print("\n------------------------------")
print(f"Total Bill : ₹{total_bill}")

gst = total_bill * 0.18

print(f"GST (18%)  : ₹{gst}")

final_bill = total_bill + gst

print("------------------------------")
print(f"Final Bill : ₹{final_bill}")
print("------------------------------")

print("\n🙏 Thank You For Visiting!")