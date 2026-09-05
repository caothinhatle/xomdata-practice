# Xom Data · Shipping fee by weight bracket
# Problem: https://xomdata.com/practice/py-shipping-fee
# Solved: 2026-09-05

def shipping_fee(weight):
    if weight > 5:
        return 50000
    elif weight > 1:
        return 30000
    return 15000
