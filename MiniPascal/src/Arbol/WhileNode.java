package Arbol;

public class WhileNode extends Node {

    public ExpressionNode condicion;
    public Node body;

    public WhileNode(ExpressionNode condicion, Node body) {
        super();
        this.condicion = condicion;
        this.body = body;
    }
}