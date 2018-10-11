@echo off
rem set source_tag=%1
rem "######## ADJUST WHAT IS HERE"
set source_tag=dts
set source_code_root_drive=H:
set source_code_root=H:\DTS\src\Pistis\DTS
set doc_diagram_outdir=H:\DTS\src\doc\HelpStrategicTrading\DTSStrategicTrading-170330\Help\img

rem "######## ADJUST RARELY WHAT IS HERE (EnvironmentChanged)"
set juml_jar=h:\Dropbox\Seshat\lib\creaplant.jar


rem PUBLISH Created DIAGRAM


echo Creating Diagrams...
rem Create DIAGRAM
%source_code_root_drive%
cd %source_code_root%
java -jar %juml_jar% -o "%doc_diagram_outdir%" "**/*.cs" "**/*.puml" "**/*.txt"  "**/*.view"  "**/*.usecase" -r

echo Diagrams Created
echo "------------------------"

echo Copying Juml model tagged as %source_tag%
copy /y %puml%\%source_tag%*.png %doc_diagram_outdir%
rem usage  :      "dts\"  will copy    puml\dts\*.png
echo Copy Completed

echo done

dir %doc_diagram_outdir%