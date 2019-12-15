package Types;

/**
 *
 * @author cj
 */
public class IntegerType extends CustomType {

  public static final String TYPEDEF = "Integer";
  public Object value;

  public IntegerType(Object value, int row, int col) {
    super(row, col);
    this.value = value;
  }

  public IntegerType(int row, int col) {
    super(row, col);
  }

  @Override
  public String toString() {
    return "IntegerType {" + value + '}';
  }

}
