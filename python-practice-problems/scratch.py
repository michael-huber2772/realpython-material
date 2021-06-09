def multiple(input_num, check_num):
    input_num


def fizzBuzz(n):

    for i in range(1, n + 1):
        if i%3==0 and i%5==0:
            print("fizzbuzz")
        elif i%3==0:
            print("fizz")
        elif i%5==0:
            print("buzz")
        else:
            print(i)

# fizzBuzz(15)


# def fizzBuzz(n):
#
#     for i in range(1, n + 1):
#         fizz =
#         buzz =
#         if i%3==0 and i%5==0:
#             print("fizzbuzz")
#         elif i%3==0:
#             print("fizz")
#         elif i%5==0:
#             print("buzz")
#         else:
#             print(i)
#
# fizzBuzz(15)



# Compare triplets

import math
import os
import random
import re
import sys

# Complete the compareTriplets function below.
a = [1, 2, 3]
b = [3, 2, 1]

output = [0,0]
def compareTriplets(a, b):
    for c, d in zip(a, b):
        if c > d:
            output[0] += 1
        elif d > c:
            output[1] += 1

    return output



# print(compareTriplets(a, b))



def aVeryBigSum(ar):
    output = sum(ar)
    return output


# Task
# Given an integer, , perform the following conditional actions:
#
# If  is odd, print Weird
# If  is even and in the inclusive range of  to , print Not Weird
# If  is even and in the inclusive range of  to , print Weird
# If  is even and greater than , print Not Weird

def test():
    n = int(input().strip())


    if n % 2 != 0:
        print('Weird')

    elif n % 2 == 0:
        if n >= 2 and n <= 5:
            print('Not Weird')
        elif n >= 6 and n <= 20:
            print('Weird')
        elif n > 20:
            print('Not Weird')

if __name__ == '__main__':
    n = int(input())

    for i in range(n):
        print(i**2)
