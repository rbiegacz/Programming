WHAT THIS REPO IS ABOUT:

This repo contains various exercises related to different parallel programming paradigms
_parallel_ folder contains examples for programs implemented according to CPU, CUDA, OpenCL, OpenMP, MPI paradigms.

EXECUTION:

Enter _parallel_ folder and run 'make all' command.

WHAT IS PARALLELISM?

If you are not familiarized with parallel programming concepts then I would recommend you take a look on the following courses:
- https://www.pluralsight.com/courses/cpp-high-performance-computing (Pluralsight course)
- https://www.udacity.com/course/intro-to-parallel-programming--cs344 (Udacity course)

Phases/approaches when parallelizing your program:
- Standard program --> SIMD --> Threads --> Processes

Hardware supported parallelism:
- special CPU instructions (e.g. SSE, AVX), non-CPU devices: FPGA/ASIC/GPGPU, network of devices equipped w/ CPU/FPGA/ASIC/GPGPU

Parallel concepts/frameworks:
- MPI = Message Passing Interface - good tutorials on MPI is here: http://mpitutorial.com/tutorials/
- OpenMP = Open Multi-Processing - a standard for decorating your code to achieve mutiprocessing
-- you can achieve data and task parallelism
- AMP = Accelerated Massive Parallism
- SIMD = Single Instruction Multiple Data - parallel execution of computations using Streaming SIMD Extensions or AVX
- SIMT = Single Instruction Multiple Threats - 

ASSUMPTIONS:

Assuming that you have Ubuntu machine (specifically, I tested this repo on Ubuntu 16.04 64-bit).
Your computer needs to be equppied with GPU (specifically, I tested this repo on NVIDIA TITAN X).
Couple hints:
- Installing MPI on your Ubuntu machine: sudo apt-get install mpi-default-dev
- Installing NVCC on your Ubuntu machine: sudo apt-get install nvidia-cuda-toolkit



