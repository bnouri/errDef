::@call C:\SBN\!!fst\Srvr\Init>nul
echo off
#!/bib/csh

::-------------------------
::set FN=..\.gitignore
set FN=.gitignore
attrib -h -r %FN%
del /s/q %FN%>nul
::-------------------------

::Git
::---------------------------
echo **/.gitignore>%FN% 

::Batch/cmd scripts
::---------------------------
echo !!.bit/**>>%FN%
echo **/*.bat>>%FN%
echo **/*.cmd>>%FN%
echo **/_Arc/*>>%FN%

::Cpp
::---------------------------
echo **/^#*>>%FN%
echo **/^#*.cc^#>>%FN%
echo **/^#*.cpp^#>>%FN%
echo **/*.cc^~>>%FN%
echo **/*.cpp^~>>%FN%
echo **/.*.*.swp>>%FN%

::.URL
::---------------------------
echo **/*.url>>%FN%

::WIN:
::---------------------------
echo **/.dropbox>>%FN%
echo **/desktop.ini>>%FN%
echo **/.tmp>>%FN%
echo **/nul*>>%FN%
echo **/*.exe>>%FN%
echo **/*.swo>>%FN% 

::IEEE
::---------------------------
echo **/IEEEtran.bst>>%FN%

::PDF
::---------------------------
echo **/*.pdf>>%FN%
echo **/*.PDF>>%FN%

::Matlab:
::--------------------------- 
echo **/*.asv>>%FN%

::Graphics
::---------------------------
echo **/*.eps>>%FN%
echo **/*.png>>%FN%
echo **/*.jpg>>%FN%
echo **/*.jpeg>>%FN%

::Hspice:
::---------------------------
::echo **/*.log>>%FN%
echo **/MIL.*>>%FN%
echo **/sxcmd.*>>%FN%
echo **/*.sx>>%FN%
echo **/*.lis>>%FN%
echo **/*.fsdef>>%FN%
echo **/*.str>>%FN%
echo **/*.ic0>>%FN%
echo **/*.st0>>%FN%
echo **/*.pa0>>%FN%
echo **/*.sw0>>%FN%
echo **/*.tr0>>%FN%
echo **/*.ac0>>%FN%

::TexnicCenter:
::---------------------------
echo **/*.out>>%FN%
echo **/*.aux>>%FN%
echo **/*.blg>>%FN%
echo **/*.bbl>>%FN%
echo **/*.toc>>%FN%
echo **/*.dvi>>%FN%
echo **/*.bak>>%FN%
echo **/*.prj>>%FN%
echo **/*.ppl>>%FN%
echo **/*.lot>>%FN%
echo **/*.lof>>%FN%
echo **/*.tps>>%FN%
echo **/*.synctex>>%FN%
echo **/*.tmp>>%FN%
echo **/*.tps>>%FN%
echo **/*.pdfsync>>%FN%
echo **/*.ps>>%FN%
echo **/*.undo>>%FN%
echo **/*.tex~>>%FN%
echo **/*.tex.backup>>%FN%
echo **/*.maf>>%FN%
echo **/*.mtc>>%FN%
echo **/*.mtc[0-9]>>%FN%
echo **/*.mtc??>>%FN%


::Vim:
::---------------------------
echo **/*.project.vim>>%FN%
echo **/*.glg>>%FN%
echo **/*.glo>>%FN%
echo **/*.gls>>%FN%
echo **/*.ist>>%FN%
echo **/*.dcl>>%FN%

::TeXStudio/TeXMaker:
::---------------------------
echo **/*.gz>>%FN%
echo **/*.spl>>%FN%
echo **/*.fls>>%FN%
echo **/*.brf>>%FN%
echo **/*.xml>>%FN%
echo **/*.bcf>>%FN%

::Beamer:
::---------------------------
echo **/*.nav>>%FN%
echo **/*.snm>>%FN%

::XHTML:
::---------------------------
echo **/*.idx>>%FN%
echo **/*.css>>%FN%
echo **/*.ilg>>%FN%
echo **/*.ind>>%FN%

::Others:
::---------------------------
echo **/*._*>>%FN%
echo **/*.ini>>%FN%
echo **/*.fdb*>>%FN%

::Linux
::---------------------------
echo **/*~>>%FN%

::temporary files which can be created if a process still has a handle open of a deleted file
echo **/.fuse_hidden*>>%FN%

::KDE directory preferences
echo **/.directory>>%FN%

::Linux trash folder which might appear on any partition or disk
echo **/.Trash-*>>%FN%

::.nfs files are created when an open file is removed but is still being accessed
echo **/.nfs*>>%FN%

::Spectre
::---------------------------
echo **/*.log>>%FN%
echo out*/>>%FN%
echo **/*.swp>>%FN%
echo **/out*/*>>%FN%


attrib +h +r %FN%
::-------------------------------------
echo. && dir /AH /B %FN%
echo. && echo DONE: ".gitignore" file was created.
echo. && pause


::start notepad++ %FN%
::call %IS%\end 5

