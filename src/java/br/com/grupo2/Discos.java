/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupo2;

//Felipe
public class Discos {
    private String musico;
    private String album;
    private String musica;

    public Discos(String musico, String album, String musica) {
        this.musico = musico;
        this.album = album;
        this.musica = musica;
    }

    
    public String getMusico() {
        return musico;
    }

    public void setMusico(String musico) {
        this.musico = musico;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getMusica() {
        return musica;
    }

    public void setMusica(String musica) {
        this.musica = musica;
    }
    
    
}
