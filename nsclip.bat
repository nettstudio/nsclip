@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64 %*

set CWD=%cd%
set TOOLS=%CWD%\tools
set QT_MAJOR=5
set QT_MINOR=12
set QT_PATCH=12
set QT_VERSION=%QT_MAJOR%.%QT_MINOR%.%QT_PATCH%
set QT_DIR=%TOOLS%\qt

set PATH=%QT_DIR%\bin;%ProgramFiles%\7-Zip;%PATH%

set QTBASE=qtbase-everywhere-src-%QT_VERSION%
set QTTOOLS=qttools-everywhere-src-%QT_VERSION%
set QT_URL=https://mirrors.dotsrc.org/qtproject/archive/qt/%QT_MAJOR%.%QT_MINOR%/%QT_VERSION%/submodules
set QTBASE_URL=%QT_URL%/%QTBASE%.zip
set QTTOOLS_URL=%QT_URL%/%QTTOOLS%.zip

@RD /S /Q build
mkdir build
mkdir "%TOOLS%"

if not exist "%QT_DIR%\bin\qmake.exe" (
    if not exist "%TOOLS%\%QTBASE%.zip" (
        curl --url %QTBASE_URL% -o "%TOOLS%\%QTBASE%.zip"
    )
    cd "%CWD%\build"
    7z x "%TOOLS%\%QTBASE%.zip"
    cd "%QTBASE%"
    configure.bat -static -release -prefix "%QT_DIR%" -platform win32-msvc2019 -opensource -confirm-license -nomake examples -nomake tests -static-runtime -opengl desktop -optimize-size -no-pch -no-glib -no-dbus -no-sse4.2 -no-avx -no-avx2 -no-avx512 -strip -no-openssl -no-gif -no-ico
    nmake
    nmake install
)

cd "%CWD%\build"
qmake.exe CONFIG+=release ..
nmake
