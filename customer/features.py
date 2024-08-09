import numpy as np
# import scipy

def find_peaks(x):
    peaks = []
    for i in range(1, len(x) - 1):
        if x[i - 1] < x[i] > x[i + 1]:
            peaks.append(i)
    return peaks

@export
def generate_features(input: Ptr[np.ndarray[float, 1]]):
    input = input[0]
    out = []
    out.append(np.std(input))
    out.append(len(find_peaks(input)))
    return out




#input = [-0.0156, -0.0227, -0.0233, -0.0234, -0.0239, -0.0229, -0.0234, -0.0244, -0.0222, -0.0234, -0.0259, -0.019, -0.0156, -0.0234, -0.0178, 10]

#print(generate_features(input))
