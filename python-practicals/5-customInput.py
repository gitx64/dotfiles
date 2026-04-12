name = input("Enter your name: ").strip().title()

print("welcome",name) # the value of input is always a string.

# if wanted then type casting can be done like int(input()) etc.

# Now to strip out unwanted whitespaces.
# name = name.strip().capitalize() this is for capitalizing only one word.

# if trying to format a variable directly into the string
print(f"welcome, {name} this is from format string")

