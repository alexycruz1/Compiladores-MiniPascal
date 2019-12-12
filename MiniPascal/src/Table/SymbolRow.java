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
  public int offset;

  public SymbolRow(Object id, CustomType type, Scope scope, int offset) {
    this.id = (Token) id;
    this.type = type;
    this.scope = scope;
    this.offset = offset;
  }

  @Override
  public String toString() {
    return "| " + id + " | " + type.toString() + " | " + scope.toString() + " | " + offset + " |";
  }

}
