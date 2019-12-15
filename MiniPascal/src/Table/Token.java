package Table;

/**
 *
 * @author cj
 */
public class Token {

  public String valex;  
  public int row;
  public int col;

  public Token(Object valex, int row, int col) {
    this.valex = valex.toString();
    this.row = row;
    this.col = col;
  }

  @Override
  public String toString() {
    return valex;
  }

}
