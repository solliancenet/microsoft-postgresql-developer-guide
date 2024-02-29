using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VectorSearchAiAssistant.Service.Models.Search;

namespace DataLoader
{
    public class DataLoader
    {
        public string ApiUrl { get; set; }

        public DataLoader(
            ILogger<DataLoader> logger)
        {

        }

        async public Task LoadData()
        {
            //load the product data from file
            
            //load the customers.json file
            using (StreamReader r = new StreamReader("customers.json"))
            {
                string json = r.ReadToEnd();
                List<Customer> items = JsonConvert.DeserializeObject<List<Customer>>(json);

                foreach(Customer c in items)
                {
                    //callthe api to load the customer data.

                }
            }

            //load the customers.json file
            using (StreamReader r = new StreamReader("products.json"))
            {
                string json = r.ReadToEnd();
                List<Customer> items = JsonConvert.DeserializeObject<List<Customer>>(json);

                foreach (Customer c in items)
                {
                    //callthe api to load the customer data.

                }
            }
        }
    }
}
