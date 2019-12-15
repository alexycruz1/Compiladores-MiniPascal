package Types;

/**
 *
 * @author cj
 */
public class Point {

  public int row = -1;
  public int col = -1;

  public Point(int row, int col) {
    this.row = row;
    this.col = col;
  }

  @Override
  public String toString() {
    return "Point{" + "row=" + row + ", col=" + col + '}';
  }

}
