#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

filename="$1"

# Add the shebang line to the file
echo "#!/bin/bash" > "$filename"

# Prompt for the second line
echo "Enter the second line of the file (type FAI on a new line to finish input):"
IFS=
while read -r line
do
  if [ "$line" = "FAI" ]; then
    break
  fi
  echo "$line" >> "$filename"
done

# Add execute permissions to the file
chmod u+x "$filename"

echo "Second line added to $filename, and execute permissions granted. courtsey: faithful"

# Display the contents of the created script
echo -e "\nContents of $filename:"
cat "$filename"

