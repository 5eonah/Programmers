def solution(phone_number):
    blind = '*'*(len(phone_number)-4)
    last_number = phone_number[-4:]
    return blind+last_number