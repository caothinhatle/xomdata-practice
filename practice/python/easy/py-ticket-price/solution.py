# Xom Data · Ticket price by age
# Problem: https://xomdata.com/practice/py-ticket-price
# Solved: 2026-09-08

def ticket_price(age):
    if age >= 60 or  6 <= age <= 17:
        price = 50000
    elif 18<= age <= 59:
        price = 100000
    else:
        price = 0
    return price
