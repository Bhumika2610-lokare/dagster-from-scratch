from abc import ABC, abstractmethod

print("=" * 40)
print("🏦 BANK MANAGEMENT SYSTEM")
print("=" * 40)


# Abstraction
class Account(ABC):

    def __init__(self, account_holder, balance):
        self.account_holder = account_holder

        # Encapsulation
        self.__balance = balance

    def get_balance(self):
        return self.__balance

    def deposit(self, amount):

        if amount <= 0:
            print("❌ Invalid Deposit Amount")
            return

        self.__balance += amount

        print(f"✅ Deposited ₹{amount}")

    @abstractmethod
    def withdraw(self, amount):
        pass


# Inheritance
class SavingsAccount(Account):

    # Polymorphism
    def withdraw(self, amount):

        if amount > self.get_balance():
            print("❌ Insufficient Balance")

        else:
            self._Account__balance -= amount
            print(f"✅ Withdrawn ₹{amount}")


# Inheritance
class CurrentAccount(Account):

    # Polymorphism
    def withdraw(self, amount):

        if amount > self.get_balance():

            print("⚠️ Overdraft Allowed")
            print(f"✅ Withdrawn ₹{amount}")

        else:
            self._Account__balance -= amount
            print(f"✅ Withdrawn ₹{amount}")


# Objects
savings = SavingsAccount("Kartik", 10000)
current = CurrentAccount("Rahul", 5000)

print("\nSavings Account")

savings.deposit(2000)
savings.withdraw(3000)

print(f"Balance: ₹{savings.get_balance()}")

print("\nCurrent Account")

current.deposit(1000)
current.withdraw(7000)

print(f"Balance: ₹{current.get_balance()}")