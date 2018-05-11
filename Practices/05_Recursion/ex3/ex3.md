# Chapter 5 Practice 3 - Maze(a little bit difficult)    
The main purpose of this is to find the shortest way to walk out a maze and find the specific route.  

## The Maze  
The maze will be represented as a $m\times n$ matrix containing only 0 and 1 like the following.  

0,1,1,0,0,0  
0,0,0,0,1,0  
1,0,1,1,0,0  
1,0,0,1,0,1  
0,0,1,0,0,1  
1,0,0,0,0,0  

Where "0" represents the floor and "1" represents the wall.

The starting point is the left-top corner and the destination is the right-bottom corner.  

Your function should look like this  

```   
function y = minroute(map)  
...  
end  
```  
Where $map$ indicates the matrix. The return value is the minimum number of steps to walk complete the maze. Meanwhile, the function should also print the specific route. In the program I give, the function will work like this:  

```  
minroute(map)  
down right down down down down right right right right  
ans =   
  10  
```  

**tip:** As the form of the function is not easy to perform a recursion directly, you can define another subfunction and use it in the original function.  
