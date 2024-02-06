def solution(price, money, count):
    if price*sum(range(1,count+1)) > money:
        return price*sum(range(1,count+1))-money
    else:
        return 0