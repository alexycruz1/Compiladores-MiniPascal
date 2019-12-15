package Table;

import Types.FunctionType;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author cj
 */
public class SymbolTable {

  public ArrayList<SymbolRow> table;

  public SymbolTable() {
    table = new ArrayList();

  }

  public ArrayList<SymbolRow> getTable() {
    return table;
  }

  public void setTable(ArrayList<SymbolRow> table) {
    this.table = table;
  }

  public Object addSymbol(SymbolRow symbol) {
    table.add(symbol);
    return "Done";
  }

  public boolean compare(SymbolRow sr) {
    int er = 0;
    for (SymbolRow row : table) {
      if (row.id.valex.equals(sr.id.valex)) {
        if (row.scope.compare(sr.scope)) {
          er++;
          if (row.scope.path.size() > 0) {
            System.out.println("Error at line " + sr.id.row + ", column " + sr.id.col + " in subprogram \"" + row.scope.path.get(0).toString() + "\", the identifier \"" + row.id + "\" already exist.");
          } else {
            System.out.println("Error at line " + sr.id.row + ", column " + sr.id.col + ", the identifier \"" + row.id + "\" already exist.");
          }
        }
      }
    }
    return er == 0;
  }

  @Override
  public String toString() {
    String temp = "\tSymbol Table\n#\n";
    for (SymbolRow row : table) {
      temp += row.toString() + "\n";
    }
    temp += "#\n";
    return temp;
  }

}
