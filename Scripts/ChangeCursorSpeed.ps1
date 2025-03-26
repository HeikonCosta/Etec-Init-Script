# working
$selection = Read-Host "Select the cursor speed (1-20): "

function Set-Defult {
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSensitivity" -Value 5
    Write-Host -f Yellow "Cursor speed set to 5.`n"
}

function Set-Speed {
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSensitivity" -Value $selection
    Write-Host -f Yellow "Cursor speed set to $selection.`n"
}

switch ($selection) {
    "" {
        Set-Defult
    }
    {$_ -in 1..20} {
        Set-Speed
    }
    default {
        Write-Host -ForegroundColor Red "Invalid selection. Please run the script again and 1-20."
        exit
    }
}
