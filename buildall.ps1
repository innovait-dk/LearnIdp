####### delete the api folder and rebuild the documentation #######

### delete the api folder ###

# Get the directory of the current script
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Define the target folder path relative to the script directory
$targetFolder = Join-Path -Path $scriptDir -ChildPath "api"

# Check if the target folder exists
if (Test-Path -Path $targetFolder) {
    # Get all the files and subdirectories in the target folder
    $items = Get-ChildItem -Path $targetFolder

    # Remove all items in the target folder
    foreach ($item in $items) {
        Remove-Item -Path $item.FullName -Recurse -Force
    }

    Write-Output "All contents of '$targetFolder' have been deleted."
} else {
    Write-Output "The folder '$targetFolder' does not exist."
}
### create the api documentation ###
docfx metadata docfx_metadata.json
Write-Output "API documentation has been created."
### build the documentation ###
docfx build

