using DesafioTecnico.Controller;
using System;
using System.Threading.Tasks;

namespace DesafioTecnico.View
{
    public class AlbunsView
    {
        //Imprimir requisições
        public void showPost()
        {
            Console.WriteLine("\nConsultando...\n");
            var album = new AlbunsController();
            var albumTask = album.GetAlbunsAsync();

            albumTask.ContinueWith(task =>
            {
                var usuarios = task.Result;
                foreach (var u in usuarios)
                    Console.WriteLine(u.ToString() + "\n");
                Console.Write("Pressione ENTER para retornar ao menu!");
            },
             TaskContinuationOptions.RunContinuationsAsynchronously

             );

            Console.ReadLine();

        }//end showPost
    }
}
