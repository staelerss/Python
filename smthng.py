from math import sqrt
a = []
cur = int(input())
while cur != 0:
    a.append(cur)
    cur = int(input())
print(a)
a.append(0)
n = len(a)
S = float (sum(a) / n)
summator = 0
for i in range(n):
    delta = a[i] - S
    summator += delta
sumator = float(summator / (n - 1))
print (sqrt(summator))
