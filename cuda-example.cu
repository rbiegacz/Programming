#include <stdio.h>

__global__ void square_kernel(float * d_out, float * d_in) {
  int index = threadIdx.x;
  float f = d_in[index];
  d_out[index] = f * f;
}


int main (int argc, char **argv) {
    const int ARRAY_SIZE = 1024;
    const int ARRAY_BYTES = ARRAY_SIZE * sizeof(float);

    // filling in initial array of numbers
    float h_in[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; i++) {
    	h_in[i] = float(i);
    }
    float h_out[ARRAY_SIZE];

    // declaration of GPU mem pointers
    float * d_in;
    float * d_out;


    // allocate GPU memory
    cudaMalloc((void**) &d_in, ARRAY_BYTES);
    cudaMalloc((void**) &d_out, ARRAY_BYTES);

    // transfer the array to the GPU
    cudaMemcpy(d_in, h_in, ARRAY_BYTES, cudaMemcpyHostToDevice);

    // launch the kernel
    square_kernel<<<1, ARRAY_SIZE>>>(d_out, d_in);

    // copy back the result array to the CPU
    cudaMemcpy(h_out, d_out, ARRAY_BYTES, cudaMemcpyDeviceToHost);

    // print out the resulting array
    for (int i =0; i < ARRAY_SIZE; i++) {
    	printf("%f", h_out[i]);
	printf(((i % 4) != 3) ? "\t" : "\n");
    }

    cudaFree(d_in);
    cudaFree(d_out);
    
    return 0;
}
