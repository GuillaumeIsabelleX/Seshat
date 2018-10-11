@echo off
Echo PUML Generator - Create StateChart XML

goto enduml
@startuml
title Launcher for CreaPlant (PUML) - Create StateChart XML
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
legend
==see==
[[%puml%\creaplant-vision-170309.juml]]

@enduml
:enduml


rem GOAL - Launch the Command Line of Plant UML for multiple scenario such as
rem 		Output all in the same dir from various source.

echo PUML Processing %1...

set juml_jar=h:\Dropbox\seshat\lib\plantuml.jar
set ext_puml=-realtimestats -failfast2 -quiet  -duration

rem java -jar %d%\seshat\lib\plantuml.jar -I=%d%\seshat\etc\plantuml\skinparam\*.* "%~1"
rem call java -jar %juml_jar%  "%~1" %ext_puml%
rem call java -jar %juml_jar%  "%~1" -failfast2 -quiet -duration
call java -jar %juml_jar%  -tscxml "%~1" -failfast2 -quiet -duration
rem call java -jar %juml_jar%  -thtml "%~1" -failfast2 -quiet -duration
rem call java -jar %juml_jar%  -teps "%~1" -failfast2 -quiet -duration
echo done.
rem dir "%~1"

rem ---------------------------------
rem GET FILENAME ONLY and print
rem Source: http://stackoverflow.com/questions/3215501/batch-remove-file-extension

   for %%f in (%~1) do (
    set fn=%%~nf
)
echo %fn%
rem if exist ("%fn%\") dir "%fn%\"
dir "%fn%\"
dir "%fn%*"
