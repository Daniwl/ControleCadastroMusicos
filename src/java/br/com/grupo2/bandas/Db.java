/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupo2.bandas;

import java.util.ArrayList;

/**
 *
 * @author Luisatto
 */
public class Db {
    private static ArrayList<Bandas> bandas;
    
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
