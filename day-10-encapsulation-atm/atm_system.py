print("🏦 ATM Management System")


class BankAccount:

    def __init__(self, balance):
        self.__balance = balance

    def deposit(self, amount):
        self.__balance += amount
        print(f"✅ Deposited ₹{amount}")

    def withdraw(self, amount):

        if amount > self.__balance:
            print("❌ Insufficient Balance")
        else:
            self.__balance -= amount
            print(f"✅ Withdrawn ₹{amount}")

    def show_balance(self):
        print(f"💰 Current Balance: ₹{self.__balance}")


account = BankAccount(10000)

account.show_balance()

account.deposit(2000)

account.withdraw(3000)

account.show_balance()