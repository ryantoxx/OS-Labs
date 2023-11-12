import os
import subprocess

# Define the number of methods
num_methods = 7

# Iterate through methods 1 to num_methods
for method_num in range(1, num_methods + 1):
    method_dir = f"method{method_num}"

    # Compile the .asm file for the current method
    asm_file = os.path.join(method_dir, f"method{method_num}.asm")
    bin_file = os.path.join(method_dir, f"method{method_num}.bin")

    # Check if the .asm file exists
    if os.path.exists(asm_file):
        # Compile the .asm file to generate the .bin file
        subprocess.run(["nasm", "-f", "bin", asm_file, "-o", bin_file])
    else:
        print(f"Method {method_num} .asm file not found.")

    # Check if the .bin file exists
    if os.path.exists(bin_file):
        # Determine the size of the .bin file
        size = os.path.getsize(bin_file)

        # Create the floppy image
        floppy_img = os.path.join(method_dir, f"method{method_num}.img")
        with open(bin_file, "rb") as small, open(floppy_img, "wb") as big:
            big.write(small.read())
            # Add padding to match the floppy size (1474560 bytes)
            padding_bytes = b'\x00' * (1474560 - size)
            big.write(padding_bytes)
    else:
        print(f"Method {method_num} .bin file not found.")
