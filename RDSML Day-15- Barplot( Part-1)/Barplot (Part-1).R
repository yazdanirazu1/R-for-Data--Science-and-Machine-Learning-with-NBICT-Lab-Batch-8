#Creating dataframe 
dataset = data.frame(dose = c("D0.5", "D1", "D2"), len = c(4.2, 10, 29.5))



library(ggplot2)

#Basic Barplot
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity")

#Horizontal barplot
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity")+
  coord_flip()

# Changing the width of bars
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", width = 0.5)

# Changing colors
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", color = "blue", fill = "white", width = 0.5)

#Minimal Theme with blue fill color
ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", fill = "steelblue", width = 0.5)+
  theme_minimal()

#Barplot with labels
#Outside Bars

ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len), vjust = -.3, size = 2.5, color = "#99999F")+
  theme_minimal()




#Inside bars


ggplot(data = dataset, aes(x = dose, y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len), vjust = 1.6, size = 2.5, color = "white")+
  theme_minimal()

myCarData = mtcars
#Barplot of counts
# To make a barplot of counts, we will use mtcars dataset


ggplot(data = myCarData, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = .7, fill = "steelblue")+
  theme_minimal()































