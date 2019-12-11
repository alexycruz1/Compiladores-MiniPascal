package Arbol;

public class ForNode extends Node {

    Node cont, r1, r2;
    Node body;

    public ForNode(Node izq, Node op, Node der, Node body) {
        super();
        this.cont = izq;
        this.r1 = op;
        this.r2 = der;
        this.body = body;
    }
    
}