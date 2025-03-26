# working
Write-Host "Select a theme mode:"
Write-Host "1. Dark (default)"
Write-Host "2. Light"

$selection = Read-Host "Enter your choice (1 or 2)"

function Set-DarkTheme {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0
    Write-Host -f Yellow "Dark theme enabled.`n"
}

function Set-LightTheme {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 1
    Write-Host -f Yellow "Light theme enabled.`n"
}

switch ($selection) {
    "" {
        Set-DarkTheme
    }
    "1" {
        Set-DarkTheme
    }
    "2" {
        Set-LightTheme
    }
    default {
        Write-Host -ForegroundColor Red "Invalid selection. Please run the script again and choose 1 or 2."
        exit
    }
}
