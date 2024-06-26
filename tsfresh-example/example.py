import tsfresh.feature_extraction.feature_calculators as ts

def generate_features(input):
    return ts.binned_entropy(input, 3)

input = list(range(1, 20))

print(generate_features(input))
