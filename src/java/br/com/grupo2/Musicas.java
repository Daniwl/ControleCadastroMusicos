/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupo2;

//Daniel
public class Musicas {
    private String nomeMusica;
    private String nomeBanda;
    private String duracaoMusicas;

    public Musicas(String nomeMusica, String nomeBanda, String duracaoMusicas) {
        this.nomeMusica = nomeMusica;
        this.nomeBanda = nomeBanda;
        this.duracaoMusicas = duracaoMusicas;
    }

    public String getNomeMusica() {
        return nomeMusica;
    }

    public void setNomeMusica(String nomeMusica) {
        this.nomeMusica = nomeMusica;
    }

    public String getNomeBanda() {
        return nomeBanda;
    }

    public void setNomeBanda(String nomeBanda) {
        this.nomeBanda = nomeBanda;
    }

    public String getDuracaoMusicas() {
        return duracaoMusicas;
    }

    public void setDuracaoMusicas(String duracaoMusicas) {
        this.duracaoMusicas = duracaoMusicas;
    }
    
    
   

}
