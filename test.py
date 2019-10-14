import math
def factors(n):

    arr = [1]

    l = math.sqrt(n)
    i = 2

    while(i <= l):
        if n % i == 0 and n / i == i:
            arr.append(i)
        elif n % i == 0:
            arr.append(i)
            arr.append(n / i)
        
        i+=1

    return arr

print(factors(1250))
print(factors(52))