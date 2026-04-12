x = int(input("Enter x: "))
y = int(input("Enter y: "))

z = round(x + y) # for an around number.
z = round(x / y, 2) # will round up the decimals around 2 floats or 2 digits after the decimal.

#OR
# print(f"{z:,}") # for a clear formatted string.
print(f"{z:.2f}")


