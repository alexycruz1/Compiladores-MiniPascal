package Table;

import Types.CustomType;

/**
 *
 * @author cj
 */
public class SymbolRow {

  public Token id;
  public Types.CustomType type;
  public Scope scope;
  public boolean param;
  public int offset;

  public SymbolRow(Object id, CustomType type, Scope scope, int offset, boolean param) {
    this.id = (Token) id;
    this.type = type;
    this.scope = scope;
    this.offset = offset;
    this.param = param;
  }
  
  public SymbolRow(Object id, CustomType type, Scope scope, int offset) {
    this.id = (Token) id;
    this.type = type;
    this.scope = scope;
    this.offset = offset;
    this.param = false;
  }

  @Override
  public String toString() {
    return "| " + id + " | " + type.toString() + " | " + scope.toString().replaceAll("\\[|]", "") + " | " + offset + " | " + (param ? "✓" : "") + " |";
  }

}
