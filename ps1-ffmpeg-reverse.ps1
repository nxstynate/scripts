# Define the directory containing the MP4 files
$videoDir = "C:\Users\Paul\Downloads\gin-x-juice\forward"

# Get all MP4 files in the directory
$videos = Get-ChildItem -Path $videoDir -Filter *.mp4

# Loop through each video file
foreach ($video in $videos) {
    $inputPath = $video.FullName
    $outputPath = [System.IO.Path]::ChangeExtension($inputPath, "_reversed.mp4")

    # Command to reverse the video using FFmpeg
    ffmpeg -i $inputPath -vf "reverse" -af "areverse" $outputPath
}

# Output success message
Write-Output "All videos have been reversed!"

