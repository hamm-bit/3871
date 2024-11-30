#Template Script for Assignment, MATH3871/5960 

#install.packages("mvtnorm")
library(MASS) #you may need to install the package first! 
set.seed(1234)


#-------------------------------------------------------------------------------
#INSTRUCTIONS 
#1. Do not delete or edit existing text in this template, only add to it. 
#2. Ensure your student number is in the file name. 
#more



#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------

########################### PART I Frequentist ##################################
#-------------------------------------------------------------------------------
#QUESTION 1.
wine = read.csv('C:/Users/felix/OneDrive/Documents/vscode/3871/winequality-red.csv')
# wine = read.csv('./winequality-red.csv')
wine = na.omit(wine)
head(wine)

#-------------------------------------------------------------------------------
#QUESTION 2.


wine$good = ifelse(wine$quality >= 6.5, 1, 0) # >= (6.5)
str(wine$good)
#-------------------------------------------------------------------------------
#QUESTION 3. 

# change: wine$good as response variables, parametres are all params in input
# ex_column = c('quality')
wine_ex = wine[, !(names(wine) %in% c("good", "quality"))]

mleest = glm(good ~ ., family = binomial(link = "logit"), data = wine_ex)
summary(model)$coefficients

#-------------------------------------------------------------------------------

############################# PART II Bayesian #################################
#-------------------------------------------------------------------------------
#QUESTION 2.

lpost.LR <- function(beta,X,y) {

  
}			

#-------------------------------------------------------------------------------
#QUESTION 3. 

mhmcmc <- function(y, X, B, nsims, Sigma) {

  #You must use mvrnorm for random sampling from a multivariate normal. 
  mvnorm
  
}


 
#return variables 
mhout = list("beta_mat"=beta_mat, "accprob"=accprob, "beta_star" = beta_star, "acc"=acc)
return(mhout)

}



#-------------------------------------------------------------------------------
#QUESTION 4. 

#Covariance for proposal: 
Sigma = diag(c(1100, 0.0015, 0.04, 0.05, 0.0005, 0.4, 0.00001, 0.000001, 0.0001, 0.09, 0.03, 0.002)) #Do not modify  

mhout1 = mhmcmc(  )

#(a) produce trace plots:


#(b) proportion of accepted moves:
mh4acc = 


#-------------------------------------------------------------------------------
#QUESTION 5. 



#-------------------------------------------------------------------------------
#QUESTION 6. 



#calculate the acceptance rate
mh6acc = 

#(a)produce trace plots:


#(b) produce marginal histgrams and overlay MLE: 


