#!/bin/bash
clear
echo ------------------------Running Lexer-----------------------------------------------
jflex ./Analizador/AnalizadorLexico.flex
echo ------------------------Running parser.cup------------------------------------------
javac -jar java-cup-11b.jar src/Analizador/parser.cup
echo ------------------------Running Main.java-------------------------------------------

