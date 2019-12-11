#!/bin/bash
clear
echo ------------------------Running Lexer-----------------------------------------------
jflex src/Analizador/AnalizadorLexico.flex
echo ------------------------Running parser.cup------------------------------------------
java -cp .:java-cup-11b.jar java_cup.Main < ./src/Analizador/parser.cup
echo ------------------------Running Main.java-------------------------------------------

