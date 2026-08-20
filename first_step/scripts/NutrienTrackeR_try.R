library(NutrienTrackeR)

??NutrienTrackeR

nutrient_in_usa <- getNutrientNames(food_database = "USDA")
print(nutrient_in_usa)
rm(foods_in_usa)
food_names_high_energy_in_usa <- subsetFoodRichIn(nutrient_name = "Energy (kcal)",
                                                  food_database = "USDA", n = 2)[, "food_name"]

food_names_high_protain_in_usa <- subsetFoodRichIn(nutrient_name = "Protein (g)",
                                                   food_database = "USDA", n = 2)[, "food_name"]


food_with_tomato <- findFoodName(keywords = "Tomato" ,food_database = "USDA")

head(sample_diet_USDA[[1]])

head(findFoodName("sweet", "USDA"))


possible_diet <- data.frame(
  food = c("Milk, whole, 3.25% milkfat, without added vitamin A and vitamin D" ,
           "Rice, white, long-grain, parboiled, unenriched, cooked" ,
           "Whey, sweet, dried"),
  units = c(2.5, 0.5, 3.0)
  
)

possible_diet <- as.matrix(possible_diet)



daily_intake <- dietBalance(my_daily_food = possible_diet, food_database = "USDA", 
                            age = 28, gender = "male")


# start to solve smole exercise from AI





fruits <- data.frame(
  names = c("aplle", "birne", "watermelom"),
  price = c(10, 5, 14),
  stock = c(TRUE, FALSE, FALSE)
)

str(fruits)

fruits[fruits$stock == TRUE,]

fruits <- as.matrix(fruits)
print(fruits)


# cocktail bar 

bar_sales <- data.frame(
  drink = c("Mojito", "Old Fashioned", "Margarita", "Negroni", 
            "Espresso Martini", "Whiskey Sour", "Daiquiri", "Cosmopolitan"),
  category = c("Rum", "Whiskey", "Tequila", "Gin", 
               "Vodka", "Whiskey", "Rum", "Vodka"),
  price = c(9, 12, 10, 11, 13, 11, 9, 10),
  units_sold = c(145, 98, 120, 67, 88, 76, 54, 92),
  rating = c(4.5, 4.8, 4.2, 4.0, 4.6, 4.3, 4.1, 3.9)
)

bar_sales$revanue <- c(bar_sales$price * bar_sales$units_sold)


bar_sales[order(bar_sales$revanue, decreasing = TRUE), ]



sort(bar_sales$rating, decreasing = TRUE)

?subset()

subset(bar_sales, bar_sales$rating > 4.3)

tapply(bar_sales$price, bar_sales$category, FUN = mean)

tapply(bar_sales$revanue, bar_sales$category, FUN = mean)

max_price <- which.max(bar_sales$price)

bar_sales$drink[max_price]

min_price <- which.min(bar_sales$price)


bar_sales$drink[min_price]

min_sold <- which.min(bar_sales$units_sold)

bar_sales$drink[min_sold]


