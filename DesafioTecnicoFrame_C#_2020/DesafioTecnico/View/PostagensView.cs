namespace DesafioTecnico.View
{
    using DesafioTecnico.Controller;
    using System;
    using System.Threading.Tasks;

    public class PostagensView
    {

        //Imprimir requisições
        public void showPost()
        {
            Console.WriteLine("\nConsultando...\n");
            var post = new PostagensController();
            var postTask = post.GetPostagensAsync();

            postTask.ContinueWith(task =>
            {
                var usuarios = task.Result;
                foreach (var u in usuarios)
                    Console.WriteLine(u.ToString() + "\n");

                Console.Write("Pressione ENTER para retornar ao menu!");
            },
             TaskContinuationOptions.RunContinuationsAsynchronously

             );

            Console.ReadLine();
        }

       /* public void showSort()
        {
            foreach (var u in pc.postSort)
            {
                Console.WriteLine(u.ToString()+"\n");
            }
        }

        public void sortSelector(int i)
        {
            switch (i)
            {
                case 1:
                    pc.quicksort();
                    showSort();
                    Console.WriteLine("Pressione ENTER para voltar ao menu!");
                    Console.Read();
                break;
            }//end switch
        }*/

    }//end class
}//end namespace
