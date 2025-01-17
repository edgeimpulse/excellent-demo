from impl import my_add_impl
import numpy as np
import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from test_help import verify_cli_app_output

def test_add_implementation():
    # Test NumPy array addition
    a = np.array([1, 2, 3, 4])
    b = np.array([1, 2, 3, 4])
    result = my_add_impl(a, b)
    expected = np.array([2, 4, 6, 8])
    np.testing.assert_array_equal(result, expected)

    # Verify CLI app results
    verify_cli_app_output(result, a, b)

if __name__ == "__main__":
    test_add_implementation()
