#!/bin/bash

# Check if the initial search directory and destination directory are provided as arguments
if [ $# -lt 3 ]; then
  echo "Usage: $0 initial_search_directory destination_directory file1 file2 file3 ..."
  exit 1
fi

# Extract the initial search directory from the first argument
initial_search_directory="$1"
# Handle . and .. arguments for current and parent directories
if [ "$initial_search_directory" = "." ]; then
  initial_search_directory=$(pwd)
elif [ "$initial_search_directory" = ".." ]; then
  initial_search_directory=$(dirname "$(pwd)")
fi

# Extract the destination directory from the second argument and handle . and .. arguments
if [ "$2" = "." ]; then
  destination_directory=$(pwd)
elif [ "$2" = ".." ]; then
  destination_directory=$(dirname "$(pwd)")
else
  destination_directory="$2"
fi

# Shift the arguments to leave only the filenames
shift 2

# Loop through the remaining arguments (filenames)
for file in "$@"; do
  # Change the file extension from ".o" to ".c"
  file_with_c_extension="${file%.o}.c"
  
  # Use the find command to locate the file with the ".c" extension within the initial search directory
  found_files=$(find "$initial_search_directory" -type f -name "$file_with_c_extension")

# Check if any matching files were found
  if [ -n "$found_files" ]; then
    first_file_copied=false
    for found_file in $found_files; do
      # Generate the destination filename based on whether it's the first file or a duplicate
      if [ "$first_file_copied" = false ]; then
        destination_filename="$file_with_c_extension"
        first_file_copied=true
      else
        destination_filename="$file_with_c_extension$count"
        ((count++))
      fi
      
      # Copy the file with the new extension ".c" and the generated destination filename to the destination directory
      cp "$found_file" "$destination_directory/$destination_filename"
      
      echo "Copied $found_file to $destination_directory/$destination_filename ©faithful"
    done
  else
    echo "File $file_with_c_extension not found in $initial_search_directory. ©faithful"
  fi
done
