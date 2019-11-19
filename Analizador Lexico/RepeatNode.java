class RepeatNode extends Node {

    public ExpressionNode condicion;
    public Node body, op;

    public RepeatNode(Node body, Node op, ExpressionNode condicion) {
        super();
        this.condicion = condicion;
        this.body = body;
        this.op = op;
    }
}