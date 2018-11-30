echo off


mkdir iam
cd iam

javac -d .\ ..\src\main\java\dk\itu\mario\level\*.java ..\src\main\java\dk\itu\mario\level\generator\*.java ..\src\main\java\dk\itu\mario\scene\*.java ..\src\main\java\dk\itu\mario\engine\*.java ..\src\main\java\dk\itu\mario\engine\sonar\*.java ..\src\main\java\dk\itu\mario\engine\sonar\mixer\*.java ..\src\main\java\dk\itu\mario\engine\sonar\sample\*.java ..\src\main\java\dk\itu\mario\engine\sprites\*.java ..\src\main\java\dk\itu\mario\MarioInterface\*.java ..\src\main\java\dk\itu\mario\res\*.java ..\src\main\java\benweber\*.java

mkdir .\dk\itu\mario\res\res
xcopy ..\src\main\resources\dk\itu\mario\res\res .\dk\itu\mario\res\res /E/Y
copy ..\manifest.txt .\

jar cfm iam.jar manifest.txt .\

copy iam.jar ..\
cd ..

IF EXIST .\iam goto deletedist

:deletedist
del /q /s .\iam  > nul
rmdir /q /s .\iam  > nul
:exit


