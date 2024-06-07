# pip install pyunpack patool

import sys
import os
import patoolib

def is_multi_part_zip(file_path):
    z01_file = file_path[:-4] + ".z01"  # Replace the last .zip with .z01
    return os.path.exists(z01_file)

def delete_original_files(file_path):
    base_name = file_path[:-4]
    files_to_delete = [file_path] + [base_name + ext for ext in ['.zip', '.z01', '.z02', '.z03', '.z04', '.z05', '.z06', '.z07', '.z08', '.z09']]
    for file in files_to_delete:
        if os.path.exists(file):
            os.remove(file)
            print(f"Deleted: {file}")

def unzip_files(directory):
    for root, dirs, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            if (file.endswith('.jar.zip') or file.endswith('.zip.zip')) and is_multi_part_zip(file_path):
                print(f"Processing file: {file_path}")
                try:
                    patoolib.extract_archive(file_path, outdir=root)
                    print(f"Unzipped: {file_path}")
                    # Delete original files after successful extraction
                    delete_original_files(file_path)
                except Exception as e:
                    print(f"Error unzipping {file_path}: {e}")

def main():
    if len(sys.argv) != 2:
        print("Usage: ClientPkgReformat.py <DIRECTORY>")
        sys.exit(1)

    directory = sys.argv[1]

    if not os.path.isdir(directory):
        print(f"Error: {directory} is not a valid directory.")
        sys.exit(1)

    unzip_files(directory)

if __name__ == "__main__":
    main()

