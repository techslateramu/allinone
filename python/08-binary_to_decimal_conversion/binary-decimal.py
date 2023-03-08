binary_num = input("Enter a binary number: ")
decimal_num = 0
power = len(binary_num) - 1

for digit in binary_num:
    decimal_num += int(digit) * 2 ** power
    power -= 1

print("The decimal equivalent of", binary_num, "is", decimal_num)
