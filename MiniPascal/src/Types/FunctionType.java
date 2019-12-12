package Types;

import java.util.ArrayList;

/**
 *
 * @author cj
 */
public class FunctionType extends CustomType {

  public static final String TYPEDEF = "Function";
  public static final int PROCEDURE = 1;
  public static final int FUNCTION = 2;

  public int type;
  public ArrayList<Object> par;
  public CustomType ret;

  public FunctionType(int type, ArrayList<Object> par, CustomType ret, int row, int col) {
    super(row, col);
    this.type = type;
    this.par = par;
    this.ret = ret;
  }

}
