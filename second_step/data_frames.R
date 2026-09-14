# startiing data manipulation ind R

cats <- read.csv('datas/cats_any_row.csv')
cats

cats_any <- read.csv('datas/cats_any.csv')
cats_any
rm(cats_any_row)

# colum bind

age <- c(1,4,2)

cbind(cats_any, age)

nrow(cats_any)
NROW(cats_any)
length(age)


# row bind

NewRow <- list('Mesi', 5.6, 0, 3)

rbind(cats, NewRow)

# total 

df_test <- data.frame(id = c('a', 'b', 'c'),
                      x=1:3,
                      y=c(TRUE, FALSE, TRUE)
                      )

df_test

df_self <- data.frame(name='Elli',
                      lastname='Verdiyev',
                      lucky=5)

df_self

add_filankes <- list(name='Firdovsi',
                     lastname='Elyarzade',
                     lucky=0)
new_self <- rbind(df_self, add_filankes)

ist_cofee <- c(TRUE, FALSE)

cbind(new_self, ist_cofee)  
  

  
