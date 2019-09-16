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
Begin="begin"
End="end"
For="for"
Function="function"
If="if"
Program="program"
Repeat="repeat"
To="to"
Do="do"
Else="else"
Procedure="procedure"
Then="then"
Until="until"
While="while"
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
AsignacionTipo=":"
AsignacionIgual="="
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
    {Constchar} {return new Symbol(sym.Constchar, yyline, yycolumn, yytext());}
    {Conststr} {return new Symbol(sym.Conststr, yyline, yycolumn, yytext());}
    {String} {return new Symbol(sym.String, yyline, yycolumn, yytext());}

    {Commentarios} {return new Symbol(sym.Comentarios, yyline, yycolumn, yytext());}
    
    {Begin} {return new Symbol(sym.Begin, yyline, yycolumn, yytext());}
    {End} {return new Symbol(sym.End, yyline, yycolumn, yytext());}
    {For} {return new Symbol(sym.For, yyline, yycolumn, yytext());}
    {Function} {return new Symbol(sym.Function, yyline, yycolumn, yytext());}
    {If} {return new Symbol(sym.If, yyline, yycolumn, yytext());}
    {Program} {return new Symbol(sym.Program, yyline, yycolumn, yytext());}
    {Repeat} {return new Symbol(sym.Repeat, yyline, yycolumn, yytext());}
    {To} {return new Symbol(sym.To, yyline, yycolumn, yytext());}
    {Do} {return new Symbol(sym.Do, yyline, yycolumn, yytext());}
    {Else} {return new Symbol(sym.Else, yyline, yycolumn, yytext());}
    {Procedure} {return new Symbol(sym.Procedure, yyline, yycolumn, yytext());}
    {Then} {return new Symbol(sym.Then, yyline, yycolumn, yytext());}
    {Until} {return new Symbol(sym.Until, yyline, yycolumn, yytext());}
    {While} {return new Symbol(sym.While, yyline, yycolumn, yytext());}
    {Write} {return new Symbol(sym.Write, yyline, yycolumn, yytext());}
    {Read} {return new Symbol(sym.Read, yyline, yycolumn, yytext());}
    
    {Tipo} {return new Symbol(sym.Tipo, yyline, yycolumn, yytext());}
    
    {Not} {return new Symbol(sym.Not, yyline, yycolumn, yytext());}
    {Or} {return new Symbol(sym.Or, yyline, yycolumn, yytext());}
    {And} {return new Symbol(sym.And, yyline, yycolumn, yytext());}
    
    {OpSuma} {return new Symbol(sym.OpSuma, yyline, yycolumn, yytext());}
    {OpMult} {return new Symbol(sym.OpMult, yyline, yycolumn, yytext());}

    {OpRel} {return new Symbol(sym.OpRel, yyline, yycolumn, yytext());}
    
    {AsignacionVariable} {return new Symbol(sym.AsignacionVariable, yyline, yycolumn, yytext());}
    {AsignacionTipo} {return new Symbol(sym.AsignacionTipo, yyline, yycolumn, yytext());}
    {AsignacionIgual} {return new Symbol(sym.AsignacionIgual, yyline, yycolumn, yytext());}
    
    {FinalInstruccion} {return new Symbol(sym.FinalInstruccion, yyline, yycolumn, yytext());}
    
    {ParentesisAbierto} {return new Symbol(sym.ParentesisAbierto, yyline, yycolumn, yytext());}
    {ParentesisCerrado} {return new Symbol(sym.ParentesisCerrado, yyline, yycolumn, yytext());}
    
    {Coma} {return new Symbol(sym.Coma, yyline, yycolumn, yytext());}
    {Punto} {return new Symbol(sym.Punto, yyline, yycolumn, yytext());}

    {Variable} {return new Symbol(sym.Variable, yyline, yycolumn, yytext());}

    {WhiteSpace} {}
    .   {System.out.println("ERROR: " + yytext() + "\n" + "Linea: " + (yyline + 1) + " Columna: " + (yycolumn + 1) + "\n");}
}