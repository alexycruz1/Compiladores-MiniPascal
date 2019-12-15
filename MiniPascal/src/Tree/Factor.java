package Tree;

import java.util.ArrayList;

/**
 *
 * @author cj
 */
public class Factor {
     public ArrayList<Object> factors;
  public ArrayList<Object> operators;
  public int row;
  public int col;

  public Factor(ArrayList<Object> factors, ArrayList<Object> operators, int row, int col) {
    this.factors = factors;
    this.operators = operators;
    this.row = row;
    this.col = col;
    if (operators == null) {
      this.operators = new ArrayList<Object>();
    }
  }

}