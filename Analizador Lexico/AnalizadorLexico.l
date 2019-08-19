import java_cup.runtime.*;

%%

%unicode
%class AnalizadorLexico
%line
%column
%ignorecase
%cup
%int
%standalone

//DEFINICIONES UTILES
Digito=[0-9]
Numero={Digito}({Digito})*
NegativeInteger="-"+{Numero}
Caracter=[a-z]|[A-Z]

//PALABRAS RESERVADAS
Absolute="absolute"
Begin="begin"
Const="const"
Destructor="destructor"
Downto="downto"
End="end"
For="for"
Function="function"
If="if"
In="in"
Interface="interface"
Label="label"
Nil="nil"
Object="object"
Private="private"
Program="program"
Repeat="repeat"
Shl="shl"
String="string"
To="to"
Unit="unit"
Uses="uses"
Asm="asm"
Case="case"
Virtual="virtual"
With="with"
Constructor="constructor"
External="external"
Do="do"
Else="else"
File="file"
Forward="forward"
Goto="goto"
Implementation="implementation"
Inline="inline"
Interrupt="interrupt"
Of="of"
Packed="packed"
Procedure="procedure"
Set="set"
Shr="shr"
Then="then"
Type="type"
Until="until"
Var="var"
While="while"
Xor="xor"
Write="write"
Read="read"
Writeln="writeln"
Readln="readln"

//TIPOS
Tipo="integer" | "char" | "boolean" | "record"

//OPERADORES LOGICOS
Not="not"
Or="or"
And="and"

//OPERADORES RELACIONALES
OpRel="="|">"|"<="|"<"|">="|"<>"

//OPERADORES ARITMETICOS
OpSuma="+"|"-"
OpMult="*"|"/"|"div"|"mod"

//SIMBOLOS  
AsignacionVariable=":="
AsignacionTipo=":"
FinalInstruccion=";"
ParentesisAbierto="("
ParentesisCerrado=")"
Coma=","
Punto="."

//ID
Variable={Caracter}({Digito}|{Caracter})*

//STRING
Constchar=([\']([^'])[\'])|''
Conststr=[\']([^']+)*[\']
String=[\"]([^\"]+)*[\"]

//COMMENTS
Commentarios=\{([^}]*|[^{]*)\}

//ESPACIOS Y SALTOS DE LINEA
WhiteSpace=[\ \n\r\t\f]

%%

<YYINITIAL> {
    {Constchar} {System.out.println("Encontre un constchar: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Conststr} {System.out.println("Encontre un conststr: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {String} {System.out.println("Encontre cadena: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}

    {Commentarios} {System.out.println("Encontre un comentario: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    
    {Absolute} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Begin} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Const} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Destructor} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Downto} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {End} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {For} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Function} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {If} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {In} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Interface} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Label} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Nil} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Object} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Private} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Program} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Repeat} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Shl} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {String} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {To} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Unit} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Uses} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Asm} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Case} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Virtual} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {With} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Constructor} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {External} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Do} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Else} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {File} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Forward} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Goto} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Implementation} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Inline} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Interrupt} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Of} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Packed} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Procedure} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Set} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Shr} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Then} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Type} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Until} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Var} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {While} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Xor} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Write} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Read} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Writeln} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Readln} {System.out.println("Encontre una palabra reservada: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}

    {Tipo} {System.out.println("Encontre un tipo: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    
    {Not} {System.out.println("Encontre un operador logico: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Or} {System.out.println("Encontre un operador logico: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {And} {System.out.println("Encontre un operador logico: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    
    {OpSuma} {System.out.println("Encontre un operador aritmetico: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {OpMult} {System.out.println("Encontre un operador aritmetico: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}

    {OpRel} {System.out.println("Encontre un operador relacional: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    
    {AsignacionVariable} {System.out.println("Encontre una asignacion de variable: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {AsignacionTipo} {System.out.println("Encontre una asignacion de tipo: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    
    {FinalInstruccion} {System.out.println("Encontre el final de una instruccion: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    
    {ParentesisAbierto} {System.out.println("Encontre un parentesis abierto: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {ParentesisCerrado} {System.out.println("Encontre un parentesis cerrado: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    
    {Coma} {System.out.println("Encontre una coma: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
    {Punto} {System.out.println("Encontre un punto: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}

    {Variable} {System.out.println("Encontre una variable: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}

    {WhiteSpace} {}
    .   {System.out.println("ERROR: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
}