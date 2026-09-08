# Xom Data · Check triangle sides
# Problem: https://xomdata.com/practice/py-triangle-valid
# Solved: 2026-09-08

def is_triangle(a, b, c):
    return a < b + c and b < a+c and c < a + b
