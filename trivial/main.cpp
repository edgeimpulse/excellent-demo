// #include "serial_print.h"
#include <iostream>
#include <stdint.h>
#include "lib_tracked.h"
#include <vector>

typedef struct {
    uint64_t shape;
    uint64_t stride;
    float* data;
} ndarray;

extern "C" void my_add(ndarray *a, ndarray *b, ndarray *out);

// Helper function modified to return a vector
std::vector<float> parse_numbers(const char* str) {
    std::vector<float> result;
    std::string num;

    while (*str) {
        if (*str == ',') {
            result.push_back(std::stof(num));
            num.clear();
        } else {
            num += *str;
        }
        str++;
    }
    if (!num.empty()) {
        result.push_back(std::stof(num));
    }
    return result;
}

int main(int argc, char* argv[])
{
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " num1,num2,num3,... num1,num2,num3,...\n";
        return 1;
    }

    std::vector<float> data1 = parse_numbers(argv[1]);
    std::vector<float> data2 = parse_numbers(argv[2]);

    if (data1.size() != data2.size()) {
        std::cerr << "Error: Input arrays must be the same length\n";
        return 1;
    }

    ndarray in = {data1.size(), sizeof(float), data1.data()};
    ndarray in2 = {data2.size(), sizeof(float), data2.data()};
    ndarray out;
    my_add(&in, &in2, &out);

    std::cout << "out: shape=" << out.shape
              << ", stride=" << out.stride
              << ", data=[";
    for (uint64_t i = 0; i < out.shape; i++) {
        std::cout << out.data[i];
        if (i < out.shape - 1) {
            std::cout << ", ";
        }
    }
    std::cout << "]\n";
    std::cout << "Max allocation: " << seq_max_allocation() << " bytes" << std::endl;
    return 0;
}
