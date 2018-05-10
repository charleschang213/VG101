# Chapter 3 Practice 2 - One Row Challenges  
In this exercise, there are 3 small and simple MatLab programming problems. However, you are required to solve these questions using just one row of command in your MatLab script.  

For those questions which ask you to implement a function, the function declaration line and end line doesn't count for the total number of rows.

## Runs Test for a Random Binary Sequence  
Here you should a write a function  
```
function y = RT(X)
...
end
```  

which counts the number of runs in a sequence which only contains 0s and 1s.

A run of a sequence is a subsequence containing only one number, and the numbers next to the subsequence should not be the same number in the run. For example

X = 0,0,1,0,1,1,1  

It can be divided into those runs  

X = 0,0|1|0|1,1,1  

So the number of runs in X is 4  

## Vandermonde Matrix Generation  
In this part, you need to implement the following function:

```
function Y = VMG(X,n)  
...   
end  
```  

in which the argument $X$ represents a column vector and suppose $m$ is the number of elements and $x_i$ is the ith element in the vector. $n$ is a positive integer. The return value Y should look like the following form:  

$1,x_1,x_1^2,x_1^3,...x_1^n$  
$1,x_2,x_2^2,x_2^3,...x_2^n$  
...
$1,x_m,x_m^2,x_m^3,...x_m^n$  

This matrix is called **Vandermonde Matrix** and if you have done the previous exercise you will find that this matrix looks almost like the matrix we used in linear fit.

## Sum of Distinct Powers  
In this part you should inplement the following function:  

```  
function SoDP(base,n)  
...  
end  
```  

The arguments $base$ and $n$ are all positive integers. The function should return the $n_{th}$ smallest number which can be represented as the sum of several **distinct** powers of $base$. For example, $SoDP(4,6) = 20 = 4^2+4^1$   
