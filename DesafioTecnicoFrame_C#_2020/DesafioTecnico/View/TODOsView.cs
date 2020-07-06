using DesafioTecnico.Controller;
using System;
using System.Threading.Tasks;

namespace DesafioTecnico.View
{
    public class TODOsView
    {
        //Imprimir requisições
        public void showPost()
        {
            Console.WriteLine("\nConsultando...\n");
            var todos = new TODOsController();
            var todosTask = todos.GetTODOsAsync();

            todosTask.ContinueWith(task =>
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
