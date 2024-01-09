def solution(s):
    answer=[]
    for c in s:
        if c=='(':
            answer.append(c)
        else:
            if '(' in answer:
                answer.pop()
            else:
                return False
    if answer==[]:
        return True
    else:
        return False