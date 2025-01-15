#ifndef LIB_TRACKED_H
#define LIB_TRACKED_H

#include <stdint.h>

// Returns the maximum number of bytes allocated at any point
uint64_t seq_max_allocation();

#endif // LIB_TRACKED_H