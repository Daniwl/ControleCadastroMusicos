/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupo2;

import java.util.ArrayList;
/**
 *
 * @author natal
 */
public class Db {  
    private static ArrayList<CadastroMusica> cadastrar;
    private static ArrayList<Bandas> bandas;
    
        public static ArrayList<CadastroMusica> getCadastro() {
            if (cadastrar == null) {
                cadastrar = new ArrayList<>();
            }
            
            return cadastrar;
        }
        
        public static void addCadastroMusica(CadastroMusica cadastro) {
            cadastrar.add(cadastro);
        }
        
        public static void updateCadastroMusica(int index, CadastroMusica cadastro) {
            cadastrar.set(index, cadastro);
        }
        
        public static void removeCadastroMusica(int index) {
            cadastrar.remove(index);
        }
        
        
    
    public static void addBanda(Bandas banda){
        bandas.add(banda);
    }
    public static void updateBanda(int index, Bandas banda){
        bandas.set(index, banda);
    }
    public static void removeBanda(int index){
        bandas.remove(index);
    }
}
