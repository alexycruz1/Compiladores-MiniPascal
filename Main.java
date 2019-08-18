import java.io.*;
   
public class Main {
  static public void main(String argv[]) {    
	try {
		AnalizadorLexico scanner= new AnalizadorLexico(new FileReader(argv[0]));
	    	scanner.yylex();
	} catch (Exception e) {}
  }
}


