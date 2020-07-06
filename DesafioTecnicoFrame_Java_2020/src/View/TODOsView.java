package View;

import Controller.TODOsController;
import Model.TODOs;

public class TODOsView {

    /*
     * Metodo responsável por imprimir a requisição
     * de To DOs.
     */
    public void showPost( ){
        TODOsController tc = new TODOsController();

        for (TODOs todos : tc.getTODOs()){
            System.out.println(todos);
        }//end for
    }//end showPost();

}//end class
