/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CodigoIntermedio;

import java.util.ArrayList;

/**
 *
 * @author alexyc
 */
public class CodigoIntermedio {
    ArrayList<String> cuadruplos = new ArrayList();
    ArrayList<Cuadruplo> cuadruplosReales = new ArrayList();
    Temporales colaTemporales=new Temporales();
    ArrayList<String> etiquetas =new ArrayList();
    ArrayList<Integer> listaV = new ArrayList();
    ArrayList<Integer> listaF = new ArrayList();
    ArrayList<Integer> listaSig = new ArrayList();

    public  CodigoIntermedio(){

    }
    public void agregarTemporal(){
        colaTemporales.temporales.add("t"+(colaTemporales.temporales.size()+1));
    }
    public void agregarEtiqueta(){
        etiquetas.add("etiqueta"+(etiquetas.size()+1));
    }
    public void agregarEtiquetaFuncion(String nombre){
         etiquetas.add(nombre);
    }

    public void agregarCodigo(String cod){
        cuadruplos.add(cod);
    }
    public void agregarCuadruplo(Cuadruplo cuad){
        cuadruplosReales.add(cuad);
    }

    public void ImprimirCuadruplos(){
        for (int i = 0; i < cuadruplos.size(); i++) {
            System.out.println(i+1 + "    " + cuadruplos.get(i));
        }
    }
    public String ultimoTemporal(){
        return colaTemporales.temporales.get(colaTemporales.temporales.size()-1);
    }
    
    public String ultimaEtiqueta(){
        return etiquetas.get(etiquetas.size()-1);
    }

    public int sigCuad(){
        return cuadruplos.size() + 1;
    }

    public void CreaListaV(int line){
        listaV.add(line);
    }
    public void CreaListaF(int line){
        listaF.add(line);
    }

    public void CreaListaSig(int line){
        listaSig.add(line);
    }

    public void CompletaV(String etiqueta){
        for (int i : listaV) {
            cuadruplos.set(i-1, cuadruplos.get(i-1).replace("_ETIQUETA_A_REEMPLAZAR_", etiqueta)) ;
        }
        listaV = new ArrayList();
    }

     public void CompletaF(String etiqueta){
        for (int i : listaF) {
            cuadruplos.set(i-1, cuadruplos.get(i-1).replace("_ETIQUETA_A_REEMPLAZAR_", etiqueta)) ;
        }
        listaF = new ArrayList();
    }
    public void CompletaSig(String etiqueta){
        for (int i : listaSig) {
            cuadruplos.set(i-1, cuadruplos.get(i-1).replace("_ETIQUETA_A_REEMPLAZAR_", etiqueta)) ;
        }
        listaSig = new ArrayList();
    }
}
