Write-Host "Select a task view mode:"
Write-Host "1. Hidden (default)"
Write-Host "2. Shows"

$selection = Read-Host "Enter your choice (1 or 2)"

function Set-Hidden {
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "ShowTaskViewButton" -Value 0
    Write-Host -f Yellow "Task View set to hidden.`n"
}

function Set-Shows {
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "ShowTaskViewButton" -Value 1
    Write-Host -f Yellow "Task View set to show.`n"
}

switch ($selection) {
    "" {
        Set-Hidden
    }
    "1" {
        Set-Hidden
    }
    "2" {
        Set-Shows
    }
    default {
        Write-Host -ForegroundColor Red "Invalid selection. Please run the script again and choose 1 or 2."
        exit
    }
}