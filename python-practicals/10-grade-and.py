x = int(input("Score: "))

print("Reddundant -> \n")

if x >= 90 and x < 100:
    print("Grade: A")
elif x >= 80 and x < 90:
    print("Grade: B")
elif x >= 70 and x < 80:
    print("Grade: C")
elif x >= 60 and x < 70:
    print("Grade: D")
else:
    print("Grade: F")

# If elif not used then the program will continue running with all the ifs provided treating them seperate code blocks.

#also the above code can be more tightned: 
print("Tidier -> \n")

if 90 <= x < 100:
    print("Grade: A")
elif 80 <= x < 90:
    print("Grade: B")
elif 70 <= x < 80:
    print("Grade: C") 
elif 60 <= x < 70:
    print("Grade: D") 
else:
    print("Grade: F")

#here it becomes tidier. But now if we just shorten the time by 1/2 ?
print("Efficient -> \n")
if 90 <= x:
    print("Grade: A")
elif 80 <= x:
    print("Grade: B")
elif 70 <= x:
    print("Grade: C") 
elif 60 <= x:
    print("Grade: D") 
else:
    print("Grade: F")
