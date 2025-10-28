
#install.packages("ggplot2")
library(ggplot2)
dataset = mtcars
view(dataset)
dataset
dataset
dataset
view(dataset)

#Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point()
data(mtcars)

#changing the point size and shape
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point(size = 3, shape= 1)

# adding the regression line
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point(size = 3, shape= 8)+
  geom_smooth(method = lm)

# Removing the confidence interval 
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE)

# Loess method
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()


#Change the line type and color
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point(size = 3, shape= 8)+
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkblue")

# Changing the confidence interval color
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point(size = 3, shape= 8, color = "blue")+
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkred", fill = "blue")

#Scatter plots with multiple groups

#Converting the cyl column from a numeric to factor variable

dataset$cyl = as.factor(dataset$cyl)


# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()

# Changing point shapes and color
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point()

#Changing point shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl, size = cyl)) +
  geom_point()
