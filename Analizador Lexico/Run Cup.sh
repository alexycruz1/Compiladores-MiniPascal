#!/bin/bash
clear
echo ------------------------Running Lexer=----------------------------------------------
jflex AnalizadorLexico.flex
echo ------------------------Running parser.cup------------------------------------------
java -cp .:java-cup-11b.jar java_cup.Main < parser.cup
echo ------------------------Running Main.java-------------------------------------------
javac -cp .:java-cup-11b.jar Main.java
echo ------------------------Running Example Codes---------------------------------------
java -cp .:java-cup-11b.jar Main ./Codigos\ de\ ejemplo/entrada1.txt
echo --------------------------------END-------------------------------------------------