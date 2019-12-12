package Types;

/**
 *
 * @author cj
 */
public class BooleanType extends CustomType {

  public static final String TYPEDEF = "Boolean";
  public Object value;

  public BooleanType(int row, int col) {
    super(row, col);
  }

  public BooleanType(Object value, int row, int col) {
    super(row, col);
    this.value = value;
  }

  @Override
  public String toString() {
    return "BooleanType {" + value + '}';
  }

}
