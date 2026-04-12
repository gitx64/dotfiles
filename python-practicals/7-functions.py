# def (define) keyword we can create custom functions

# def hello(name): # parameterized function
#     print(f"Hello {name}")

''' 
*****====== Warning ======*****

Always functions must be defined before calling, cause interpreter reads the files line by line.
But if want to remove this upside down code writing, you can just define the main code inside
a main() function.
'''
 

def main():
    name = input("Whats your name? ")
    hello(name)


def hello(name="world"): # here name can is being used in two different scenarios.
    print(f"Hello {name}")


main()

