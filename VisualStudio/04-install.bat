cd ../..
cd temp
"C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" INSTALL.vcxproj /p:Configuration=RelWithDebInfo
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../build/VisualStudio
