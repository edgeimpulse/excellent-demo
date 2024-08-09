import numpy as np


def fft_spectrum(frames, fft_points=512):
    """This function computes the one-dimensional n-point discrete Fourier
    Transform (DFT) of a real-valued array by means of an efficient algorithm
    called the Fast Fourier Transform (FFT). Please refer to
    https://docs.scipy.org/doc/numpy/reference/generated/numpy.fft.rfft.html
    for further details.

    Args:
        frames (array): The frame array in which each row is a frame.
        fft_points (int): The length of FFT. If fft_length is greater than frame_len, the frames will be zero-padded.

    Returns:
            array: The fft spectrum.
            If frames is an num_frames x sample_per_frame matrix, output
            will be num_frames x FFT_LENGTH.
    """
    SPECTRUM_VECTOR = np.fft.rfft(frames, n=fft_points, axis=-1, norm=None)
    return np.absolute(SPECTRUM_VECTOR)


def power_spectrum(frames, fft_points):
    """Power spectrum of each frame.

    Args:
        frames (array): The frame array in which each row is a frame.
        fft_points (int): The length of FFT. If fft_length is greater than frame_len, the frames will be zero-padded.

    Returns:
            array: The power spectrum.
            If frames is an num_frames x sample_per_frame matrix, output
            will be num_frames x fft_length.
    """
    return 1.0 / fft_points * np.square(fft_spectrum(frames, fft_points))

@export
def generate_features(input: Ptr[np.ndarray[float, 1]],
                      frame_size: int,
                      fft_size: int,
                      output: Ptr[np.ndarray[float, 2]]):
    input_reshaped = np.reshape(input[0], (-1, frame_size))
    output[0] = power_spectrum(input_reshaped, fft_size)

'''
input = np.array([0.2470, -0.4304, -0.9923, -1.0102, -0.5687, 0.1191, 0.7667, 1.0614, 0.7940, 0.0991, -0.4816, -0.9524, -0.9578, -0.6449, 0.2309, 0.7219, 1.0711, 0.8023, 0.0542, -0.4745, -1.0562, -0.8612, -0.2869, 0.1635, 0.7713, 0.9633, 0.6966, 0.1055, -0.6854, -0.9501, -0.7795, -0.4141, 0.2724, 0.8313, 0.9308, 0.6764, -0.0987, -0.5782, -0.9305, -0.8633, -0.3703, 0.4105, 0.8242, 0.9785, 0.4415, -0.0183, -0.6195, -1.0339, -0.8468, -0.2340, 0.3867, 0.9366, 0.9824, 0.6682, -0.1983, -0.8198, -0.9776, -0.7510, -0.1863, 0.5749, 0.8727, 0.9547, 0.4211, -0.2702, -0.7578, -0.9896, -0.6869, -0.0612, 0.6043, 0.9324, 0.9054, 0.3475, -0.1959, -0.8891, -1.0128, -0.6421, -0.0245, 0.5605, 1.0065, 0.8225, 0.3661, -0.3759, -0.8418, -1.0468, -0.6020, 0.0375, 0.7299, 1.0559, 0.8837, 0.2379, -0.3551, -0.9804, -0.9239, -0.4617, -0.0571, 0.6450, 0.9617, 0.7370, 0.4257, -0.3916, -0.8378, -1.0119, -0.4930, 0.2098, 0.7428, 0.9908, 0.7492, 0.2576, -0.5474, -0.9514, -0.9384, -0.5748, 0.1881, 0.7462, 0.8847, 0.8915, 0.3235, -0.4997, -0.9000, -0.7715, -0.3475, 0.1775, 0.8012, 0.9421, 0.7048, 0.0897, -0.6061, -0.9405, -0.8668, -0.4114, 0.2920, 0.8920, 1.0544, 0.6019, 0.0306, -0.5786, -0.9819, -0.8275, -0.4641, 0.3465, 0.8204, 0.9212, 0.6782, -0.1161, -0.7370, -1.0199, -0.7616, -0.1773, 0.3927, 0.9146, 0.9817, 0.4189, 0.0252, -0.7683, -1.0024, -0.7143, -0.2131, 0.5674, 0.9643, 0.9882, 0.4813, -0.2866, -0.9017, -1.0339, -0.7639, -0.1421, 0.6644, 0.9378, 0.8162, 0.4840, -0.2752, -0.8332, -1.0306, -0.6984, -0.1740, 0.5063, 1.0416, 0.8551, 0.4422, -0.2983, -0.8524, -1.0125, -0.6084, -0.1480, 0.5300, 0.9781, 0.8452, 0.4319, -0.4447, -0.8232, -0.9779, -0.5672, 0.0490, 0.6888, 0.9783, 0.7655, 0.3662, -0.4595, -0.9232, -0.9419])
out = generate_features(input, 20, 16)
out = generate_features(input, 20, 32)
out = generate_features(input, 10, 16)
'''

# import matplotlib.pyplot as plt
# import seaborn as sns

# # Create a heatmap
# plt.figure(figsize=(10, 8))
# sns.heatmap(out, annot=True, fmt=".2f", cmap="viridis")
# plt.title("Heatmap of the 2D np array 'out'")
# plt.xlabel("Feature Index")
# plt.ylabel("Frame Index")
# plt.show()
