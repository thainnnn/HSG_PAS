import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = int(input())
l=[]
for k in range(1,n+1):
    if n%k==0:l+=[k]
print(*l)