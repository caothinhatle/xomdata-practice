# Xom Data · Weekly pay with overtime hours
# Problem: https://xomdata.com/practice/py-overtime-pay
# Solved: 2026-09-08

def overtime_pay(hours, rate):
    if int(hours) < 40:
        return round(float(int(hours) * int(rate)),2)
    return round(float(40 * int(rate) + (int(hours) - 40) * 1.5 * int(rate)),2)
