# maybe a patch
if(!([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList "-File `"$($MyInvocation.MyCommand.Path)`"  `"$($MyInvocation.MyCommand.UnboundArguments)`""
    Exit
}

Write-Host "Select a widget mode:"
Write-Host "1. Hidden (default)"
Write-Host "2. Shows"

$selection = Read-Host "Enter your choice (1 or 2)"

function Set-Hidden {
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarDa -Value 0
    Write-Host -f Yellow "Widgets set to hidden.`n"
}

function Set-Shows {
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarDa -Value 1
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
