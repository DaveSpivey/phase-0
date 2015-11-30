- What does puts do?

Short for "put string" - this outputs a string to the terminal and returns `nil`.

- What is an integer? What is a float?

An integer in Ruby is the same as it is in the math world - a number with no decimal. So it can be positive or negative or even 0. A float, or floating-point number, does have a decimal.

- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When you divide floats, you get a mathematically precise answer, also stated as a float. This acts just like a calculator. With integers the answer will only be returned as another integer, with no decimals. If you try to divide 5/2 you'll get 2 - this is sort of like when you use remainders. 5/2 is 2 remainder of 1. But in Ruby it just returns the result without the remainder, so essentially it always rounds down to an integer.

Hours in a year:

```
return 24 * 365
```

Minutes in a decade:

```
return (60 * 24 * 365 * 10) + (60 * 24 * 2)
```

- How does Ruby handle addition, subtraction, multiplication, and division of numbers?

The numbers have to be valid objects like integers or floats, not strings. The operations are handled mathematically straitforward and a result is returned. The only counterintuitive outcome from an operation is division, which differs in integers and floats, as I described above.

- What is the difference between integers and floats?

Um I'm just going to copy/paste from where I answered the next 2 questions up at the top of this file already:
An integer in Ruby is the same as it is in the math world - a number with no decimal. So it can be positive or negative or even 0. A float, or floating-point number, does have a decimal.

- What is the difference between integer and float division?

When you divide floats, you get a mathematically precise answer, also stated as a float. This acts just like a calculator. With integers the answer will only be returned as another integer, with no decimals. If you try to divide 5/2 you'll get 2 - this is sort of like when you use remainders. 5/2 is 2 remainder of 1. But in Ruby it just returns the result without the remainder, so essentially it always rounds down to an integer.

- What are strings? Why and when would you use them?

A string is a set of characters, represented in Ruby in between quotes. This is the most common way of storing information like words and names, but numbers or other non-letter characters can be included in strings too. They'll just be treated the same as any other characters, so you can't, for example, do mathematical operations with a string containing numbers.

- What are local variables? Why and when would you use them?

Local variables are only defined within the scope they are declared. If you define a variable within one method and try to call it somewhere else outside the method it won't work. This is useful for containing work - as programs grow in size, it could get very messy dealing with more and more variables containing values that could get mixed up or re-assigned. It makes more sense to utilize the variable within the context of its environment. There are always other options if you absolutely want a variable to be global, or act as a constant throughout the entirety.

- How was this challenge? Did you get a good review of some of the basics?

Even though it was really easy stuff, it provided my first glimpse of Rspec in use, something I haven't been able to wrap my head around yet. It still looks daunting to try writing a spec, but at least I know putting code through a test is pretty easy.

Challenge links!

(Defining variables)[https://github.com/DaveSpivey/phase-0/blob/master/week-4/defining-variables.rb]

(Simple string)[https://github.com/DaveSpivey/phase-0/blob/master/week-4/simple-string.rb]

(Basic math)[https://github.com/DaveSpivey/phase-0/blob/master/week-4/basic-math.rb]