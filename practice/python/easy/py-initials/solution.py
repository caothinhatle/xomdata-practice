# Xom Data · Generate initials
# Problem: https://xomdata.com/practice/py-initials
# Solved: 2026-09-05

def get_initials(full_name):
    words = full_name.split()    
    return "".join(w[0].upper() for w in words)
