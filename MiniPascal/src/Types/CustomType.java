package Types;

/**
 *
 * @author cj
 */
public class CustomType {

  public static final String TYPEDEF = "Custom";
  public int row;
  public int col;
  public String type;

  public CustomType(int row, int col, String type) {
    this.row = row;
    this.col = col;
    this.type = type;
  }
  
  public CustomType(int row, int col) {
    this.row = row;
    this.col = col;
  }

    @Override
    public String toString() {
        return "CustomType{" + type + '}';
    }

  
  
}
