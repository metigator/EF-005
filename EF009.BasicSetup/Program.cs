using EF009.BasicSetup.Data;
using System;

namespace EF009.BasicSetup
{
    class Program
    {
        public static void Main()
        {
            var context = new AppDbContext();
            foreach (var product in context.Products)
            {
                Console.WriteLine(product.Name);
            }
            Console.ReadKey();
        }
    }
}