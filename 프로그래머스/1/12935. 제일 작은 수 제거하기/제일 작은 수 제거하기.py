def solution(arr):
    if len(arr)<=1:
        return [-1]
    answer = []
    min_number = min(arr)
    for num in arr:
        if num != min_number:
            answer.append(num)
    return answer