# Set the path to the folder containing the zip files
$folderPath = "X:\Dropbox\2_Library\1_models\external\poliigon\."

# Get all zip files in the folder
$zipFiles = Get-ChildItem -Path $folderPath -Filter *.zip

# Loop through each zip file and extract its contents into its own folder
foreach ($file in $zipFiles) {
    # Create a folder with the same name as the zip file (minus the .zip extension)
    $extractPath = Join-Path -Path $folderPath -ChildPath ($file.BaseName)

    # Extract the contents of the zip file into the newly created folder
    Expand-Archive -Path $file.FullName -DestinationPath $extractPath
}

