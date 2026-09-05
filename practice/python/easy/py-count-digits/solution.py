# Xom Data · Count digits in the password
# Problem: https://xomdata.com/practice/py-count-digits
# Solved: 2026-09-05

def count_digits(text):
    return sum(1 for char in text if char.isdigit())
