#include <stdlib.h>
#include <stdint.h>

void *seq_alloc(uint64_t n) {
  return malloc(n);
}

void *seq_alloc_atomic(uint64_t n) {
  return malloc(n);
}

void *seq_realloc(void *p, uint64_t newsz, uint64_t oldsz) {
  return realloc(p, newsz);
}

void seq_free(void *p) {
  free(p);
}
