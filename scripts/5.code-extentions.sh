#!/bin/bash

# List of VSCode extension IDs to install
extensions=(
    svelte.svelte-vscode
)

# Loop through the list and install each extension
for extension in "${extensions[@]}"; do
    code-server --install-extension $extension --force
done