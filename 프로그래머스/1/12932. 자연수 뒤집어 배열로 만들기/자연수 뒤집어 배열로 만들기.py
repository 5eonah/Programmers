def solution(n):
    list=[]
    for i in str(n):
        list.append(int(i))
    return list[::-1]