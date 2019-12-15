/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CodigoIntermedio;

/**
 *
 * @author alexyc
 */
class Cuadruplo {
    String operator = "";
    Operar val1, val2, address;

    public Cuadruplo(String operator, Operar val1, Operar address) {
        this.operator = operator;
        this.val1 = val1;
        this.val2 = null;
        this.address = address;
    }

    public Cuadruplo(String operator, Operar val1, Operar val2, Operar address) {
        this.operator = operator;
        this.val1 = val1;
        this.val2 = val2;
        this.address = address;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public Operar getVal1() {
        return val1;
    }

    public void setVal1(Operar val1) {
        this.val1 = val1;
    }

    public Operar getVal2() {
        return val2;
    }

    public void setVal2(Operar val2) {
        this.val2 = val2;
    }

    public Operar getAddress() {
        return address;
    }

    public void setAddress(Operar address) {
        this.address = address;
    }

    public String toString() {
        return operator + "\t" + (val1 != null ? val1.tipo : "") + "\t" + (val2 != null ? val2.tipo : "") + "\t" + (address != null ? address.tipo : "");
    }   
}
