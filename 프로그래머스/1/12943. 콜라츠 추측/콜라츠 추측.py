def solution(num):
    if num == 1:
        return 0
    else:
        count = 0
        while num!=1:
            if num%2==0:
                num = num/2
            else:
                num = num*3+1
            count+=1
        if count<=500:
            return count
        else:
            return -1