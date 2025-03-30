#!/bin/bash
# Specify the file name as the first command-line argument
input_file="$1"

# Check if the file path is provided and the file exists
if [[ -z "$input_file" || ! -f "$input_file" ]]; then
  echo "Error: File not specified or does not exist."
  exit 1
fi

# Process the file
while read -r line; do
  if [[ $line =~ ^UPDATE ]]; then
    # Use awk to select only the 1st and 3rd columns
    echo "$line" | awk '{ print $1, $3 }' | sed 's/\[.*\]//' 
  else
    # Output the line as is if it's not starting with UPDATE
    echo "$line"
  fi
done < "$input_file"

