def solution(s):
    if len(s) in [4,6]:
        try:
            return s.isdigit()
        except:
            return False
    return False