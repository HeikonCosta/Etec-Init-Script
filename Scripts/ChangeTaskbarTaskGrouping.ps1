Write-Host "Select task grouping:"
Write-Host "1. Combine Tasks (default)"
Write-Host "2. Combine Tasks when taskbar is full"
Write-Host "3. Never Combine Tasks"

$selection = Read-Host "Enter your choice (1, 2 or 3)"

function Set-Group {
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "TaskbarGlomLevel" -Value 0
    Write-Host -f Yellow "Task Grouping set to combine tasks.`n"
}

function Set-GroupWhenNeed {
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "TaskbarGlomLevel" -Value 1
    Write-Host -f Yellow "Task Grouping set to combine Tasks when taskbar is full.`n"
}

function Set-NeverGroup {
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "TaskbarGlomLevel" -Value 2
    Write-Host -f Yellow "Task Grouping set to never Combine Tasks.`n"
}

switch ($selection) {
    "" {
        Set-Group
    }
    "1" {
        Set-GroupWhenNeed
    }
    "2" {
        Set-GroupWhenNeed
    }
    "3"{
        Set-NeverGroup
    }
    default {
        Write-Host -ForegroundColor Red "Invalid selection. Please run the script again and choose 1 or 2."
        exit
    }
}