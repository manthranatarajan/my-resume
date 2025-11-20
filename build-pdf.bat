@echo off
REM Build resume.pdf using pdflatex (run twice for references)
setlocal enabledelayedexpansion

REM Define MiKTeX pdflatex path
set PDFLATEX=C:\Users\manth\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex.exe

REM Check if pdflatex exists
if not exist "!PDFLATEX!" (
    echo Error: pdflatex not found at !PDFLATEX!
    echo Please ensure MiKTeX is installed.
    pause
    exit /b 1
)

echo Building resume.pdf (first pass)...
"!PDFLATEX!" -interaction=nonstopmode resume.tex

echo.
echo Building resume.pdf (second pass for references)...
"!PDFLATEX!" -interaction=nonstopmode resume.tex

echo.
echo Done! resume.pdf has been updated.
pause
