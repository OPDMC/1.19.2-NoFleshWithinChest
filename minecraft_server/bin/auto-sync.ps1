# Change the script execution directory to the root directory of the repo
$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Definition
cd $repoRoot\..

# Create the logs folder if it does not exist
$logsPath = "$repoRoot\..\logs\auto-sync"
if (-not (Test-Path $logsPath)) {
    New-Item -ItemType Directory -Path $logsPath
}

# Infinite loop to execute every 12 hours
while ($true) {
    # Get the current timestamp
    $timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
    $logFile = "$logsPath\log_$timestamp.txt"

    # Execute git commands and write output and errors to log file
    git add . *> $logFile
    git commit -m "Auto-sync at $timestamp" >> $logFile 2>&1
    git push >> $logFile 2>&1

    # Countdown timer for 12 hours, updating every second
    $totalTime = 43200 # 12 hours in seconds
    for ($i=$totalTime; $i -gt 0; $i--) {
        $remainingTime = New-TimeSpan -Seconds $i
        $totalTimeSpan = New-TimeSpan -Seconds $totalTime
        Write-Host "`rRemaining time: $($remainingTime.ToString('hh\:mm\:ss'))/$($totalTimeSpan.ToString('hh\:mm\:ss'))" -NoNewline
        Start-Sleep -Seconds 1
    }
    Write-Host "" # Move to a new line after countdown finishes
}
