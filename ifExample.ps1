# ============================================================
# ifExample.ps1
# Demonstrates if and if-else conditional statements to
# check for folder existence and create new folders.
# ============================================================

# --- Part 1: if statement ---
# Create 'if_folder' ONLY if 'new_folder' already exists

Write-Output "--- Part 1: if statement ---"
Write-Output "Checking if 'new_folder' exists..."

if (Test-Path -Path "new_folder") {
    Write-Output "'new_folder' exists. Creating 'if_folder'..."
    New-Item -ItemType Directory -Name "if_folder"
    Write-Output "'if_folder' has been created."
}

Write-Output ""

# --- Part 2: if-else statement ---
# Check if 'if_folder' exists:
#   - If yes, create 'hyperionDev'
#   - If no, create 'new-projects'

Write-Output "--- Part 2: if-else statement ---"
Write-Output "Checking if 'if_folder' exists..."

if (Test-Path -Path "if_folder") {
    Write-Output "'if_folder' exists. Creating 'hyperionDev'..."
    New-Item -ItemType Directory -Name "hyperionDev"
    Write-Output "'hyperionDev' folder has been created."
} else {
    Write-Output "'if_folder' does not exist. Creating 'new-projects'..."
    New-Item -ItemType Directory -Name "new-projects"
    Write-Output "'new-projects' folder has been created."
}

Write-Output ""
Write-Output "--- Final directory contents ---"
ls