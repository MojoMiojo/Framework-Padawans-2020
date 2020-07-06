using Newtonsoft.Json;
using System;

namespace DesafioTecnico.Model
{
    public class Albuns
    {
        [JsonProperty("userId")]
        int userId { get; set; }
        [JsonProperty("id")]
        int id { get; set; }
        [JsonProperty("title")]
        string title { get; set; }

        public override string ToString()
        {
            return string.Format($"UserId: {userId} \nId: {id} \nTitle: {title}");
        }

    }//end class
}//end namespace
