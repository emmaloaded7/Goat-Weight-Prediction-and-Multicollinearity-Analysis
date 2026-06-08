#Collinarity
#Importing data
dataset <- read.csv(file.choose())

#Dimension
dim(dataset)

#Table Variables
names(dataset)

#Linear Regression
mode <- lm(Weight ~ BodyLength, data = dataset)
summary(mode)
#When BodyLength increase by 1cm weight increase by 0.74kg
#Standard error = 0.025
#R^2 = The model explains approximately 77% of the variation in goat weight.

#Linear Regression
mode1 <- lm(Weight ~ ChestGirth, data = dataset)
summary(mode1)
#When ChestGirth increase by 1cm weight increase by 0.76kg
#Standard error = 0.021
#R^2 = The model explains approximately 84% of the variation in goat weight.

#Multi Linear Regression
mode2 <- lm(Weight ~ BodyLength + ChestGirth, data = dataset)
summary(mode2)
#When BodyLength increase by 1cm weight increase by 0.33kg
#When ChestGirth increase by 1cm weight increase by 0.49kg
#BodyLength Standard error = 0.029
#ChestGirth Standard error = 0.028
#R^2 = The model explains approximately 89% of the variation in goat weight.

#correlation
cor(dataset$BodyLength, dataset$ChestGirth)
#Body Length and Chest Girth showed a strong positive correlation, suggesting potential 
#multicollinearity when both variables are included in the same regression model.

#Body Lenght Vs Chest Girth
plot(dataset$BodyLength, dataset$ChestGirth,
     xlab = "Body Length (cm)",
     ylab = "Chest Girth (cm)",
     main = "Relationship Between Body Length and Chest Girth")
abline(lm(ChestGirth ~ BodyLength, data = dataset))

#Correlation matrix
cor(dataset[, c("Weight","BodyLength","ChestGirth")])

# Conclusion:
# Body Length and Chest Girth were both strong predictors of goat weight.
# The correlation analysis showed a strong positive relationship between
# Body Length and Chest Girth, suggesting potential multicollinearity.
# Despite this, including both variables increased the explained variation
# in weight from 77-84% in the simple models to approximately 89% in the
# multiple regression model.