#!/bin/bash
clear
echo ------------------------Compiling Node.java-----------------------------------------------
javac node.java
echo ------------------------Running Lexer-----------------------------------------------
jflex AnalizadorLexico.flex
echo ------------------------Running parser.cup------------------------------------------
java -cp .:java-cup-11b.jar java_cup.Main < parser.cup
echo ------------------------Running Main.java-------------------------------------------
javac -cp .:java-cup-11b.jar Main.java
echo ------------------------Running Example Codes---------------------------------------
echo "Enter File Name (Without File Extension)"
read -p "Enter File Name: " fileName
echo "Enter File Extension (e.g: txt, csv, class, java)"
read -p "Enter Extension: " fileExtension
fullFile="$fileName.$fileExtension"
echo ------------------------Running Example Codes---------------------------------------
java -cp .:java-cup-11b.jar Main ./Codigos\ de\ ejemplo/"$fullFile"
echo --------------------------------END-------------------------------------------------