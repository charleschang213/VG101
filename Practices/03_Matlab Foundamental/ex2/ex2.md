# Chapter 3 Practice 2 - One Row Challenges  
In this exercise, there are 5 small and simple MatLab programming problems. However, you are required to solve these questions using just one row of command in your MatLab script.  

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