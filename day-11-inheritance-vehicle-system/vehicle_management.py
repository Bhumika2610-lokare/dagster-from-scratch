print("🚗 Vehicle Management System")


class Vehicle:

    def __init__(self, brand):
        self.brand = brand

    def start(self):
        print(f"{self.brand} Vehicle Started")

    def stop(self):
        print(f"{self.brand} Vehicle Stopped")


class Car(Vehicle):
    pass


class Bike(Vehicle):
    pass


car = Car("BMW")
bike = Bike("Royal Enfield")

car.start()
car.stop()

print()

bike.start()
bike.stop()