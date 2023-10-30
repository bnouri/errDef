@call %systemdrive%\SBN\!!fst\Srvr\Init>nul

::-----------------
cd /d %~dp0\..
set DIR="%CD%"
::-----------------

::-----------------
set SrcDir=%DIR%
::set DesDir=%DIR%-"(%IY%%IM%%ID%-vx)"

set DesDir=..\x"%IM%%ID%"
if exist %DesDir% (set DesDir=..\x"%IM%%ID%-%IHUR%%IMIN%")

::-----------------

::-----------------
::if exist %DesDir% (set DesDir=%DIR%-"(%IY%%Imonth-name%%ID%-v0)")
::if exist %DesDir% (set DesDir=%DIR%-"(%IY%%Imonth-name%%ID%-v%RANDOM%)")
::if exist %DesDir% (set DesDir=%DIR%-"(%IY%%Imonth-name%%ID%-vx%ILT%)")
::-----------------

::-----------------
robocopy %SrcDir%  %DesDir%  %IOPT%  
::robocopy %SrcDir%  %DesDir%  %IOPT% 
::-----------------

::-----------------
explorer "%DIR%\..\"
call %IS%\end 2
::-----------------
::EoF


