// Lab 1: VS Setup and Hello World!

#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <stdio.h>

__global__ void kernel() {
	printf("Hello, Fuck!\n");
}

int main() {
	kernel << <1, 1 >> > ();
	cudaDeviceSynchronize();
	return 0;
}