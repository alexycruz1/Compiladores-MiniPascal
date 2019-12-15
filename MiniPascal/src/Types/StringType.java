package Types;

/**
 *
 * @author cj
 */
public class StringType extends CustomType {

  public static final String TYPEDEF = "String";
  public Object value;

  public StringType(Object value, int row, int col) {
    super(row, col);
    this.value = value;
  }

  public StringType(int row, int col) {
    super(row, col);
  }

  @Override
  public String toString() {
    return "StringType {" + value + '}';
  }
}
