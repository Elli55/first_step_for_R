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

