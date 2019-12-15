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

    public SymbolRow find(String id, ArrayList scope) {
        for (SymbolRow row : table) {
            if (row.id.valex.equals(id)
                    && (row.scope.path.toString().replaceAll("\\[|]", "").contains(scope.toString().replaceAll("\\[|]", ""))
                    || (row.scope.path.toString().replaceAll("\\[|]", "")+ ", "+ id).contains(scope.toString().replaceAll("\\[|]", "")))) {
                return row;
            }
        }
        return null;
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
