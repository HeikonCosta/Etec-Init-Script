Write-Host "Select a taskbar alignment:"
Write-Host "1. Left (default)"
Write-Host "2. Center"

$selection = Read-Host "Enter your choice (1 or 2)"

function Set-LeftAlignment {
    Set-ItemProperty -Path HKCU:\software\microsoft\windows\currentversion\explorer\advanced -Name 'TaskbarAl' -Type 'DWord' -Value 0
    Write-Host -f Yellow "Taskbar alignment set to left.`n"
}

function Set-CenterAlignment {
    Set-ItemProperty -Path HKCU:\software\microsoft\windows\currentversion\explorer\advanced -Name 'TaskbarAl' -Type 'DWord' -Value 1
    Write-Host -f Yellow "Taskbar alignment set to center.`n"
}

switch ($selection) {
    "" {
        Set-LeftAlignment
    }
    "1" {
        Set-LeftAlignment
    }
    "2" {
        Set-CenterAlignment
    }
    default {
        Write-Host -ForegroundColor Red "Invalid selection. Please run the script again and choose 1 or 2."
        exit
    }
}