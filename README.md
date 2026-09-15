First step for R
================
[Elli](https://doneatelli.com)
Last Update : 2026-09-15

## Why i learn

To be honest, I should mention that I had no particular interest in the
R programming language or in statistics. It was simply one of the
requirements for the module I’m about to start at university. However,
in the early stages I’ve begun to find it interesting.

I am starting to learn with the following platform: [R for Reproducible
Scientific
Analysis](https://swcarpentry.github.io/r-novice-gapminder/index.html)

In addition, R has built-in help functions. For example, by writing the
name of any data type, package or function within the parentheses of the
`help()` function, you can access its documentation and full usage
instructions, explained in very concise terms.

## Operators and functions

**Operators:**

> **” \<-“** assigment / example: x \<- 5 ==\> x is 5 now

> **” + “** adding

> **” - “** subtraction

> **” \* “** multiply

> **” / “** divide

> **”** “\*\* raise to a power

first easier function is **c()** it means conbine. For example:

``` r
c(1:5)
```

    ## [1] 1 2 3 4 5

**“1:5” means to arrange the numbers from 1 to 5, including 1 and 5.**

Functions perform the same role as in all other programming languages…

## Data types

**CHARACTER** - its a text format data, like a str in Python (exp:
“cat”, “3.5”)

**COMPLEX** - its a special data type for scientific works (exp: 1+1i)

**DOUBLE** - its a decimal format of number, historical name is
**numeric**, **based C \>\> double \>\> 8 byte**

**integer** - its a real number format, “for using this data we need
also add ‘L’ at the end of data. For exampl: **“5” = double / “5L” =
integer**. R take holl numbers as a decimal without this L.

**LOGICAL** - binary elemets, traditional TRUE/FALSE.

## trying work with simple functions

``` r
c(1, 2, 3)
```

    ## [1] 1 2 3

``` r
c("be", "the", "next")
```

    ## [1] "be"   "the"  "next"

``` r
c(1, 2, "next")
```

    ## [1] "1"    "2"    "next"

As you can see, the c() function creates a vector…

**Hierarchy:** logical -\> integer -\> double -\> complex -\> character

**Examples:**

``` r
c(TRUE, FALSE, 5.4)
```

    ## [1] 1.0 0.0 5.4

``` r
c(5.3, 5L, 3.5)
```

    ## [1] 5.3 5.0 3.5

**paste and paste0**

``` r
paste(1:3)
```

    ## [1] "1" "2" "3"

``` r
paste(1:3, c("a", "b", "c"))
```

    ## [1] "1 a" "2 b" "3 c"

``` r
paste(1:3, c("a", "b", "c"), collapse = ",")
```

    ## [1] "1 a,2 b,3 c"

``` r
paste0(1:3, c("a", "b", "c"))
```

    ## [1] "1a" "2b" "3c"

## Data Frames

``` r
db <- data.frame(cat_names = c("bush", "mush", "kartof"),
                 cat_weight = c(5.7, 7.7, 10),
                 likes_catnip = c(1, 0, 0))

db
```

    ##   cat_names cat_weight likes_catnip
    ## 1      bush        5.7            1
    ## 2      mush        7.7            0
    ## 3    kartof       10.0            0

We use the write.csv function to write this data frame to a CSV file.

``` r
write.csv(db, file = "data/cats_any.csv", row.names = TRUE)
```

``` r
cats <- db  
str(cats)
```

    ## 'data.frame':    3 obs. of  3 variables:
    ##  $ cat_names   : chr  "bush" "mush" "kartof"
    ##  $ cat_weight  : num  5.7 7.7 10
    ##  $ likes_catnip: num  1 0 0

``` r
cats$cat_names
```

    ## [1] "bush"   "mush"   "kartof"

``` r
cats$cat_weight
```

    ## [1]  5.7  7.7 10.0

## Vectors

``` r
pizzaa_price <- c(margarita = 2.5, 
                  napoli = 5.5, 
                  nese = 7.5, 
                  callapizza = 10)

pizzaa_price[2:4]
```

    ##     napoli       nese callapizza 
    ##        5.5        7.5       10.0

``` r
pizzaa_price["nese"]
```

    ## nese 
    ##  7.5

# Lists

``` r
combine_list <- list(titles = "numbers", value = 1:10, data = TRUE)
combine_list$titles
```

    ## [1] "numbers"

# Working with DataFames

First, let’s talk about the cbind() and rbind() functions. Here, **cbin
= column bind** and **rbind = row** bind. As the names suggest, we use
them to add a new column or a new row.

``` r
need_medicine <- c(1, 1, 0)
db_with_new_column <- cbind(db, need_medicine)
db_with_new_column
```

    ##   cat_names cat_weight likes_catnip need_medicine
    ## 1      bush        5.7            1             1
    ## 2      mush        7.7            0             1
    ## 3    kartof       10.0            0             0

``` r
new_cat = c('Pomidor', 3.3, 0, 0)
db_with_new_row <- rbind(db_with_new_column, new_cat)
db_with_new_row
```

    ##   cat_names cat_weight likes_catnip need_medicine
    ## 1      bush        5.7            1             1
    ## 2      mush        7.7            0             1
    ## 3    kartof         10            0             0
    ## 4   Pomidor        3.3            0             0

Another interesting combination or addition function is the **merge()**
function. We can think of this as the equivalent of the JOIN function in
SQL. With the **by** parameter, we select a specific column, thereby
defining which column the join will be performed on.

``` r
DataFrame1 <- data.frame(patient_idx = 1:5,
                         patient_name = c('John', 'Mohn', 'Gohn', 'Dohn', 'Bohn')
                         )
DataFrame2 <- data.frame(patient_idx = 1:5,
                         need_medicine = c(1, 1, 1, 0, 0))

DataFrame1
```

    ##   patient_idx patient_name
    ## 1           1         John
    ## 2           2         Mohn
    ## 3           3         Gohn
    ## 4           4         Dohn
    ## 5           5         Bohn

``` r
DataFrame2
```

    ##   patient_idx need_medicine
    ## 1           1             1
    ## 2           2             1
    ## 3           3             1
    ## 4           4             0
    ## 5           5             0

``` r
merge(DataFrame1, DataFrame2, by='patient_idx')
```

    ##   patient_idx patient_name need_medicine
    ## 1           1         John             1
    ## 2           2         Mohn             1
    ## 3           3         Gohn             1
    ## 4           4         Dohn             0
    ## 5           5         Bohn             0

With the additional **all** parameter, we can perform the LEFT JOIN,
RIGHT JOIN, and INNER JOIN operations familiar from SQL.

``` r
data_frame_1 <- data.frame(patient_idx = 1:5,
                           patient_name = c('John', 'Mohn', 'Gohn', 'Dohn', 'Bohn'),
                           need_medicine = c(1,0,1,1,0))

data_frame_2 <- data.frame(patient_idx = 1:5,
                           patient_name =c('John', 'Mohn', 'Mruh', 'Dohn', 'Bruh'),
                           paid = c(1,0,1,1,1))

data_frame_1
```

    ##   patient_idx patient_name need_medicine
    ## 1           1         John             1
    ## 2           2         Mohn             0
    ## 3           3         Gohn             1
    ## 4           4         Dohn             1
    ## 5           5         Bohn             0

``` r
data_frame_2
```

    ##   patient_idx patient_name paid
    ## 1           1         John    1
    ## 2           2         Mohn    0
    ## 3           3         Mruh    1
    ## 4           4         Dohn    1
    ## 5           5         Bruh    1

We now have two separate data sets with different information. Let’s
find the common information in both, see which patient has paid for the
medication, and know that we can start the delivery. To do this, we will
need the INNER JOIN function, familiar to us from SQL.

For this, the rows that are present in both tables are needed.

``` r
merge(data_frame_1, data_frame_2,
      by='patient_name', all=FALSE) #by default the all parameter is always FALSE
```

    ##   patient_name patient_idx.x need_medicine patient_idx.y paid
    ## 1         Dohn             4             1             4    1
    ## 2         John             1             1             1    1
    ## 3         Mohn             2             0             2    0

And here we see 3 patients, Dohn, John and Mohn. We can see that for
Dohn and John, the **need_medicine** column is marked with a 1, which
means TRUE, indicating they need medication. At the same time, in the
**paid** column, we see a 1, or TRUE, next to their names, which means
they have already made the payments. Therefore, the medicines for them
should now be sent. However, for the patient named John, we see a 0 or
FALSE in the **need_medicine** column, which means this patient does not
need the medicine, and logically, we also see a 0 or FALSE in the
**paid** column.

patient_idx.x and patient_idx.y give us the corresponding id_numbersof
the patients in the first and second tables. Now let’s try to find the
corresponding values in the second table for the values in the first
table. In other words, let’s get information about the payments for the
patients in the first table. If a name is in the first table but not in
the payments table, it will receive a NA value. To do this, we will need
the LEFT JOIN function, familiar to us from SQL. In R, we will again use
the **merge()** function for this, and the only parameter we will change
will be the **all** parameter.

``` r
merge(data_frame_1, data_frame_2, by='patient_name', all.x=TRUE)
```

    ##   patient_name patient_idx.x need_medicine patient_idx.y paid
    ## 1         Bohn             5             0            NA   NA
    ## 2         Dohn             4             1             4    1
    ## 3         Gohn             3             1            NA   NA
    ## 4         John             1             1             1    1
    ## 5         Mohn             2             0             2    0

We can also do the exact opposite of this. In SQL terms, we can also
perform a LEFT JOIN.

``` r
merge(data_frame_1, data_frame_2, 
      by='patient_name', all.y=TRUE)
```

    ##   patient_name patient_idx.x need_medicine patient_idx.y paid
    ## 1         Bruh            NA            NA             5    1
    ## 2         Dohn             4             1             4    1
    ## 3         John             1             1             1    1
    ## 4         Mohn             2             0             2    0
    ## 5         Mruh            NA            NA             3    1

And finally, a function that combines both tables, replacing any value
in one that does not exist in the other with NA, is analogous to the
OUTER JOIN function in SQL.

``` r
merge(data_frame_1, data_frame_2,
      by='patient_name', all=TRUE)
```

    ##   patient_name patient_idx.x need_medicine patient_idx.y paid
    ## 1         Bohn             5             0            NA   NA
    ## 2         Bruh            NA            NA             5    1
    ## 3         Dohn             4             1             4    1
    ## 4         Gohn             3             1            NA   NA
    ## 5         John             1             1             1    1
    ## 6         Mohn             2             0             2    0
    ## 7         Mruh            NA            NA             3    1

## Simple web data

With the data reading functions in the R language, it is possible to
read data directly from the internet, just as in Pandas. Instead of
specifying a file path, it is sufficient to provide the full link. For
example, I am sharing an example below.

Additionally, you can use the **head()** function to read the first few
rows of any DataFrame, and the **tail()** function to read the last few
elements. You can also pass a number as a comma-separated value to both
functions.

``` r
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv")
head(gapminder)
```

    ##       country year      pop continent lifeExp gdpPercap
    ## 1 Afghanistan 1952  8425333      Asia  28.801  779.4453
    ## 2 Afghanistan 1957  9240934      Asia  30.332  820.8530
    ## 3 Afghanistan 1962 10267083      Asia  31.997  853.1007
    ## 4 Afghanistan 1967 11537966      Asia  34.020  836.1971
    ## 5 Afghanistan 1972 13079460      Asia  36.088  739.9811
    ## 6 Afghanistan 1977 14880372      Asia  38.438  786.1134

``` r
tail(gapminder,5)
```

    ##       country year      pop continent lifeExp gdpPercap
    ## 1700 Zimbabwe 1987  9216418    Africa  62.351  706.1573
    ## 1701 Zimbabwe 1992 10704340    Africa  60.377  693.4208
    ## 1702 Zimbabwe 1997 11404948    Africa  46.809  792.4500
    ## 1703 Zimbabwe 2002 11926563    Africa  39.989  672.0386
    ## 1704 Zimbabwe 2007 12311143    Africa  43.487  469.7093

To get a first look, we use the **str()** function. We also know that in
dataframes, all columns are vectors and all rows are lists. Therefore,
to access the columns of a dataframe, we use the **\$** operator. We can
even learn the data type of a single column with the help of the
**typeof()** function.

``` r
str(gapminder)
```

    ## 'data.frame':    1704 obs. of  6 variables:
    ##  $ country  : chr  "Afghanistan" "Afghanistan" "Afghanistan" "Afghanistan" ...
    ##  $ year     : int  1952 1957 1962 1967 1972 1977 1982 1987 1992 1997 ...
    ##  $ pop      : num  8425333 9240934 10267083 11537966 13079460 ...
    ##  $ continent: chr  "Asia" "Asia" "Asia" "Asia" ...
    ##  $ lifeExp  : num  28.8 30.3 32 34 36.1 ...
    ##  $ gdpPercap: num  779 821 853 836 740 ...

``` r
summary(gapminder)  
```

    ##       country          year           pop                continent   
    ##  Length   :1704   Min.   :1952   Min.   :6.001e+04   Length   :1704  
    ##  N.unique : 142   1st Qu.:1966   1st Qu.:2.794e+06   N.unique :   5  
    ##  N.blank  :   0   Median :1980   Median :7.024e+06   N.blank  :   0  
    ##  Min.nchar:   4   Mean   :1980   Mean   :2.960e+07   Min.nchar:   4  
    ##  Max.nchar:  24   3rd Qu.:1993   3rd Qu.:1.959e+07   Max.nchar:   8  
    ##                   Max.   :2007   Max.   :1.319e+09                   
    ##     lifeExp        gdpPercap       
    ##  Min.   :23.60   Min.   :   241.2  
    ##  1st Qu.:48.20   1st Qu.:  1202.1  
    ##  Median :60.71   Median :  3531.8  
    ##  Mean   :59.47   Mean   :  7215.3  
    ##  3rd Qu.:70.85   3rd Qu.:  9325.5  
    ##  Max.   :82.60   Max.   :113523.1

``` r
typeof(gapminder$pop)
```

    ## [1] "double"

``` r
str(gapminder$continent)
```

    ##  chr [1:1704] "Asia" "Asia" "Asia" "Asia" "Asia" "Asia" "Asia" "Asia" ...

Have you noticed the **summary()** function? It allows us to learn very
important and interesting information about the columns in a DataFrame
with a single function.
