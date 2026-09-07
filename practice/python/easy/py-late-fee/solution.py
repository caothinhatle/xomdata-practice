# Xom Data · Library late return fee
# Problem: https://xomdata.com/practice/py-late-fee
# Solved: 2026-09-07

def late_fee(days_late, fee_per_day):
    if days_late <= 0:
        return 0
    else:
        return days_late * fee_per_day
