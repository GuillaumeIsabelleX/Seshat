@echo off
rem Publishes some file starting from the source tag args

rem USE :      scde-plant-custom.bat  dts H:\DTS\src\Pistis\DTS\Shared\DTS.PL.Entities H:\DTS\src\doc\img
rem H:\Dropbox\Seshat\bin\scde-plant-custom.bat  
rem set source_tag=%1
rem "######## ADJUST WHAT IS HERE"
set source_tag=%~1%
set source_code_root_drive=H:
set source_code_root=%~2%
set doc_diagram_outdir=%~3%


rem "######## ADJUST RARELY WHAT IS HERE (EnvironmentChanged)"
set juml_jar=h:\Dropbox\Seshat\lib\creaplant.jar


rem PUBLISH Created DIAGRAM


echo Creating Diagrams...
rem Create DIAGRAM
%source_code_root_drive%
cd "%source_code_root%"
java -jar %juml_jar% -o "%doc_diagram_outdir%" "**/*.cs" "**/*.puml" "**/*.txt"  "**/*.view"  "**/*.usecase" -r

echo Diagrams Created
echo "------------------------"

echo Copying Juml model tagged as %source_tag%
copy /y "%puml%\%source_tag%*.png" "%doc_diagram_outdir%"
rem usage  :      "dts\"  will copy    puml\dts\*.png
echo Copy Completed

echo done

dir "%doc_diagram_outdir%"