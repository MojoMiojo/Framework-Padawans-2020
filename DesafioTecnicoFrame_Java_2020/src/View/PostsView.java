package View;

import Controller.PostsController;
import Model.Posts;

public class PostsView {

    /*
     * Metodo responsável por imprimir a requisição
     * de postagens.
     */
    public void showPost( ){
        PostsController pc = new PostsController();

        for (Posts post : pc.getPosts()){
            System.out.println(post);
        }//end for
    }//end showPost();

}//end class
