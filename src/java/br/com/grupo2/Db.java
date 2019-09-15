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
    
    
        public static ArrayList<Discos> getCadastro() {
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
        
        
    
    public static void addBanda(Bandas banda){
        bandas.add(banda);
    }
    public static void updateBanda(int index, Bandas banda){
        bandas.set(index, banda);
    }
    public static void removeBanda(int index){
        bandas.remove(index);
    }
    
    
    public static ArrayList<Musicas> getMusica() {
            if (musicas == null) {
                musicas = new ArrayList<>();
                musicas.add(new Musicas("Nome","Banda","04:00"));
            }
            
            return musicas;
        }
    
    public static void addMusica(Musicas musica){
        musicas.add(musica);
    }
    public static void updateMusica(int index, Musicas banda){
        musicas.set(index, banda);
    }
    public static void removeMusica(int index){
        musicas.remove(index);
    }
}
