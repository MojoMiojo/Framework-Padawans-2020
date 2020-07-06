package View;

import Controller.AlbumsController;
import Model.Albums;

public class AlbumsView {

    /*
     * Metodo responsável por imprimir a requisição
     * de albuns.
     */
    public void showPost( ){
        AlbumsController ac = new AlbumsController();

        for (Albums album : ac.getAlbums()){
            System.out.println(album);
        }

    }//end showPost( );
}//end class
