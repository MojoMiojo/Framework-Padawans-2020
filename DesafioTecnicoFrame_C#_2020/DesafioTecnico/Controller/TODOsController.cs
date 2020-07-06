using DesafioTecnico.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace DesafioTecnico.Controller
{
    public class TODOsController
    {
        //Instância do tipo HttpCliente
        HttpClient client = new HttpClient();

        //Construtor responsável por realizar conexão ao dominio.
        public TODOsController()
        {
            client.BaseAddress = new Uri("http://jsonplaceholder.typicode.com/");
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }//end Construtor

        //Metodo que retorna lista de TODOs
        public async Task<List<TODOs>> GetTODOsAsync()
        {
            HttpResponseMessage response = await client.GetAsync("/todos");

            if (response.IsSuccessStatusCode)
            {
                //Ler no formato string e armazenar em dados
                var dados = await response.Content.ReadAsStringAsync();
                //Definir como tipo objeto ( TODOs )
                return JsonConvert.DeserializeObject<List<TODOs>>(dados);
            }//end if
            else
            {
                //Retorno tratado.
                Console.WriteLine("Falha: response mal-sucedido.");
                return new List<TODOs>();
            }
        }
    }
}
