# partially working
# need a patch
Write-Host "Select a widget mode:"
Write-Host "1. Hidden (default)"
Write-Host "2. Shows"

$selection = Read-Host "Enter your choice (1 or 2)"

function Set-Hidden {
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Dsh -Name "AllowNewsAndInterests" -Value 0
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "TaskbarDa" -Value 0
    Write-Host -f Yellow "Widgets set to hidden.`n"
}

function Set-Shows {
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Dsh -Name "AllowNewsAndInterests" -Value 1
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "TaskbarDa" -Value 1
    Write-Host -f Yellow "Widgets set to show.`n"
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
