# Xom Data · Count the orders that missed the promise
# Problem: https://xomdata.com/practice/pd-count-matching
# Solved: 2026-09-10

import pandas as pd
def late_count(orders, promised_days):
    # Return how many orders took longer than promised_days.
    return orders[orders["delivery_days"] > promised_days].shape[0]
