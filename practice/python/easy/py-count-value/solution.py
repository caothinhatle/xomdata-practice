# Xom Data · Count occurrences of a code
# Problem: https://xomdata.com/practice/py-count-value
# Solved: 2026-09-05

def count_value(items, target):
    return sum(1 for i in items if i == target)
