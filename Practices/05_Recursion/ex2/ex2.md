# Chapter 5 Practice 2 - Stair Walking Problem  
It is a simple problem in recursion. Suppose that you are walking up along the stairs. Your goal is to climb $n$ stairs up and you can climb up to $m$ stairs once. So how many ways do you have to climb the $n$ stairs?  
You should implement the following function:  
```  
function y = SWP(n,m)  
...  
end  
```  
The integers $n$ and $m$ are the same as those in the description and the return value is the number of different ways that you can climb up $n$ stairs.  

**note:** Keep in mind that your final step should be exact at the $n_{th}$ stair.  

For example, if $n=5$ and $m=2$  $$5 = 1+1+1+2 = 1+1+2+1 = 1+2+1+1 = 2+1+1+1 $$

$$= 1+2+2 = 2+1+2 = 2+2+1$$

$$=1+1+1+1+1$$ 

So there are 8 different ways.  

**tip:** You can add some extra requirements by yourself to imcrease the difficulty of this problem. For example, you can claim that you can not step on some certain stairs, or you must take a one-step forward when you have taken several multiple-step jumps. I will not show the answers for these requirements but you can test them yourself.  
