#
# Copyright (c) 2017 Rafal Biegacz
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#    http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifneq (/usr/bin/g++,$(shell which g++))
	$(error "install g++")
endif

cuda-square:
ifneq (/usr/bin/nvcc,$(shell which nvcc))
	$(warning "nvcc not available; install it;")
else
	nvcc -o cuda-square.exe cuda-example.cu
endif
cpu-square:
	g++ -o cpu-square.exe cpu-example.cpp

opencl-square:
	g++ -o opencl-square.exe opencl-square.cl -lOpenCL

simd-cpu:
	g++ -o simd-cpu.exe simd-cpu.cpp -std=c++0x

mpi:
ifneq (/usr/bin/mpic++,$(shell which mpic++))
	$(warning "mpic++ not available; install it;")
else
	mpic++ openmpi-helloworld.cpp -o openmpi-helloworld.exe
endif

all: cuda-square cpu-square mpi

exe: all
	time ./cpu-square.exe
	time ./cuda-square.exe
	time ./openmpi-helloworld.exe

clean:
	rm *.exe
	rm *~
