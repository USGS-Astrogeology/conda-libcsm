mkdir build
cd build
cmake ..
cmake --build . --target ALL_BUILD --config Release
dir Release
dir Win32
copy Release\csmapi.lib %LIBRARY_LIB%
mkdir %LIBRARY_INC%\csm\
copy Release\*.h %LIBRARY_INC%\csm\
copy Release\csmapi.dll %LIBRARY_BIN%

if errorlevel 1 exit 1 
