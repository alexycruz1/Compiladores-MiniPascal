package Table;

import Types.FunctionType;
import java.util.ArrayList;
import java.util.Arrays;
import javax.swing.table.DefaultTableModel;

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
                    || (row.scope.path.toString().replaceAll("\\[|]", "") + ", " + id).contains(scope.toString().replaceAll("\\[|]", "")))) {
                return row;
            }
        }
        return null;
    }

    public void fill_table(DefaultTableModel model) {
        for (SymbolRow row : table) {
            model.addRow(new Object[]{row.id, row.type, row.scope.toString().replaceAll("\\[|]", ""), row.offset});
        }
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
