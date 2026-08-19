print("🚗 Car Garage Manager")


class Car:
    def __init__(self, name, color, price):
        self.name = name
        self.color = color
        self.price = price

    def display_info(self):
        print("------------------")
        print(f"Car Name : {self.name}")
        print(f"Color    : {self.color}")
        print(f"Price    : ₹{self.price}")


car1 = Car("BMW", "Black", 5000000)
car2 = Car("Audi", "White", 4500000)

car1.display_info()
car2.display_info()