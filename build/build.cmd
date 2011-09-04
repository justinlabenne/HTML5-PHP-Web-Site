@ECHO OFF
ECHO.
ECHO Cleaning up...
RD ..\publish /s /q

ECHO.
for /f "delims=/ tokens=1-3" %%a in ("%DATE:~4%") do (
        for /f "delims=:. tokens=1-4" %%m in ("%TIME: =0%") do (
            set FILENAME=%%c%%b%%a%%m%%n%%o%%p
        )
    )

ECHO Copying files...
XCOPY ..\*.* %temp%\publish\ /EXCLUDE:exclude.txt /y /i /e
XCOPY %temp%\publish\*.* ..\publish\ /y /i /e

CLS
ECHO.
ECHO Minifying CSS...
cscript //NoLogo cssmin.js < ../publish/css/style.css > ../publish/css/style.%FILENAME%.css

CLS
ECHO.
ECHO Optimizing PNG's...
for %%p in (..\publish\images\*.png) do (optipng.exe %%p)

CLS
ECHO.
ECHO Optimizing JPG's...
for %%j in (..\publish\images\*.jpg) do (jpegtran -copy none -optimize -outfile %%j %%j)

ECHO Updating references...
cscript replace.vbs "..\publish\includes\header.php" "style.css" "style.%FILENAME%.css"

RD %temp%\publish /s /q
%SystemRoot%\explorer.exe "..\publish"
EXIT