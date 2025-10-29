Write-Host "Welcome to the Roblox shortcut maker V2!"

$Name = Read-Host -Prompt "Enter Desired Name"
$GameId = Read-Host -Prompt "Enter Game ID"

# --- Icon Notes --- 
Write-Host "Note: You have to get the custom icons yourself and get its path by right clicking on the icon and click copy as path"
Write-Host "Note: This is not a regular image it must be in the format .ico"
$IconPath = Read-Host -Prompt "Enter (optional) path to icon (Press enter for none)"

# Changes the window style so will the command prompt show or not 
# Default 7 means no (minimized)
$WINDOWSTYLE = 7

# Current Directory of Script
$ScriptDir = $PSScriptRoot

# --- Define Shortcut Properties ---

#Defining Path for Shortcut
$ShortcutPath = "$ScriptDir\Roblox Games\$Name.lnk"

# Define command to run
$Command = "Start-Process 'roblox://placeId=$GameId'"

# Create the shell object needed to make shortcuts.
$WshShell = New-Object -ComObject WScript.Shell
$ShortcutObject = $WshShell.CreateShortcut($ShortcutPath)

# Shortcut Properties
$ShortcutObject.TargetPath = "powershell.exe"
$ShortcutObject.Arguments = "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -Command $Command"

if (!$IconPath) {
    Write-Host "No icon provided, a default will be used"
} else {
    $ShortcutObject.IconLocation = $IconPath
}
$ShortcutObject.WindowStyle = $WINDOWSTYLE
$ShortcutObject.WorkingDirectory = "$ScriptDir\Roblox Games"

$ShortcutObject.Save()

Write-Host "Shortcut Created Successfully. Check the Roblox Games Folder"
Read-Host "Press Enter to exit"