package Types;

/**
 *
 * @author cj
 */
public class FloatType extends CustomType {

  public static final String TYPEDEF = "Float";
  public Object value;

  public FloatType(int row, int col) {
    super(row, col);
  }

  public FloatType(Object value, int row, int col) {
    super(row, col);
    this.value = value;
  }

  @Override
  public String toString() {
    return "FloatType {" + value + '}';
  }

}
