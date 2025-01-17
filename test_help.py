import subprocess
import re
import numpy as np

def verify_cli_app_output(expected_result, *input_arrays):
    # Convert arrays to comma-separated strings
    input_strs = [','.join(map(str, arr)) for arr in input_arrays]

    # Run the app with arrays as CLI arguments
    proc = subprocess.run(['./build/app', *input_strs], capture_output=True, text=True)
    output_lines = [line for line in proc.stdout.split('\n') if line.startswith('out:')]
    assert len(output_lines) > 0, "No output lines found starting with 'out:'"
    print(proc.stdout)

    # Parse the output
    match = re.match(r'out: shape=(\d+), stride=(\d+), data=\[([\d\s,]+)\]', output_lines[0])
    assert match, "Output format doesn't match expected pattern"

    # Extract and verify values
    app_data = [int(x.strip()) for x in match.group(3).split(',')]
    np.testing.assert_array_equal(app_data, expected_result, "App output doesn't match expected result")