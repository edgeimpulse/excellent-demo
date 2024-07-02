# import tsfresh.feature_extraction.feature_calculators as ts
import numpy as np

def binned_entropy(x, num_bins):
    hist, bin_edges = np.histogram(x, bins=num_bins, density=True)
    prob_distribution = hist / np.sum(hist)
    entropy = -np.sum(prob_distribution * np.log(prob_distribution + 2.220446049250313e-16))
    return entropy

@export
def generate_features(input: np.ndarray[int, 1]):
    return binned_entropy(input, 3)

#input = list(range(1, 20))

#print(generate_features(input))
