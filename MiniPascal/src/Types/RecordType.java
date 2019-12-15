package Types;

import java.util.ArrayList;
import Table.*;

/**
 *
 * @author cj
 */
public class RecordType extends CustomType {

    public static final String TYPEDEF = "Record";
    public ArrayList<Record_Attribute> attributes;
    public Token self;

    public RecordType(Token self, ArrayList<Record_Attribute> attributes, int row, int col) {
        super(row, col);
        this.self = self;
        this.attributes = attributes; 
    }

    @Override
    public String toString() {
        return "RecordType{" + "attributes=" + attributes + ", self=" + self + '}';
    }

}
