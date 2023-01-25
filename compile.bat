@echo off

echo !=== COMPILING main.py ===!
pyinstaller main.pyw -i icon.ico --noconfirm
cd dist\main
rename main.exe lnav.exe
echo !=== FINISHED COMPILING main.py ===!
echo !=== COMPILING clHlp.py ===!
cd ..\..\
pyinstaller clHlp.pyw --onefile
cd dist\main
echo if you see this, there is a bug >> clHlp.exe
cd ../
xcopy clHlp.exe main\clHlp.exe

echo !=== OPENING PROGRAM... ===!
.\lnav.exe

pause