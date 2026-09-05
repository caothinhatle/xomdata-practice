# Xom Data · Total receipts
# Problem: https://xomdata.com/practice/py-sum-positive
# Solved: 2026-09-05

def sum_positive(numbers):
    return sum(n for n in numbers if n > 0)
