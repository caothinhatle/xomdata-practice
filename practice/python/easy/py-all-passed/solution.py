# Xom Data · Did the whole team clear the first round
# Problem: https://xomdata.com/practice/py-all-passed
# Solved: 2026-09-05

def all_passed(scores, pass_mark):
    count = 0
    for s in scores:
        if s >= pass_mark:
            count += 1
    return count == len(scores)
