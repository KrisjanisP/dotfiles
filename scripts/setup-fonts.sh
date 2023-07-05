#!/bin/bash

# Exit on error and output ran command
set -ex

# Set download URL
URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip"

# Set the temporary directory
TEMP_DIR=$(mktemp -d -t ci-$(date +%Y-%m-%d-%H-%M-%S)-XXXXXXXXXX)

# Set the target directory
TARGET_DIR="${HOME}/.fonts"

# Download the file to the temporary directory
curl -L $URL -o "${TEMP_DIR}/FiraCode.zip"

# Unzip the file
unzip "${TEMP_DIR}/FiraCode.zip" -d "${TEMP_DIR}"

# Ensure the target directory exists
mkdir -p "${TARGET_DIR}"

# Move the font files to the target directory
find "${TEMP_DIR}" -type f \( -name "*.otf" -o -name "*.ttf" \) -exec mv {} "${TARGET_DIR}" \;

# Remove the temporary directory
rm -rf "${TEMP_DIR}"

# Update the font cache (might require sudo)
fc-cache -fv

# Print end message
echo "The operation completed successfully!"

