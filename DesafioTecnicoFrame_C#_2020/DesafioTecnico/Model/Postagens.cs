using Newtonsoft.Json;
using System;

namespace DesafioTecnico.Model
{
    public class Postagens
    {
        [JsonProperty("userId")]
        int userId { get; set; }
        [JsonProperty("id")]
        int id { get; set; }
        [JsonProperty("title")]
        public string title { get; set; }
        [JsonProperty("body")]
        string body { get; set; }

        public override string ToString()
        {
            return string.Format($"UserId: {userId} \nId: {id} \nTitle: {title} \nBody: {body}");
        }

    }//end class
}//end namespace
