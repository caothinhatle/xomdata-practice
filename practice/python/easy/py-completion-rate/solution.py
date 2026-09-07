# Xom Data · Completion rate of a delivery team
# Problem: https://xomdata.com/practice/py-completion-rate
# Solved: 2026-09-06

def completion_rate(done, total):
    if total == 0:
        return 0.0
    else:
        return round(done*100/total,2)
