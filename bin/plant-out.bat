@echo off
Echo PUML Generator 
echo "%~1 %~2"

goto enduml
@startuml
title Launcher for CreaPlant (PUML)
usecase GOAL as "<font size=32>Manage CreaPlants
--
==Goal==
CreaPlants are Growing Picture 
transformed as diagram you write them (the Creative Plant :)
--
They are transformed by a simple mecanism
and provide a simple Command Line Type 
or should we say UI as User Interface
it is MEANT to supply a mean to Create a Perspective
without the burdon to play with Graphical Software Complexities 
(which few really master...)
but, still, it offers the capabilities to Create those graphic as 
the work progresses
"
'see %puml%\creaplant-vision-170309.juml
@enduml
:enduml


rem GOAL - Launch the Command Line of Plant UML for multiple scenario such as
rem 		Output all in the same dir from various source.

echo PUML Processing %1...
set ext_puml=-realtimestats -failfast2 -quiet  -duration

rem java -jar %d%\seshat\lib\plantuml.jar -I=%d%\seshat\etc\plantuml\skinparam\*.* "%~1"
call java -jar h:\Dropbox\seshat\lib\plantuml.jar -o "%~2" -tpng -failfast2 -quiet -duration "%~1" 
call java -jar h:\Dropbox\seshat\lib\plantuml.jar  -o "%~2"  -tscxml -failfast2 -quiet -duration "%~1" 
call java -jar h:\Dropbox\seshat\lib\plantuml.jar  -o "%~2"  -txmi -failfast2 -quiet -duration "%~1" 
call java -jar h:\Dropbox\seshat\lib\plantuml.jar  -o "%~2"  -thtml -failfast2 -quiet -duration "%~1" 
call java -jar h:\Dropbox\seshat\lib\plantuml.jar  -o "%~2"  -teps -failfast2 -quiet -duration "%~1" 
call java -jar h:\Dropbox\seshat\lib\plantuml.jar  -o "%~2"  -tsvg -failfast2 -quiet -duration "%~1" 

echo done.

rem dir "%~1"

rem ---------------------------------
rem GET FILENAME ONLY and print
rem Source: http://stackoverflow.com/questions/3215501/batch-remove-file-extension

   for %%f in (%~2) do (
    set fn=%%~nf
)
echo %fn%
rem if exist ("%fn%\") dir "%fn%\"
rem dir "%~2"

rem explorer %~2 /root,%~2

