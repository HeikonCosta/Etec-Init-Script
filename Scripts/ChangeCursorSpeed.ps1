# in development
$selection = Read-Host "Select the cursor speed: "

function Set-Defult {
    Write-Host -f Yellow "Cursor speed set to 5.`n"
}

function Set-Speed {
    Write-Host -f Yellow "Cursor speed set to.`n"
}

switch ($selection) {
    "" {
        Set-Defult
    }
    default {
        Write-Host -ForegroundColor Red "Invalid selection. Please run the script again and choose 1 or 2."
        exit
    }
}
