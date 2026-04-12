a = 5
b = 2

# Arithmatic operators
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b) # remainder
print(a ** b) # power

# Comparison operators (returns True or False)
# !=, <, >, <=, >=, == 

a = 50
b = 20

print(a == b)
print(a < b)
print(a > b)
print(a <= b)
print(a >= b)
print(a != b)

# Assignment operators (to assign a particular value in a variable)
# =, +=, -=, *=, /=, %=, **=

num = 10
num = num + 10 # will be 20 -> [num(10) + 10]

num += 10 # same as the above its just the right side value will be sum up with the original value.
num -= 10 # same as the above its just the right side value will be minus with the original value.
num *= 10
num /= 10 # <- Critical line: in python3 the '/' operator always returns a float value.
num %= 10
num **= 10
print(num)

#Logical operators (not,and,or) anything non-zero is true, and 0 is false
print(not 0)

val1 = True
val2 = False

print("and operator:", val1 and val2) # and is multiplication between binaries like 0 and 1
print("or operator:", val1 or val2) # or is sum between binaries like 0 and 1

print("or operator:", (a == b) or (a < b)) # this can also be done as comparizon operators always returns boolean.

