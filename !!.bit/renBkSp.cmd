@call %systemdrive%\SBN\!!fst\Srvr\Init>nul
::---------------------------------------------
:: Gen. Info.
::---------------------------------------------
set CurrentDir=%CD%
for %%* in (.) do set CurrentDirName=%%~nx*
cd /d %~dp0\..
set ParentDir=%CD%
for %%* in (.) do set ParentDirName=%%~nx*
cd /d %~dp0\..\..
set GrandParentDir=%CD%
for %%* in (.) do set GrandParentDirName=%%~nx*
cd %CurrentDir%
::cd %ParentDir%


set FNEXT=main.pdf
set EXT=%FNEXT:~-3%
set FN=%FNEXT:~0,-4%


::set NewFN=%FN%
::set NewFN=%CurrentDirName%
::set NewFN=%ParentDirName%
::set NewFN=%GrandParentDirName%


::In the Current-folder: (zzREN0.Sp.cmd)
::set NewFN=%ParentDirName%-%CurrentDirName%

::In the Parent-folder: (zzREN0.Bk.Sp.cmd)
::set NewFN=%GrandParentDirName%-%ParentDirName%

::NewFN
set NewFNEXT=%NewFN%-(%IY%%IMN%%ID%-%IT%).%EXT%

echo. && echo. &&echo -------------------------------------------
echo   %FN%.%EXT% ----^> %NewFNEXT%
echo ------------------------------------------- && echo. && echo. 
::call %IS%\sabr 5

copy /V/N %FNEXT% .\%NewFNEXT%

call %IS%\end 2
::EoF



