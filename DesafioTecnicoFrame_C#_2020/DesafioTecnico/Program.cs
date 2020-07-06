using System;
using System.Threading;
using DesafioTecnico.View;

namespace DesafioTecnico
{
    class Program
    {
        
        /*
         * Method to advise
         * the wrong input
         */
        static void InvalidInput()
        {
            Console.WriteLine("Entrada inválida!");
            Thread.Sleep(750);
            Console.Clear();
        }

        static void darkSide(){
            Console.WriteLine("                       .-.\n" +
                                  "                      |_:_|"       +"\tMozart Junio Alves de Sousa\n" +
                                  "                     /(_Y_)\\" +    "\tFramework Padawans  -  2020\n" +
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
                                  "          |     : : :_/_|  /'._\\  '--|_\\" + "\tArt by Shanaka Dias - https://www.asciiart.eu/movies/star-wars" +"\n" +
                                  "          /___.-/_|-'   \\  \\" + "\n" +
                                  "                         '-'");
        }

        static void welcome()
        {
            //Lado negro do projeto...
            darkSide();
            Console.WriteLine("Come to the dark side - Press Enter to begin");
            Console.ReadLine();
            Console.Clear();
        }

        static void menu()
        {
            darkSide();
            Console.WriteLine("Desafio Técnico - Padawans 2020\n");

            Console.WriteLine(
              "01 - Postagens\n"
            + "02 - Albuns\n"
            + "03 - To DOs\n"
            + "04 - Sair\n");
        }

        /*Bem vindo ao meu projeto para o desafio técnico dos padawans 2020
        * Espero que encontrem o que buscam por aqui!!
        * "Em um lugar escuro estamos nós. E mais conhecimento ilumina nosso caminho."
        */
        static void Main(string[] args)
        {
            int option = 0;
           
            welcome();
            
            while (option != 4)
            {
                
                try
                {
                    menu( );

                    Console.Write("Escolha a opção desejada: ");
                    option = int.Parse(Console.ReadLine());

                   Console.Clear();

                    switch (option)
                    {
                        case 1:
                            Console.WriteLine("-Postagens-");
                            PostagensView pv = new PostagensView();
                            pv.showPost();
                            Console.Clear();
                            break;
                        case 2:
                            Console.WriteLine("-Albuns-");
                            AlbunsView av = new AlbunsView();
                            av.showPost();
                            Console.Clear();
                            break;
                        case 3:
                            Console.WriteLine("-To DOs-");
                            TODOsView tv = new TODOsView();
                            tv.showPost();
                            Console.Clear();
                            break;
                        case 4:
                            darkSide();
                            Console.WriteLine("-Encerrando, obrigado!-\n");
                            Console.WriteLine("Algoritmos de pesquisa, ordenação e outros: https://github.com/MojoMiojo/AEDSII-Java");
                            Console.ReadLine();
                            break;
                        default:
                            darkSide();
                            Console.WriteLine("Desafio Técnico - Padawans 2020\n");
                            Console.WriteLine(
                              "01 - Postagens\n"
                            + "02 - Albuns\n"
                            + "03 - To DOs\n"
                            + "04 - Sair\n");
                            InvalidInput();
                            break;
                    }//end switch

                }
                catch (FormatException)
                {
                    Console.Clear();
                    menu();
                    InvalidInput();
                }
                catch (OverflowException) 
                {
                    Console.Clear();
                    menu();
                    InvalidInput();
                }

            }//end while

        }//end main

    }//end program
}//end namespace
