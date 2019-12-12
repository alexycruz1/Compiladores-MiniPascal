package Types;

/**
 *
 * @author cj
 */
public class CharacterType extends CustomType {

  public static final String TYPEDEF = "Character";
  public Object value;

  public CharacterType(int row, int col) {
    super(row, col);
  }

  public CharacterType(Object value, int row, int col) {
    super(row, col);
    this.value = value;
  }

  @Override
  public String toString() {
    return "CharacterType {" + value + '}';
  }

}
