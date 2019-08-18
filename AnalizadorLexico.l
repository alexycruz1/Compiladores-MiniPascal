//import java_cup.runtime.*;

%%

%unicode
%class AnalizadorLexico
%line
%column
%ignorecase
//%cup
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
FinalInstruccion=";"
ParentesisAbierto="("
ParentesisCerrado=")"
Coma=","

//ID
Variable={Caracter}+({Digito}|{Caracter})*

//STRING
StringPattern=[\"](.)*[\"]

//COMMENTS
Comments="{"[^\n]*"}"

//ESPACIOS Y SALTOS DE LINEA
WhiteSpace=[\ \n\r\t\f]

%%

<YYINITIAL> {
    {StringPattern} {System.out.println("Encontre una string: " + yytext());}

}