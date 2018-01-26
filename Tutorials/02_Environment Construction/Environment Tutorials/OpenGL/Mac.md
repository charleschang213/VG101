# OpenGL Guide for Mac Users 
If you use Mac OS, then you don't need to install OpenGL. When you are compiling OpenGL programs, use this kind of command line  

g++ xxx1.cpp xxx2.cpp ... -o abc -framework OpenGL -framework GLUT  

(xxx1.cpp xxx2.cpp ... means all cpp files in your project, and abc means the name of the output file, which you can name freely)

And if you are using Clion, you need to add this toyour cmakelist file  

> set(CMAKE_EXE_LINKER_FLAGS "-framework OpenGL -framework GLUT")