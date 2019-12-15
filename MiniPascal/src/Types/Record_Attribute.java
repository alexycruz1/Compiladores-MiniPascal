package Types;

import Table.*;

/**
 *
 * @author crist
 */
public class Record_Attribute {

    public Token token;
    public CustomType type;

    public Record_Attribute(Token token, CustomType type) {
        this.token = token;
        this.type = type;
    }

    @Override
    public String toString() {
        return "(" + token + " X " + type + ')';
    }
    
}
