call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
cl.exe /D_USRDLL /D_WINDLL /EHsc *.cpp /link /DLL /OUT:csmapi.dll
copy csmapi.lib %LIBRARY_LIB%
mkdir %LIBRARY_INC%\csm\
copy *.h %LIBRARY_INC%\csm\
copy csmapi.dll %LIBRARY_BIN%

if errorlevel 1 exit 1 
