#!/bin/bash
if [ -d "iam" ]; then
    rm -rf iam
fi    

mkdir iam

cd iam
javac -d ../iam ../src/main/java/dk/itu/mario/level/*.java ../src/main/java/dk/itu/mario/level/generator/*.java ../src/main/java/dk/itu/mario/scene/*.java ../src/main/java/dk/itu/mario/engine/*.java ../src/main/java/dk/itu/mario/engine/sonar/*.java ../src/main/java/dk/itu/mario/engine/sonar/mixer/*.java ../src/main/java/dk/itu/mario/engine/sonar/sample/*.java ../src/main/java/dk/itu/mario/engine/sprites/*.java ../src/main/java/dk/itu/mario/MarioInterface/*.java ../src/main/java/dk/itu/mario/res/*.java ../src/main/java/benweber/*.java

cp -R ../src/main/resources/dk/itu/mario/res/res ./dk/itu/mario/res
cp ../manifest.txt ./

jar cfm iam.jar manifest.txt ./
cp iam.jar ../

cd ..
rm -rf iam




