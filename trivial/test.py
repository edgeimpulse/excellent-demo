from impl import my_add_impl
import numpy as np
import subprocess
import re

def test_add_implementation():
    # Test NumPy array addition
    a = np.array([1, 2, 3, 4])
    b = np.array([1, 2, 3, 4])
    result = my_add_impl(a, b)
    expected = np.array([2, 4, 6, 8])
    np.testing.assert_array_equal(result, expected)

    # Run the app and compare results
    proc = subprocess.run(['./build/app'], capture_output=True, text=True)
    output_lines = [line for line in proc.stdout.split('\n') if line.startswith('out:')]
    assert len(output_lines) > 0, "No output lines found starting with 'out:'"
    print(output_lines)

    # Parse the output
    match = re.match(r'out: shape=(\d+), stride=(\d+), data=\[([\d\s,]+)\]', output_lines[0])
    assert match, "Output format doesn't match expected pattern"

    # Extract and verify values
    app_data = [int(x.strip()) for x in match.group(3).split(',')]
    np.testing.assert_array_equal(app_data, result, "App output doesn't match my_add_impl result")

if __name__ == "__main__":
    test_add_implementation()
