# ============================================================
# file_cd.ps1
# Script to create folders, navigate into one, create
# sub-folders inside it, and remove two of them.
# ============================================================

# --- Step 1: Create three new folders in the current directory ---
Write-Output "Creating three folders: projects, documents, archives..."
New-Item -ItemType Directory -Name "projects"
New-Item -ItemType Directory -Name "documents"
New-Item -ItemType Directory -Name "archives"
Write-Output "Folders created: projects, documents, archives"
Write-Output ""

# --- Step 2: Navigate into one of the folders (projects) ---
Write-Output "Navigating into 'projects'..."
cd projects
Write-Output "Now inside: $(Get-Location)"
Write-Output ""

# --- Step 3: Create three new sub-folders inside 'projects' ---
Write-Output "Creating three sub-folders inside 'projects': alpha, beta, gamma..."
New-Item -ItemType Directory -Name "alpha"
New-Item -ItemType Directory -Name "beta"
New-Item -ItemType Directory -Name "gamma"
Write-Output "Sub-folders created: alpha, beta, gamma"
Write-Output ""

# --- Step 4: Remove two of the sub-folders ---
Write-Output "Removing sub-folders 'beta' and 'gamma'..."
Remove-Item -Recurse -Force "beta"
Remove-Item -Recurse -Force "gamma"
Write-Output "Removed: beta, gamma"
Write-Output ""

# --- Summary ---
Write-Output "Remaining contents of 'projects':"
ls