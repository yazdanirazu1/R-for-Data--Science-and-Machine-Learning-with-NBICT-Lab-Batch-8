# Factors in R

# Summary of Numeric items
participants_age = c(78, 25, 68, 45, 48, 36
                    )
summary(participants_age)
# finding summary of characters
profession = c("Doctor", "Teacher", "Teacher", "Businessman", "Teacher")
summary(profession)

profession = factor(profession)
summary(profession)
# Putting the summary in order
birth_month = c("jan", "dec", "apr", "aug", "jan", "mar", "jun", "apr", "jul", "aug", "sept", "apr", "oct", "jul", "sept")
summary(birth_month)

birth_month_fact = factor(birth_month, ordered = TRUE, levels = c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sept", "oct", "nov", "dec" ))
summary(birth_month_fact)

# List in R
# List are used to place number in items in a bundle
a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "welcome!"

my_list = list(a, b, c)
my_list

# Naming the list items
my_list = list(Pieces = a, Colors =  b, Message = c)
my_list

# calling a specific data structure
my_list[3]
my_list[2]
my_list$Colors

#calling specific items from the data structure
my_list$Colors[4]
