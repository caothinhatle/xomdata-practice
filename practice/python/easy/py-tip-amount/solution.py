# Xom Data · Restaurant tip suggestion
# Problem: https://xomdata.com/practice/py-tip-amount
# Solved: 2026-09-05

def tip_amount(bill, percent):
    return round(percent*bill/100,2)
