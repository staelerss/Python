n1 = int(input())
l1 = int(input())
n2 = int(input())
l2 = int(input())
if (n1 > 8 or l1 > 8 or n2 > 8 or l2 > 8):
    print ("One or more numbers are > 8")
    exit(0)
if (((n2 - 2) == n1 and (l2 - 1) == l1) or ((n2 - 1) == n1 and (l2 - 2) == l1)):
    print ("YES")
else:
    print ("NO")
