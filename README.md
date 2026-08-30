# First step for R

**last change 30.08.2026**

**i have not enough good english, becouse of that sometimes i used DeepL.** 

# Why i learn
 
To be honest, I should mention that I had no particular interest in the R 
programming language or in statistics. It was simply one of the requirements 
for the module I'm about to start at university. However, in the early stages
I've begun to find it interesting.
 
I am starting to learn with the following platform:
[R for Reproducible Scientific Analysis ](https://swcarpentry.github.io/r-novice-gapminder/index.html)

In addition, R has built-in help functions. For example, by writing the name of
any data type, package or function within the parentheses of the `help()` 
function, you can access its documentation and full usage instructions, 
explained in very concise terms.



## Operators and functions

**Operators:**

> **" <-"**  assigment / example: x <- 5 ==> x is 5 now

> **" + "**  adding

> **" - "**  subtraction

> **" * "**  multiply

> **" / "**   divide

> **" ** "**   raise to a power

first easier function is **c()** it means conbine. For example:

> c(1:5)
>
>> output:
> 
>> 1 2 3 4 5

**"1:5" means to arrange the numbers from 1 to 5, including 1 and 5.** 

Functions perform the same role as in all other programming languages: certain 
elements are defined by you, and the function carries out a specific operation 
based on those elements. We can also create our own new functions to suit our 
needs.




## Data types

**CHARACTER** - its a text format data,like a str in Python (exp: "cat", "3.5")

**COMPLEX** - its a special data type for scientific works (exp: 1+1i)

**DOUBLE** - its a decimal format of number, historical name is **numeric**, 
                **based C >> double >> 8 byte** 
                
**integer** - its a real number format, "for using this data we need also add
              'L' at the end of data. 
              For exampl: **"5" = double / "5L" = integer**. R take holl numbers
              as a decimal without this L. 
              
**LOGICAL** - binary elemets, traditional TRUE/FALSE. 


## tring work with simple functions

> c(1, 2, 3)
>> 1 2 3 

> c("be", "the", "next")
>> "be" "the" "next"

> c(1, 2, "next")
>> "1" "2" "next"

As you can see, the c() function creates a vector. But what is a vector? A 
vector is an array of the same elements. In it, we can access each element 
with a vector index. Another point is that in vectors, all elements must always 
belong to the same data type. For this reason, as you saw above, even though we 
added two double elements, the third element we added was of type character, so 
our entire vector was converted to character data.

What is the general hierarchy, then? 
Which data, when combined, turn into one another?

**logical -> integer -> double -> complex -> character**

In other words, when you combine a logical value with a double in the same 
vector, all the elements become doubles. The same format applies to integers 
and doubles.

**Examples:**

>c(TRUE, FALSE, 5.4)
>> 1 0 5.4

>c(5.3, 5L, 3.5)
>>5.3 5.0 3.5


**paste and paste0**

this functions for colobration the datas. But just give as the character format.

> paste(1:3)
>> "1" "2" "3"

> paste(1:3, c("a", "b", "c"))
>> "1 a" "2 b" "3 c"

> paste(1:3, c("a", "b", "c"), collapse=",")
>> "1 a, 2 b, 3 c"

With the collapse element of the paste function, we can combine all the elements
we have collaborated on into a character-type data.


>>> --- The same functionality can also be achieved with the paste0 function, the
only difference is that there will be no spaces between the elements. In other 
words, an output like "1a 2b 3c" will be obtained. ---


## Data Frames

> db <- data.frame(cat_names = c("bush", "mush", "kartof"),
> 
>                 cat_weight = c(5.7, 7.7, 10),
>                 
>                 likes_catnip = c(1, 0, 0))

This is the simplest and shortest way to create a dataframe. The element names 
you write here will be the names of your columns, and the elements you provide 
with the c() function will be written into those columns. 

| cat_names | cat_weight | likes_catnip |
|:----------|-----------:|-------------:|
| bush      |        5.7 |            1 |
| mush      |        7.7 |            0 |
| kartof    |       10.0 |            0 |

We use the write.csv function to write this data frame to a CSV file.

> write.csv(db, file = "data/cats_any.csv", row.names = TRUE)

Here, 'db' is our dataframe, and the 'file' element is the 'path' to the 
CSV file we want to create. If we set the 'rownames' element to TRUE, the 
function will index our dataframe by default.  

> cats <- read.csv("datas/cats_any_row.csv")

A CSV file, however, can be read very easily with this kind of option, 
and can even be assigned to a variable.

The **cats** variable currently contains our entire dataframe.


> str(cats)

With this function, we can find out which columns our dataframe consists of 
and what its data format is. 

>'data.frame':	3 obs. of  3 variables:
>> $ cat_names   : chr  "bush" "mush" "kartof"
>> 
>> $ cat_weight  : num  5.7 7.7 10
>> 
>> $ likes_catnip: int  1 0 0



 Lets try:
 
 >cats$cat_names
 >>[1] "bush"   "mush"   "kartof"

 
 >cats$cat_weight
 >>[1]  5.7  7.7 10.0



These were simple examples; you can explore more in the documentation.
 
 
## Vectors 


 
 







