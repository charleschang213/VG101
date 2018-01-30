## Chapter 3 Practice 1- Linear Fitting
Here I want to tell you how to use Matlab to do linear regression, or say, linear fitting.  

One thing I want to tell you is that, Manuel is fond of long but simple quesitons, and this question is an example.  

Suppose that you have a denpendent variable y with several independent variable x1,x2,x3..., and you know that y has a linear relationship with those independent variables, which is to say that 

$$y = \sum_{i=1}^{n} \theta_{i}x_{i} + \theta_0$$  

And we want to find these $\theta s'$ value, and what we have is a large set of [x1,x2,x3,...]s and their corresponding ys. However, based on the fact that there might be some measuring or accidental error in these data, we cannot use equation systems to solve.        

So what we need to do is to find a set of $\theta s$ to best describe the relationship between x and y, or say, to have the minimum error. Here are the instructions  

1. First we need some assumptions of the question.  Suppose your indenpendent variable(x) is presented in a matrix like this:  
  $x^{(1)}_1,x^{(1)}_2,...,x^{(1)}_n$  
  $x^{(2)}_1,x^{(2)}_2,...,x^{(2)}_n$  
  $x^{(3)}_1,x^{(3)}_2,...,x^{(3)}_n$  
  ...   
  $x^{(m)}_1,x^{(m)}_2,...,x^{(m)}_n$

Those whose superfixes are the same(in the same row) are of the same example. So m different examples are given. And their corresponding ys are presented in a column
y = 
$y^{(1)}$  
$y^{(2)}$  
$y^{(3)}$  
...  
$y^{(m)}$

2. We need first make some changes in the x matrix. To be more specific, we need to add one column of 1s to the left of the matrix. And after that we name the new matrix X.  
  X = 
  $1,x^{(1)}_1,x^{(1)}_2,...,x^{(1)}_n$  
  $1,x^{(2)}_1,x^{(2)}_2,...,x^{(2)}_n$  
  $1,x^{(3)}_1,x^{(3)}_2,...,x^{(3)}_n$  
  ...  
  $1,x^{(m)}_1,x^{(m)}_2,...,x^{(m)}_n$   

And we don't need to do anything to the y column, and we name it y.  

3. Calculate $\Theta$      

   $$\Theta = (X^T\times X)^{-1}\times X^T \times y$$  

Here $X^T$ means the transpose of X, in Matlab you can use **X'**. And $A^{-1}$ indicates the inverse of a square matrix A, which is a complex mathematical terminology, and you can just use **pinv(A)** in matlab.  

4. Now you have calculated $\Theta$, which should be a $(n+1)\times 1$ vector. The thing I can tell you is that  

$\theta_i = \Theta(i+1)$ (don't forget i=0)  

So that's all about finding $\theta s$  

## Question  
+ build a function in the form of
```
function Theta = LF(x,y)
```
+ The return value is Theta, which is just $\Theta$ and you don't need to do anything more on it.  
+ The arguments are x,y, and they are should be in the same form as I mentioined before. 
+ When you finish the implementation, put LF.m in this directory and run ex1.m.
+ *(Optional) You can think about how to implement a polynomial fit(fit in the form of $y = ax^2+bx+c$ or higher degrees) using the same method.  

