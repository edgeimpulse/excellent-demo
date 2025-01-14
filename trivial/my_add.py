import numpy as np

def my_add_impl(x, y):
    return x + y

@export
def my_add(x: Ptr[np.ndarray[np.float32, 1]],
           y: Ptr[np.ndarray[np.float32, 1]],
           r: Ptr[np.ndarray[np.float32, 1]]):
    r[0] = my_add_impl(x[0], y[0])
