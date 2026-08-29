# second step for learning R

## Understanding the data

a <- c(1, 2, 3)

??a

help(c)
c(1, 2, 3)
c(1, 2, "next")
c("1", "3", "nextr")
c(1:4, 2:5)
c(1:4, "5")

help(paste)

paste(1:13)
paste0(1:13)
as.character(1:13)


(not <- paste0(1:13, c("st", "nd", "dede", rep("Th", 9))))

note <- paste(1:13, c("tg", "ye", "bre", rep("th", 9)))
note

teste <- paste(1:15, c(rep("hi", 15)))
teste

paste(teste, collapse = ", ")
paste0(not, collapse = ", ")

paste(teste, sep = ", ")


help("read table")
??"read table"




# data file work

db <- data.frame(cat_names = c("bush", "mush", "kartof"),
                 cat_weight = c(5.7, 7.7, 10),
                 likes_catnip = c(1, 0, 0))

?write.csv

if (dir.exists("datas")){
  dir.create("datas")
}

write.csv(db, file = "data/cats_any.csv", row.names = TRUE)

write.csv(db, file = "datas/cats_any_row.csv", row.names = FALSE)

cats <- read.csv("datas/cats_any_row.csv")

cats
str(cats)

# data manipulation

cats$cat_weight
cats$cat_names

cats$cat_weight + 2


paste("My cat weight ",  cats$cat_weight)

typeof(cats$cat_weight)
typeof(cats$cat_names)
typeof(cats$likes_catnip)

# data adding 

additional_one <- data.frame(cat_names = "Tobby",
                             cat_weight = 5,
                             likes_catnip = TRUE)

additional_one

cats2 <- rbind(cats, additional_one)
cats2

cats2$likes_catnip <- ifelse(cats2$likes_catnip == 1, TRUE, FALSE)
cats2


# lets talk about vector

first_vector <- vector(length = 4)
first_vector


first_vector <- vector(mode = "character", length = 4)
first_vector

str(first_vector)
str(cats2$cat_weight)


mean(cats2$cat_weight)
cats2$cat_weight[6]

typeof(cats2)
str(cats2)


count <- seq(1, 10, by=0.1)
count


example <- 20:25

head(example, n=2)
tail(example, n=2)
mean(example)
length(example)
length(count)

test_ex <- 1:26
test_ex / 2
test_ex * 2
test_ex ** 2



list_example <- list(5 6, "a", TRUE, 4+5i)
list_example  
  
  
