# Xom Data · Determine the sign of a number
# Problem: https://xomdata.com/practice/py-number-sign
# Solved: 2026-09-05

def number_sign(n):
    if n > 0:
        sign = 1
    elif n < 0:
        sign = -1
    else:
        sign = 0
    return sign
