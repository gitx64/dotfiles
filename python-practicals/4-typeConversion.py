a = 2
b = 20.2

sum = a + b # converts the floating value to integer.

# but a string + float is not possible in type conversion
a = "2"
b = 21.2

# print(a + b) # not possible

a = int(a)

print(a + b) # now its possible

# but typecasting is also not possible in not compatible types like string can't be converted into float.
a = "astik"
b = float(a) # not possible
