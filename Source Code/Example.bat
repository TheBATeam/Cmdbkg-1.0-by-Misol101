@Echo off
Setlocal EnableDelayedExpansion
cls

Title - Example File of CMDBkg by Misol101 - www.thebateam.org - Wait for 10 Seconds after launch

:: Here, I'm trying to make the example file as much simple and Cool looking as possible.
:: If you find any bug or error - Please report it to 'karanveerchouhan@gmail.com'

REM CMDBKg is a great plugin for making images your permanent Background.
REM Misol101 is the creator of this Batch-Plugin. And, We really admire their
REM Work in the field of Batch-Programming.

REM Read more about it at: http://www.thebateam.org

CD Files

REM Making CMD Fullscreen...
For %%A in (w h) Do (
	Cmdwiz GetDisplayDim %%A
	Set _%%A=!Errorlevel!
)

REM Little Bug fixing... via maths :D 
Set /A _W-=20
Set /A _H-=75

Set /A _W/=8
Set /A _H/=12

Mode %_W%,%_H%
Window GSize Max

Color 0a 

Start /b "" Tree "C:\windows"

REM ---------------------------------------Main Code---------------------------------------
for /R "BGs" %%A in (*.BMP) do (
	Start /b "" CMDBkg "%%~A" 30 includeborders
	Timeout /t 5 /nobreak >nul
	)

Color 0b
Title - Example Demo Ended. - :)
Exit 