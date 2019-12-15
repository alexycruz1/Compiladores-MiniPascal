package Arbol;
import java.util.ArrayList;
import CodigoIntermedio.CodigoIntermedio;

public class Node {

    String label;
    Node parent;
    ArrayList<Node> sons;
    String value;
    int line;
    int column;

    public Node(String label) {
        this.label = label;
        sons = new ArrayList<>();
    }

    public Node(String label, String value, int line, int column) {
        this.label = label;
        this.value = value;
        sons = new ArrayList<>();
        this.line = line;
        this.column = column;
    }

    public Node() {
        sons = new ArrayList<>();
    }

    public void addSon(Node son) {
        if (son != null) {
            son.setParent(this);
            this.sons.add(son);
        }
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public ArrayList<Node> getSons() {
        return sons;
    }

    public void setSons(ArrayList<Node> sons) {
        this.sons = sons;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public void Print() {
        System.out.print(this.label + " es padre de: ");
        for (Node child : sons) {
            System.out.print("[" + child.getLabel() + " | " + child.getValue() + "], ");
        }
        System.out.println("");
    }

    public int getLine() {
        return line;
    }

    public int getColumn() {
        return column;
    }

    public Node getParent() {
        return parent;
    }

    public void setParent(Node parent) {
        this.parent = parent;
    }

    public Node getLeftSon() {
        return (Node) sons.get(0);
    }

    public Node getRightSon() {
        return (Node) sons.get(sons.size() - 1);
    }

    public Node getRightBrother() {
        if (parent != null) {
            int index = parent.getSons().indexOf(this) + 1;
            if (index < parent.getSons().size()) {
                return (Node) parent.getSons().get(index);
            } else {
                return null;
            }
        }
        return null;
    }

    public Node getLeftBrother() {
        if (parent != null) {
            int index = parent.getSons().indexOf(this) - 1;
            if (index >= 0) {
                return (Node) parent.getSons().get(index);
            } else {
                return null;
            }
        }
        return null;
    }

    public boolean isLeaf() {
        return sons.isEmpty();
    }

    public int getChildCount() {
        return sons.size();
    }

    public Node getChildAt(int i) {
        if (sons.size() > i)
            return (Node) (sons.get(i));
        else
            return null;
    }

    public void setChildAt(int i, Node node) {
        this.sons.set(i, node);
    }

    public Node getLefterSon() {
        return sons.get(0);
    }

    public void showTree(String tab) {
        if (sons.size() > 0) {
            System.out.println(tab + label + " type: " + this.getClass());
            for (Node son : sons) {
                son.showTree(tab + "---> ");
            }
        } else {
            System.out.println(tab + label + " type: " + this.getClass());
        }
    }

    public String toString() {
        if (sons.size() > 0) {
            return label;
        } else {
            return label;
        }
    }

    public String getType() {
        return value;
    }

    public CodigoIntermedio GenerarCodigo(CodigoIntermedio codI){
            if(sons.get(0).sons.size()>1){
                codI=sons.get(0).GenerarCodigo(codI);
                codI.agregarCodigo("RET "+ codI.ultimoTemporal());
            }else{
                codI.agregarCodigo("RET "+ sons.get(0).sons.get(0).label);
            }
        return codI;
    }
}