class ExpressionNode extends Node {

    public Node izq, op, der;

    public ExpressionNode(String label, ExpressionNode izq, ExpressionNode op) {
        super(label);
        this.addSon(izq);
        this.addSon(op);
    }

    public ExpressionNode(String label, ExpressionNode izq, Node op, ExpressionNode der) {
        super(label);
        this.addSon(izq);
        this.addSon(op);
        this.addSon(der);
    }

    public ExpressionNode(String label, Node izq, ExpressionNode op, ExpressionNode der) {
        super(label);
        this.addSon(izq);
        this.addSon(op);
        this.addSon(der);
    }

    public ExpressionNode(String label, ExpressionNode izq, ExpressionNode op, ExpressionNode der) {
        super(label);
        this.addSon(izq);
        this.addSon(op);
        this.addSon(der);
    }

    public ExpressionNode(String label, ExpressionNode izq, Node op, Node der) {
        super(label);
        this.addSon(izq);
        this.addSon(op);
        this.addSon(der);
    }

    public ExpressionNode(String label, Node izq, ExpressionNode op) {
        super(label);
        this.addSon(izq);
        this.addSon(op);
    }

    public ExpressionNode(String label, Node izq) {
        super(label);
        this.addSon(izq);
    }

    public void Print() {
        System.out.print(this.label + " es padre de: ");
        if (getChildAt(0) != null) {
            System.out.print("[" + getChildAt(0).getLabel() + "], ");
        }
        if (getChildAt(1) != null) {
            System.out.print("[" + getChildAt(1).getLabel() + "], ");
        }
        if (getChildAt(2) != null) {
            System.out.print("[" + getChildAt(2).getLabel() + "], ");
        }
    }

    public String getType() {
        if (getChildAt(2) != null) {
            String left = getChildAt(0).getType();
            String right = getChildAt(2).getType();
            System.out.println(left + " vs " + right);
            return left == right ? getChildAt(0).getType() : "error";
        } else {
            return getChildAt(0).getType();
        }
    }
}