#OPT=-Xcompiler "-std=c++0x"

cuda-square:
	nvcc $(OPT) -o cuda-square.exe cuda-example.cu

cpu-square:
	g++ -o cpu-square.exe cpu-example.cpp

opencl-square:
	g++ -o opencl-square.exe opencl-square.cl -lOpenCL

all: cuda-square cpu-square

exe: all
	time ./cpu-square.exe
	time ./cuda-square.exe

clean:
	rm *.exe
	rm *~
