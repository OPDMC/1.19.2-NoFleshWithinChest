# Set script execution directory to the root directory of the repo
$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Definition
cd $repoRoot\..

# Undo the last commit but keep changes
git reset --soft HEAD~1

# Optionally, if you want to undo the commit and completely remove all changes in the working directory (use with caution)
# git reset --hard HEAD~1

# Print a message indicating the completion of the operation
Write-Host "The last commit has been undone, and changes are kept in the working directory."
