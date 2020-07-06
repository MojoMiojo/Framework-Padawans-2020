using Newtonsoft.Json;
using System;

namespace DesafioTecnico.Model
{
    public class TODOs
    {
        [JsonProperty("userId")]
        int userId { get; set; }
        [JsonProperty("id")]
        int id { get; set; }
        [JsonProperty("title")]
        string title { get; set; }
        [JsonProperty("completed")]
        bool completed { get; set; }

        public override string ToString()
        {
            return string.Format($"UserId: {userId} \nId: {id} \nTitle: {title} \nCompleted: {completed}");
        }

    }//end class



}//end namespace
