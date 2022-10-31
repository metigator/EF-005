using System;
using System.Linq;

namespace EF005.RetrieveData
{
    class Program
    {
        public static void Main()
        {    
            using (var context = new AppDbContext())
            {
                // retrieve all wallets with balance over 5000
                var result = context.Wallets.Where(x => x.Balance > 5000);

                foreach (var wallet in result)
                {
                    Console.WriteLine(wallet);
                }
            }
            Console.ReadKey();
        }
    }
}