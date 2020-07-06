
using DesafioTecnico.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace DesafioTecnico.Controller
{
    public class PostagensController
    {
        //Instância do tipo HttpCliente
        HttpClient client = new HttpClient();
        //Lista de Postagens a receber via API
        List<Postagens> post = new List<Postagens>();
        //postSort de ordenação
        public Postagens[] postSort;

        //Construtor responsável por realizar conexão ao dominio.
        public PostagensController()
        {
            client.BaseAddress = new Uri("http://jsonplaceholder.typicode.com/");
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }//end Construtor

        //Metodo que retorna lista de postagens
        public async Task<List<Postagens>> GetPostagensAsync()
        {
            HttpResponseMessage response = await client.GetAsync("/posts");

            if (response.IsSuccessStatusCode)
            {
                //Ler no formato string e armazenar em dados
                var dados = await response.Content.ReadAsStringAsync();
                //Definir como tipo objeto ( Postagens )
                post = JsonConvert.DeserializeObject<List<Postagens>>(dados);
                postSort = new Postagens[post.Count];
                return post;
            }//end if
            else
            {
                //Retorno tratado.
                Console.WriteLine("Falha: response mal-sucedido.");
                return new List<Postagens>();
            }
        }//end GetPostAsync

       
        /*public void swap(int i, int j)
        {
            Postagens tmp = postSort[i];
            postSort[i] = postSort[j];
            postSort[j] = tmp;
        }//end swap

        public void toArray()
        {
            for(int i = 0; i < post.Count-1; i++)
            {
                postSort[i] = post[i];
            }
        }

        public void quicksort()
        {
            toArray();
            quicksort(0, postSort.Length);
        }

        public void quicksort(int esq, int dir)
        {
            int i = esq, j = dir;
            string pivo = postSort[(esq + dir) / 2].title;

            while (i <= j)
            {
                while (string.Compare(postSort[i].title, pivo) < 0)
                {
                    i++;
                }//end while i
                while (string.Compare(postSort[i].title, pivo) > 0)
                {
                    j--;
                }//end while j
                if (i <= j)
                {
                    swap(i, j);
                    i++;
                    j--;
                }
            }//end while i <=j
            if (esq < j) quicksort(esq, j);
            if (i < dir) quicksort(i, dir);
        }//end quicksort( )
        */

    }//end class
}//end namespace
