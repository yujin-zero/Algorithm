import sys

n = int(sys.stdin.readline())
lst = list(map(int, sys.stdin.readline().split()))
dp = [lst[0]]
for i in range(1, n):
    dp.append(max(lst[i], dp[-1]+lst[i]))
print(max(dp))
