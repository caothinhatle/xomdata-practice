# Xom Data · Find names too long for the card
# Problem: https://xomdata.com/practice/py-filter-long-names
# Solved: 2026-09-07

def long_names(names, min_len):
    long_name = []
    for n in names:
        if len(n) > min_len:
            long_name.append(n)
    return long_name
