import numpy as np
import scipy

def generate_features(input):
    out = []
    out.append(np.std(input))
    out.append(len(scipy.signal.find_peaks(input)))
    return out



input = [-0.0156 -0.0227 -0.0233 -0.0234 -0.0239 -0.0229 -0.0234 -0.0244 -0.0222 -0.0234 -0.0259 -0.019  -0.0156 -0.0234 -0.0178, 10]

generate_features(input)
