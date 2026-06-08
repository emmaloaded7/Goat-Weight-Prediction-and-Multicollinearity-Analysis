# Objective
This project investigates the relationship between goat body measurements (Body Length and Chest Girth) and Weight. 
The aim is to determine how well these measurements predict goat weight and assess the presence of multicollinearity 
between the predictor variables.

# Methods
* Performed simple linear regression to evaluate the individual effects of Body Length and Chest Girth on Weight.
* Fitted a multiple linear regression model including both Body Length and Chest Girth.
* Calculated the correlation between Body Length and Chest Girth.
* Created a scatterplot to visualize the relationship between the two body measurements.
* Generated a correlation matrix for Weight, Body Length, and Chest Girth.

# Results
* Body Length positively predicted Weight and explained approximately 77% of the variation in Weight.
* Chest Girth positively predicted Weight and explained approximately 84% of the variation in Weight.
* The multiple regression model explained approximately 89% of the variation in Weight.
* Body Length and Chest Girth showed a strong positive correlation, indicating potential multicollinearity.

# Conclusion
Both Body Length and Chest Girth are strong predictors of goat weight. Including both variables in the regression model
improved prediction accuracy. However, the strong correlation between the predictors suggests potential multicollinearity, 
which should be considered when interpreting the regression coefficients.
