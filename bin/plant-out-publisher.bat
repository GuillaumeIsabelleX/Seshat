@echo off
Echo PUML Generator  and publisher
echo "%~1 %~2"


copy /Y "%~1" %puml%


rem A Work dir where item are created
rem A target dir where the source are published and overwrite existing

set target_dir="%~2"
set target_dir_pub="%~3"
set inputs="%~1"

echo Creating the Diagrams in the workdir "%target_dir%"
call plant-out.bat "%inputs%" "%target_dir%"

echo Publishing to %target_dir_pub%
xcopy "%~2\*.*" "%target_dir_pub%" /i /D /Y /S

echo all done