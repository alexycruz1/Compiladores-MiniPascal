#!/bin/bash  
clear

if [ -f ./AnalizadorLexico.java ]; then
  
  set -e
  echo Remove AnalizadorLexico.java
  echo
  rm AnalizadorLexico.java

fi

if [ -f ./AnalizadorLexico.java~ ]; then

  echo Remove AnalizadorLexico.java~
  echo
  rm AnalizadorLexico.java~
fi

echo ------------------------------------------------------------------------------------
jflex AnalizadorLexico.flex
echo ------------------------------------------------------------------------------------
javac Main.java
echo ------------------------------------------------------------------------------------