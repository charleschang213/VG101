# OpenGL guide for Windows System
If you are using windows system, please follow the guideline to install the OpenGL library.(cite Feng Zhengyang, my TA when I was studying VG101)    

1. check g++ -v in cmd to find your gcc directory. If you have installed MinGW, it should be .......\MinGW.  

2. [download binary FreeGLUT](http://files.transmissionzero.co.uk/software/development/GLUT/freeglut-MinGW.zip)  for MinGW (Links to an external site.) and unzip.  

3. put *.dll (all file with extension .dll) in C:\Windows\System32 (32bit environment) or C:\Windows\SysWOW64 (64bit environment)  

4.  put *.h in ......\MinGW\include\GL

5. put *.a in .......\MinGW\lib (according to bits as well)

6. (**For Code::Blocks users**)Open Code::Blocks, Find Settings-Compilers-Global Compiler Settings-Linker Settings, hit Add at the bottom, change the folder to .......\MinGW\lib, add library files libopengl32.a, libglu32.a, libfreeglut.a, and hit Save.  

7. (**For Atom users**)When you open Ctrl+F6 tab, add "-lopengl32 -lglu32 -lfreeglut" to "link library"  

8. (**For those who directly use g++ command to compile**)use the following command in your terminal(xxx1.cpp xxx2.cpp ... means all cpp files in your project, and abc means the name of the output file, which you can name freely)   

> g++ xxx1.cpp xxx2.cpp ... -lfreeglut -lopengl32 -lglu32 -o abc  
> ./abc  

7. test with some good examples available [here](http://math.hws.edu/bridgeman/courses/324/s06/doc/opengl.html) (Links to an external site.). (you may use freeglut.h instead of glut.h)

8. If your program keeps itself compilation error, you may to try to #include <windows.h> in your codes at the very beginning. (But if still no working, double check the previous steps! Especially 32/64-bit thing!) I have to say, after I have installed (Free)GLUT on several Windows systems, some of them need this header but some not, despite of their identical version in gcc and opengl. Honestly, I have no idea how to solve this problem. But, as none of your TAs are working in Windows when grading your submissions, you should not have #include <windows.h> in any of your submissions. Of course, you may add #include <windows.h> every time you write programs in opengl and then delete it before submitting, but a better suggestion is to modify glut.h/freeglut.h you have just put in ...\include\GL by adding #include <windows.h> at the very beginning, and your programs shall not have such errors any more.
