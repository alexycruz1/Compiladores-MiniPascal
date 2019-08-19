#!/bin/bash
clear
java -cp .:"./java-cup-11b.jar" java_cup.Main < parser.cup
javac -cp .:"./java-cup-11b.jar" Main.java
java -cp .:"./java-cup-11b.jar" Main ./Codigos\ de\ ejemplo/intercambio.txt