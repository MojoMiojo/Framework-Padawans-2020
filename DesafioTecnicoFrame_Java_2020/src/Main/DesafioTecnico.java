package Main;

import View.AlbumsView;
import View.PostsView;
import View.TODOsView;
import sun.plugin2.message.Message;

import java.io.IOException;
import java.util.Scanner;

public class DesafioTecnico {

    static Scanner leia = new Scanner(System.in);;

    static void darkSide() {
        System.out.println("                       .-.\n" +
                "                      |_:_|" + "\tMozart Junio Alves de Sousa\n" +
                "                     /(_Y_)\\" + "\tFramework Padawans  -  2020\n" +
                ".                   ( \\/M\\/ )\n" +
                " '.               _.'-/'-'\\-'._\n" +
                "   ':           _/.--'[[[[]'--.\\" + "_\n" +
                "     ':        /_'  : |::\" | : '.\\" + "\n" +
                "       ':     //   ./ |oUU| \\.'  :\\" + "\n" +
                "         ':  _:'..' \\_|___|_/ :   :|\n" +
                "           ':.  .'  |_[___]_|  :.':\\" + "\n" +
                "            [::\\ |  :  | |  :   ; : \\" + "\n" +
                "             '-'   \\/'.| |.' \\  .;.' |\n" +
                "             |\\_    \\  '-'   :       |\n" +
                "             |  \\    \\ .:    :   |   |\n" +
                "             |   \\    | '.   :    \\  |\n" +
                "             /       \\   :. .;       |\n" +
                "            /     |   |  :__/     :  \\\\" + "\n" +
                "           |  |   |    \\:   | \\   |   ||\n" +
                "          /    \\  : :  |:   /  |__|   /|\n" +
                "          |     : : :_/_|  /'._\\  '--|_\\" + "\tArt by Shanaka Dias - https://www.asciiart.eu/movies/star-wars" + "\n" +
                "          /___.-/_|-'   \\  \\" + "\n" +
                "                         '-'");
    }//end darkSide();

    public static void welcome() throws IOException, InterruptedException {
        //Project dark side...
        darkSide();
        System.out.println("Come to the dark side - Press Enter to begin");
        leia.nextLine();
        cls();
    }

    public static void cls() throws IOException, InterruptedException {
        if (System.getProperty("os.name").contains("Windows"))
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        else
            Runtime.getRuntime().exec("clear");
    }// end cls();

    static void invalidInput() throws InterruptedException, IOException {
        cls();
        menu();
        System.out.println("Entrada inválida!");
        Thread.sleep(750);
        cls();
    }//end invalidInput();

    static void toMenu() throws IOException, InterruptedException {
        System.out.print("Pressione Enter para voltar ao Menu!");
        leia.nextLine();
        cls();
    }//end toMenu

    static void menu(){
        darkSide();
        System.out.println("Desafio Técnico - Padawans 2020\n");
        System.out.println("01 - Postagens\n" + "02 - Albuns\n" + "03 - To DOs\n" + "04 - Sair\n");
    }//end menu

    public static void main(String[] args) throws Exception {

        int option = -1;

        cls();
        welcome();

        while (option != 4) {

            //Entrada de opções
            try {
                //Valores entre 1 e 4
                do {
                    menu();
                    System.out.print("Escolha a opção desejada: ");
                    option = leia.nextInt();

                    if (!(option > 0 && option < 5))

                        invalidInput();

                } while (!(option > 0 && option < 5));

                cls();
                leia = new Scanner(System.in);

                switch (option) {
                    case 1:
                        System.out.println("-Postagens-\n");
                        PostsView pv = new PostsView();
                        pv.showPost();
                        toMenu();
                        break;
                    case 2:
                        System.out.println("-Albuns-\n");
                        AlbumsView av = new AlbumsView();
                        av.showPost();
                        toMenu();
                        break;

                    case 3:
                        System.out.println("-To DOs-");
                        TODOsView tv = new TODOsView();
                        tv.showPost();
                        toMenu();
                        break;
                    case 4:
                        darkSide();
                        System.out.println("-Encerrando, obrigado!-\n");
                        System.out.println(
                                "Algoritmos de pesquisa, ordenação e outros: https://github.com/MojoMiojo/AEDSII-Java");
                        break;
                }// end switch

            } catch (java.util.InputMismatchException e) {
                invalidInput();
                option = 0;
            }catch (Exception e){
                invalidInput();
                option = 0;
            }//end catch

        } // end while

        leia.close();
    }// end main

}// end class