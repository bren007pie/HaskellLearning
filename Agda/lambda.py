
# lambda functions are very useful for anonomys throw-away functions. Very useful for function currying.

doug = lambda x : x * "doug"  # where x is input and expression is function

print(doug(5))

# Multiple inputs can be put into a lambda function
happybday = lambda first_name , last_name : "Happy Birthday! " + first_name + " " + last_name

print(happybday("Doug", "Marshall"))

# Now, we don't need to save the name of the function, we can use it to make function currying
# We could write a function that says hello using multiple input paramaters
def say_hello_normal(first_name , last_name):
    return "Hello " + first_name + " " + last_name + "!"

print(say_hello_normal("Doug" , "McLean"))
# Now let's say hello to multiplle dougs
print(say_hello_normal("Doug" , "McLean"), say_hello_normal("Doug" , "Stevens"), say_hello_normal("Doug" , "Abigail") )

# Or we could curry the function by returning a lambda function
def say_hello_curried(first_name):
    return lambda last_name : "Hello " + first_name + " " + last_name + "!"

# Now say we have a lot of Dougs and we want to say hello to all of them.
say_hello_d = say_hello_curried("Doug")  # this returns the lambda and saves it as a function. You can say we've partially applied the say_hello_normal by passing in the first paramater and returning a function ready to take the second.

# Now we can say hello to doug by only giving his last name
print(say_hello_d("McLean"))

# Now to say hello to every doug we don't need to write doug every time
print(say_hello_d("McLean"), say_hello_d("Stevens"), say_hello_d("Abigail") )


# That my friends is how you use lambda functions and curry functions!
# Also that arrow thing that likes like |-> is called a "Maplet" where it maps things from one function to another.
