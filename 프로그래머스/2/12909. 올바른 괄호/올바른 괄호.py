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
            
    return True if answer==[] else False