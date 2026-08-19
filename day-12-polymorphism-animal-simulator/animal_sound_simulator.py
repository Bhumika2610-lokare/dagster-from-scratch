print("🎭 Animal Sound Simulator")


class Dog:

    def sound(self):
        print("🐶 Bark Bark")


class Cat:

    def sound(self):
        print("🐱 Meow Meow")


class Cow:

    def sound(self):
        print("🐮 Moo Moo")


animals = [
    Dog(),
    Cat(),
    Cow()
]

for animal in animals:
    animal.sound()