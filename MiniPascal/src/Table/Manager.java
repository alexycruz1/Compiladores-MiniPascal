package Table;

import Types.*;
import java.util.ArrayList;

/**
 *
 * @author cj
 */
public class Manager {

  // Precedencia de operadores
  public static final int FACTOR = 0;
  public static final int TERM = 1;

  public SymbolTable table = new SymbolTable();

  private Token current_Assigner;
  private Point current_left;
  private Point current_right;
  private CustomType current_Assigner_Type;

  // Flags
  private boolean Switch_Assign;

}