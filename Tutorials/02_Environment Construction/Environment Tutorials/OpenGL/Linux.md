# OpenGL Guide for Linux Users  
For Linux users, installing freeglut is very simple. Just open the terminal and type in the following command  

> sudo apt-get install freeglut3 freeglut3-dev binutils-gold  

When you want to run programs with OpenGL, just use the following command in your terminal  

> g++ xxx1.cpp xxx2.cpp ... -lGL -lglut -o abc  
> ./abc  

(xxx1.cpp xxx2.cpp ... means all cpp files in your project, and abc means the name of the output file, which you can name freely)

If you are running codes in Atom, just add "-lGL -lglut" to the "link library" in the Ctrl+F6 tab.  