# Xom Data · Convert minutes to hours and minutes
# Problem: https://xomdata.com/practice/py-time-format
# Solved: 2026-09-08

def format_duration(minutes):
    if int(minutes)//60 == 0:
        if int(minutes) % 60 < 10:
            return f"0:0{int(minutes) % 60}"
        else:
            return f"0:{int(minutes) % 60}"
    else:
        if int(minutes) % 60 < 10:
            return f"{int(minutes) // 60}:0{int(minutes) % 60}"
        else:
            return f"{int(minutes) // 60}:{int(minutes) % 60}"
