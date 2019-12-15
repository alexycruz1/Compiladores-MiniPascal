package Table;

import java.util.ArrayList;

/**
 *
 * @author cj
 */
public class Scope {    

  public ArrayList<Object> path;

  public Scope(ArrayList<Object> path) {
    this.path = path;
  }

  public Scope(Object path) {
    ArrayList<Object> paths = new ArrayList<Object>();
    paths.add(path);
    this.path = paths;
  }

  public boolean compare(Scope s) {
    return path.toString().equals(s.path.toString());
  }

  @Override
  public String toString() {
    return path.toString();
  }

}
