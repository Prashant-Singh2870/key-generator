@echo off
rem Enable delayed expansion
setlocal EnableDelayedExpansion

rem Initial value to process
set ini=0279be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798
set /a counter=0

for /l %%i in (1,1,2000000) do (
    rem Perform operations with keymath.exe
    for /f "delims=" %%j in ('keymath.exe !ini! x !counter!') do (
        set "line=%%j"
        set "a=!line:~8,66!"
        set WN=!a!
        echo !WN!
    )
    rem Increment the counter for the next iteration
    set /a counter+=1
)

rem End of the script
endlocal
