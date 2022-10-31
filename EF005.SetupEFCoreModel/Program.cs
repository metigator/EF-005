using Microsoft.Extensions.Configuration;
using System;

namespace EF005.SetupEFCoreModel
{
    class Program
    {
        public static void Main()
        {
            var configuration = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json")
                .Build();

            var constr = configuration.GetSection("constr").Value;

            Console.WriteLine(constr);
            Console.ReadKey();
        }
    }
}