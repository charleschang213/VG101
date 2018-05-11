# Chapter 5 Practice 1 - Josephus Problem  
This problem was given by a Jewish historian called Josephus in the $1_{st}$ century. The whole description of the problem is given below:  

> A group of Jewish was captured by the Romans and they would soon be executed. However, the Romans wanted to free one of them, and they decided to choose this man by luck. Here is what they did:  
> They called those Jewish to stand in a circle. Then the executioner started to wander clockwise around the circle from a certain Jewish. Every time when he passed two Jewish, he will kill the next one. The process was reapeted again and again until there's only one man left.  
> So the question is: **what is the original location that the man freed was standing?**  

Here I should generalise the question a little bit.  
1. First I will give every Jewish a number. The number of the Jewish at the starting point of the executioner is No.1 and the others are numbered as 2,3,4,...,n in the clockwise order starting from NO.1.  
2. In the original problem the executioner will kill the next Jewish after he passed **two**. Here I will define this number as an unknown variable.  

In conclusion, you should implement a function in Matlab like the following:  
```  
function y = Josephus(n,m)  
...  
end  
```  

Here $n$ and $m$ are all positive integers. n indicates the total number of Jewish and m means that the excutioner will kill the next man when he passed $m-1$ Jewish after the previously killed one.  

And the return value is the number of the man who should be freed.  

Now I will give an example. Suppose $n=10$ and $m=3$. Then the "killing sequence" is $$3,6,9,2,7,1,8,5,10$$  Thus the man freed is No. 4, and $Josephus(10,3)=4$  

**tip1:** Think about using mathematical induction to solve this question.  
**tip2:** You can also try to solve this problem without using recursion. Another idea is that you can simulate the killing process using your program. Both programs using and not using recursion will be given in the "Practice" folder.  
