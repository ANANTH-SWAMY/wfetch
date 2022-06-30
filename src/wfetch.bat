@echo off

for /f "tokens=3,4,5,6 usebackq" %%i in (`systeminfo ^| findstr /C:"System Model"`) do (set name=%%i %%j %%k %%l)

for /f "usebackq tokens=4,5,6" %%i in (`systeminfo ^| findstr /C:"OS Name"`) do (set osname=%%i %%j %%k)

for /f "usebackq tokens=6" %%i in (`systeminfo ^| findstr /B /C:"OS Version"`) do (set osver=%%i)

echo   [94m ___________
echo   ^|     ^|     ^|  [92m %username%[0m@[92m%computername%[94m
echo   ^|     ^|     ^|   
echo   ^|_____^|_____^|  [96m os[0m          %osname%[94m
echo   ^|     ^|     ^|  [96m host[0m        %name%[94m
echo   ^|     ^|     ^|  [96m version[0m     %osver%[94m
echo   ^|_____^|_____^| 
echo [0m

