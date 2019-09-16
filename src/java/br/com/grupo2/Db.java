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
    private static ArrayList<Discos> cadastrar;
    private static ArrayList<Bandas> bandas;
    private static ArrayList<Musicas> musicas;
    
    
       public static ArrayList<Discos> getCadastroMusica() {
            if (cadastrar == null) {
                cadastrar = new ArrayList<>();
            }
            
            return cadastrar;
        }
        
        public static void addCadastroMusica(Discos cadastro) {
            cadastrar.add(cadastro);
        }
        
        public static void updateCadastroMusica(int index, Discos cadastro) {
            cadastrar.set(index, cadastro);
        }
        
        public static void removeCadastroMusica(int index) {
            cadastrar.remove(index);
        }
        
        
        public static ArrayList<Bandas> getCadastroBanda() {
            if (bandas == null) {
                bandas = new ArrayList<>();
                
            }
            
            return bandas;
        }
        
        public static void addCadastroBanda(Bandas cadastra) {
            bandas.add(cadastra);
        }
        
        public static void updateCadastroBanda(int index, Bandas cadastra) {
            bandas.set(index, cadastra);
        }
        
        public static void remove(int index) {
            bandas.remove(index);
        }
    
    
    public static ArrayList<Musicas> getMusica() {
            if (musicas == null) {
                musicas = new ArrayList<>();
            }
            
            return musicas;
        }
    
    
}
