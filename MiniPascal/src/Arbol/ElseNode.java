package Arbol;

import java.util.ArrayList;

 public class ElseNode extends Node {

    public ElseNode(String label) {
        super(label);
    }

    public void createBodyNode(ArrayList<Node> bodyNodes){
        Node BodyNode = new Node("Body");
        for (Node n : bodyNodes) {
                BodyNode.addSon(n);
        }

        this.addSon(BodyNode);
    }

    public String  getType(){
        return "";
    }
        
}