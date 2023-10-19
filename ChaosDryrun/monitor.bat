@echo off

echo Monitoring memory usage every second. Press Ctrl+C to stop.

:LOOP
REM Get free and used memory in KB
for /f "tokens=2 delims=:" %%a in ('wmic OS get FreePhysicalMemory /Value') do set FreeMem=%%a
for /f "tokens=2 delims=:" %%b in ('wmic OS get TotalVisibleMemorySize /Value') do set TotalMem=%%b

set /a UsedMem=TotalMem-FreeMem

echo Free memory: %FreeMem% KB
echo Used memory: %UsedMem% KB

timeout /t 1
echo ----------------------

goto LOOP
