using System;

namespace EF005.RetrieveData
{
    class Program
    {
        public static void Main()
        {
            using (var context = new AppDbContext())
            {
                foreach (var wallet in context.Wallets)
                {
                    Console.WriteLine(wallet);
                }
            }

            Console.ReadKey();
        }
    }
}