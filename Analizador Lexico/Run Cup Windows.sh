#!/bin/bash
clear
echo -----------------------Running Lexer------------------------------------------------
jflex AnalizadorLexico.flex
echo -----------------------Running Parser.cup-------------------------------------------
java -cp java -classpath "./java-cup-11b.jar";. java_cup.Main < parser.cup
echo -----------------------Running Main.java--------------------------------------------
javac -classpath "./java-cup-11b.jar";. Main.java *.java
echo -----------------------Running Example codes----------------------------------------
echo "Enter File Name (Without File Extension)"
read -p "Enter File Name: " fileName
echo "Enter File Extension (e.g: txt, csv, class, java)"
read -p "Enter Extension: " fileExtension
fullFile="$fileName.$fileExtension"
echo ------------------------Running Example Codes---------------------------------------
java -classpath "./java-cup-11b.jar";. Main ./Codigos\ de\ ejemplo/"$fullFile"
echo -------------------------------END--------------------------------------------------