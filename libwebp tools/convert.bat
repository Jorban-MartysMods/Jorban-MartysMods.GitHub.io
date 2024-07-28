@echo off
setlocal

REM Set the quality for WebP conversion
set QUALITY=95

REM Loop through all image files in the current directory
for %%f in (*.jpg *.jpeg *.png *.bmp) do (
    REM Extract the filename without the extension
    set "filename=%%~nf"

    REM Convert the image to WebP format with specified quality
    cwebp.exe -q %QUALITY% -resize 3440 1440 "%%f" -o "%%~nf.webp"
)

echo Conversion completed!
pause
