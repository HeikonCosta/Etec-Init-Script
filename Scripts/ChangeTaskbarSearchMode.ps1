# working
Write-Host "Select a search icon mode:"
Write-Host "1. Hidden (default)"
Write-Host "2. Icon only"
Write-Host "3. Search bar"
Write-Host "4. Icon in button"

$selection = Read-Host "Enter your choice (1, 2, 3 or 4)"

function Set-Hidden {
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name 'SearchboxTaskbarMode' -Type 'DWord' -Value 0
    Write-Host -f Yellow "Search Mode changed to hidden.`n"
}

function Set-IconOnly {
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name 'SearchboxTaskbarMode' -Type 'DWord' -Value 1
    Write-Host -f Yellow "Search Mode changed to icon only.`n"
}

function Set-IconInButton {
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name 'SearchboxTaskbarMode' -Type 'DWord' -Value 2
    Write-Host -f Yellow "Search Mode changed to icon in button.`n"
}

function Set-SearchBar {
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name 'SearchboxTaskbarMode' -Type 'DWord' -Value 3
    Write-Host -f Yellow "Search Mode changed to seachbar.`n"
}

switch ($selection) {
    "" {
        Set-Hidden
    }
    "1" {
        Set-Hidden
    }
    "2" {
        Set-IconOnly
    }
    "3" {
        Set-IconInButton
    }
    "4" {
        Set-SearchBar
    }
    default {
        Write-Host -ForegroundColor Red "Invalid selection. Please run the script again and choose 1, 2, 3 or 4."
        exit
    }
}
