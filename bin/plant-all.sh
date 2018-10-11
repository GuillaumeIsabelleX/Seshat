#!/bin/bash

echo PUML Generator 

#goto enduml
#@startuml
#title Launcher for CreaPlant (PUML)
#usecase GOAL as "<font size=32>Manage CreaPlants
#--
#==Goal==
#CreaPlants are Growing Picture 
#transformed as diagram you write them (the Creative Plant :)
#--
#They are transformed by a simple mecanism
#and provide a simple Command Line Type 
#or should we say UI as User Interface
#it is MEANT to supply a mean to Create a Perspective
#without the burdon to play with Graphical Software Complexities 
#(which few really master...)
#but, still, it offers the capabilities to Create those graphic as 
#the work progresses
#"
#'see %puml%\creaplant-vision-170309.juml
#@enduml
#:enduml


#rem GOAL - Launch the Command Line of Plant UML for multiple scenario such as
#rem 		Output all in the same dir from various source.

echo PUML Processing $1...
ext_puml="-realtimestats -failfast2 -quiet  -duration"


java -jar ~/Dropbox/Seshat/lib/creaplant.jar -o "$1.png"  -tpng -failfast2 -quiet -duration "$1" 
java -jar ~/Dropbox/Seshat/lib/creaplant.jar -o "$1.scxml"  -tscxml -failfast2 -quiet -duration "$1"
java -jar ~/Dropbox/Seshat/lib/creaplant.jar -o "$1.xmi"  -txmi -failfast2 -quiet -duration "$1"
java -jar ~/Dropbox/Seshat/lib/creaplant.jar -o "$1.html"  -thtml -failfast2 -quiet -duration "$1"
java -jar ~/Dropbox/Seshat/lib/creaplant.jar -o "$1.eps"  -teps -failfast2 -quiet -duration "$1"
java -jar ~/Dropbox/Seshat/lib/creaplant.jar -o "$1.svg"  -tsvg -failfast2 -quiet -duration "$1"

echo done.

#rem dir "%~1"

#rem ---------------------------------

