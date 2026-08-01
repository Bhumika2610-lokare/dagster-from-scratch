print("🏏 Cricket Statistics Calculator")


def calculate_total(player1, player2, player3):
    return player1 + player2 + player3


def calculate_average(total, players):
    return total / players


virat = int(input("Enter Virat Score: "))
rohit = int(input("Enter Rohit Score: "))
surya = int(input("Enter Surya Score: "))

total_score = calculate_total(
    virat,
    rohit,
    surya
)

average_score = calculate_average(
    total_score,
    3
)

print("\n📊 Match Summary")
print("---------------------")
print(f"Total Score   : {total_score}")
print(f"Average Score : {average_score:.2f}")