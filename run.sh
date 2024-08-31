#!/bin/bash

# Set the path to the folder containing the scripts (relative to this script's actual location)
scripts_path="$HOME/dotfiles"

# Get a sorted list of bash scripts
script_files=($(ls $scripts_path/scripts/*.sh 2>/dev/null | sort))

# Check if script files are found
if [ ${#script_files[@]} -eq 0 ]; then
    echo "No script files found in $scripts_path"
    exit 1
fi

# Loop through the sorted list of scripts
for file in "${script_files[@]}"
do
    # Execute the script
    bash "$file"
done

# Get a sorted list of bash scripts
script_files=($(ls $scripts_path/aliases/*.sh 2>/dev/null | sort))

# Check if script files are found
if [ ${#script_files[@]} -eq 0 ]; then
    echo "No script files found in $scripts_path"
    exit 1
fi

# Loop through the sorted list of scripts
for file in "${script_files[@]}"
do
    # Execute the script
    source "$file"
done