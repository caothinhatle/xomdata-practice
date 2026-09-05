# Xom Data · Compute price after discount
# Problem: https://xomdata.com/practice/py-discount
# Solved: 2026-09-05

def final_price(price, percent):
    return round(price - percent * price/100,2)
