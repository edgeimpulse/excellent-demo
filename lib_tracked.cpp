#include <iostream>
using namespace std;
#include <stdlib.h>
#include <stdint.h>
#include "lib_tracked.h"
// Add these global variables to track memory usage
static uint64_t current_bytes = 0;
static uint64_t max_bytes = 0;

void *helper(uint64_t n) {
  cout << "Asked for " << n << " bytes" << endl;
  current_bytes += n;
  if (current_bytes > max_bytes) {
    max_bytes = current_bytes;
  }
  return malloc(n);
}

// Add new function to report maximum allocation
uint64_t seq_max_allocation() {
  return max_bytes;
}

// Codon looking for C binding
extern "C" {

void *seq_alloc(uint64_t n) {
  return helper(n);
}

void *seq_alloc_atomic(uint64_t n) {
  return helper(n);
}

void *seq_realloc(void *p, uint64_t newsz, uint64_t oldsz) {
  cout << "Asked for " << newsz << " bytes (realloc)" << endl;
  current_bytes = current_bytes - oldsz + newsz;
  if (current_bytes > max_bytes) {
    max_bytes = current_bytes;
  }
  return realloc(p, newsz);
}

void seq_free(void *p, uint64_t sz) {
  cout << "Free" << endl;
  current_bytes -= sz;
  free(p);
}

} // end extern "C"
