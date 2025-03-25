@echo off
echo $$\   $$\                     $$\       $$\          $$\                                   
echo $$ ^|  $$ ^|                    $$ ^|      \__^|         $  ^|                                  
echo $$ ^|  $$ ^| $$$$$$\  $$\   $$\ $$ ^|  $$\ $$\ $$\   $$\\_/$$$$$$$\                           
echo $$$$$$$$ ^| \____$$\ $$ ^|  $$ ^|$$ ^| $$  ^|$$ ^|$$ ^|  $$ ^| $$  _____^|                          
echo $$  __$$ ^| $$$$$$$ ^|$$ ^|  $$ ^|$$$$$$  / $$ ^|$$ ^|  $$ ^| \$$$$$$\                            
echo $$ ^|  $$ ^|$$  __$$ ^|$$ ^|  $$ ^|$$  _$$  $$ ^|$$ ^|  $$ ^|  \____$$\                           
echo $$ ^|  $$ ^|\$$$$$$$ ^|\$$$$$$$ ^|$$ ^| \$$\ $$ ^|\$$$$$$  ^| $$$$$$$  ^|                          
echo \__^|  \__^| \_______^| \____$$ ^| \__^|  \__^\__^| \______/  \_______/                           
echo                     $$\   $$ ^|                                                             
echo                     \$$$$$$  ^|                                                             
echo                      \______/                                                              
echo $$$$$$\           $$\   $$\            $$$$$$\                      $$\            $$\     
echo \_$$  _^|          \__^|  $$ ^|          $$  __$$\                     \__^|           $$ ^|    
echo   $$ ^|  $$$$$$$\  $$\ $$$$$$\         $$ /  \__^| $$$$$$$\  $$$$$$\  $$\  $$$$$$\ $$$$$$\   
echo   $$ ^|  $$  __$$\ $$ ^|\_$$  _^|        \$$$$$$\  $$  _____^|$$  __$$\ $$ ^|$$  __$$\\_$$  _^|  
echo   $$ ^|  $$ ^|  $$ ^|$$ ^|  $$ ^|           \____$$\ $$ /      $$ ^|  \__^|$$ ^|$$ /  $$ ^| $$ ^|    
echo   $$ ^|  $$ ^|  $$ ^|$$ ^|  $$ ^|$$\       $$\   $$ ^|$$ ^|      $$ ^|      $$ ^|$$ ^|  $$ ^| $$ ^|$$\ 
echo $$$$$$\ $$ ^|  $$ ^|$$ ^|  \$$$$  ^|      \$$$$$$  ^|\$$$$$$$\ $$ ^|      $$ ^|$$$$$$$  ^| \$$$$  ^|
echo \______^\__^|  \__^|\__^|   \____/        \______/  \_______^\__^|      \__^|$$  ____/   \____/ 
echo                                                                         $$ ^|               
echo                                                                         $$ ^|               
echo                                                                         \__^|               

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\ChangeWindowsTheme.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\ChangeTaskbarAlignment.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\ChangeTaskbarSearchMode.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\ChangeTaskbarTaskViewMode.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\ChangeTaskbarWidgetMode.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\ChangeTaskbarTaskGrouping.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\RestartExplorer.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\VisualEffects.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0\Scripts\Logout.ps1"

pause