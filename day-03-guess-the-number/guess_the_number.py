print("🎯 Guess The Number Game")

secret_number = 7

guess = int(input("Guess a number: "))

if guess == secret_number:
    print("🎉 Correct Guess!")

elif guess > secret_number:
    print("📈 Too High!")

else:
    print("📉 Too Low!")