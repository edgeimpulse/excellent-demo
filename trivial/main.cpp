// #include "serial_print.h"
#include <iostream>
#include <stdint.h>

typedef struct {
    uint64_t shape;
    uint64_t stride;
    float* data;
} ndarray;

extern "C" void my_add(ndarray *a, ndarray *b, ndarray *out);

int main(void)
{
    float data[10000] = {1,2,3,4};
    ndarray in = {4,4,data};
    ndarray in2 = {4,4,data};
    ndarray out;
    my_add(&in, &in2, &out);

    std::cout << "out: shape=" << out.shape
              << ", stride=" << out.stride
              << ", data=[" << out.data[0] << ", "
              << out.data[1] << ", "
              << out.data[2] << ", "
              << out.data[3] << "]\n";
    return 0;
}
