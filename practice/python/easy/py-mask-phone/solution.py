# Xom Data · Mask phone number
# Problem: https://xomdata.com/practice/py-mask-phone
# Solved: 2026-09-07

def mask_phone(phone):
    if len(phone) == 3:
        return phone
    else:
        return phone.replace(phone[:-3],"*"*len(phone[:-3]))
