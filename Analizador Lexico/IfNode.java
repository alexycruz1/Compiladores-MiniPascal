import java.util.ArrayList;

class IfNode extends Node {
    public IfNode(String label) {
        super(label);
    }

    public void createBodyNode(ArrayList<Node> bodyNodes) {
        Node BodyNode = new Node("Body");
        System.out.println(bodyNodes);
        for (Node n : bodyNodes) {
            BodyNode.addSon(n);
        }

        this.addSon(BodyNode);
    }

    public void createElseNode(ArrayList<Node> bodyNodes) {
        Node BodyNode = new Node("Sequence of else");
        for (Node n : bodyNodes) {
            BodyNode.addSon(n);
        }

        this.addSon(BodyNode);
    }

    /*public String getType() {
        ArrayList<String> returns1 = new ArrayList();
        for (Node n : getChildAt(1).getSons()) {
            if (n.label == "Return") {
                returns1.add(n.getChildAt(0).getType());
            }
        }
        if (getChildAt(2) != null) {
            ArrayList<String> returns2 = new ArrayList();

            for (Node n : getChildAt(2).getSons()) {
                returns2.add(n.getType());
            }

            if (returns1.size() > 1) {
                for (int i = 1; i < returns1.size(); i++) {
                    System.out.println("no se puede llegar a return " + returns1.get(i));
                }
                return "error";
            } else {
                if (returns1.size() == 1) {
                    boolean allEqual = true;
                    boolean err = false;
                    boolean hayRet = true;
                    if (returns1.get(0).equals("Error")) {
                        err = true;
                    }
                    for (String s : returns2) {
                        if (!s.equals(returns1.get(0)) && !s.equals("Error"))
                            allEqual = false;
                        if (s.equals("Error"))
                            err = true;
                        if (s.equals("If") || s.equals("Else"))
                            hayRet = false;
                    }
                    if (allEqual) {
                        return returns1.get(0);
                    } else {
                        if (!err && !hayRet)
                            System.out.println("Falta return en if");
                        return "Error";
                    }
                } else {
                    boolean allEqual = true;
                    boolean err = false;
                    for (String s : returns2) {
                        if (!s.equals("if") && !s.equals("Else") && !s.equals("Error"))
                            allEqual = false;
                        if (s.equals("Error"))
                            err = true;
                    }
                    if (allEqual) {
                        return returns2.get(0);
                    } else {
                        if (!err)
                            System.out.println("Falta return en if");
                        return "Error";
                    }
                }
            }
        } else {
            if (returns1.size() > 1) {
                for (int i = 1; i < returns1.size(); i++) {
                    System.out.println("no se puede llegar a return " + returns1.get(i));
                }
                return "error";
            } else {
                if (returns1.size() == 1) {
                    return returns1.get(0);
                } else {
                    return "If";
                }

            }
        }
    }*/
}